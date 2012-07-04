{include file="$tpl_dir./breadcrumb.tpl"}
{include file="$tpl_dir./errors.tpl"}
{if isset($category)}
	{if $category->id AND $category->active}
		<h1>{strip}
			{$category->name|escape:'htmlall':'UTF-8'}
			<span>
				{if $category->id == 1 OR $nb_products == 0}{l s='There are no products.'}
				{else}
					{if $nb_products == 1}{l s='There is'}{else}{l s='There are'}{/if}&#160;
					{$nb_products}&#160;
					{if $nb_products == 1}{l s='product.'}{else}{l s='products.'}{/if}
				{/if}
			</span>{/strip}
		</h1>
		{if $scenes}
			<!-- Scenes -->
			{include file="$tpl_dir./scenes.tpl" scenes=$scenes}
		{else}
			<!-- Category image -->
			{if $category->id_image}
			<div class="align_center">
				<img src="{$link->getCatImageLink($category->link_rewrite, $category->id_image, 'category')}" alt="{$category->name|escape:'htmlall':'UTF-8'}" title="{$category->name|escape:'htmlall':'UTF-8'}" id="categoryImage" width="{$categorySize.width}" height="{$categorySize.height}" />
			</div>
			{/if}
		{/if}
		{if $category->description}
			<div class="cat_desc">{$category->description}</div>
		{/if}
		{if isset($subcategories)}
		<!-- Subcategories -->
		<div id="subcategories">
			<h3>{l s='Subcategories'}</h3>
			<ul class="inline_list">
			{foreach from=$subcategories item=subcategory}
				<li>
					<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$subcategory.name|escape:'htmlall':'UTF-8'}">
						{if $subcategory.id_image}
							<img src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'home')}" alt="" width="{$homeSize.width}" height="{$homeSize.height}" />
						{else}
							<img src="{$img_cat_dir}default-home.jpg" alt="" width="{$homeSize.width}" height="{$homeSize.height}" />
						{/if}
					</a><br />
					<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}">{$subcategory.name|escape:'htmlall':'UTF-8'}</a>
				</li>
			{/foreach}
			</ul>
			<div class="clearblock"></div>
		</div>
		{/if}
		{if $products}
				{include file="$tpl_dir./product-compare.tpl"}
				{include file="$tpl_dir./product-sort.tpl"}
				{include file="$tpl_dir./product-list.tpl" products=$products}
				{include file="$tpl_dir./product-compare.tpl"}
				{include file="$tpl_dir./pagination.tpl"}
			{elseif !isset($subcategories)}
				<p class="warning">{l s='There are no products in this category.'}</p>
			{/if}
	{elseif $category->id}
		<p class="warning">{l s='This category is currently unavailable.'}</p>
	{/if}
{/if}