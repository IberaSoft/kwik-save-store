<ul><br />
{foreach from=$virtualProducts item=product}<br />
<li><br />
<a href="{$product.link}">{$product.name}</a><br />
{if isset($product.deadline)}<br />
udløber {$product.deadline}<br />
{/if}<br />
{if isset($product.downloadable)}<br />
kan downloades {$product.downloadable} times<br />
{/if}<br />
</li><br />
{/foreach}<br />
</ul>