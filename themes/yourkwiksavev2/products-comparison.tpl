{capture name=path}{l s='Product Comparison'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}
<h1>{l s='Product Comparison'}</h1>
{if $hasProduct}
<table id="product_comparison">
		<td width="20%"></td>
		{assign var='taxes_behavior' value=false}
		{if $use_taxes && (!$priceDisplay  || $priceDisplay == 2)}
			{assign var='taxes_behavior' value=true}
		{/if}
	{foreach from=$products item=product name=for_products}
		{assign var='replace_id' value=$product->id|cat:'|'}
		<td width="{$width}%" class="ajax_block_product">
			<h5><a class="product_link" href="{$product->getLink()}" title="{$product->name|truncate:30:'...'|escape:'htmlall':'UTF-8'}">{$product->name|truncate:40:'...'|escape:'htmlall':'UTF-8'}</a></h5>
			<p class="product_desc"><a class="product_descr" href="{$product->getLink()}" title="{l s='More'}">{$product->description_short|strip_tags|truncate:120:'...'}</a></p>
			<div class="comparison_product_infos">
			<a href="{$product->getLink()}" title="{$product->name|escape:html:'UTF-8'}" class="product_image" >
				<img src="{$link->getImageLink($product->link_rewrite, $product->id_image, 'home_small')}" alt="{$product->name|escape:html:'UTF-8'}" />
			</a>
			{if isset($product->show_price) && $product->show_price && !isset($restricted_country_mode) && !$PS_CATALOG_MODE}
				<p><span class="price">{convertPrice price=$product->getPrice($taxes_behavior)}</span></p>
				<div class="product_discount">
				{if $product->on_sale}
					<span class="on_sale">{l s='On sale!'}</span>
				{elseif $product->specificPrice AND $product->specificPrice.reduction}
					<span class="discount">{l s='Reduced price!'}</span>
				{/if}
				</div>
					{if !empty($product->unity) && $product->unit_price_ratio > 0.000000}
					    {math equation="pprice / punit_price"  pprice=$product->getPrice($taxes_behavior)  punit_price=$product->unit_price_ratio assign=unit_price}
					<p class="comparison_unit_price">{convertPrice price=$unit_price} {l s='per'} {$product->unity|escape:'htmlall':'UTF-8'}</p>
				{else}
				&nbsp;
				{/if}
			{/if}
			<!-- availability -->
			<p class="comparison_availability_statut">
				{if !(($product->quantity == 0 && !$product->available_later) OR ($product->quantity != 0 && !$product->available_now) OR !$product->available_for_order OR $PS_CATALOG_MODE)}
					<span id="availability_label">{l s='Availability:'}</span>
					<span id="availability_value"{if $product->quantity == 0} class="warning-inline"{/if}>
						{if $product->quantity == 0}
							{if $allow_oosp}
								{$product->available_later|escape:'htmlall':'UTF-8'}
							{else}
								{l s='This product is no longer in stock'}
							{/if}
						{else}
							{$product->available_now|escape:'htmlall':'UTF-8'}
						{/if}
					</span>
				{/if}
			</p>
				<a class="cmp_remove" href="{$request_uri|replace:$replace_id:''}">{l s='Remove'}</a>
				<a class="button" href="{$product->getLink()}" title="{l s='View'}">{l s='View'}</a>
				{if (!$product->hasAttributes() OR (isset($add_prod_display) AND ($add_prod_display == 1))) AND !$PS_CATALOG_MODE}
					{if ($product->quantity > 0 OR $product->allow_oosp) AND $product->customizable != 2}
						<a class="exclusive ajax_add_to_cart_button" rel="ajax_id_product_{$product->id}" href="{$base_dir}cart.php?qty=1&amp;id_product={$product->id}&amp;token={$static_token}&amp;add" title="{l s='Add to cart'}">{l s='Add to cart'}</a>
					{else}
						<span class="exclusive">{l s='Add to cart'}</span>
					{/if}
				{else}
					<div style="height:23px;"></div>
				{/if}
			</div>
		</td>
	{/foreach}
	</tr>
	<tr class="empty">
		<td></td>
		{section loop=$products|count step=1 start=0 name=td}
		<td></td>
		{/section}
	</tr>
	<tr class="comparison_header">
		<td>
			{l s='Features'}
		</td>
		{section loop=$products|count step=1 start=0 name=td}
		<td></td>
		{/section}
	</tr>
	{if $ordered_features}
	{foreach from=$ordered_features item=feature}
	<tr>
		{cycle values='comparison_feature_odd,comparison_feature_even' assign='classname'}
		<td class="{$classname}" >
			{$feature.name|escape:'htmlall':'UTF-8'}
		</td>
				{foreach from=$products item=product name=for_products}
				{assign var='product_id' value=$product->id}
				{assign var='feature_id' value=$feature.id_feature}
				{assign var='tab' value=$product_features[$product_id]}
				<td  width="{$width}%" class="{$classname} comparison_infos">{$tab[$feature_id]|escape:'htmlall':'UTF-8'}</td>
			{/foreach}
	</tr>
	{/foreach}
	{else}
	<tr>
		<td></td>
		<td colspan="{$products|@count + 1}">{l s='No features to compare'}</td>
	</tr>
	{/if}
	{$HOOK_EXTRA_PRODUCT_COMPARISON}
</table>
{else}
	<p class="warning">{l s='There is no product in the comparator'}</p>
{/if}