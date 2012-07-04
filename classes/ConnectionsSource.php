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
*  @version  Release: $Revision: 7541 $
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class ConnectionsSourceCore extends ObjectModel
{
	public $id_connections;
	public $http_referer;
	public $request_uri;
	public $keywords;
	public $date_add;

	// Controler les keywords
	
	protected	$fieldsRequired = array('id_connections', 'date_add');
	protected	$fieldsValidate = array('id_connections' => 'isUnsignedId', 'http_referer' => 'isAbsoluteUrl', 'request_uri' => 'isUrl', 'keywords' => 'isMessage');

	protected 	$table = 'connections_source';
	protected 	$identifier = 'id_connections_source';
	
	public function getFields()
	{
		parent::validateFields();
		$fields['id_connections'] = (int)($this->id_connections);
		$fields['http_referer'] = pSQL($this->http_referer);
		$fields['request_uri'] = pSQL($this->request_uri);
		$fields['keywords'] = pSQL($this->keywords);
		$fields['date_add'] = pSQL($this->date_add);
		return $fields;
	}
	
	public function add($autodate = true, $nullValues = false)
	{
		if ($result = parent::add($autodate, $nullValues))
			Referrer::cacheNewSource($this->id);
		return $result;
	}
	
	public static function logHttpReferer()
	{
		global $cookie;

		if (!isset($cookie->id_connections) OR !Validate::isUnsignedId($cookie->id_connections))
			return false;
		if (!isset($_SERVER['HTTP_REFERER']) AND !Configuration::get('TRACKING_DIRECT_TRAFFIC'))
			return false;
		
		$source = new ConnectionsSource();
		if (isset($_SERVER['HTTP_REFERER']) AND Validate::isAbsoluteUrl($_SERVER['HTTP_REFERER']))
		{
			$parsed = parse_url($_SERVER['HTTP_REFERER']);
			$parsed_host = parse_url(Tools::getProtocol().Tools::getHttpHost(false, false).__PS_BASE_URI__);
			if ((preg_replace('/^www./', '', $parsed['host']) == preg_replace('/^www./', '', Tools::getHttpHost(false, false))) 
				AND !strncmp($parsed['path'], $parsed_host['path'], strlen(__PS_BASE_URI__)))
				return false;
			if (Validate::isAbsoluteUrl(strval($_SERVER['HTTP_REFERER'])))
			{
				$source->http_referer = strval($_SERVER['HTTP_REFERER']);
				$source->keywords = trim(SearchEngine::getKeywords(strval($_SERVER['HTTP_REFERER'])));
				if (!Validate::isMessage($source->keywords))
					return false;
			}
		}
		
		$source->id_connections = (int)($cookie->id_connections);
		$source->request_uri = Tools::getHttpHost(false, false);
		if (isset($_SERVER['REDIRECT_URL']))
			$source->request_uri .= strval($_SERVER['REDIRECT_URL']);
		elseif (isset($_SERVER['REQUEST_URI']))
			$source->request_uri .= strval($_SERVER['REQUEST_URI']);
		if (!Validate::isUrl($source->request_uri))
			$source->request_uri = '';
		return $source->add();
	}
	
	public static function getOrderSources($id_order)
	{
		return Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('
		SELECT cos.http_referer, cos.request_uri, cos.keywords, cos.date_add
		FROM '._DB_PREFIX_.'orders o
		INNER JOIN '._DB_PREFIX_.'guest g ON g.id_customer = o.id_customer
		INNER JOIN '._DB_PREFIX_.'connections co  ON co.id_guest = g.id_guest
		INNER JOIN '._DB_PREFIX_.'connections_source cos ON cos.id_connections = co.id_connections
		WHERE id_order = '.(int)($id_order).'
		ORDER BY cos.date_add DESC');
	}
}


