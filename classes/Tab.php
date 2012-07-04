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
*  @version  Release: $Revision: 7540 $
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class TabCore extends ObjectModel
{
	/** @var string Displayed name*/
	public		$name;

	/** @var string Class and file name*/
	public		$class_name;
	
	public		$module;

	/** @var integer parent ID */
	public		$id_parent;

	/** @var integer position */
	public		$position;

	protected	$fieldsRequired = array('class_name', 'position');
	protected	$fieldsSize = array('class_name' => 64, 'module' => 64);
	protected	$fieldsValidate = array('id_parent' => 'isInt', 'position' => 'isUnsignedInt', 'module' => 'isTabName');

	protected	$fieldsRequiredLang = array('name');
	protected	$fieldsSizeLang = array('name' => 32);
	protected	$fieldsValidateLang = array('name' => 'isGenericName');

	protected 	$table = 'tab';
	protected 	$identifier = 'id_tab';
	
	protected static $_getIdFromClassName = null;
	
	public function getFields()
	{
		parent::validateFields();
		$fields['id_parent'] = (int)($this->id_parent);
		$fields['class_name'] = pSQL($this->class_name);
		$fields['module'] = pSQL($this->module);
		$fields['position'] = (int)($this->position);
		return $fields;
	}

	public function getTranslationsFieldsChild()
	{
		parent::validateFieldsLang();
		return parent::getTranslationsFields(array('name'));
	}

	public function add($autodate = true, $nullValues = false)
	{
		$this->position = self::getNbTabs($this->id_parent) + 1;
		if (parent::add($autodate, $nullValues))
			return self::initAccess($this->id);
		return false;
	}
	
	public static function initAccess($id_tab)
	{
	 	/* Cookie's loading */
	 	global $cookie;
	 	if (!is_object($cookie) OR !$cookie->profile)
	 		return false;
	 	/* Profile selection */
	 	$profiles = Db::getInstance()->ExecuteS('SELECT `id_profile` FROM '._DB_PREFIX_.'profile');
	 	if (!$profiles OR empty($profiles))
	 		return false;
	 	/* Query definition */
	 	$query = 'INSERT INTO `'._DB_PREFIX_.'access` VALUES ';
	 	foreach ($profiles AS $profile)
	 	{
	 	 	$rights = (((int)($profile['id_profile']) == 1 OR (int)($profile['id_profile']) == $cookie->profile) ? 1 : 0);
	 	 	$query .= ($profile === $profiles[0] ? '' : ', ').'('.(int)($profile['id_profile']).', '.(int)($id_tab).', '.$rights.', '.$rights.', '.$rights.', '.$rights.')';
	 	}
	 	return Db::getInstance()->Execute($query);
	}

	public function delete()
	{
	 	if (Db::getInstance()->Execute('DELETE FROM '._DB_PREFIX_.'access WHERE `id_tab` = '.(int)($this->id)) AND parent::delete())
			return $this->cleanPositions($this->id_parent);
		return false;
	}

	/**
	 * Get tab id
	 *
	 * @return integer tab id
	 */
	public static function getCurrentTabId()
	{
		return self::getIdFromClassName(Tools::getValue('tab'));
	}

	/**
	 * Get tab parent id
	 *
	 * @return integer tab parent id
	 */
	public static function getCurrentParentId()
	{
	 	if ($result = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow('SELECT `id_parent` FROM `'._DB_PREFIX_.'tab` WHERE LOWER(class_name) = \''.pSQL(Tools::strtolower(Tools::getValue('tab'))).'\''))
		 	return $result['id_parent'];
 		return -1;
	}

	/**
	 * Get tab
	 *
	 * @return array tab
	 */
	public static function getTab($id_lang, $id_tab)
	{
		/* Tabs selection */
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow('
		SELECT *
		FROM `'._DB_PREFIX_.'tab` t
		LEFT JOIN `'._DB_PREFIX_.'tab_lang` tl ON (t.`id_tab` = tl.`id_tab` AND tl.`id_lang` = '.(int)($id_lang).')
		WHERE t.`id_tab` = '.(int)($id_tab));
	}

	/**
	 * Get tabs
	 *
	 * @return array tabs
	 */
	static $_cache_tabs = array();
	public static function getTabs($id_lang, $id_parent = NULL)
	{
		if (!isset(self::$_cache_tabs[$id_lang]))
		{
			self::$_cache_tabs[$id_lang] = array();
			$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('
			SELECT *
			FROM `'._DB_PREFIX_.'tab` t
			LEFT JOIN `'._DB_PREFIX_.'tab_lang` tl ON (t.`id_tab` = tl.`id_tab` AND tl.`id_lang` = '.(int)$id_lang.')
			ORDER BY t.`position` ASC');
			foreach ($result as $row)
			{
				if (!isset(self::$_cache_tabs[$id_lang][$row['id_parent']]))
					self::$_cache_tabs[$id_lang][$row['id_parent']] = array();
				self::$_cache_tabs[$id_lang][$row['id_parent']][] = $row;
			}
		}
		if ($id_parent === null)
		{
			$array_all = array();
			foreach (self::$_cache_tabs[$id_lang] as $array_parent)
				$array_all = array_merge($array_all, $array_parent);
			return $array_all;
		}
		return (isset(self::$_cache_tabs[$id_lang][$id_parent]) ? self::$_cache_tabs[$id_lang][$id_parent] : array());
	}

	/**
	 * Get tab id from name
	 *
	 * @param string class_name
	 * @return int id_tab
	 */
	public static function getIdFromClassName($class_name)
	{
		if (self::$_getIdFromClassName === null)
		{
			self::$_getIdFromClassName = array();
			$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('SELECT id_tab, class_name FROM `'._DB_PREFIX_.'tab`');
			foreach ($result as $row)
				self::$_getIdFromClassName[$row['class_name']] = $row['id_tab'];
		}
		return (isset(self::$_getIdFromClassName[$class_name]) ? (int)self::$_getIdFromClassName[$class_name] : false);
	}

	/**
	 * @deprecated
	 * @param int $id_tab
	 */
	public static function getClassNameFromID($id_tab)
	{
		Tools::displayAsDeprecated();
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->getValue('SELECT class_name FROM `'._DB_PREFIX_.'tab` t WHERE t.`id_tab` = \''.(int)$id_tab.'\'');
	}

	public static function getNbTabs($id_parent = NULL)
	{
		return (int)Db::getInstance()->getValue('
		SELECT COUNT(*)
		FROM `'._DB_PREFIX_.'tab` t
		'.($id_parent !== NULL ? 'WHERE t.`id_parent` = '.(int)$id_parent : ''));
	}

	public function move($direction)
	{
		$nbTabs = self::getNbTabs($this->id_parent);
		if ($direction != 'l' AND $direction != 'r')
			return false;
		if ($nbTabs <= 1)
			return false;
		if ($direction == 'l' AND $this->position <= 1)
			return false;
		if ($direction == 'r' AND $this->position >= $nbTabs)
			return false;

		$newPosition = ($direction == 'l') ? $this->position - 1 : $this->position + 1;
		Db::getInstance()->Execute('UPDATE `'._DB_PREFIX_.'tab` t SET position = '.(int)($this->position).' WHERE id_parent = '.(int)($this->id_parent).' AND position = '.(int)($newPosition));
		$this->position = $newPosition;
		return $this->update();
	}

	public function cleanPositions($id_parent)
	{
		$result = Db::getInstance()->ExecuteS('
		SELECT `id_tab`
		FROM `'._DB_PREFIX_.'tab`
		WHERE `id_parent` = '.(int)($id_parent).'
		ORDER BY `position`');
		$sizeof = sizeof($result);
		for ($i = 0; $i < $sizeof; ++$i)
			Db::getInstance()->Execute('
			UPDATE `'._DB_PREFIX_.'tab`
			SET `position` = '.($i + 1).'
			WHERE `id_tab` = '.(int)($result[$i]['id_tab']));
		return true;
	}
}


