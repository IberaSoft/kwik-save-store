<li >
	<a href="{$node.link}" {if isset($currentCategoryId) && ($node.id == $currentCategoryId)}class="selected"{/if} title="">{$node.name|escape:html:'UTF-8'}</a>
	{if $node.children|@count > 0}
 
		<ul class="subcat">
		{foreach from=$node.children item=child}
			<li{if $last == 'true'} class="last"{/if}><a href="{$child.link|escape:html:'UTF-8'}">{$child.name|escape:html:'UTF-8'}</a></li>
		{/foreach}
		</ul>
 
	{/if}
</li>