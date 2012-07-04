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
*  @version  Release: $Revision: 6594 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class BlockMyAccount extends Module
{
	public function __construct()
	{
		$this->name = 'blockmyaccount';
		$this->tab = 'front_office_features';
		$this->version = '1.2';
		$this->author = 'PrestaShop';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName = $this->l('My Account block');
		$this->description = $this->l('Displays a block with links relative to user account.');
	}

	public function install()
	{
		if (!$this->addMyAccountBlockHook() OR !parent::install() OR !$this->registerHook('leftColumn') OR !$this->registerHook('header'))
			return false;
		return true;
	}

	public function uninstall()
	{
		return (parent::uninstall() AND $this->removeMyAccountBlockHook());
	}

	public function hookLeftColumn($params)
	{
		global $smarty;
		
		if (!$params['cookie']->isLogged())
			return false;
		$smarty->assign(array(
			'voucherAllowed' => (int)(Configuration::get('PS_VOUCHERS')),
			'returnAllowed' => (int)(Configuration::get('PS_ORDER_RETURN')),
			'HOOK_BLOCK_MY_ACCOUNT' => Module::hookExec('myAccountBlock')
		));
		return $this->display(__FILE__, $this->name.'.tpl');
	}

	public function hookRightColumn($params)
	{
		return $this->hookLeftColumn($params);
	}

	private function addMyAccountBlockHook()
	{
		return Db::getInstance()->Execute('INSERT INTO `'._DB_PREFIX_.'hook` (`name`, `title`, `description`, `position`) VALUES (\'myAccountBlock\', \'My account block\', \'Display extra informations inside the "my account" block\', 1)');
	}

	private function removeMyAccountBlockHook()
	{
		return Db::getInstance()->Execute('DELETE FROM `'._DB_PREFIX_.'hook` WHERE `name` = \'myAccountBlock\'');
	}
	function hookHeader($params)
	{
		Tools::addCSS(($this->_path).'blockmyaccount.css', 'all');
	}
}


