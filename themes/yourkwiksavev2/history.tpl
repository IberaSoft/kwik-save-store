<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>
{capture name=path}<a href="{$link->getPageLink('my-account.php', true)}">{l s='My account'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='Order history'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}
{include file="$tpl_dir./errors.tpl"}
<h1>{l s='Order history'}</h1>
<p>{l s='Here are the orders you have placed since the creation of your account'}.</p>
{if $slowValidation}<p class="warning">{l s='If you have just placed an order, it may take a few minutes for it to be validated. Please refresh the page if your order is missing.'}</p>{/if}
<div class="block-center" id="block-history">
	{if $orders && count($orders)}
	<table id="order-list" class="std">
		<thead>
			<tr>
				<th class="first_item">{l s='Order'}</th>
				<th class="item">{l s='Date'}</th>
				<th class="item">{l s='Total price'}</th>
				<th class="item">{l s='Payment'}</th>
				<th class="item">{l s='Status'}</th>
				<th class="item">{l s='Invoice'}</th>
				<th class="last_item" style="width:65px">&nbsp;</th>
			</tr>
		</thead>
		<tbody>
		{foreach from=$orders item=order name=myLoop}
			<tr class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if} {if $smarty.foreach.myLoop.index % 2}alternate_item{/if}">
				<td class="history_link">
					{if isset($order.invoice) && $order.invoice && isset($order.virtual) && $order.virtual}<img src="{$img_dir}icon/download_product.gif" class="icon" alt="{l s='Products to download'}" title="{l s='Products to download'}" />{/if}
					<a class="color-myaccount" href="javascript:showOrder(1, {$order.id_order|intval}, 'order-detail');">{l s='#'}{$order.id_order|string_format:"%06d"}</a>
				</td>
				<td class="history_date bold">{dateFormat date=$order.date_add full=0}</td>
				<td class="history_price"><span class="price">{displayPrice price=$order.total_paid_real currency=$order.id_currency no_utf8=false convert=false}</span></td>
				<td class="history_method">{$order.payment|escape:'htmlall':'UTF-8'}</td>
				<td class="history_state">{if isset($order.order_state)}{$order.order_state|escape:'htmlall':'UTF-8'}{/if}</td>
				<td class="history_invoice">
				{if (isset($order.invoice) && $order.invoice && isset($order.invoice_number) && $order.invoice_number) && isset($invoiceAllowed) && $invoiceAllowed == true}
					<a href="{$base_dir}pdf-invoice.php?id_order={$order.id_order|intval}" title="{l s='Invoice'}"><img src="{$img_dir}icon/pdf.png" alt="{l s='Invoice'}" class="icon" /></a>
					<a href="{$base_dir}pdf-invoice.php?id_order={$order.id_order|intval}" title="{l s='Invoice'}">{l s='PDF'}</a>
				{else}&mdash;{/if}
				</td>
				<td class="history_detail">
					<a class="color-myaccount details_link" href="javascript:showOrder(1, {$order.id_order|intval}, 'order-detail');">{l s='details'}</a>
					<a href="{$base_dir_ssl}{if isset($opc) && $opc}order-opc{else}order{/if}.php?submitReorder&id_order={$order.id_order|intval}" title="{l s='Reorder'}">{l s='Reorder'}</a>
				</td>
			</tr>
		{/foreach}
		</tbody>
	</table>
	<div id="block-order-detail" class="hidden">&nbsp;</div>
	{else}
		<p class="warning">{l s='You have not placed any orders.'}</p>
	{/if}
</div>
<ul class="footer_links">
	<li><a href="{$link->getPageLink('my-account.php', true)}"><img src="{$img_dir}icon/my-account.png" alt="" class="icon" /></a><a href="{$link->getPageLink('my-account.php', true)}">{l s='Back to Your Account'}</a></li>
	<li><a href="{$base_dir}"><img src="{$img_dir}icon/home.png" alt="" class="icon" /></a><a href="{$base_dir}">{l s='Home'}</a></li>
</ul>