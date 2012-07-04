<?php
/*
* 2007-2011 PrestaShop 
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2011 PrestaShop SA
*  @version  Release: $Revision: 7732 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class Hipay extends PaymentModule
{
	private $arrayCategories;
	private $prod;

	public function __construct()
	{
		$this->name = 'hipay';
		$this->tab = 'payments_gateways';
		$this->version = 1.1;

		$this->currencies = true;
		$this->currencies_mode = 'radio';

		parent::__construct();
		
		$this->displayName = $this->l('Hipay');
		$this->description = $this->l('Secure payement with Visa, Mastercard and European solutions.');

		$request = '
			SELECT iso_code
			FROM '._DB_PREFIX_.'country as c
			LEFT JOIN '._DB_PREFIX_.'zone as z
			ON z.id_zone = c.id_zone
			WHERE ';
		
		$result = Db::getInstance()->ExecuteS($request.$this->getRequestZones());

		foreach ($result as $num => $iso)
			$this->limited_countries[] = $iso['iso_code'];
		
		if ($this->id)
		{
			$this->prod = (int)Tools::getValue('HIPAY_PROD', Configuration::get('HIPAY_PROD'));
			// Define extracted from mapi/mapi_defs.php
			if (!defined('HIPAY_GATEWAY_URL')) 
				define('HIPAY_GATEWAY_URL','https://'.($this->prod ? '' : 'test.').'payment.hipay.com/order/');
		}
	}
	
	public function install()
	{
		Configuration::updateValue('HIPAY_SALT', uniqid());
		// Force using Prod mod	
		Configuration::updateValue('HIPAY_PROD', 1);

		if (!Configuration::get('HIPAY_UNIQID'))
			Configuration::updateValue('HIPAY_UNIQID', uniqid());
		if (!Configuration::get('HIPAY_RATING'))
			Configuration::updateValue('HIPAY_RATING', 'ALL');
		
		if (!(parent::install() AND $this->registerHook('payment')))
			return false;
		
		$result = Db::getInstance()->ExecuteS('
			SELECT `id_zone`, `name`
			FROM `'._DB_PREFIX_.'zone`
			WHERE `active` = 1
		');
		
		foreach ($result as $rowNumber => $rowValues)
		{
			Configuration::deleteByName('HIPAY_AZ_'.$rowValues['id_zone']);
			Configuration::deleteByName('HIPAY_AZ_ALL_'.$rowValues['id_zone']);
		}
		Db::getInstance()->ExecuteS('DELETE FROM `'._DB_PREFIX_.'module_country` WHERE `id_module` = '.(int)$this->id);
			
		return true;
	}

	/**
	 * Set shipping zone search
	 * 
	 * @param	string $searchField = 'z.id_zone'
	 * @param	int $defaultZone = 1
	 * @return	string
	 */
	private function getRequestZones($searchField='z.id_zone', $defaultZone = 1)
	{
		$result = Db::getInstance()->ExecuteS('
			SELECT `id_zone`, `name`
			FROM `'._DB_PREFIX_.'zone`
			WHERE `active` = 1
		');
		
		$tmp = null;
		foreach ($result as $rowNumber => $rowValues)
			if (strcmp(Configuration::get('HIPAY_AZ_'.$rowValues['id_zone']), 'ok') == 0)
				$tmp .= $searchField.' = '.$rowValues['id_zone'].' OR ';
		
		if ($tmp == null)
			$tmp = $searchField.' = '.$defaultZone;
		else
			$tmp = substr($tmp, 0, strlen($tmp) - strlen(' OR '));
			
		return $tmp;
	}
	
	public function hookPayment($params)
	{
		global $smarty, $cart;

		$currency = new Currency($this->getModuleCurrency($cart));
		$hipayAccount = ($this->prod ? Configuration::get('HIPAY_ACCOUNT_'.$currency->iso_code) : Configuration::get('HIPAY_ACCOUNT_TEST_'.$currency->iso_code));
		$hipayPassword = ($this->prod ? Configuration::get('HIPAY_PASSWORD_'.$currency->iso_code) : Configuration::get('HIPAY_PASSWORD_TEST_'.$currency->iso_code));
		$hipaySiteId = ($this->prod ? Configuration::get('HIPAY_SITEID_'.$currency->iso_code) : Configuration::get('HIPAY_SITEID_TEST_'.$currency->iso_code));
		$hipayCategory = ($this->prod ? Configuration::get('HIPAY_CATEGORY_'.$currency->iso_code) : Configuration::get('HIPAY_CATEGORY_TEST_'.$currency->iso_code));
		
		if ($hipayAccount AND $hipayPassword AND $hipaySiteId AND $hipayCategory AND Configuration::get('HIPAY_RATING'))
		{
			$smarty->assign('hipay_prod', $this->prod);
			$smarty->assign(array('this_path' => $this->_path, 'this_path_ssl' => self::getHttpHost(true, true).__PS_BASE_URI__.'modules/'.$this->name.'/'));
			return $this->display(__FILE__, 'payment.tpl');
		}
	}

	private function getModuleCurrency($cart)
	{
		$id_currency = (int)self::MysqlGetValue('SELECT id_currency FROM `'._DB_PREFIX_.'module_currency` WHERE id_module = '.(int)$this->id);
		
		if (!$id_currency OR $id_currency == -2)
			$id_currency = Configuration::get('PS_CURRENCY_DEFAULT');
		elseif ($id_currency == -1)
			$id_currency = $cart->id_currency;
			
		return $id_currency;
	}

	public function payment()
	{
		global $cookie, $cart;

		$id_currency = (int)$this->getModuleCurrency($cart);
		// If the currency is forced to a different one than the current one, then the cart must be updated
		if ($cart->id_currency != $id_currency)
			if (Db::getInstance()->execute('UPDATE '._DB_PREFIX_.'cart SET id_currency = '.(int)$id_currency.' WHERE id_cart = '.(int)$cart->id))
				$cart->id_currency = $id_currency;
		
		$currency = new Currency($id_currency);
		$language = new Language($cart->id_lang);
		$customer = new Customer($cart->id_customer);
		$carrier = new Carrier($cart->id_carrier, $cart->id_lang);
		$id_zone = self::MysqlGetValue('SELECT id_zone FROM '._DB_PREFIX_.'address a INNER JOIN '._DB_PREFIX_.'country c ON a.id_country = c.id_country WHERE id_address = '.(int)$cart->id_address_delivery);

		require_once(dirname(__FILE__).'/mapi/mapi_package.php');
		
		$hipayAccount = ($this->prod ? Configuration::get('HIPAY_ACCOUNT_'.$currency->iso_code) : Configuration::get('HIPAY_ACCOUNT_TEST_'.$currency->iso_code));
		$hipayPassword = ($this->prod ? Configuration::get('HIPAY_PASSWORD_'.$currency->iso_code) : Configuration::get('HIPAY_PASSWORD_TEST_'.$currency->iso_code));
		$hipaySiteId = ($this->prod ? Configuration::get('HIPAY_SITEID_'.$currency->iso_code) : Configuration::get('HIPAY_SITEID_TEST_'.$currency->iso_code));
		$hipaycategory = ($this->prod ? Configuration::get('HIPAY_CATEGORY_'.$currency->iso_code) : Configuration::get('HIPAY_CATEGORY_TEST_'.$currency->iso_code));

		$paymentParams = new HIPAY_MAPI_PaymentParams();
		$paymentParams->setLogin($hipayAccount, $hipayPassword);
		$paymentParams->setAccounts($hipayAccount, $hipayAccount);
		$paymentParams->setDefaultLang(strtolower($language->iso_code).'_'.strtoupper($language->iso_code));
		$paymentParams->setMedia('WEB');
		$paymentParams->setRating(Configuration::get('HIPAY_RATING'));
		$paymentParams->setPaymentMethod(HIPAY_MAPI_METHOD_SIMPLE);
		$paymentParams->setCaptureDay(HIPAY_MAPI_CAPTURE_IMMEDIATE);
		$paymentParams->setCurrency(strtoupper($currency->iso_code));
		$paymentParams->setIdForMerchant($cart->id);
		$paymentParams->setMerchantSiteId($hipaySiteId);
		$paymentParams->setUrlCancel(self::getHttpHost(true, true).__PS_BASE_URI__.'order.php?step=3');
		$paymentParams->setUrlNok(self::getHttpHost(true, true).__PS_BASE_URI__.'order-confirmation.php?id_cart='.(int)$cart->id.'&amp;id_module='.(int)$this->id.'&amp;secure_key='.$customer->secure_key);
		$paymentParams->setUrlOk(self::getHttpHost(true, true).__PS_BASE_URI__.'order-confirmation.php?id_cart='.(int)$cart->id.'&amp;id_module='.(int)$this->id.'&amp;secure_key='.$customer->secure_key);
		$paymentParams->setUrlAck(self::getHttpHost(true, true).__PS_BASE_URI__.'modules/'.$this->name.'/validation.php?token='.$cart->secure_key);
		$paymentParams->setBackgroundColor('#FFFFFF');

		if (!$paymentParams->check())
			return $this->l('[Hipay] Error: cannot create PaymentParams');

		$item = new HIPAY_MAPI_Product();
		$item->setName($this->l('Cart'));
		$item->setInfo('');
		$item->setquantity(1);
		$item->setRef($cart->id);
		$item->setCategory($hipaycategory);
		$item->setPrice($cart->getOrderTotal());
		
		try {
			if (!$item->check())
				return $this->l('[Hipay] Error: cannot create "Cart" Product');
		} catch (Exception $e) {
			return $this->l('[Hipay] Error: cannot create "Cart" Product');
		}
		
		$items = array($item);

		$order = new HIPAY_MAPI_Order();
		$order->setOrderTitle($this->l('Order total'));
		$order->setOrderCategory($hipaycategory);

		if (!$order->check())
		    return $this->l('[Hipay] Error: cannot create Order');

		try {
			$commande = new HIPAY_MAPI_SimplePayment($paymentParams, $order, $items);
		} catch (Exception $e) {
		  	return $this->l('[Hipay] Error:').' '.$e->getMessage();
		}

		$xmlTx = $commande->getXML();
		$output = HIPAY_MAPI_SEND_XML::sendXML($xmlTx);
		$reply = HIPAY_MAPI_COMM_XML::analyzeResponseXML($output, $url, $err_msg, $err_keyword, $err_value, $err_code);

		if ($reply === true)
			Tools::redirectLink($url);
		else
		{
			global $smarty;
			include(dirname(__FILE__).'/../../header.php');
			
			$smarty->assign('errors', array('[Hipay] '.strval($err_msg).' ('.$output.')'));
			$_SERVER['HTTP_REFERER'] = self::getHttpHost(true, true).__PS_BASE_URI__.'order.php?step=3';
			$smarty->display(_PS_THEME_DIR_.'errors.tpl');
			
			include(dirname(__FILE__).'/../../footer.php');
		}
	}

	public function validation()
	{
		if (!array_key_exists('xml', $_POST))
			return;

		if (_PS_MAGIC_QUOTES_GPC_)
			$_POST['xml'] = stripslashes($_POST['xml']);
		
		require_once(dirname(__FILE__).'/mapi/mapi_package.php');

		if (HIPAY_MAPI_COMM_XML::analyzeNotificationXML($_POST['xml'], $operation, $status, $date, $time, $transid, $amount, $currency, $id_cart, $data) === false)
		{
			file_put_contents('logs'.Configuration::get('HIPAY_UNIQID').'.txt', '['.date('Y-m-d H:i:s').'] Analysis error: '.htmlentities($_POST['xml'])."\n", FILE_APPEND);
			return false;
		}
		
		$cart = new Cart((int)$id_cart);
		if ($cart->secure_key != Tools::getValue('token'))
			file_put_contents('logs'.Configuration::get('HIPAY_UNIQID').'.txt', '['.date('Y-m-d H:i:s').'] Token error: '.htmlentities($_POST['xml'])."\n", FILE_APPEND);
		else
		{
			if (trim($operation) == 'capture' AND trim(strtolower($status)) == 'ok')
			{
				/* Paiement capturé sur Hipay = Paiement accepté sur Prestashop */
				$orderMessage = $operation.': '.$status.'\ndate: '.$date.' '.$time.'\ntransaction: '.$transid.'\namount: '.(float)$amount.' '.$currency.'\nid_cart: '.(int)$id_cart;
				$this->validateOrder((int)$id_cart, Configuration::get('PS_OS_PAYMENT'), (float)$amount, $this->displayName, $orderMessage, array(), NULL, false, Tools::getValue('token'));
			}
			elseif (trim($operation) == 'refund' AND trim(strtolower($status)) == 'ok')
			{
				/* Paiement remboursé sur Hipay */
				if (!($id_order = Order::getOrderByCartId((int)($id_cart))))
					die(Tools::displayError());
					
				$order = new Order((int)($id_order));
				if (!$order->valid OR $order->getCurrentState() === Configuration::get('PS_OS_REFUND'))
					die(Tools::displayError());
					
				$orderHistory = new OrderHistory();
				$orderHistory->id_order = (int)($order->id);
				$orderHistory->changeIdOrderState((int)(Configuration::get('PS_OS_REFUND')), (int)($id_order));
				$orderHistory->addWithemail();
			}
		}
	}

	/**
	 * Uninstall and clean the module settings
	 * 
	 * @return	bool
	 */
	public function uninstall()
	{
		parent::uninstall();
		
		$result = Db::getInstance()->ExecuteS('
			SELECT `id_zone`, `name`
			FROM `'._DB_PREFIX_.'zone`
			WHERE `active` = 1
		');
		
		foreach ($result as $rowValues)
		{
			Configuration::deleteByName('HIPAY_AZ_'.$rowValues['id_zone']);
			Configuration::deleteByName('HIPAY_AZ_ALL_'.$rowValues['id_zone']);
		}
		Db::getInstance()->ExecuteS('DELETE FROM `'._DB_PREFIX_.'module_country` WHERE `id_module` = '.(int)$this->id);
		
		return (true);
	}
	
	public function getContent()
	{
		global $currentIndex, $cookie;

		$currencies = DB::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('SELECT c.iso_code, c.name, c.sign FROM '._DB_PREFIX_.'currency c');
		
		if (Tools::isSubmit('submitHipayAZ')) 
		{
			// Delete all configurated zones
			foreach ($_POST as $key => $val)
				if (strncmp($key, 'HIPAY_AZ_ALL_', strlen('HIPAY_AZ_ALL_')) == 0) 
				{
					$id = substr($key, -(strlen($key) - strlen('HIPAY_AZ_ALL_')));
					Configuration::updateValue('HIPAY_AZ_'.$id, 'ko');
				}
			Db::getInstance()->ExecuteS('DELETE FROM `'._DB_PREFIX_.'module_country` WHERE `id_module` = '.(int)$this->id);
			
			// Add the new configuration zones
			foreach ($_POST as $key => $val) 
			{
				if (strncmp($key, 'HIPAY_AZ_', strlen('HIPAY_AZ_')) == 0)
					Configuration::updateValue($key, 'ok');
			}
			$request = 'SELECT id_country FROM '._DB_PREFIX_.'country WHERE ';
			$results = Db::getInstance()->ExecuteS($request.$this->getRequestZones('id_zone'));
			foreach ($results as $rowValues)
				Db::getInstance()->ExecuteS('INSERT INTO '._DB_PREFIX_.'module_country VALUE('.(int)$this->id.', '.(int)$rowValues['id_country'].')');
			
		}
		elseif (Tools::isSubmit('submitHipay'))
		{
			Configuration::updateValue('HIPAY_PROD', Tools::getValue('HIPAY_PROD'));
			$this->prod = (int)Tools::getValue('HIPAY_PROD', Configuration::get('HIPAY_PROD'));
			
			$accounts = array();
			foreach ($currencies as $currency)
			{
				if (Configuration::get('HIPAY_SITEID_'.$currency['iso_code']) != Tools::getValue('HIPAY_SITEID_'.$currency['iso_code']))
					Configuration::updateValue('HIPAY_CATEGORY_'.$currency['iso_code'], false);
				if (Configuration::get('HIPAY_SITEID_TEST_'.$currency['iso_code']) != Tools::getValue('HIPAY_SITEID_TEST_'.$currency['iso_code']))
					Configuration::updateValue('HIPAY_CATEGORY_TEST_'.$currency['iso_code'], false);
			
				Configuration::updateValue('HIPAY_ACCOUNT_'.$currency['iso_code'], Tools::getValue('HIPAY_ACCOUNT_'.$currency['iso_code']));
				Configuration::updateValue('HIPAY_PASSWORD_'.$currency['iso_code'], Tools::getValue('HIPAY_PASSWORD_'.$currency['iso_code']));
				Configuration::updateValue('HIPAY_SITEID_'.$currency['iso_code'], Tools::getValue('HIPAY_SITEID_'.$currency['iso_code']));
				Configuration::updateValue('HIPAY_CATEGORY_'.$currency['iso_code'], Tools::getValue('HIPAY_CATEGORY_'.$currency['iso_code']));
				
				if ($this->prod AND Tools::getValue('HIPAY_ACCOUNT_'.$currency['iso_code']))
					$accounts[Tools::getValue('HIPAY_ACCOUNT_'.$currency['iso_code'])] = 1;
					
				Configuration::updateValue('HIPAY_ACCOUNT_TEST_'.$currency['iso_code'], Tools::getValue('HIPAY_ACCOUNT_TEST_'.$currency['iso_code']));
				Configuration::updateValue('HIPAY_PASSWORD_TEST_'.$currency['iso_code'], Tools::getValue('HIPAY_PASSWORD_TEST_'.$currency['iso_code']));
				Configuration::updateValue('HIPAY_SITEID_TEST_'.$currency['iso_code'], Tools::getValue('HIPAY_SITEID_TEST_'.$currency['iso_code']));
				Configuration::updateValue('HIPAY_CATEGORY_TEST_'.$currency['iso_code'], Tools::getValue('HIPAY_CATEGORY_TEST_'.$currency['iso_code']));
				
				if (!$this->prod AND Tools::getValue('HIPAY_ACCOUNT_TEST_'.$currency['iso_code']))
					$accounts[Tools::getValue('HIPAY_ACCOUNT_TEST_'.$currency['iso_code'])] = 1;				
			}
			
			$i = 1;
			$dataSync = 'http://www.prestashop.com/modules/hipay.png?mode='.($this->prod ? 'prod' : 'test');
			foreach ($accounts as $account => $null)
				$dataSync .= '&account'.($i++).'='.urlencode($account);
			
			Configuration::updateValue('HIPAY_RATING', Tools::getValue('HIPAY_RATING'));
			
			echo $this->displayConfirmation($this->l('Configuration updated').'<img src="'.$dataSync.'" style="float:right" />');
		}
		
		// Check configuration
		$allow_url_fopen = ini_get('allow_url_fopen');
		$openssl = extension_loaded('openssl');
		$curl = extension_loaded('curl');
		$ping = ($allow_url_fopen AND $openssl AND $fd = fsockopen('payment.hipay.com', 443) AND fclose($fd));
		$online = (in_array(Tools::getRemoteAddr(), array('127.0.0.1', '::1')) ? false : true);
		$categories = true;
		$categoryRetrieval = true;
		
		foreach ($currencies as $currency)
		{
			if (($hipaySiteId = Configuration::get('HIPAY_SITEID_'.$currency['iso_code']) AND $hipayAccountId = Configuration::get('HIPAY_ACCOUNT_'.$currency['iso_code']) AND !count($this->getHipayCategories(true, $hipaySiteId, $hipayAccountId)))
			OR ($hipaySiteIdTest = Configuration::get('HIPAY_SITEID_TEST_'.$currency['iso_code']) AND $hipayAccountIdTest = Configuration::get('HIPAY_ACCOUNT_TEST_'.$currency['iso_code']) AND !count($this->getHipayCategories(false, $hipaySiteIdTest, $hipayAccountIdTest))))
				$categoryRetrieval = false;
				
			if ((Configuration::get('HIPAY_SITEID_'.$currency['iso_code']) AND !Configuration::get('HIPAY_CATEGORY_'.$currency['iso_code']))
			OR (Configuration::get('HIPAY_SITEID_TEST_'.$currency['iso_code']) AND !Configuration::get('HIPAY_CATEGORY_TEST_'.$currency['iso_code'])))
				$categories = false;
		}
		
		if (!$allow_url_fopen OR !$openssl OR !$curl OR !$ping OR !$categories OR !$categoryRetrieval OR !$online)
		{
			echo '
			<div class="warning warn">
				'.($allow_url_fopen ? '' : '<h3>'.$this->l('You are not allowed to open external URLs').'</h3>').'
				'.($curl ? '' : '<h3>'.$this->l('cURL is not enabled').'</h3>').'
				'.($openssl ? '' : '<h3>'.$this->l('OpenSSL is not enabled').'</h3>').'
				'.(($allow_url_fopen AND $openssl AND !$ping) ? '<h3>'.$this->l('Cannot access payment gateway').' '.HIPAY_GATEWAY_URL.' ('.$this->l('check your firewall').')</h3>' : '').'
				'.($online ? '' : '<h3>'.$this->l('Your shop is not online').'</h3>').'
				'.($categories ? '' : '<h3>'.$this->l('Hipay categories not set for every Site ID').'</h3>').'
				'.($categoryRetrieval ? '' : '<h3>'.$this->l('Impossible to retrieve Hipay categories. Please refer to your error log for more details.').'</h3>').'
			</div>';
		}

		$link = $currentIndex.'&configure='.$this->name.'&token='.Tools::getValue('token');
		$form = '
		<style>
			.hipay_label {float:none;font-weight:normal;padding:0;text-align:left;width:100%;line-height:30px}
			.hipay_help {vertical-align:middle}
			#hipay_table {border:1px solid #383838;}
			#hipay_table td {border:1px solid #383838; width:250px; padding-left;8px; text-align:center;}
			#hipay_table td.hipay_end {border-top:none}
			#hipay_table td.hipay_block {border-bottom:none}
			#hipay_steps_infos {border:none; margin-bottom:20px;}
			#hipay_steps_infos td {border:none; width:70px; height:60px;padding-left;8px; text-align:left;}
			#hipay_steps_infos td.tab2 {border:none; width:700px;; height:60px;padding-left;8px; text-align:left;}
			#hipay_steps_infos td.hipay_end {border-top:none}
			#hipay_steps_infos td.hipay_block {border-bottom:none}

		</style>
    <fieldset><legend><img src="../modules/'.$this->name.'/logo.gif" /> '.$this->l('Hipay').'</legend>
    '.$this->l('Hipay is a secure electronic wallet which has the European Bank approval. Hipay offer you many opportunities without need to negotiate with a bank. Easy and free to use, Hipay\'s solution of the implementation is a real asset for an e-commerce website that wants to expand in Europe: secure payment by international card, local payment solutions, bank transfers...').'
			<br />
			<!-- <br />'.$this->l('Notice: if you want to refund a payment, please log in to your Hipay account then go to Merchant Management > Sales management.').'-->
		</fieldset>
		<div class="clear">&nbsp;</div>
		<fieldset><legend><img src="../modules/'.$this->name.'/logo.gif" /> '.$this->l('Configuration').'</legend>
		'.$this->l('The configuration of Hipay is really easy and runs into 3 steps').'<br /><br />
		<table id="hipay_steps_infos" cellspacing="0" cellpadding="0">
			<tr>
				<td><img src="../modules/'.$this->name.'/1.png" alt="step 1" /></td>
				<td class="tab2">'.(Configuration::get('HIPAY_SITEID')
					? '<a href="https://www.hipay.com/auth" style="color:#D9263F;font-weight:700">'.$this->l('Log in to your merchant account').'</a><br />'
					: '<a href="https://www.hipay.com/registration/register" style="color:#D9263F;font-weight:700"><img src="../modules/'.$this->name.'/create.jpg" alt="'.$this->l('Create a Hipay account').'" title="'.$this->l('Create a Hipay account').'" border="0" /></a><br />').'
				</td>
			</tr>
			<tr>
				<td><img src="../modules/'.$this->name.'/2.png" alt="step 2" /></td>
				<td class="tab2">'.$this->l('Activate the Hipay solution in your Prestashop, it\'s free!').'</td>
			</tr>
			<tr>
				<td><img src="../modules/'.$this->name.'/3.png" alt="step 3" /></td> 
				<td class="tab2">'.$this->l('Enjoy preferred pricing on transactions via Prestashop by').' 
				<a style="color:blue; text-decoration:underline;" href="mailto:commercial@hipay.com">'
				.$this->l('contacting our sales department').'</a></td>
			</tr>
		</table>	
		<form action="'.$link.'" method="post">
		<table id="hipay_table" cellspacing="0" cellpadding="0">
			<tr>
				<td style="">&nbsp;</td>	
				<td style="height:40px;">Compte Hipay</td>
			</tr>';

		foreach ($currencies as $currency)
		{
			$form .= '<tr>
						<td class="hipay_block"><b>'.$this->l('Configuration in').' '.$currency['name'].' '.$currency['sign'].'</b></td>
						<td class="hipay_prod hipay_block" style="padding-left:10px">
							<label class="hipay_label" for="HIPAY_ACCOUNT_'.$currency['iso_code'].'">'.$this->l('Account number').' <a href="../modules/'.$this->name.'/screenshots/accountnumber.png" target="_blank"><img src="../modules/'.$this->name.'/help.png" class="hipay_help" /></a></label><br />
							<input type="text" id="HIPAY_ACCOUNT_'.$currency['iso_code'].'" name="HIPAY_ACCOUNT_'.$currency['iso_code'].'" value="'.Tools::getValue('HIPAY_ACCOUNT_'.$currency['iso_code'], Configuration::get('HIPAY_ACCOUNT_'.$currency['iso_code'])).'" /><br />
							<label class="hipay_label" for="HIPAY_PASSWORD_'.$currency['iso_code'].'">'.$this->l('Merchant password').' <a href="../modules/'.$this->name.'/screenshots/merchantpassword.png" target="_blank"><img src="../modules/'.$this->name.'/help.png" class="hipay_help" /></a></label><br />
							<input type="text" id="HIPAY_PASSWORD_'.$currency['iso_code'].'" name="HIPAY_PASSWORD_'.$currency['iso_code'].'" value="'.Tools::getValue('HIPAY_PASSWORD_'.$currency['iso_code'], Configuration::get('HIPAY_PASSWORD_'.$currency['iso_code'])).'" /><br />
							<label class="hipay_label" for="HIPAY_SITEID_'.$currency['iso_code'].'">'.$this->l('Site ID').' <a href="../modules/'.$this->name.'/screenshots/siteid.png" target="_blank"><img src="../modules/'.$this->name.'/help.png" class="hipay_help" /></a></label><br />
							<input type="text" id="HIPAY_SITEID_'.$currency['iso_code'].'" name="HIPAY_SITEID_'.$currency['iso_code'].'" value="'.Tools::getValue('HIPAY_SITEID_'.$currency['iso_code'], Configuration::get('HIPAY_SITEID_'.$currency['iso_code'])).'" /><br />';
			if ($ping AND $hipaySiteId = (int)Configuration::get('HIPAY_SITEID_'.$currency['iso_code']) AND $hipayAccountId = (int)Configuration::get('HIPAY_ACCOUNT_'.$currency['iso_code']))
			{
				$form .= '	<label for="HIPAY_CATEGORY_'.$currency['iso_code'].'" class="hipay_label">'.$this->l('Category').'</label><br />
							<select id="HIPAY_CATEGORY_'.$currency['iso_code'].'" name="HIPAY_CATEGORY_'.$currency['iso_code'].'">';
				foreach ($this->getHipayCategories(true, $hipaySiteId, $hipayAccountId) as $id => $name)
					$form.= '	<option value="'.(int)$id.'" '.(Tools::getValue('HIPAY_CATEGORY_'.$currency['iso_code'], Configuration::get('HIPAY_CATEGORY_'.$currency['iso_code'])) == $id ? 'selected="selected"' : '').'>'.htmlentities($name, ENT_COMPAT, 'UTF-8').'</option>';
				$form .= '	</select><br />';
			}

			if ($ping AND $hipaySiteId = (int)Configuration::get('HIPAY_SITEID_TEST_'.$currency['iso_code']) AND $hipayAccountIdTest = (int)Configuration::get('HIPAY_ACCOUNT_TEST_'.$currency['iso_code']))
			{
				$form .= '	<label for="HIPAY_CATEGORY_TEST_'.$currency['iso_code'].'" class="hipay_label">'.$this->l('Category').'</label><br />
							<select id="HIPAY_CATEGORY_TEST_'.$currency['iso_code'].'" name="HIPAY_CATEGORY_TEST_'.$currency['iso_code'].'">';
				foreach ($this->getHipayCategories(true, $hipaySiteId, $hipayAccountIdTest) as $id => $name)
					$form.= '	<option value="'.(int)$id.'" '.(Tools::getValue('HIPAY_CATEGORY_TEST_'.$currency['iso_code'], Configuration::get('HIPAY_CATEGORY_TEST_'.$currency['iso_code'])) == $id ? 'selected="selected"' : '').'>'.htmlentities($name, ENT_COMPAT, 'UTF-8').'</option>';
				$form .= '	</select><br />';
			}
			$form .= '	</td>
					</tr>
					<tr><td class="hipay_end">&nbsp;</td><td class="hipay_prod hipay_end">&nbsp;</td>';
			$form .= '</tr>';
		}
		
		$form .= '</table>
				<hr class="clear" />
				<label for="HIPAY_RATING">'.$this->l('Authorized age group').'</label>
				<div class="margin-form">
					<select id="HIPAY_RATING" name="HIPAY_RATING">
						<option value="ALL">'.$this->l('For all ages').'</option>
						<option value="+12" '.(Tools::getValue('HIPAY_RATING', Configuration::get('HIPAY_RATING')) == '+12' ? 'selected="selected"' : '').'>'.$this->l('For ages 12 and over').'</option>
						<option value="+16" '.(Tools::getValue('HIPAY_RATING', Configuration::get('HIPAY_RATING')) == '+16' ? 'selected="selected"' : '').'>'.$this->l('For ages 16 and over').'</option>
						<option value="+18" '.(Tools::getValue('HIPAY_RATING', Configuration::get('HIPAY_RATING')) == '+18' ? 'selected="selected"' : '').'>'.$this->l('For ages 18 and over').'</option>
					</select>
				</div>
				<hr class="clear" />
				<p>'.$this->l('Notice: please verify that the currency mode you have chosen in the payment tab is compatible with your Hipay account(s).').'</p>
				<input type="submit" name="submitHipay" value="'.$this->l('Update configuration').'" class="button" />
        	</form>
		</fieldset>
		<br />
		';
		
		$form .= '
		<fieldset>
			<legend><img src="../modules/'.$this->name.'/logo.gif" /> '.$this->l('Zones restrictions').'</legend>
			'.$this->l('Select the authorized shipping zones').'<br /><br />
			<form action="'.$currentIndex.'&configure=hipay&token='.Tools::getValue('token').'" method="post">
				<table cellspacing="0" cellpadding="0" class="table">
					<tr>
						<th class="center">'.$this->l('ID').'</th>
						<th>'.$this->l('Zones').'</th>
						<th align="center"><img src="../modules/'.$this->name.'/logo.gif" /></th>
					</tr>
		';
		
		$result = Db::getInstance()->ExecuteS('
			SELECT `id_zone`, `name`
			FROM '._DB_PREFIX_.'zone
			WHERE `active` = 1
		');

		foreach ($result as $rowNumber => $rowValues)
		{
			$form .= '<tr>';
			$form .= '<td>'.$rowValues['id_zone'].'</td>';
			$form .= '<td>'.$rowValues['name'].'</td>';
			$chk = null;
			if (Configuration::get('HIPAY_AZ_'.$rowValues['id_zone']) == 'ok')
				$chk = "checked ";
			
			$form .= '<td align="center"><input type="checkbox" name="HIPAY_AZ_'.$rowValues['id_zone'].'" value="ok" '.$chk.'/>';
			$form .= '<input type="hidden" name="HIPAY_AZ_ALL_'.$rowValues['id_zone'].'" value="ok" /></td>';
			$form .= '</tr>';
		}
		
		$form .= '
				</table><br>
				<input type="submit" name="submitHipayAZ" value="'.$this->l('Update zones').'" class="button" />
			</form>
		</fieldset>
		<script type="text/javascript">
			function switchHipayAccount(prod) {
				if (prod)
				{';
		foreach ($currencies as $currency)
			$form .= '
					$("#HIPAY_ACCOUNT_'.$currency['iso_code'].'").css("background-color", "#FFFFFF");
					$("#HIPAY_ACCOUNT_TEST_'.$currency['iso_code'].'").css("background-color", "#EEEEEE");
					$("#HIPAY_PASSWORD_'.$currency['iso_code'].'").css("background-color", "#FFFFFF");
					$("#HIPAY_PASSWORD_TEST_'.$currency['iso_code'].'").css("background-color", "#EEEEEE");
					$("#HIPAY_SITEID_'.$currency['iso_code'].'").css("background-color", "#FFFFFF");
					$("#HIPAY_SITEID_TEST_'.$currency['iso_code'].'").css("background-color", "#EEEEEE");';
		$form .= '	$(".hipay_prod").css("background-color", "#AADEAA");
					$(".hipay_test").css("background-color", "transparent");
					$(".hipay_prod_span").css("font-weight", "700");
					$(".hipay_test_span").css("font-weight", "200");
				}
				else
				{';
		foreach ($currencies as $currency)
			$form .= '
					$("#HIPAY_ACCOUNT_'.$currency['iso_code'].'").css("background-color", "#EEEEEE");
					$("#HIPAY_ACCOUNT_TEST_'.$currency['iso_code'].'").css("background-color", "#FFFFFF");
					$("#HIPAY_PASSWORD_'.$currency['iso_code'].'").css("background-color", "#EEEEEE");
					$("#HIPAY_PASSWORD_TEST_'.$currency['iso_code'].'").css("background-color", "#FFFFFF");
					$("#HIPAY_SITEID_'.$currency['iso_code'].'").css("background-color", "#EEEEEE");
					$("#HIPAY_SITEID_TEST_'.$currency['iso_code'].'").css("background-color", "#FFFFFF");';
		$form .= '	$(".hipay_prod").css("background-color", "transparent");
					$(".hipay_test").css("background-color", "#AADEAA");
					$(".hipay_prod_span").css("font-weight", "200");
					$(".hipay_test_span").css("font-weight", "700");
				}
			}
			switchHipayAccount('.(int)$this->prod.');
		</script>';
		return $form;
	}

	private function getHipayCategories($prod, $hipaySiteId, $hipayAccountId)
	{
		if (!is_array($this->arrayCategories))
		{
			$this->arrayCategories = array();
			if ($xml = simplexml_load_string(file_get_contents('https://www.prestashop.com/partner/hipay/ws.php?site='.$hipaySiteId.'&accountId='.$hipayAccountId.($prod ? '&prod' : ''))))
			{
				foreach ($xml->children() as $categoriesList)
					foreach ($categoriesList->children() as $category)
						$this->arrayCategories[strval($category['id'])] = strval($category);
			}
		}
		return $this->arrayCategories;
	}
	
	// Retro compatibility with 1.2.5
	static private function MysqlGetValue($query)
	{
		$row = Db::getInstance()->getRow($query);
		return array_shift($row);
	}
	
	// Retro compatibility with 1.2.5
	static private function getHttpHost($http = false, $entities = false)
	{
		$host = (isset($_SERVER['HTTP_X_FORWARDED_HOST']) ? $_SERVER['HTTP_X_FORWARDED_HOST'] : $_SERVER['HTTP_HOST']);
		
		if ($entities)
			$host = htmlspecialchars($host, ENT_COMPAT, 'UTF-8');		
		if ($http)
			$host = (Configuration::get('PS_SSL_ENABLED') ? 'https://' : 'http://').$host;
			
		return $host;
	}
}