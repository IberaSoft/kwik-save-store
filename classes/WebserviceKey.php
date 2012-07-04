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
*  @version  Release: $Revision: 7767 $
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class WebserviceKeyCore extends ObjectModel
{
 	/** @var string Key */
	public 		$key;
	
	/** @var boolean Webservice Account statuts */
	public 		$active = true;
	
	/** @var string Webservice Account description */
	public 		$description;
	
 	protected 	$fieldsRequired = array('key');
 	protected 	$fieldsSize = array('key' => 32);
 	protected 	$fieldsValidate = array('active' => 'isBool');

	protected 	$table = 'webservice_account';
	protected 	$identifier = 'id_webservice_account';

	
	public function add($autodate = true, $nullValues = false)
	{
		if (WebserviceKey::keyExists($this->key))
			return false;
		return parent::add($autodate = true, $nullValues = false);
	}
	
	static public function keyExists($key)
	{
		return (!Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('SELECT `key` 
			FROM '._DB_PREFIX_.'webservice_account 
			WHERE `key` = \''.pSQL($key).'\'') ? false : true);
	}
	
	public function getFields()
	{
		parent::validateFields();
		
		$fields['key'] = pSQL($this->key);
		$fields['active'] = (int)($this->active);
		$fields['description'] = pSQL($this->description);
		return $fields;
	}
	
	public function delete()
	{
		if (!parent::delete() OR $this->deleteAssociations() === false)
			return false;
		return true;
	}
	
	public function deleteAssociations()
	{
		if (
			Db::getInstance()->Execute('
				DELETE FROM `'._DB_PREFIX_.'webservice_permission`
				WHERE `id_webservice_account` = '.(int)($this->id)) === false
			||
			Db::getInstance()->Execute('
				DELETE FROM `'._DB_PREFIX_.'webservice_permission`
				WHERE `id_webservice_account` = '.(int)($this->id)) === false
			)
			return false;
		return true;
	}
	
	public static function getPermissionForAccount($auth_key)
	{
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('
			SELECT p.*
			FROM `'._DB_PREFIX_.'webservice_permission` p
			LEFT JOIN `'._DB_PREFIX_.'webservice_account` a ON (a.id_webservice_account = p.id_webservice_account)
			WHERE a.key = \''.pSQL($auth_key).'\'
		');
		$permissions = array();
		if ($result)
			foreach ($result as $row)
				$permissions[$row['resource']][] = $row['method'];
		return $permissions;
	}
	
	public static function isKeyActive($auth_key)
	{
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('
			SELECT a.active
			FROM `'._DB_PREFIX_.'webservice_account` a
			WHERE a.key = \''.pSQL($auth_key).'\'
		');
		if (!isset($result[0]))
			return null;
		else
		{
			return isset($result[0]['active']) && $result[0]['active'];
		}
	}
	
	public static function getClassFromKey($auth_key)
	{
		$result = Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('
			SELECT a.class_name as class
			FROM `'._DB_PREFIX_.'webservice_account` a
			WHERE a.key = \''.pSQL($auth_key).'\'
		');
		if (!isset($result[0]))
			return null;
		else
		{
			return $result[0]['class'];
		}
	}
	
	public static function setPermissionForAccount($idAccount, $permissionsToSet)
	{
		$ok = true;
		$sql = 'DELETE FROM `'._DB_PREFIX_.'webservice_permission` WHERE `id_webservice_account` = '.(int)($idAccount);
		if (!Db::getInstance(_PS_USE_SQL_SLAVE_)->Execute($sql))
			$ok = false;
		if (isset($permissionsToSet))
			{
				$permissions = array();
				$resources = WebserviceRequest::getResources();
				$methods = array('GET', 'PUT', 'POST', 'DELETE', 'HEAD');
				foreach ($permissionsToSet as $resourceName => $resource_methods)
					if (in_array($resourceName, array_keys($resources)))
						foreach (array_keys($resource_methods) as $methodName)
							if (in_array($methodName, $methods))
								$permissions[] = array($methodName, $resourceName);
				$account = new WebserviceKey($idAccount);
				if ($account->deleteAssociations() && $permissions)
				{
					$sql = 'INSERT INTO `'._DB_PREFIX_.'webservice_permission` (`id_webservice_permission` ,`resource` ,`method` ,`id_webservice_account`) VALUES ';
					foreach ($permissions as $permission)
						$sql .= '(NULL , \''.pSQL($permission[1]).'\', \''.pSQL($permission[0]).'\', '.(int)($idAccount).'), ';
					$sql = rtrim($sql, ', ');
					if (!Db::getInstance(_PS_USE_SQL_SLAVE_)->Execute($sql))
						$ok = false;
				}
			}
		return $ok;
	}
}


