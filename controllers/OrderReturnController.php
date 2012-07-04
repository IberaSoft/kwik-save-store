<?php
/*
* 2007-2011 PrestaShop 
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
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
*  @version  Release: $Revision: 7197 $
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class OrderReturnControllerCore extends FrontController
{
	public $auth = true;
	public $php_self = 'order-return.php';
	public $authRedirection = 'order-follow.php';
	public $ssl = true;
	
	public function __construct()
	{
		parent::__construct();
		
		header("Cache-Control: no-cache, must-revalidate");
		header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");
	}

	public function preProcess()
	{
		parent::preProcess();
		
		if (!isset($_GET['id_order_return']) OR !Validate::isUnsignedId($_GET['id_order_return']))
			$this->errors[] = Tools::displayError('Order ID required');
		else
		{
			$orderRet = new OrderReturn((int)($_GET['id_order_return']));
			if (Validate::isLoadedObject($orderRet) AND $orderRet->id_customer == self::$cookie->id_customer)
			{
				$order = new Order((int)($orderRet->id_order));
				if (Validate::isLoadedObject($order))
				{
					$state = new OrderReturnState((int)($orderRet->state));
					self::$smarty->assign(array(
						'orderRet' => $orderRet,
						'order' => $order,
						'state_name' => $state->name[(int)(self::$cookie->id_lang)],
						'return_allowed' => false,
						'products' => OrderReturn::getOrdersReturnProducts((int)($orderRet->id), $order),
						'returnedCustomizations' => OrderReturn::getReturnedCustomizedProducts((int)($orderRet->id_order)),
						'customizedDatas' => Product::getAllCustomizedDatas((int)($order->id_cart))
					));
				}
				else
					$this->errors[] = Tools::displayError('Cannot find this order return');
			}
			else
				$this->errors[] = Tools::displayError('Cannot find this order return');
		}

		self::$smarty->assign(array(
			'errors' => $this->errors,
			'nbdaysreturn' => (int)(Configuration::get('PS_ORDER_RETURN_NB_DAYS'))
		));
	}
	
	public function displayHeader()
	{
		if (Tools::getValue('ajax') != 'true')
			parent::displayHeader();
	}
	
	public function displayContent()
	{
		parent::displayContent();
		self::$smarty->display(_PS_THEME_DIR_.'order-return.tpl');
	}
	
	public function displayFooter()
	{
		if (Tools::getValue('ajax') != 'true')
			parent::displayFooter();
	}
}

