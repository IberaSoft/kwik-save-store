<!-- Block user information module HEADER -->
<div id="header_user">
<ul>
	<li id="your_account"><a id="your_account" href="{$base_dir_ssl}my-account.php" title="{l s='Your Account' mod='blockuserinfo'}">{l s='Your Account' mod='blockuserinfo'}</a></li>
	<li id="header_user_info">
		{l s='Welcome' mod='blockuserinfo'},
		{if $cookie->isLogged()}
			<span>{$cookie->customer_firstname} {$cookie->customer_lastname}</span>
			(&nbsp;<a href="{$link->getPageLink('index.php')}?mylogout" title="{l s='Log me out' mod='blockuserinfo'}">{l s='Log out' mod='blockuserinfo'}</a>&nbsp;)
		{else}
			(&nbsp;<a href="{$link->getPageLink('my-account.php', true)}">{l s='Log in' mod='blockuserinfo'}</a>&nbsp;)
		{/if}	

			</li>

	<li id="shopping_cart">
	{if !$PS_CATALOG_MODE}
		<a href="{$link->getPageLink("$order_process.php", true)}" title="{l s='Your Shopping Cart' mod='blockuserinfo'}">{l s='Cart:' mod='blockuserinfo'}</a>

		<span class="ajax_cart_quantity{if $cart_qties == 0} hidden{/if}">{$cart_qties}</span>
		<span class="ajax_cart_product_txt{if $cart_qties != 1} hidden{/if}">{l s='product' mod='blockuserinfo'}</span>
		<span class="ajax_cart_product_txt_s{if $cart_qties < 2} hidden{/if}">{l s='products' mod='blockuserinfo'}</span>
		<span class="ajax_cart_no_product{if $cart_qties > 0} hidden{/if}">{l s='(empty)' mod='blockuserinfo'}</span>
		
	{/if}	
			</li>
</ul>
</div>
 <!-- /Block user information module HEADER -->
