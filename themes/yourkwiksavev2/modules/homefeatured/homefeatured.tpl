
<!-- MODULE Home Featured Products -->
<div id="featured-products_block_center">
		<h4>{l s='Featured products' mod='homefeatured'}</h4>
	{if isset($products) AND $products}
		 <div class="block_content">

			{assign var='liHeight' value=342}
			{assign var='nbItemsPerLine' value=3}
			{assign var='nbLi' value=$products|@count}
			{assign var='nbLines' value=$nbLi/$nbItemsPerLine|ceil}
			{assign var='ulHeight' value=$nbLines*$liHeight}
			<ul>

			{foreach from=$products item=product name=homeFeaturedProducts}

			<li class="ajax_block_product">
			<a href="{$product.link}" title="{$product.name|escape:html:'UTF-8'}" class="product_image"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home')}" height="{$homeSize.height}" width="{$homeSize.width}" alt="{$product.name|escape:html:'UTF-8'}" /></a>
			<div class="product_info">

			<h5><a href="{$product.link}" title="{$product.name|truncate:32:'...'|escape:'htmlall':'UTF-8'}" class="product_link">{$product.name|truncate:27:'...'|escape:'htmlall':'UTF-8'}</a></h5>
			<div class="product_desc"><a class="product_descr" href="{$product.link}" title="{l s='More' mod='homefeatured'}">{$product.description_short|strip_tags|truncate:50:'...'}</a></div>
			{if $product.show_price AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}<span class="price">{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}</span>{else}{/if}


			{if ($product.id_product_attribute == 0 OR (isset($add_prod_display) AND ($add_prod_display == 1))) AND $product.available_for_order AND !isset($restricted_country_mode) AND $product.minimal_quantity == 1 AND $product.customizable != 2 AND !$PS_CATALOG_MODE}
				{if ($product.quantity > 0 OR $product.allow_oosp)}
				<a class="exclusive ajax_add_to_cart_button" rel="ajax_id_product_{$product.id_product}" href="{$link->getPageLink('cart.php')}?qty=1&amp;id_product={$product.id_product}&amp;token={$static_token}&amp;add" title="{l s='Add to cart' mod='homefeatured'}">{l s='Add to cart' mod='homefeatured'}</a>
				{else}
				<span class="exclusive">{l s='Add to cart' mod='homefeatured'}</span>
				{/if}
			{else}
				<div style="height:23px;"></div>
			{/if}
			</div>
			</li>
	
		{/foreach}
			</ul>
 
		</div>
	{else}
		<p>{l s='No featured products' mod='homefeatured'}</p>
	{/if}
	</div>
 
<!-- /MODULE Home Featured Products -->
