<!-- MODULE Home Featured Products -->
{if isset($products) AND $products}
<script type="text/javascript" src="{$module_dir}jquery.jcarousel.pack.js"></script>
{if $autoplay}
	<script type="text/javascript">
		var carousel_autoplay = {$autoplayduration};
		var carousel_items_visible = {$itemsvisible};
		var carousel_scroll = {$itemsscroll};
	</script>
{else}
	<script type="text/javascript">
		var carousel_autoplay = 0;
		var carousel_items_visible = {$itemsvisible};
		var carousel_scroll = {$itemsscroll};
	</script>
{/if}

<script type="text/javascript" src="{$module_dir}homecarousel.js"></script>


<ul id="mycarousel">
	{foreach from=$products item=product name=homeFeaturedProducts}
	{assign var='productLink' value=$link->getProductLink($product.id_product, $product.link_rewrite)}
	
			<li >
		<a href="{$productLink}" title="{$product.legend}" class="product_image"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home')}" alt="{$product.name|escape:html:'UTF-8'}" /></a>	
		{if $displayname}<h5><a href="{$productLink}" title="{$product.name}">{$product.name|escape:htmlall:'UTF-8'|truncate:30}</a></h5>{/if}
		</li>	

	{/foreach}
</ul>

{else}
<p>{l s='No products for carousel' mod='homecarousel'}</p>
{/if}
<!-- /MODULE Home Featured Products -->