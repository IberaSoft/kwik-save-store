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
*  @version  Release: $Revision: 7541 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class BlockLanguages extends Module
{
	function __construct()
	{
		$this->name = 'blocklanguages';
		$this->tab = 'front_office_features';
		$this->version = 1.1;
		$this->author = 'PrestaShop';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName = $this->l('Language block');
		$this->description = $this->l('Adds a block for selecting a language.');
	}

	function install()
	{
		return (parent::install() AND $this->registerHook('top') AND $this->registerHook('header'));
	}

	/**
	* Returns module content for header
	*
	* @param array $params Parameters
	* @return string Content
	*/
	function hookTop($params)
	{
		global $smarty;
		
		$languages = Language::getLanguages();
		if (!count($languages))
			return;
		$link = new Link();
			
		if ((int)Configuration::get('PS_REWRITING_SETTINGS'))
		{
			$default_rewrite = array();
			$phpSelf = isset($_SERVER['PHP_SELF']) ? substr($_SERVER['PHP_SELF'], strlen(__PS_BASE_URI__)) : '';
			if ($phpSelf == 'product.php' AND $id_product = (int)Tools::getValue('id_product'))
			{
				$rewrite_infos = Product::getUrlRewriteInformations((int)$id_product);
				foreach ($rewrite_infos AS $infos)
					$default_rewrite[$infos['id_lang']] = $link->getProductLink((int)$id_product, $infos['link_rewrite'], $infos['category_rewrite'], $infos['ean13'], (int)$infos['id_lang']);
			}
		
			if ($phpSelf == 'category.php' AND $id_category = (int)Tools::getValue('id_category'))
			{
				$rewrite_infos = Category::getUrlRewriteInformations((int)$id_category);
				foreach ($rewrite_infos AS $infos)
					$default_rewrite[$infos['id_lang']] = $link->getCategoryLink((int)$id_category, $infos['link_rewrite'], $infos['id_lang']);
			}
			
			if ($phpSelf == 'cms.php' AND ($id_cms = (int)Tools::getValue('id_cms') OR $id_cms_category = (int)Tools::getValue('id_cms_category')))
			{
				$rewrite_infos = (isset($id_cms) AND !isset($id_cms_category)) ? CMS::getUrlRewriteInformations($id_cms) : CMSCategory::getUrlRewriteInformations($id_cms_category);
				foreach ($rewrite_infos AS $infos)
				{
					$arr_link = (isset($id_cms) AND !isset($id_cms_category)) ?
						$link->getCMSLink($id_cms, $infos['link_rewrite'], NULL, $infos['id_lang']) :
						$link->getCMSCategoryLink($id_cms_category, $infos['link_rewrite'], $infos['id_lang']);
					$default_rewrite[$infos['id_lang']] = $arr_link;
				}
			}
			if (count($default_rewrite))
				$smarty->assign('lang_rewrite_urls', $default_rewrite);
		}
			
		$smarty->assign('languages', $languages);
		return $this->display(__FILE__, 'blocklanguages.tpl');
	}
	
	function hookHeader($params)
	{
		Tools::addCSS($this->_path.'blocklanguages.css', 'all');
	}
}


