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
*  @version  Release: $Revision: 6594 $
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class RangePriceCore extends ObjectModel
{
	public		$id_carrier;
	public 		$delimiter1;
	public 		$delimiter2;
	
 	protected 	$fieldsRequired = array('id_carrier', 'delimiter1', 'delimiter2');
 	protected 	$fieldsValidate = array('id_carrier' => 'isInt', 'delimiter1' => 'isUnsignedFloat', 'delimiter2' => 'isUnsignedFloat');

	protected 	$table = 'range_price';
	protected 	$identifier = 'id_range_price';

	protected	$webserviceParameters = array(
			'objectsNodeName' => 'price_ranges',
			'objectNodeName' => 'price_range',
			'fields' => array(
				'id_carrier' => array('xlink_resource' => 'carriers'),
			)
	);
	
	public function getFields()
	{
		parent::validateFields();
		$fields['id_carrier'] = (int)($this->id_carrier);
		$fields['delimiter1'] = (float)($this->delimiter1);
		$fields['delimiter2'] = (float)($this->delimiter2);
		return $fields;
	}
	
	/**
	* Get all available price ranges
	*
	* @return array Ranges
	*/
	public static function getRanges($id_carrier)
	{
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('
		SELECT * 
		FROM `'._DB_PREFIX_.'range_price` 
		WHERE `id_carrier` = '.(int)($id_carrier).' 
		ORDER BY `delimiter1` ASC');
	}
}

