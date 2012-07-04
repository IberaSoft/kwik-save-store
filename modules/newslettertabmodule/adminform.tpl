<h2 class="space">{l s='Newsletter Module Configuration' mod='newslettertabmodule'}</h2>

<form action="" method="post">
<fieldset>
    <legend>
        {l s='Parent tab for newsletter tab' mod='newslettertabmodule'}
    </legend>
    <label>{l s='Choose the parent Tab:' mod='newslettertabmodule'}</label>

    <div class="margin-form">
        <select name="id_parent_tab">
            <option value="0" selected="selected">{l s='-- Choose --' mod='newslettertabmodule'}</option>
            {foreach $tabsInfo as $tab}
            <option value="{$tab.id_tab}" {if $selectedTab eq $tab.id_tab} selected="selected"{/if} >{$tab.class_name}</option>
            {/foreach}
        </select>
    </div>
    <div class="margin-form">
        <input type="submit" name="options_submit" value="{l s='Submit' mod='newslettertabmodule'}" />
    </div>
</fieldset>
</form>
