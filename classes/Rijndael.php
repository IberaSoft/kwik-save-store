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

class RijndaelCore
{
	protected $_key;
	protected $_iv;
	
	public function __construct($key, $iv)
	{
		$this->_key = $key;
		$this->_iv = base64_decode($iv);
	}
	
	// Base64 is not required, but it is be more compact than urlencode
	public function encrypt($plaintext)
	{
        if (($length = strlen($plaintext)) >= 1048576)
			return false;
		return base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $this->_key, $plaintext, MCRYPT_MODE_ECB, $this->_iv)).sprintf('%06d', $length);
	}

	public function decrypt($ciphertext)
	{
		$plainTextLength = intval(substr($ciphertext, -6));
		$ciphertext = substr($ciphertext, 0, -6);
		return substr(mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $this->_key, base64_decode($ciphertext), MCRYPT_MODE_ECB, $this->_iv), 0, $plainTextLength);
	}
}

