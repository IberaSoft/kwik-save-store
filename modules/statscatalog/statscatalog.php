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

class StatsCatalog extends Module
{
	private $_join = '';
	private $_where = '';

    function __construct()
    {
        $this->name = 'statscatalog';
        $this->tab = 'analytics_stats';
        $this->version = 1.0;
		$this->author = 'PrestaShop';
		$this->need_instance = 0;
		
        parent::__construct();
		
        $this->displayName = $this->l('Catalog statistics');
        $this->description = $this->l('General statistics about your catalog.');
    }
	
	public function install()
	{
		return (parent::install() AND $this->registerHook('AdminStatsModules'));
	}
	
	public function getQuery1()
	{
		return DB::getInstance(_PS_USE_SQL_SLAVE_)->getRow('
		SELECT COUNT(DISTINCT p.`id_product`) AS total, SUM(p.`price`) / COUNT(`price`) AS average_price, COUNT(DISTINCT i.`id_image`) AS images
		FROM `'._DB_PREFIX_.'product` p
		LEFT JOIN `'._DB_PREFIX_.'image` i ON i.`id_product` = p.`id_product`
		'.$this->_join.'
		WHERE p.`active` = 1
		'.$this->_where);
	}
		
	public function getTotalPageViewed()
	{
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow('
		SELECT SUM(pv.`counter`) AS viewed
		FROM `'._DB_PREFIX_.'product` p 
		LEFT JOIN `'._DB_PREFIX_.'page` pa ON p.`id_product` = pa.`id_object`
		LEFT JOIN `'._DB_PREFIX_.'page_type` pt ON (pt.`id_page_type` = pa.`id_page_type` AND pt.`name` = \'product.php\')
		LEFT JOIN `'._DB_PREFIX_.'page_viewed` pv ON pv.`id_page` = pa.`id_page`
		'.$this->_join.'
		WHERE p.`active` = 1 '.$this->_where);
		return isset($result['viewed']) ? $result['viewed'] : 0;
	}
	
	public function getTotalProductViewed()
	{
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue('
		SELECT COUNT(DISTINCT pa.`id_object`)
		FROM `'._DB_PREFIX_.'page_viewed` pv
		LEFT JOIN `'._DB_PREFIX_.'page` pa ON pv.`id_page` = pa.`id_page`
		LEFT JOIN `'._DB_PREFIX_.'page_type` pt ON pt.`id_page_type` = pa.`id_page_type`
		LEFT JOIN `'._DB_PREFIX_.'product` p ON p.`id_product` = pa.`id_object`
		'.$this->_join.'
		WHERE pt.`name` = \'product.php\'
		AND p.`active` = 1
		'.$this->_where);
	}
	
	public function getTotalBought()
	{
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow('
		SELECT SUM(od.`product_quantity`) AS bought
		FROM `'._DB_PREFIX_.'orders` o
		LEFT JOIN `'._DB_PREFIX_.'order_detail` od ON o.`id_order` = od.`id_order`
		LEFT JOIN `'._DB_PREFIX_.'product` p ON p.`id_product` = od.`product_id`
		'.$this->_join.'
		WHERE o.valid = 1
		'.$this->_where);
		return isset($result['bought']) ? $result['bought'] : 0;
	}
	
	public function getProductsNB($id_lang)
	{
		$precalc = Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('
		SELECT p.`id_product`
		FROM `'._DB_PREFIX_.'orders` o
		LEFT JOIN `'._DB_PREFIX_.'order_detail` od ON o.`id_order` = od.`id_order`
		LEFT JOIN `'._DB_PREFIX_.'product` p ON p.`id_product` = od.`product_id`
		'.$this->_join.'
		WHERE o.valid = 1
		'.$this->_where.'
		AND p.`active` = 1
		GROUP BY p.`id_product`');
			
		$precalc2 = array();
		foreach ($precalc as $array)
			$precalc2[] = (int)($array['id_product']);
		
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('
		SELECT p.id_product, pl.name, pl.link_rewrite
		FROM `'._DB_PREFIX_.'product` p
		LEFT JOIN `'._DB_PREFIX_.'product_lang` pl ON (pl.`id_product` = p.`id_product` AND pl.id_lang = '.(int)($id_lang).')
		'.$this->_join.'
		WHERE p.`active` = 1
		'.(sizeof($precalc2) ? 'AND p.`id_product` NOT IN ('.implode(',', $precalc2).')' : '').'
		'.$this->_where);
		return array('total' => Db::getInstance(_PS_USE_SQL_SLAVE_)->NumRows(), 'result' => $result);
	}
	
	public function hookAdminStatsModules($params)
	{
		global $cookie;
		$categories = Category::getCategories((int)($cookie->id_lang), true, false);
		$productToken = Tools::getAdminToken('AdminCatalog'.(int)(Tab::getIdFromClassName('AdminCatalog')).(int)($cookie->id_employee));
		$currency = Currency::getCurrency(Configuration::get('PS_CURRENCY_DEFAULT'));
		$link = new Link();
		$irow = 0;
		
		if ($id_category = (int)(Tools::getValue('id_category')))
		{
			$this->_join = 'LEFT JOIN `'._DB_PREFIX_.'category_product` cp ON (cp.`id_product` = p.`id_product`)';
			$this->_where = 'AND cp.`id_category` = '.$id_category;
		}
		
		$result1 = $this->getQuery1(true);
		$total = $result1['total'];
		$averagePrice = $result1['average_price'];
		$totalPictures = $result1['images'];
		$averagePictures = $total ? $totalPictures / $total : 0;
		
		$neverBought = $this->getProductsNB((int)($cookie->id_lang));
		$totalNB = $neverBought['total'];
		$productsNB = $neverBought['result'];
		
		$totalBought = $this->getTotalBought();
		$averagePurchase = $total ? ($totalBought / $total) : 0;
		
		$totalPageViewed = $this->getTotalPageViewed();
		$averageViewed = $total ? ($totalPageViewed / $total) : 0;		
		$conversion = number_format((float)($totalPageViewed ? ($totalBought / $totalPageViewed) : 0), 2, '.', '');
		if ($conversionReverse = number_format((float)($totalBought ? ($totalPageViewed / $totalBought) : 0), 2, '.', ''))
			$conversion .= ' (1 '.$this->l('purchase').' / '.$conversionReverse.' '.$this->l('visits').')';

		$totalNV = $total - $this->getTotalProductViewed();
		
		$html = '
		<script type="text/javascript" language="javascript">$(\'#calendar\').slideToggle();</script>
		<fieldset class="width3"><legend><img src="../modules/'.$this->name.'/logo.gif" /> '.$this->displayName.'</legend>
			<label>
				'.$this->l('Choose a category').'
			</label>
			<div class="margin-form">
				<form action="" method="post" id="categoriesForm">
					<select name="id_category" onchange="$(\'#categoriesForm\').submit();">
						<option value="0">'.$this->l('All').'</option>';
		foreach ($categories as $category)
			$html .= '<option value="'.$category['id_category'].'"'.($id_category == $category['id_category'] ? ' selected="selected"' : '').'>'.$category['name'].'</option>';
		$html .= '
					</select>
				</form>
			</div>
			<div class="clear space"></div>
			<table>
				'.$this->returnLine($this->l('Products available:'), (int)($total)).'
				'.$this->returnLine($this->l('Average price (base price):'), Tools::displayPrice($averagePrice, $currency)).'
				'.$this->returnLine($this->l('Product pages viewed:'), (int)($totalPageViewed)).'
				'.$this->returnLine($this->l('Products bought:'), (int)($totalBought)).'
				'.$this->returnLine($this->l('Average number of page visits:'), number_format((float)($averageViewed), 2, '.', '')).'
				'.$this->returnLine($this->l('Average number of purchases:'), number_format((float)($averagePurchase), 2, '.', '')).'
				'.$this->returnLine($this->l('Images available:'), (int)($totalPictures)).'
				'.$this->returnLine($this->l('Average number of images:'), number_format((float)($averagePictures), 2, '.', '')).'
				'.$this->returnLine($this->l('Products never viewed:'), (int)($totalNV).' / '.(int)($total)).'
				'.$this->returnLine('<a style="cursor : pointer" onclick="$(\'#pnb\').slideToggle();">'.$this->l('Products never purchased:').'</a>', (int)($totalNB).' / '.(int)($total)).'
				'.$this->returnLine($this->l('Conversion rate*:'), $conversion).'
			</table>
			<div style="margin-top: 20px;">
				<span style="color:red;font-weight:bold">*</span> 
				'.$this->l('Average conversion rate for the product page. It is possible to purchase a product without viewing the product page, so this rate can be greater than 1.').'
			</div>
		</fieldset>';
		
		if (sizeof($productsNB) AND sizeof($productsNB) < 50)
		{
			$html .= '
			<fieldset class="width3 space"><legend><img src="../modules/'.$this->name.'/basket_delete.png" /> '.$this->l('Products never purchased').'</legend>
				<table cellpadding="0" cellspacing="0" class="table">
					<tr><th>'.$this->l('ID').'</th><th>'.$this->l('Name').'</th><th>'.$this->l('Edit / View').'</th></tr>';
			foreach ($productsNB as $product)
				$html .= '
					<tr'.($irow++ % 2 ? ' class="alt_row"' : '').'>
						<td>'.$product['id_product'].'</td>
						<td style="width: 400px;">'.$product['name'].'</td>
						<td style="text-align: right">
							<a href="index.php?tab=AdminCatalog&id_product='.$product['id_product'].'&addproduct&token='.$productToken.'" target="_blank"><img src="../modules/'.$this->name.'/page_edit.png" /></a>
							<a href="'.$link->getProductLink($product['id_product'], $product['link_rewrite']).'" target="_blank"><img src="../modules/'.$this->name.'/application_home.png" /></a>
						</td>
					</tr>';
			$html .= '
				</table>
			</fieldset>';
		}
		return $html;
	}
	
	private function returnLine($label, $data)
	{
		return '<tr><td>'.$label.'</td><td style="color:green;font-weight:bold;padding-left:20px;">'.$data.'</td></tr>';
	}
}


