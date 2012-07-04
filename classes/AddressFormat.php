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
*  @version  Release: $Revision: 7554 $
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class AddressFormatCore extends ObjectModel
{
	/** @var integer */
	public $id_address_format;
	
	/** @var integer */
	public $id_country;

	/** @var string */
	public $format;

	private $_errorFormatList = array();

	protected	$fieldsRequired = array ('format');	
	protected	$fieldsValidate = array ('format' => 'isGenericName');

	/* MySQL does not allow 'order detail' for a table name */
	protected	$table = 'address_format';
	protected $identifier = 'id_country';
	
	public static $requireFormFieldsList = array(
		'firstname',
		'name',
		'address1',
		'city',
		'postcode',
		'Country:name',
		'State:name');
		
	public static $forbiddenPropertyList = array(
		'deleted',
		'date_add',
		'other',
		'alias',
		'secure_key',
		'note',
		'newsletter',
		'ip_registration_newsletter',
		'newsletter_date_add',
		'optin',
		'passwd',
		'last_passwd_gen',
		'active',
		'is_guest',
		'date_upd',
		'years',
		'days',
		'months',
		'description',
		'meta_description',
		'short_description',
		'link_rewrite',
		'meta_title',
		'meta_keywords',
		'display_tax_label',
		'need_zip_code',
		'contains_states',
		'call_prefixes',
		'call_prefix');
		
	public static $forbiddenClassList = array(
		'Manufacturer',
		'Supplier');
		
	const _CLEANING_REGEX_ = '#([^\w:_]+)#i';

	public function getFields()
	{
		parent::validateFields();

		$fields['id_country'] = (int)($this->id_country);
		$fields['format'] = pSQL($this->format);
		
		return $fields;
	}

	/*
	 * Check if the the association of the field name and a class name
	 * is valide
	 * @className is the name class
	 * @fieldName is a property name
	 * @isIdField boolean to know if we have to allowed a property name started by 'id_'
	 */
	private function _checkValidateClassField($className, $fieldName, $isIdField)
	{
		$isValide = false;

		if (!class_exists($className))
			$this->_errorFormatList[] = Tools::displayError('This class name doesn\'t exist').
			': '.$className;
		else
		{
			$obj = new $className();
			$reflect = new ReflectionObject($obj);
			
			// Check if the property is accessible
			$publicProperties = $reflect->getProperties(ReflectionProperty::IS_PUBLIC);
			foreach($publicProperties as $property)
			{
				$propertyName = $property->getName();
				if (($propertyName == $fieldName) && ($isIdField ||
						(!preg_match('#id|id_\w#', $propertyName))))
					$isValide = true;
			}
			
			if (!$isValide)
				$this->_errorFormatList[] = Tools::displayError('This property doesn\'t exist in the class or is forbidden').
				': '.$className.': '.$fieldName;
				
			unset($obj);
			unset($reflect);
		}
		return $isValide;
	}
	
	/*
	 * Verify the existence of a field name and check the availability
	 * of an association between a field name and a class (ClassName:fieldName)
	 * if the separator is overview
	 * @patternName is the composition of the class and field name
	 * @fieldsValidate contains the list of available field for the Address class
	 */
	private function _checkLiableAssociation($patternName, $fieldsValidate)
	{
		$patternName = trim($patternName);
		
		if ($associationName = explode(':', $patternName))
		{
			$totalNameUsed = count($associationName);
			if ($totalNameUsed > 2)
				$this->_errorFormatList[] = Tools::displayError('This assocation contains too much key name');
			elseif ($totalNameUsed == 1)
			{
				$associationName[0] = strtolower($associationName[0]);
				if (in_array($associationName[0], self::$forbiddenPropertyList) || 
						!$this->_checkValidateClassField('Address', $associationName[0], false))
					$this->_errorFormatList[] = Tools::displayError('This name isn\'t allowed').': '.
						$associationName[0];
			}
			elseif ($totalNameUsed == 2)
			{
				if (empty($associationName[0]) || empty($associationName[1]))
					$this->_errorFormatList[] = Tools::displayError('Syntax error with this pattern').': '.$patternName;
				else
				{
					$associationName[0] = ucfirst($associationName[0]);
					$associationName[1] = strtolower($associationName[1]);
					
					if (in_array($associationName[0], self::$forbiddenClassList))
						$this->_errorFormatList[] = Tools::displayError('This name isn\'t allowed').': '.
							$associationName[0];
					else
					{
						// Check if the id field name exist in the Address class 
						$this->_checkValidateClassField('Address', 'id_'.strtolower($associationName[0]), true);
					
						// Check if the field name exist in the class write by the user
						$this->_checkValidateClassField($associationName[0], $associationName[1], false);
					}
				}
			}
		}
	}
	
	/*
	 * Check if the set fields are valide
	 */
	public function checkFormatFields()
	{
		$this->_errorFormatList = array();
		$fieldsValidate = Address::getFieldsValidate();
		$usedKeyList = array();

		$multipleLineFields = explode("\n", $this->format);
		if ($multipleLineFields && is_array($multipleLineFields))
			foreach($multipleLineFields as $lineField)
			{
				if (($patternsName = preg_split(self::_CLEANING_REGEX_, $lineField, -1, PREG_SPLIT_NO_EMPTY)))
					if (is_array($patternsName))
					{
						foreach($patternsName as $patternName)
						{
							if (!in_array($patternName, $usedKeyList))
							{
								$this->_checkLiableAssociation($patternName, $fieldsValidate);
								$usedKeyList[] = $patternName;
							}
							else
								$this->_errorFormatList[] = Tools::displayError('This key is used too many times (once allowed').
									': '.$patternName;
						}
					}
			}
		return (count($this->_errorFormatList)) ? false : true;
	}
	
	/*
	 * Returns the error list
	 */
	public function getErrorList()
	{
		return $this->_errorFormatList;
	}

	/*
	** Set the layout key with the liable value
	** example : (firstname) => 'Presta' will result (Presta)
	**         : (firstname-lastname) => 'Presta' and 'Shop' result '(Presta-Shop)'
	*/
	private static function _setOriginalDisplayFormat(&$formattedValueList, $currentLine, $currentKeyList)
	{
		if ($currentKeyList && is_array($currentKeyList))
			if ($originalFormattedPatternList = explode(' ', $currentLine))
				// Foreach the available pattern
				foreach($originalFormattedPatternList as $patternNum => $pattern)
				{
					// Var allows to modify the good formatted key value when multiple key exist into the same pattern
					$mainFormattedKey = '';
					
					// Multiple key can be found in the same pattern
					foreach($currentKeyList as $key)
					{
						// Check if we need to use an older modified pattern if a key has already be matched before
						$replacedValue = empty($mainFormattedKey) ? $pattern : $formattedValueList[$mainFormattedKey];
						if (($formattedValue = preg_replace('/'.$key.'/', $formattedValueList[$key], $replacedValue, -1, $count)))
							if ($count)
							{
								// Allow to check multiple key in the same pattern,
								if (empty($mainFormattedKey))
									$mainFormattedKey = $key;
								// Set the pattern value to an empty string if an older key has already been matched before 
								if ($mainFormattedKey != $key)
									$formattedValueList[$key] = '';
								// Store the new pattern value
								$formattedValueList[$mainFormattedKey] = $formattedValue;
								unset($originalFormattedPatternList[$patternNum]);
							}
					}		
				}
	}
	
	/*
	** Cleaned the layout set by the user
	*/
	public static function cleanOrderedAddress(&$orderedAddressField)
	{
		foreach($orderedAddressField as &$line)
		{
			$cleanedLine = '';
			if (($keyList = preg_split(self::_CLEANING_REGEX_, $line, -1, PREG_SPLIT_NO_EMPTY)))
			{
				foreach($keyList as $key)
					$cleanedLine .= $key.' ';
				$cleanedLine = trim($cleanedLine);
				$line = $cleanedLine;
			}
		}
	}
	
	/*
	 * Returns the formatted fields with associated values
	 * 
	 * @address is an instancied Address object
	 * @addressFormat is the format
	 * @return double Array
	 */
	public static function getFormattedAddressFieldsValues($address, &$addressFormat)
	{
		global $cookie;
		
		$tab = array();
		$temporyObject = array();
		
		// Check if $address exist and it's an instanciate object of Address
		if ($address && ($address instanceof Address))
			foreach($addressFormat as $line)
			{
				if (($keyList = preg_split(self::_CLEANING_REGEX_, $line, -1, PREG_SPLIT_NO_EMPTY)) && is_array($keyList))
				{
					foreach($keyList as $pattern)
						if ($associateName = explode(':', $pattern))
						{
							$totalName = count($associateName);
							if ($totalName == 1 && isset($address->{$associateName[0]}))
								$tab[$associateName[0]] = $address->{$associateName[0]};
							else 
							{
								$tab[$pattern] = '';
								
								// Check if the property exist in both classes
								if (($totalName == 2) && class_exists($associateName[0]) &&
									Tools::property_exists($associateName[0], $associateName[1]) &&
									Tools::property_exists($address, 'id_'.strtolower($associateName[0])))
								{
									$idFieldName = 'id_'.strtolower($associateName[0]);

									if (!isset($temporyObject[$associateName[0]]))
										$temporyObject[$associateName[0]] = new $associateName[0]($address->{$idFieldName});
									if ($temporyObject[$associateName[0]])
										$tab[$pattern] = (is_array($temporyObject[$associateName[0]]->{$associateName[1]})) ?
											((isset($temporyObject[$associateName[0]]->{$associateName[1]}[(isset($cookie) ? $cookie->id_lang : Configuration::get('PS_LANG_DEFAULT'))])) ? 
											$temporyObject[$associateName[0]]->{$associateName[1]}[(isset($cookie) ? $cookie->id_lang : Configuration::get('PS_LANG_DEFAULT'))] : '') :
											$temporyObject[$associateName[0]]->{$associateName[1]};
								}
							}
						}
						self::_setOriginalDisplayFormat($tab, $line, $keyList);
				}
			}
		self::cleanOrderedAddress($addressFormat);
		// Free the instanciate objects
		foreach($temporyObject as &$object)
			unset($object);
		return $tab;
	}
	
	/*
	 * Generates the full address text
	 * @address is an instanciate object of Address class
	 * @patternrules is a defined rules array to avoid some pattern
	 * @newLine is a string containing the newLine format
	 * @separator is a string containing the separator format
	 */
	public static function generateAddress(Address $address, $patternRules, $newLine = "\r\n", $separator = ' ', $style = array())
	{
		$addressFields = AddressFormat::getOrderedAddressFields($address->id_country);
		$addressFormatedValues = AddressFormat::getFormattedAddressFieldsValues($address, $addressFields);
		
		$addressText = '';
		foreach ($addressFields as $line)
			if (($patternsList = preg_split(self::_CLEANING_REGEX_, $line, -1, PREG_SPLIT_NO_EMPTY)))
				{
					$tmpText = '';
					foreach($patternsList as $pattern)
						if (!in_array($pattern, $patternRules['avoid']))
							$tmpText .= (isset($addressFormatedValues[$pattern])) ?
								(((isset($style[$pattern])) ? 
									(sprintf($style[$pattern], $addressFormatedValues[$pattern])) : 
									$addressFormatedValues[$pattern]).$separator) : '';
					$tmpText = trim($tmpText);
					$addressText .= (!empty($tmpText)) ? $tmpText.$newLine: '';
				}
		return $addressText;
	}
	
	/**
	* Returns selected fields required for an address in an array according to a selection hash
	* @return array String values 
	*/
	public static function getValidateFields($className)
	{
		$propertyList = array();
		
		if (class_exists($className))
		{
			$object = new $className();
			$reflect = new ReflectionObject($object);
			
			// Check if the property is accessible
			$publicProperties = $reflect->getProperties(ReflectionProperty::IS_PUBLIC);
			foreach($publicProperties as $property)
			{
				$propertyName = $property->getName();
				if ((!in_array($propertyName, AddressFormat::$forbiddenPropertyList)) && 
						(!preg_match('#id|id_\w#', $propertyName)))
					$propertyList[] = $propertyName;
			}
			unset($object);
			unset($reflect);
		}
		return $propertyList;
	}
	
	/*
	 * Return a list of liable class of the className
	 */
	public static function getLiableClass($className)
	{
		$objectList = array();

		if (class_exists($className))
		{
			$object = new $className();
			$reflect = new ReflectionObject($object);

			// Get all the name object liable to the Address class
			$publicProperties = $reflect->getProperties(ReflectionProperty::IS_PUBLIC);
			foreach($publicProperties as $property)
			{
				$propertyName = $property->getName();
				if (preg_match('#id_\w#', $propertyName) && strlen($propertyName) > 3)
				{
					$nameObject = ucfirst(substr($propertyName, 3));
					if (!in_array($nameObject, self::$forbiddenClassList) && 
							class_exists($nameObject))
						$objectList[$nameObject] = new $nameObject();
				}
			}
			unset($object);
			unset($reflect);
		}
		return $objectList;
	}
	
	/**
	 * Returns address format fields in array by country
	 * 	
	 * @param Integer PS_COUNTRY.id if null using default country 
	 * @return Array String field address format
	 */
	public static function getOrderedAddressFields($id_country = 0, $split_all = false, $cleaned = false)
	{
		$out = array();
		$field_set = explode("\n", self::getAddressCountryFormat($id_country));
		foreach ($field_set as $field_item)
			if ($split_all)
			{
				if ($cleaned)
					$keyList = ($cleaned) ? preg_split(self::_CLEANING_REGEX_, $field_item, -1, PREG_SPLIT_NO_EMPTY) : 
						explode(' ', $field_item);
				foreach($keyList as $word_item)
					$out[] = trim($word_item);
			}
			else
				$out[] = ($cleaned) ? implode(' ', preg_split(self::_CLEANING_REGEX_, trim($field_item), -1, PREG_SPLIT_NO_EMPTY))
					: trim($field_item);
		return $out;
	}
	
	/*
	** Return a data array containing ordered, formatedValue and object fields
	*/
	public static function getFormattedLayoutData($address)
	{
		$layoutData = array();
		
		if ($address && $address instanceof Address)
		{
			$layoutData['ordered'] = AddressFormat::getOrderedAddressFields((int)$address->id_country);
			$layoutData['formated'] = AddressFormat::getFormattedAddressFieldsValues($address, $layoutData['ordered']);
			$layoutData['object'] = get_object_vars($address);
		}
		return $layoutData;
	}

	/**
	 * Returns address format by country if not defined using default country
	 * 
	 * @param Integer PS_COUNTRY.id 
	 * @return String field address format
	 */
	public static function getAddressCountryFormat($id_country = 0)
	{
		$out = '';
		$id_country = (int) $id_country;

		$tmp_obj = new AddressFormat();
		$tmp_obj->id_country = $id_country;
		$out = $tmp_obj->getFormat($tmp_obj->id_country);
		unset($tmp_obj);
		return $out;
	}

	/**
	 * Returns address format by country
	 * 
	 * @param Integer PS_COUNTRY.id 
	 * @return String field address format
	 */
	public function getFormat($id_country)
	{
		$out = $this->_getFormatDB($id_country);
		
		if (strlen(trim($out)) == 0)
			$out = $this->_getFormatDB(Configuration::get('PS_COUNTRY_DEFAULT'));
		return $out;
	}

	private function _getFormatDB($id_country)
	{
		$result = Db::getInstance()->getRow('
		SELECT format 
		FROM `'._DB_PREFIX_.$this->table.'`
		WHERE `id_country` = '.(int)($id_country));

		return isset($result['format']) ? trim($result['format']) : '';
	}
}

