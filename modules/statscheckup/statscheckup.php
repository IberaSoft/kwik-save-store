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
*  @version  Release: $Revision: 6626 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class StatsCheckUp extends Module
{
    function __construct()
    {
        $this->name = 'statscheckup';
        $this->tab = 'analytics_stats';
        $this->version = 1.0;
		$this->author = 'PrestaShop';
		$this->need_instance = 0;

        parent::__construct();
		
        $this->displayName = $this->l('Catalog evaluation');
        $this->description = $this->l('Quick evaluation of your catalog quality.');
    }

	public function install()
	{
		foreach (array('CHECKUP_DESCRIPTIONS_LT'=>100,'CHECKUP_DESCRIPTIONS_GT'=>400,'CHECKUP_IMAGES_LT'=>1,'CHECKUP_IMAGES_GT'=>2,'CHECKUP_SALES_LT'=>1,'CHECKUP_SALES_GT'=>2,'CHECKUP_STOCK_LT'=>1,'CHECKUP_STOCK_GT'=>3) as $confname => $confdefault)
			if (!Configuration::get($confname))
				Configuration::updateValue($confname, (int)$confdefault);
		return (parent::install() && $this->registerHook('AdminStatsModules'));
	}
	
    function hookAdminStatsModules()
    {
		global $cookie, $currentIndex;
		
		if (Tools::isSubmit('submitCheckup'))
		{
			foreach (array('CHECKUP_DESCRIPTIONS_LT','CHECKUP_DESCRIPTIONS_GT','CHECKUP_IMAGES_LT','CHECKUP_IMAGES_GT','CHECKUP_SALES_LT','CHECKUP_SALES_GT','CHECKUP_STOCK_LT','CHECKUP_STOCK_GT') as $confname)
				Configuration::updateValue($confname, (int)Tools::getValue($confname));
			echo '<div class="conf confirm"><img src="../img/admin/ok.gif"> '.$this->l('Configuration updated').'</div>';
		}
		if (Tools::isSubmit('submitCheckupOrder'))
		{
			$cookie->checkup_order = (int)Tools::getValue('submitCheckupOrder');
			echo '<div class="conf confirm"><img src="../img/admin/ok.gif"> '.$this->l('Configuration updated').'</div>';
		}
		if (!isset($cookie->checkup_order))
			$cookie->checkup_order = 1;
		
		$db = Db::getInstance(_PS_USE_SQL_SLAVE_);
		$employee = new Employee((int)($cookie->id_employee));
		$prop30 = ((strtotime($employee->stats_date_to.' 23:59:59') - strtotime($employee->stats_date_from.' 00:00:00')) / 60 / 60 / 24) / 30;
		$languages = $db->ExecuteS('SELECT * FROM '._DB_PREFIX_.'lang');
		$arrayColors = array(
			0 => '<img src="../modules/'.$this->name.'/red.png" alt="'.$this->l('bad').'" />',
			1 => '<img src="../modules/'.$this->name.'/orange.png" alt="'.$this->l('average').'" />',
			2 => '<img src="../modules/'.$this->name.'/green.png" alt="'.$this->l('good').'" />'
		);
		$tokenProducts = Tools::getAdminToken('AdminCatalog'.(int)(Tab::getIdFromClassName('AdminCatalog')).(int)($cookie->id_employee));
		$divisor = 4;
		$totals = array('products' => 0, 'active' => 0, 'images' => 0, 'sales' => 0, 'stock' => 0);
		foreach ($languages as $language)
		{
			$divisor++;
			$totals['description_'.$language['iso_code']] = 0;
		}
		$orderBy = 'p.id_product';
		if ($cookie->checkup_order == 2)
			$orderBy = 'pl.name';
		elseif ($cookie->checkup_order == 3)
			$orderBy = 'nbSales DESC';
			
		$result = $db->ExecuteS('
		SELECT p.id_product, p.active, pl.name, (
			SELECT COUNT(*)
			FROM '._DB_PREFIX_.'image i
			WHERE i.id_product = p.id_product
		) as nbImages, (
			SELECT SUM(od.product_quantity)
			FROM '._DB_PREFIX_.'orders o
			LEFT JOIN '._DB_PREFIX_.'order_detail od ON o.id_order = od.id_order
			WHERE od.product_id = p.id_product
			AND o.invoice_date BETWEEN '.ModuleGraph::getDateBetween().'
		) as nbSales, IFNULL((
			SELECT SUM(pa.quantity)
			FROM '._DB_PREFIX_.'product_attribute pa
			WHERE pa.id_product = p.id_product
		), p.quantity) as stock
		FROM '._DB_PREFIX_.'product p
		LEFT JOIN '._DB_PREFIX_.'product_lang pl ON (p.id_product = pl.id_product AND pl.id_lang = '.(int)$cookie->id_lang.')
		ORDER BY '.$orderBy);
		
		$arrayConf = array(
			'DESCRIPTIONS' => array('name' => $this->l('Descriptions'), 'text' => $this->l('chars (without HTML)')),
			'IMAGES' => array('name' => $this->l('Images'), 'text' => $this->l('images')),
			'SALES' => array('name' => $this->l('Sales'), 'text' => $this->l('orders / month')),
			'STOCK' => array('name' => $this->l('Stock'), 'text' => $this->l('items'))
		);
		
		$html = '
		<style type="text/css">
			form.checkup input[type=text] {width:30px}
			table.checkup {float:left}
			form.checkup div {float:left;margin-left:20px}
			table.checkup th {text-align:center}
			table.checkup td {padding:5px 10px}
			table.checkup2 td {text-align:right}
		</style>
		<form action="'.$currentIndex.'&token='.Tools::getValue('token').'&module='.$this->name.'" method="post" class="checkup">
		<table class="table checkup" border="0" cellspacing="0" cellspacing="0">
			<tr><th></th><th>'.$arrayColors[0].' '.$this->l('Not enough').'</th><th>'.$arrayColors[2].' '.$this->l('Alright').'</th></tr>';
		foreach ($arrayConf as $conf => $translations)
			$html .= '<tr>
				<th>'.$translations['name'].'</th>
				<td>'.$this->l('lower than').' <input type="text" name="CHECKUP_'.$conf.'_LT" value="'.Tools::getValue('CHECKUP_'.$conf.'_LT', Configuration::get('CHECKUP_'.$conf.'_LT')).'" /> '.$translations['text'].'
				<td>'.$this->l('greater than').' <input type="text" name="CHECKUP_'.$conf.'_GT" value="'.Tools::getValue('CHECKUP_'.$conf.'_GT', Configuration::get('CHECKUP_'.$conf.'_GT')).'" /> '.$translations['text'].'
			</tr>';
		$html .= '</table>
			<div><input type="submit" name="submitCheckup" class="button" value="'.$this->l('   Save   ').'" /></div>
		</form>
		<div class="clear">&nbsp;</div>
		<form action="'.$currentIndex.'&token='.Tools::getValue('token').'&module='.$this->name.'" method="post">
			'.$this->l('Order by').'
			<select name="submitCheckupOrder" onchange="this.form.submit();" style="width:100px">
				<option value="1">'.$this->l('ID').'</option>
				<option value="2" '.($cookie->checkup_order == 2 ? 'selected="selected"' : '').'>'.$this->l('Name').'</option>
				<option value="3" '.($cookie->checkup_order == 3 ? 'selected="selected"' : '').'>'.$this->l('Sales').'</option>
			</select>
		</form>
		<div class="clear">&nbsp;</div>
		<table class="table checkup2" border="0" cellspacing="0" cellspacing="0">
			<tr>
				<th>'.$this->l('ID').'</th>
				<th>'.$this->l('Item').'</th>
				<th>'.$this->l('Active').'</th>';
		foreach ($languages as $language)
			$html .= '<th>'.$this->l('Desc.').' ('.strtoupper($language['iso_code']).')</th>';
		$html .= '
				<th>'.$this->l('Images').'</th>
				<th>'.$this->l('Sales').'</th>
				<th>'.$this->l('Stock').'</th>
				<th>'.$this->l('Global').'</th>
			</tr>';
		foreach ($result as $row)
		{
			$totals['products']++;
			$scores = array(
				'active' => ($row['active'] ? 2 : 0),
				'images' => ($row['nbImages'] < Configuration::get('CHECKUP_IMAGES_LT') ? 0 : ($row['nbImages'] > Configuration::get('CHECKUP_IMAGES_GT') ? 2 : 1)),
				'sales' => (($row['nbSales'] * $prop30 < Configuration::get('CHECKUP_SALES_LT')) ? 0 : (($row['nbSales'] * $prop30 > Configuration::get('CHECKUP_SALES_GT')) ? 2 : 1)),
				'stock' => (($row['stock'] < Configuration::get('CHECKUP_STOCK_LT')) ? 0 : (($row['stock'] > Configuration::get('CHECKUP_STOCK_GT')) ? 2 : 1)),
			);
			$totals['active'] += (int)$scores['active'];
			$totals['images'] += (int)$scores['images'];
			$totals['sales'] += (int)$scores['sales'];
			$totals['stock'] += (int)$scores['stock'];
			$descriptions = $db->ExecuteS('SELECT iso_code, description FROM '._DB_PREFIX_.'product_lang pl LEFT JOIN '._DB_PREFIX_.'lang l ON pl.id_lang = l.id_lang WHERE id_product = '.(int)$row['id_product']);
			foreach ($descriptions as $description)
			{
				$row['desclength_'.$description['iso_code']] = Tools::strlen(strip_tags($description['description']));
				$scores['description_'.$description['iso_code']] = ($row['desclength_'.$description['iso_code']] < Configuration::get('CHECKUP_DESCRIPTIONS_LT') ? 0 : ($row['desclength_'.$description['iso_code']] > Configuration::get('CHECKUP_DESCRIPTIONS_GT') ? 2 : 1));
				$totals['description_'.$description['iso_code']] += $scores['description_'.$description['iso_code']];
			}
			$scores['average'] = array_sum($scores) / $divisor;
			$scores['average'] = ($scores['average'] < 1 ? 0 : ($scores['average'] > 1.5 ? 2 : 1));
			
			$html .= '<tr>
				<td>'.$row['id_product'].'</td>
				<td style="text-align:left"><a href="index.php?tab=AdminCatalog&updateproduct&id_product='.$row['id_product'].'&token='.$tokenProducts.'">'.Tools::substr($row['name'], 0, 42).'</a></td>
				<td>'.$arrayColors[$scores['active']].'</td>';
			foreach ($languages as $language)
				if (isset($row['desclength_'.$language['iso_code']]))
					$html .= '<td>'.(int)$row['desclength_'.$language['iso_code']].' '.$arrayColors[$scores['description_'.$language['iso_code']]].'</td>';
				else
					$html .= '<td>0 '.$arrayColors[0].'</td>';
			$html .= '
				<td>'.(int)$row['nbImages'].' '.$arrayColors[$scores['images']].'</td>
				<td>'.(int)$row['nbSales'].' '.$arrayColors[$scores['sales']].'</td>
				<td>'.(int)$row['stock'].' '.$arrayColors[$scores['stock']].'</td>
				<td>'.$arrayColors[$scores['average']].'</td>
			</tr>';
		}
		
		$totals['active'] = $totals['active'] / $totals['products'];
		$totals['active'] = ($totals['active'] < 1 ? 0 : ($totals['active'] > 1.5 ? 2 : 1));
		$totals['images'] = $totals['images'] / $totals['products'];
		$totals['images'] = ($totals['images'] < 1 ? 0 : ($totals['images'] > 1.5 ? 2 : 1));
		$totals['sales'] = $totals['sales'] / $totals['products'];
		$totals['sales'] = ($totals['sales'] < 1 ? 0 : ($totals['sales'] > 1.5 ? 2 : 1));
		$totals['stock'] = $totals['stock'] / $totals['products'];
		$totals['stock'] = ($totals['stock'] < 1 ? 0 : ($totals['stock'] > 1.5 ? 2 : 1));
		foreach ($languages as $language)
		{
			$totals['description_'.$language['iso_code']] = $totals['description_'.$language['iso_code']] / $totals['products'];
			$totals['description_'.$language['iso_code']] = ($totals['description_'.$language['iso_code']] < 1 ? 0 : ($totals['description_'.$language['iso_code']] > 1.5 ? 2 : 1));
		}
		$totals['average'] = array_sum($totals) / $divisor;
		$totals['average'] = ($totals['average'] < 1 ? 0 : ($totals['average'] > 1.5 ? 2 : 1));
		
		$html .= '
			<tr>
				<th colspan="2"></th>
				<th>'.$this->l('Active').'</th>';
		foreach ($languages as $language)
			$html .= '<th>'.$this->l('Desc.').' ('.strtoupper($language['iso_code']).')</th>';
		$html .= '
				<th>'.$this->l('Images').'</th>
				<th>'.$this->l('Sales').'</th>
				<th>'.$this->l('Stock').'</th>
				<th>'.$this->l('Global').'</th>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td>'.$arrayColors[$totals['active']].'</td>';
		foreach ($languages as $language)
			$html .= '<td>'.$arrayColors[$totals['description_'.$language['iso_code']]].'</td>';
		$html .= '
				<td>'.$arrayColors[$totals['images']].'</td>
				<td>'.$arrayColors[$totals['sales']].'</td>
				<td>'.$arrayColors[$totals['stock']].'</td>
				<td>'.$arrayColors[$totals['average']].'</td>
			</tr>
		</table>
		<div class="clear">&nbsp;</div>
		<script type="text/javascript">
			$(document).ready(function(){$("#container").css("width", "1200px");});
		</script>';
		
        return $html;
    }
}


