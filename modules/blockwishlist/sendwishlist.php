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

require_once(dirname(__FILE__).'/../../config/config.inc.php');
require_once(dirname(__FILE__).'/../../init.php');
require_once(dirname(__FILE__).'/WishList.php');

if (Configuration::get('PS_TOKEN_ENABLE') == 1 AND
	strcmp(Tools::getToken(false), Tools::getValue('token')) AND
	$cookie->isLogged() === true)
	exit(Tools::displayError('invalid token',false));

if ($cookie->isLogged())
{
	$id_wishlist = (int)(Tools::getValue('id_wishlist'));
	if (empty($id_wishlist) === true)
		exit(Tools::displayError('Invalid wishlist',false));
	for ($i = 1; empty($_POST['email'.strval($i)]) === false; ++$i)
	{
		$to = Tools::getValue('email'.$i);
		$wishlist = WishList::exists($id_wishlist, $cookie->id_customer, true);
		if ($wishlist === false)
			exit(Tools::displayError('Invalid wishlist',false));
		if (WishList::addEmail($id_wishlist, $to) === false)
			exit(Tools::displayError('Wishlist send error',false)); 
		$toName = strval(Configuration::get('PS_SHOP_NAME'));
		$customer = new Customer((int)($cookie->id_customer));
		if (Validate::isLoadedObject($customer))
			Mail::Send((int)($cookie->id_lang), 'wishlist', Mail::l('Message from ').$customer->lastname.' '.$customer->firstname,
			array(
			'{lastname}' => $customer->lastname, 
			'{firstname}' => $customer->firstname, 
			'{wishlist}' => $wishlist['name'],
			'{message}' => Tools::getProtocol().htmlentities($_SERVER['HTTP_HOST'], ENT_COMPAT, 'UTF-8').__PS_BASE_URI__.'modules/blockwishlist/view.php?token='.$wishlist['token']),
			$to, $toName, $customer->email, $customer->firstname.' '.$customer->lastname, NULL, NULL, dirname(__FILE__).'/mails/');
	}
}
