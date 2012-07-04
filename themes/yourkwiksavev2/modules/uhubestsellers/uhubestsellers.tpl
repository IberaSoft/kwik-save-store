<!-- MODULE Block best sellers -->
<div id="best-sellers_block_right">
	<h4>{l s='Top sellers' mod='uhubestsellers'}</h4>
	{if $best_sellers|@count > 0}
	{assign var=bestId value=1}
	<SCRIPT language="javascript">var newTId='newT1';var newDId='newD1';</SCRIPT>
		{foreach from=$best_sellers item=product name=myLoop}
			{assign var='productLink' value=$link->getProductLink($product.id_product, $product.link_rewrite, $product.category)}
			<div id="newD{$bestId}" class="book_r_hot" {if $bestId == 1}style="display: block; "{else}style="display: none; "{/if}>
			  <div class="first">
				<span class="dot_r1">{$bestId}. </span>
				<div class="img">				
					<a href="{$productLink}" class="product_image" ><img src="{$img_prod_dir}{$product.id_image}-medium.jpg" alt="{$product->legend|escape:htmlall:'UTF-8'}" /></a>
				</div>
				<h5><a href="{$product.link}" title="{$product.name}">{$product.name}</a></h5>
				<ul class="book_r_li">
					<li>{displayWtPrice p=$product.price} </li>
				</ul>
			  </div>
			</div>
			<H3 onmouseover="javascript:mouseOver('new','newT','newD','{$bestId}');" id="newT{$bestId}" {if $bestId == 1}style="display: none; "{else}style="display: block; "{/if}><span class="dot_r">{$bestId++}. </span><a href="{$product.link}" title="{$product.name}">{$product.name}</a></H3>			
		{/foreach}
	{else}
		<p>{l s='No best sellers at this time' mod='uhubestsellers'}</p>
	{/if}
</div>
<!-- /MODULE Block best sellers -->
