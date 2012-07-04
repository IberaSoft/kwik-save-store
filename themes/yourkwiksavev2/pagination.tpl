{if isset($p) AND $p}
	{if isset($smarty.get.id_category) && $smarty.get.id_category && isset($category)}
		{assign var='requestPage' value=$link->getPaginationLink('category', $category, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('category', $category, true, false, false, true)}
	{elseif isset($smarty.get.id_manufacturer) && $smarty.get.id_manufacturer && isset($manufacturer)}
		{assign var='requestPage' value=$link->getPaginationLink('manufacturer', $manufacturer, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('manufacturer', $manufacturer, true, false, false, true)}
	{elseif isset($smarty.get.id_supplier) && $smarty.get.id_supplier && isset($supplier)}
		{assign var='requestPage' value=$link->getPaginationLink('supplier', $supplier, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('supplier', $supplier, true, false, false, true)}
	{else}
		{assign var='requestPage' value=$link->getPaginationLink(false, false, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink(false, false, true, false, false, true)}
	{/if}
{if $start!=$stop}
	<!-- Pagination -->
	<div id="pagination" class="pagination">
		<ul class="pagination">
		{if $p != 1}
			{assign var='p_previous' value=$p-1}
			<li id="pagination_previous"><a class="button_small" href="{$link->goPage($requestPage, $p_previous)}">{l s='Previous'}</a></li>
		{else}
			<li id="pagination_previous" class="disabled"><span class="button_small">{l s='Previous'}</span></li>
		{/if}
		{if $start>3}
			<li><a href="{$link->goPage($requestPage, 1)}">1</a></li>
			<li class="truncate">...</li>
		{/if}
		{section name=pagination start=$start loop=$stop+1 step=1}
			{if $p == $smarty.section.pagination.index}
				<li class="current"><span>{$p|escape:'htmlall':'UTF-8'}</span></li>
			{else}
				<li><a href="{$link->goPage($requestPage, $smarty.section.pagination.index)}">{$smarty.section.pagination.index|escape:'htmlall':'UTF-8'}</a></li>
			{/if}
		{/section}
		{if $pages_nb>$stop+2}
			<li class="truncate">...</li>
			<li><a href="{$link->goPage($requestPage, $pages_nb)}">{$pages_nb|intval}</a></li>
		{/if}
		{if $pages_nb > 1 AND $p != $pages_nb}
			{assign var='p_next' value=$p+1}
			<li id="pagination_next"><a class="button_small" href="{$link->goPage($requestPage, $p_next)}">{l s='Next'}</a></li>
		{else}
			<li id="pagination_next" class="disabled"><span class="button_small">{l s='Next'}</span></li>
		{/if}
		</ul>
	{if $nb_products > 10}
		<form id="pagination_form" action="{if !is_array($requestNb)}{$requestNb}{else}{$requestNb.requestUrl}{/if}" method="get" class="pagination">
			{if isset($query) AND $query}<input type="hidden" name="search_query" value="{$query|escape:'htmlall':'UTF-8'}" />{/if}
			{if isset($tag) AND $tag AND !is_array($tag)}<input type="hidden" name="tag" value="{$tag|escape:'htmlall':'UTF-8'}" />{/if}
			<a href="javascript:document.getElementById('pagination_form').submit();">{l s='Ok'}</a>
			<label for="nb_item">{l s='items:'}</label>
			<select name="n" id="nb_item">
			{assign var="lastnValue" value="0"}
			{foreach from=$nArray item=nValue}
				{if $lastnValue <= $nb_products}
					<option value="{$nValue|escape:'htmlall':'UTF-8'}" {if $n == $nValue}selected="selected"{/if}>{$nValue|escape:'htmlall':'UTF-8'}</option>
				{/if}
				{assign var="lastnValue" value=$nValue}
			{/foreach}
			</select>
			{if is_array($requestNb)}
				{foreach from=$requestNb item=requestValue key=requestKey}
					{if $requestKey != 'requestUrl'}
						<input type="hidden" name="{$requestKey|escape:'htmlall':'UTF-8'}" value="{$requestValue|escape:'htmlall':'UTF-8'}" />
					{/if}
				{/foreach}
			{/if}
		</form>
	{/if}
	</div>
	<!-- /Pagination -->
{/if}
{/if}