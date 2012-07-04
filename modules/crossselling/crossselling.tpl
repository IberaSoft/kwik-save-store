{*
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
*}

{if isset($orderProducts) && count($orderProducts)}
<div id="crossselling">
	<script type="text/javascript">var middle = {$middlePosition_crossselling};</script>
	<script type="text/javascript" src="{$content_dir}modules/crossselling/js/crossselling.js"></script>
	<h2 class="productscategory_h2">{l s='Customers who bought this product also bought:' mod='crossselling'}</h2>
	<div id="{if count($orderProducts) > 5}crossselling{else}crossselling_noscroll{/if}">
		{if count($orderProducts) > 5}<a id="crossselling_scroll_left" title="{l s='Previous' mod='crossselling'}" href="javascript:{ldelim}{rdelim}">{l s='Previous' mod='crossselling'}</a>{/if}
		<div id="crossselling_list">
			<ul {if count($orderProducts) > 5}style="width: {math equation="width * nbImages" width=107 nbImages=$orderProducts|@count}px"{/if}>
				{foreach from=$orderProducts item='orderProduct' name=orderProduct}
				<li {if count($orderProducts) < 6}style="width: {math equation="width / nbImages" width=94 nbImages=$orderProducts|@count}%"{/if}>
					<a href="{$orderProduct.link}" title="{$orderProduct.name|htmlspecialchars}">
						<img src="{$orderProduct.image}" alt="{$orderProduct.name|htmlspecialchars}" />
					</a><br/>
					<a href="{$orderProduct.link}" title="{$orderProduct.name|htmlspecialchars}">
					{$orderProduct.name|truncate:15:'...'|escape:'htmlall':'UTF-8'}
					</a><br />
					{if $crossDisplayPrice AND $orderProduct.show_price == 1 AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}
						<span class="price_display">
							<span class="price">{convertPrice price=$orderProduct.displayed_price}</span>
						</span><br />
					{else}
						<br />
					{/if}
					<a title="{l s='View' mod='crossselling'}" href="{$orderProduct.link}" class="button_small">{l s='View' mod='crossselling'}</a><br />
				</li>
				{/foreach}
			</ul>
		</div>
	{if count($orderProducts) > 5}<a id="crossselling_scroll_right" title="{l s='Next' mod='crossselling'}" href="javascript:{ldelim}{rdelim}">{l s='Next' mod='crossselling'}</a>{/if}
	</div>
</div>
{/if}
