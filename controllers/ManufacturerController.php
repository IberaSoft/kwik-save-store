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

class ManufacturerControllerCore extends FrontController
{
	public $php_self = 'manufacturer.php';
	
	protected $manufacturer;
	
	public function setMedia()
	{
		parent::setMedia();
		Tools::addCSS(_THEME_CSS_DIR_.'product_list.css');
	}
	
	public function canonicalRedirection()
	{
		if (Validate::isLoadedObject($this->manufacturer))
		{
			$canonicalURL = self::$link->getManufacturerLink($this->manufacturer);
			if (!preg_match('/^'.Tools::pRegexp($canonicalURL, '/').'([&?].*)?$/', Tools::getProtocol().$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']))
			{
				header('HTTP/1.0 301 Moved');
				if (defined('_PS_MODE_DEV_') AND _PS_MODE_DEV_)
					die('[Debug] This page has moved<br />Please use the following URL instead: <a href="'.$canonicalURL.'">'.$canonicalURL.'</a>');
				Tools::redirectLink($canonicalURL);
			}
		}
	}
	
	public function preProcess()
	{
		if ($id_manufacturer = (int)Tools::getValue('id_manufacturer'))
		{
			$this->manufacturer = new Manufacturer($id_manufacturer, self::$cookie->id_lang);

			if (!Validate::isLoadedObject($this->manufacturer) OR !$this->manufacturer->active)
			{
				header('HTTP/1.1 404 Not Found');
				header('Status: 404 Not Found');
				$this->errors[] = Tools::displayError('Manufacturer does not exist.');
			}
			else
				$this->canonicalRedirection();
		}

		parent::preProcess();
	}
	
	public function process()
	{
		if (Validate::isLoadedObject($this->manufacturer) AND $this->manufacturer->active)
		{
			$nbProducts = $this->manufacturer->getProducts($this->manufacturer->id, NULL, NULL, NULL, $this->orderBy, $this->orderWay, true);
			$this->pagination($nbProducts);
			self::$smarty->assign(array(
				'nb_products' => $nbProducts,
				'products' => $this->manufacturer->getProducts($this->manufacturer->id, (int)self::$cookie->id_lang, (int)$this->p, (int)$this->n, $this->orderBy, $this->orderWay),
				'path' => ($this->manufacturer->active ? Tools::safeOutput($this->manufacturer->name) : ''),
				'manufacturer' => $this->manufacturer));
		}
		elseif (!Tools::getValue('id_manufacturer'))
		{
			if (Configuration::get('PS_DISPLAY_SUPPLIERS'))
			{
				$result = Manufacturer::getManufacturers(true, (int)self::$cookie->id_lang, true);
				$nbProducts = count($result);
				$this->pagination($nbProducts);
				
				$manufacturers = Manufacturer::getManufacturers(true, (int)self::$cookie->id_lang, true, $this->p, $this->n);
				foreach ($manufacturers AS &$row)
					$row['image'] = (!file_exists(_PS_MANU_IMG_DIR_.'/'.$row['id_manufacturer'].'-medium.jpg')) ? Language::getIsoById((int)self::$cookie->id_lang).'-default' : $row['id_manufacturer'];
						
				self::$smarty->assign(array(
					'pages_nb' => ceil($nbProducts / (int)$this->n),
					'nbManufacturers' => $nbProducts,
					'mediumSize' => Image::getSize('medium'),
					'manufacturers' => $manufacturers,
					'add_prod_display' => Configuration::get('PS_ATTRIBUTE_CATEGORY_DISPLAY'),
				));
			}
			else
				self::$smarty->assign('nbManufacturers', 0);
		}
	}
	
	public function displayHeader()
	{
		parent::displayHeader();
		$this->productSort();
	}
	
	public function displayContent()
	{
		parent::displayContent();
		if ($this->manufacturer)
			self::$smarty->display(_PS_THEME_DIR_.'manufacturer.tpl');
		else
			self::$smarty->display(_PS_THEME_DIR_.'manufacturer-list.tpl');
	}
	
}