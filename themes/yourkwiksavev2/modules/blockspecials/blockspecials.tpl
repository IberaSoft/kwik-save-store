<!-- MODULE Block specials x2x-->
<div id="tmspecials" class="block">
	<h4><a href="{$link->getPageLink('prices-drop.php')}" title="{l s='Specials' mod='blockspecials'}">{l s='Specials' mod='blockspecials'}</a></h4>

		<div class="block_content">
{if $special}		
		<a class="product_image" href="{$special.link}"><img src="{$link->getImageLink($special.link_rewrite, $special.id_image, 'medium')}" alt="{$special.legend|escape:html:'UTF-8'}" height="{$mediumSize.height}" width="{$mediumSize.width}" title="{$special.name|escape:html:'UTF-8'}" /></a>
		<h5><a href="{$special.link}" title="{$special.name|escape:html:'UTF-8'}">{$special.name|escape:html:'UTF-8'}</a></h5>

		<div class="product_desc"><a class="product_descr" href="{$special.link}" title="{l s='More' mod='blockspecials'}">{$special.description_short|strip_tags|truncate:50:'...'}</a></div>
		<div class="extrea_special">	
	<span class="price-discount">{if !$priceDisplay}{displayWtPrice p=$special.price_without_reduction}{else}{displayWtPrice p=$priceWithoutReduction_tax_excl}{/if}</span>
	<span class="price">{if !$priceDisplay}{displayWtPrice p=$special.price}{else}{displayWtPrice p=$special.price_tax_exc}{/if}</span>
		</div>

	<a class="ajax_add_to_cart_button exclusive" rel="ajax_id_product_{$special.id_product}" href="{$link->getPageLink('cart.php')}?qty=1&amp;id_product={$special.id_product}&amp;token={$static_token}&amp;add" title="{l s='Add to cart' mod='blockspecials'}">{l s='Add to cart' mod='blockspecials'}</a>
{else}
		<p>{l s='No specials at this time' mod='blockspecials'}</p>
{/if}		
		
		
		</div>	
	
</div>
<!-- /MODULE Block specials -->
