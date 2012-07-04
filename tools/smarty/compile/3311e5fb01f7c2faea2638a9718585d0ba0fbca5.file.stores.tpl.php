<?php /* Smarty version Smarty-3.0.7, created on 2011-09-14 03:00:19
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/stores.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6135279164e6ffca3bc4361-40006877%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3311e5fb01f7c2faea2638a9718585d0ba0fbca5' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/stores.tpl',
      1 => 1315907229,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6135279164e6ffca3bc4361-40006877',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><?php ob_start(); ?><?php echo smartyTranslate(array('s'=>'Our stores'),$_smarty_tpl);?>
<?php  Smarty::$_smarty_vars['capture']['path']=ob_get_clean();?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./breadcrumb.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<h1><?php echo smartyTranslate(array('s'=>'Our stores'),$_smarty_tpl);?>
</h1>
<div id="stores_block">
<?php if ($_smarty_tpl->getVariable('simplifiedStoresDiplay')->value){?>
	<?php if (count($_smarty_tpl->getVariable('stores')->value)){?>
	<p><?php echo smartyTranslate(array('s'=>'Here are the details of our stores, feel free to contact us:'),$_smarty_tpl);?>
</p>
	<?php  $_smarty_tpl->tpl_vars['store'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('stores')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['store']->key => $_smarty_tpl->tpl_vars['store']->value){
?>
		<div class="store-small">
			<?php if ($_smarty_tpl->tpl_vars['store']->value['has_picture']){?><p><img src="<?php echo $_smarty_tpl->getVariable('img_store_dir')->value;?>
<?php echo $_smarty_tpl->tpl_vars['store']->value['id_store'];?>
-medium.jpg" alt="" width="<?php echo $_smarty_tpl->getVariable('mediumSize')->value['width'];?>
" height="<?php echo $_smarty_tpl->getVariable('mediumSize')->value['height'];?>
" /></p><?php }?>
			<p>
				<b><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['store']->value['name'],'htmlall','UTF-8');?>
</b><br />
				<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['store']->value['address1'],'htmlall','UTF-8');?>
<br />
				<?php if ($_smarty_tpl->tpl_vars['store']->value['address2']){?><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['store']->value['address2'],'htmlall','UTF-8');?>
<?php }?><br />
				<?php echo $_smarty_tpl->tpl_vars['store']->value['postcode'];?>
 <?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['store']->value['city'],'htmlall','UTF-8');?>
<?php if ($_smarty_tpl->tpl_vars['store']->value['state']){?>, <?php echo $_smarty_tpl->tpl_vars['store']->value['state'];?>
<?php }?><br />
				<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['store']->value['country'],'htmlall','UTF-8');?>
<br />
				<?php if ($_smarty_tpl->tpl_vars['store']->value['phone']){?>Phone: <?php echo $_smarty_tpl->tpl_vars['store']->value['phone'];?>
<?php }?>
			</p>
		</div>
	<?php }} ?>
	<?php }?>
<?php }else{ ?>
	<script type="text/javascript">
		// <![CDATA[
		var map;
		var markers = [];
		var infoWindow;
		var locationSelect;
		var defaultLat = '<?php echo $_smarty_tpl->getVariable('defaultLat')->value;?>
';
		var defaultLong = '<?php echo $_smarty_tpl->getVariable('defaultLong')->value;?>
';
		var translation_1 = '<?php echo smartyTranslate(array('s'=>'No store found, try to select a wider radius','js'=>1),$_smarty_tpl);?>
';
		var translation_2 = '<?php echo smartyTranslate(array('s'=>'store found - see details:','js'=>1),$_smarty_tpl);?>
';
		var translation_3 = '<?php echo smartyTranslate(array('s'=>'stores found - see all results:','js'=>1),$_smarty_tpl);?>
';
		var translation_4 = '<?php echo smartyTranslate(array('s'=>'Phone:','js'=>1),$_smarty_tpl);?>
';
		var translation_5 = '<?php echo smartyTranslate(array('s'=>'Get Directions','js'=>1),$_smarty_tpl);?>
';
		var translation_6 = '<?php echo smartyTranslate(array('s'=>'Not found','js'=>1),$_smarty_tpl);?>
';
		var hasStoreIcon = '<?php echo $_smarty_tpl->getVariable('hasStoreIcon')->value;?>
';
		var distance_unit = '<?php echo $_smarty_tpl->getVariable('distance_unit')->value;?>
';
		var img_store_dir = '<?php echo $_smarty_tpl->getVariable('img_store_dir')->value;?>
';
		var img_ps_dir = '<?php echo $_smarty_tpl->getVariable('img_ps_dir')->value;?>
';
		//]]>
	</script>
	<p><?php echo smartyTranslate(array('s'=>'Enter a location (eg.: a zip/postal code, an address, a city or a country) in order to find the nearest stores.'),$_smarty_tpl);?>
</p>
	<p class="text"><label><?php echo smartyTranslate(array('s'=>'Your location:'),$_smarty_tpl);?>
</label><input type="text" name="location" id="addressInput" value="<?php echo smartyTranslate(array('s'=>'Address, zip/postal code, city, state or country'),$_smarty_tpl);?>
" onclick="this.value='';" /></p>
	<p class="select">
		<label><?php echo smartyTranslate(array('s'=>'Radius:'),$_smarty_tpl);?>
</label>
		<select name="radius" id="radiusSelect">
			<option value="15">15</option>
			<option value="25">25</option>
			<option value="50">50</option>
			<option value="100">100</option>
		</select> <span><?php echo $_smarty_tpl->getVariable('distance_unit')->value;?>
</span>
		<img src="<?php echo $_smarty_tpl->getVariable('img_ps_dir')->value;?>
loader.gif" class="middle" alt="" id="stores_loader" />
	</p>
	<div class="clearblock"></div>
	<input type="button" class="button" onclick="searchLocations();" value="<?php echo smartyTranslate(array('s'=>'Search'),$_smarty_tpl);?>
" /> 
	<select id="locationSelect"></select>
	<div id="map"></div>
	<table cellpadding="0" cellspacing="0" id="stores-table" class="std">
		<tr>
			<th><?php echo smartyTranslate(array('s'=>'#'),$_smarty_tpl);?>
</th>
			<th><?php echo smartyTranslate(array('s'=>'Store'),$_smarty_tpl);?>
</th>
			<th><?php echo smartyTranslate(array('s'=>'Address'),$_smarty_tpl);?>
</th>
			<th><?php echo smartyTranslate(array('s'=>'Distance'),$_smarty_tpl);?>
</th>
		</tr>		
	</table>
<?php }?>
</div>