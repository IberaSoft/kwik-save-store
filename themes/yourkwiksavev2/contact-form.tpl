{capture name=path}{l s='Contact'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}
<h1>{l s='Customer Service'} - {if isset($customerThread) && $customerThread}{l s='Your reply'}{else}{l s='Contact us'}{/if}</h1>
{if isset($confirmation)}
	<p>{l s='Your message has been successfully sent to our team.'}</p>
	<ul class="footer_links">
		<li><a href="{$base_dir}"><img class="icon" alt="" src="{$img_dir}icon/home.png"/></a><a href="{$base_dir}">{l s='Home'}</a></li>
	</ul>
{elseif isset($alreadySent)}
	<p>{l s='Your message has already been sent.'}</p>
	<ul class="footer_links">
		<li><a href="{$base_dir}"><img class="icon" alt="" src="{$img_dir}icon/home.png"/></a><a href="{$base_dir}">{l s='Home'}</a></li>
	</ul>
{else}
	<p class="bold">{l s='Choose an option on Subject Heading with your data, and we will reply as soon as posible.'}</p>
	{include file="$tpl_dir./errors.tpl"}
	<form action="{$request_uri|escape:'htmlall':'UTF-8'}" method="post" class="std" enctype="multipart/form-data">
		<fieldset>
			<h3>{l s='Send a message'}</h3>
			<p class="select">
				<label for="id_contact">{l s='Subject Heading'}</label>
			{if isset($customerThread.id_contact)}
				{foreach from=$contacts item=contact}
					{if $contact.id_contact == $customerThread.id_contact}
						<input type="text" id="contact_name" name="contact_name" value="{$contact.name|escape:'htmlall':'UTF-8'}" readonly="readonly" />
						<input type="hidden" name="id_contact" value="{$contact.id_contact}" />
					{/if}
				{/foreach}
			</p>
			{else}
				<select id="id_contact" name="id_contact" onchange="showElemFromSelect('id_contact', 'desc_contact')">
					<option value="0">{l s='-- Choose --'}</option>
				{foreach from=$contacts item=contact}
					<option value="{$contact.id_contact|intval}" {if isset($smarty.post.id_contact) && $smarty.post.id_contact == $contact.id_contact}selected="selected"{/if}>{$contact.name|escape:'htmlall':'UTF-8'}</option>
				{/foreach}
				</select>
			</p>
			<p id="desc_contact0" class="desc_contact">&nbsp;</p>
				{foreach from=$contacts item=contact}
					<p id="desc_contact{$contact.id_contact|intval}" class="desc_contact" style="display:none;">
						{$contact.description|escape:'htmlall':'UTF-8'}
					</p>
				{/foreach}
			{/if}
			<p class="text">
				<label for="email">{l s='Your E-mail'}</label>
				{if isset($customerThread.email)}
					<input type="text" id="email" name="from" value="{$customerThread.email}" readonly="readonly" />
				{else}
					<input type="text" id="email" name="from" value="{$email}" />
				{/if}
			</p>
		{if !$PS_CATALOG_MODE}
			{if (!isset($customerThread.id_order) || $customerThread.id_order > 0)}
			<p class="text">
				<label for="id_order">{l s='Order ID'}</label>
				{if !isset($customerThread.id_order) && isset($isLogged) && $isLogged == 1}
					<select name="id_order" ><option value="0">{l s='-- Choose --'}</option>{$orderList}</select>
				{elseif !isset($customerThread.id_order) && !isset($isLogged)}
					<input type="text" name="id_order" id="id_order" value="{if isset($customerThread.id_order) && $customerThread.id_order > 0}{$customerThread.id_order|intval}{else}{if isset($smarty.post.id_order)}{$smarty.post.id_order|intval}{/if}{/if}" />
				{elseif $customerThread.id_order > 0}
					<input type="text" name="id_order" id="id_order" value="{$customerThread.id_order|intval}" readonly="readonly" />
				{/if}
			</p>
			{/if}
			{if isset($isLogged) && $isLogged}
			<p class="text">
			<label for="id_product">{l s='Product'}</label>
				{if !isset($customerThread.id_product)}
					<select name="id_product"><option value="0">{l s='-- Choose --'}</option>{$orderedProductList}</select>
				{elseif $customerThread.id_product > 0}
					<input type="text" name="id_product" id="id_product" value="{$customerThread.id_product|intval}" readonly="readonly" />
				{/if}
			</p>
			{/if}
		{/if}
		{if $fileupload == 1}
			<p class="text file_input">
			<label for="fileUpload">{l s='Attach File'}</label>
				<input type="hidden" name="MAX_FILE_SIZE" value="2000000" />
				<input type="file" name="fileUpload" id="fileUpload" />
			</p>
		{/if}
		<p class="textarea">
			<label for="message">{l s='Message'}</label>
			 <textarea id="message" name="message" rows="15" cols="20">{if isset($message)}{$message|escape:'htmlall':'UTF-8'|stripslashes}{/if}</textarea>
		</p>
		<p class="submit">
			<input type="submit" name="submitMessage" id="submitMessage" value="{l s='Send'}" class="button_large" />
		</p>
	</fieldset>
</form>
{/if}
