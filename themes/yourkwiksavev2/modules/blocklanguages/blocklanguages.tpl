<!-- Block languages module -->
<div id="languages_block_top">
	<ul id="first-languages">
				
		{foreach from=$languages key=k item=language name="languages"}
					<li {if $language.iso_code == $lang_iso}class="selected_language"{/if}>

				{if $language.iso_code != $lang_iso}<a href="{$link->getLanguageLink($language.id_lang, $language.name)}" title="{$language.name}">{/if}
					<img src="{$img_lang_dir}{$language.id_lang}.jpg" alt="{$language.iso_code}" width="16" height="11" />
				{if $language.iso_code != $lang_iso}</a>{/if}
			</li>
		{/foreach}
	</ul>
</div>
 
<!-- /Block languages module -->