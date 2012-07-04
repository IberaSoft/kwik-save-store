{* 2007-2011 PrestaShop 
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
*}

<script type="text/javascript">
	var error_message = "<p>{$error_message}</p>";
	{literal}
		$(document).ready(function(){
			if ($().live) {
				$("#account-creation_form").live("submit", function(){
					if($("#customer_privacy").length > 0 && !$("#customer_privacy").is(":checked")) {
						$("div.error_customerprivacy").empty().append(error_message);
						return false;
					} else {
						$("div.error_customerprivacy").empty();
					}
				});
			} else {
				$("#account-creation_form").submit(function(){
					if($("#customer_privacy").length > 0 && !$("#customer_privacy").is(":checked")) {
						$("div.error_customerprivacy").empty().append(error_message);
						return false;
					} else {
						$("div.error_customerprivacy").empty();
					}
				});
			}
		});
	{/literal}
</script>

<div class="error_customerprivacy" style="color:red;"></div>
<fieldset class="account_creation customerprivacy">
	<h3>{l s='Customer data privacy' mod='blockcustomerprivacy'}</h3>
	<p class="required">
		<input type="checkbox" value="1" id="customer_privacy" name="customer_privacy" style="float:left;margin: 15px;" />				
	</p>
	<label for="customer_privacy" style="float:left;width:80%;text-align:left;cursor:pointer">{$privacy_message}</label>		
</fieldset>