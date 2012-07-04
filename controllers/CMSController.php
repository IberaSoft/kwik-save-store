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
*  @version  Release: $Revision: 7404 $
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class CmsControllerCore extends FrontController
{
	public $php_self = 'cms.php';
	
	public $assignCase;
	public $cms;
	public $cms_category;
	
	public function canonicalRedirection()
	{
		// Automatically redirect to the canonical URL if the current in is the right one
		// $_SERVER['HTTP_HOST'] must be replaced by the real canonical domain
		if (Validate::isLoadedObject($this->cms) AND $canonicalURL = self::$link->getCMSLink($this->cms))
			if (!preg_match('/^'.Tools::pRegexp($canonicalURL, '/').'([&?].*)?$/', Tools::getProtocol().$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']))
			{
				header('HTTP/1.0 301 Moved');
				if (_PS_MODE_DEV_)
					die('[Debug] This page has moved<br />Please use the following URL instead: <a href="'.$canonicalURL.'">'.$canonicalURL.'</a>');
				Tools::redirectLink($canonicalURL);
			}
		if (Validate::isLoadedObject($this->cms_category) AND $canonicalURL = self::$link->getCMSCategoryLink($this->cms_category))
			if (!preg_match('/^'.Tools::pRegexp($canonicalURL, '/').'([&?].*)?$/', Tools::getProtocol().$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']))
			{
				header('HTTP/1.0 301 Moved');
				if (_PS_MODE_DEV_ )
					die('[Debug] This page has moved<br />Please use the following URL instead: <a href="'.$canonicalURL.'">'.$canonicalURL.'</a>');
				Tools::redirectLink($canonicalURL);
			}
	}
	
	public function preProcess()
	{
		if ($id_cms = (int)Tools::getValue('id_cms'))
		    $this->cms = new CMS($id_cms, self::$cookie->id_lang); 
		elseif ($id_cms_category = (int)Tools::getValue('id_cms_category'))
		    $this->cms_category = new CMSCategory($id_cms_category, self::$cookie->id_lang); 
		$this->canonicalRedirection();
		
		parent::preProcess();
		
		/* assignCase (1 = CMS page, 2 = CMS category) */
		if (Validate::isLoadedObject($this->cms) AND ($this->cms->active OR (Tools::getValue('adtoken') == Tools::encrypt('PreviewCMS'.$this->cms->id) AND file_exists(dirname(__FILE__).'/../'.Tools::getValue('ad').'/ajax.php'))))
			$this->assignCase = 1;
		elseif (Validate::isLoadedObject($this->cms_category))
			$this->assignCase = 2;
		else
			Tools::display404Error('404.php');
	}
	
	public function setMedia()
	{
		parent::setMedia();
		
		if ($this->assignCase == 1)
			Tools::addJS(_THEME_JS_DIR_.'cms.js');
		
		Tools::addCSS(_THEME_CSS_DIR_.'cms.css');
	}
	
	public function process()
	{
		parent::process();
		$parent_cat = new CMSCategory(1, (int)(self::$cookie->id_lang));
		self::$smarty->assign('id_current_lang', self::$cookie->id_lang);
		self::$smarty->assign('home_title', $parent_cat->name);
		self::$smarty->assign('cgv_id', Configuration::get('PS_CONDITIONS_CMS_ID'));
		if ($this->assignCase == 1)
		{
			self::$smarty->assign(array(
				'cms' => $this->cms,
				'content_only' => (int)(Tools::getValue('content_only')),
				'path' => ((isset($this->cms->id_cms_category) AND $this->cms->id_cms_category) ? Tools::getFullPath((int)($this->cms->id_cms_category), $this->cms->meta_title, 'CMS') : Tools::getFullPath(1, $this->cms->meta_title, 'CMS'))
			));
		}
		elseif ($this->assignCase == 2)
		{
			self::$smarty->assign(array(
				'category' => $this->cms_category,
				'sub_category' => $this->cms_category->getSubCategories((int)(self::$cookie->id_lang)),
				'cms_pages' => CMS::getCMSPages((int)(self::$cookie->id_lang), (int)($this->cms_category->id) ),
				'path' => ($this->cms_category->id !== 1) ? Tools::getPath((int)($this->cms_category->id), $this->cms_category->name, false, 'CMS') : '',
			));
		}
	}
	
	public function displayContent()
	{
		parent::displayContent();
		self::$smarty->display(_PS_THEME_DIR_.'cms.tpl');
	}
}
