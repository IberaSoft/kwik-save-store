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

class SitemapControllerCore extends FrontController
{
	public $php_self = 'sitemap.php';
	
	public function setMedia()
	{
		parent::setMedia();
		Tools::addCSS(_THEME_CSS_DIR_.'sitemap.css');
		Tools::addJS(_THEME_JS_DIR_.'tools/treeManagement.js');
	}
	
	public function process()
	{
		parent::process();
		
		self::$smarty->assign('categoriesTree', Category::getRootCategory()->recurseLiteCategTree(0));
		self::$smarty->assign('categoriescmsTree', CMSCategory::getRecurseCategory(_USER_ID_LANG_, 1, 1, 1));
		self::$smarty->assign('voucherAllowed', (int)(Configuration::get('PS_VOUCHERS')));
		$blockmanufacturer = Module::getInstanceByName('blockmanufacturer');
		$blocksupplier = Module::getInstanceByName('blocksupplier');
		self::$smarty->assign('display_manufacturer_link', (((int)$blockmanufacturer->id) ? true : false));
		self::$smarty->assign('display_supplier_link', (((int)$blocksupplier->id) ? true : false));
		self::$smarty->assign('PS_DISPLAY_SUPPLIERS', Configuration::get('PS_DISPLAY_SUPPLIERS'));
		self::$smarty->assign('display_store', Configuration::get('PS_STORES_DISPLAY_SITEMAP'));
	}
	
	public function displayContent()
	{
		parent::displayContent();
		self::$smarty->display(_PS_THEME_DIR_.'sitemap.tpl');
	}
}
