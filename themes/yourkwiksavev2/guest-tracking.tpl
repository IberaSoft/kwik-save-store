{capture name=path}{l s='Guest tracking'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}
<h1>{l s='Guest Tracking'}</h1>
{if isset($order)}
	<div id="block-history">
		<div id="block-order-detail" class="std">
		{include file="$tpl_dir./order-detail.tpl"}
		</div>
	</div>
	<h2 id="guestToCustomer">{l s='For more advantages...'}</h2>
	{include file="$tpl_dir./errors.tpl"}
	{if isset($transformSuccess)}
		<p class="success">{l s='Your guest account has been successfully transformed into a customer account. You can now log in on this'} <a href="{$link->getPageLink('authentication.php', true)}">{l s='page'}</a></p>
	{else}
		<form method="POST" action="{$action|escape:'htmlall':'UTF-8'}#guestToCustomer" class="std guest">
			<fieldset>
				<p class="bold">{l s='Transform your guest account to a customer account and enjoy :'}</p>
				<ul class="bullet">
					<li>{l s='Personalized and secure access'}</li>
					<li>{l s='Fast and easy check out'}</li>
					<li>{l s='Easier merchandise return'}</li>
				</ul>
				<p class="text">
					<label>{l s='Define your password:'}</label>
					<input type="password" name="password" />
				</p>
				
				<input type="hidden" name="id_order" value="{if isset($smarty.get.id_order)}{$smarty.get.id_order|escape:'htmlall':'UTF-8'}{else}{if isset($smarty.post.id_order)}{$smarty.post.id_order|escape:'htmlall':'UTF-8'}{/if}{/if}" />
				<input type="hidden" name="email" value="{if isset($smarty.get.email)}{$smarty.get.email|escape:'htmlall':'UTF-8'}{else}{if isset($smarty.post.email)}{$smarty.post.email|escape:'htmlall':'UTF-8'}{/if}{/if}" />
				
				<p class="submit"><input type="submit" class="exclusive_large" name="submitTransformGuestToCustomer" value="{l s='Send'}" /></p>
			</fieldset>
		</form>
	{/if}
{else}
	{include file="$tpl_dir./errors.tpl"}
	<form method="POST" action="{$action|escape:'htmlall':'UTF-8'}" class="std guest">
		<fieldset>
			<p>{l s='To track your order, please enter the following information:'}</p>
			<p class="text">
				<label>{l s='Order ID:'} <b>#</b></label>
				<input type="text" name="id_order" value="{if isset($smarty.get.id_order)}{$smarty.get.id_order|escape:'htmlall':'UTF-8'}{else}{if isset($smarty.post.id_order)}{$smarty.post.id_order|escape:'htmlall':'UTF-8'}{/if}{/if}" size="8" />
				<i>{l s='For example: 010123'}</i>
			</p>
			
			<p class="text">
				<label>{l s='E-mail:'}</label>
				<input type="text" name="email" value="{if isset($smarty.get.email)}{$smarty.get.email|escape:'htmlall':'UTF-8'}{else}{if isset($smarty.post.email)}{$smarty.post.email|escape:'htmlall':'UTF-8'}{/if}{/if}" />
			</p>
		
			<p class="submit"><input type="submit" class="button" name="submitGuestTracking" value="{l s='Send'}" /></p>
		</fieldset>
	</form>
{/if}