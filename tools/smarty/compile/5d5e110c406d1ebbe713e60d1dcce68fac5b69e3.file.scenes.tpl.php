<?php /* Smarty version Smarty-3.0.7, created on 2011-09-06 10:11:10
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/./scenes.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3217107534e65d59e8c0646-36509911%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5d5e110c406d1ebbe713e60d1dcce68fac5b69e3' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/./scenes.tpl',
      1 => 1315229603,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3217107534e65d59e8c0646-36509911',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
if (!is_callable('smarty_function_math')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/function.math.php';
?>

<?php if ('scenes'){?>
<script type="text/javascript" src="<?php echo @_PS_JS_DIR_;?>
jquery/jquery.cluetip.js"></script>
<script type="text/javascript" src="<?php echo @_PS_JS_DIR_;?>
jquery/jquery.scrollTo-1.4.2-min.js"></script>
<script type="text/javascript" src="<?php echo @_PS_JS_DIR_;?>
jquery/jquery.serialScroll-1.2.2-min.js"></script>
<script type="text/javascript">// <![CDATA[
i18n_scene_close = '<?php echo smartyTranslate(array('s'=>'Close'),$_smarty_tpl);?>
';
$(function () {
	li_width = parseInt(<?php echo $_smarty_tpl->getVariable('thumbSceneImageType')->value['width'];?>
 + 10);
});
//]]></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('js_dir')->value;?>
scenes.js"></script>
<div id="scenes">
	<div>
		<?php  $_smarty_tpl->tpl_vars['scene'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['scene_key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('scenes')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['scene']->index=-1;
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['scene']->key => $_smarty_tpl->tpl_vars['scene']->value){
 $_smarty_tpl->tpl_vars['scene_key']->value = $_smarty_tpl->tpl_vars['scene']->key;
 $_smarty_tpl->tpl_vars['scene']->index++;
 $_smarty_tpl->tpl_vars['scene']->first = $_smarty_tpl->tpl_vars['scene']->index === 0;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['scenes']['first'] = $_smarty_tpl->tpl_vars['scene']->first;
?>
		<div class="screen_scene" id="screen_scene_<?php echo $_smarty_tpl->getVariable('scene')->value->id;?>
" style="background:transparent url(<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
img/scenes/<?php echo $_smarty_tpl->getVariable('scene')->value->id;?>
-large_scene.jpg); height:<?php echo $_smarty_tpl->getVariable('largeSceneImageType')->value['height'];?>
px; width:<?php echo $_smarty_tpl->getVariable('largeSceneImageType')->value['width'];?>
px; <?php if (!$_smarty_tpl->getVariable('smarty')->value['foreach']['scenes']['first']){?> display:none;<?php }?>">
			<?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['product_key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('scene')->value->products; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value){
 $_smarty_tpl->tpl_vars['product_key']->value = $_smarty_tpl->tpl_vars['product']->key;
?>
			<?php $_smarty_tpl->tpl_vars['imageIds'] = new Smarty_variable(($_smarty_tpl->tpl_vars['product']->value['id_product'])."-".($_smarty_tpl->tpl_vars['product']->value['id_image']), null, null);?>
				<a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['link'],'htmlall','UTF-8');?>
" accesskey="#scene_products_cluetip_<?php echo $_smarty_tpl->tpl_vars['scene_key']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['product_key']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
" class="cluetip" style="width:<?php echo $_smarty_tpl->tpl_vars['product']->value['zone_width'];?>
px; height:<?php echo $_smarty_tpl->tpl_vars['product']->value['zone_height'];?>
px; margin-left:<?php echo $_smarty_tpl->tpl_vars['product']->value['x_axis'];?>
px ;margin-top:<?php echo $_smarty_tpl->tpl_vars['product']->value['y_axis'];?>
px;">
					<span style="margin-top:<?php echo smarty_function_math(array('equation'=>'a/2 -10','a'=>$_smarty_tpl->tpl_vars['product']->value['zone_height']),$_smarty_tpl);?>
px; margin-left:<?php echo smarty_function_math(array('equation'=>'a/2 -10','a'=>$_smarty_tpl->tpl_vars['product']->value['zone_width']),$_smarty_tpl);?>
px;">&nbsp;</span>
				</a>
				<div id="scene_products_cluetip_<?php echo $_smarty_tpl->tpl_vars['scene_key']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['product_key']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
" style="display:none;">
					<h4><span class="product_name"><?php echo $_smarty_tpl->getVariable('product')->value['details']->name;?>
</span><?php if (isset($_smarty_tpl->getVariable('product',null,true,false)->value['details']->new)&&$_smarty_tpl->getVariable('product')->value['details']->new){?><span class="new"><?php echo smartyTranslate(array('s'=>'New'),$_smarty_tpl);?>
</span><?php }?></h4>
					<?php if (!$_smarty_tpl->getVariable('PS_CATALOG_MODE')->value&&$_smarty_tpl->getVariable('product')->value['details']->show_price){?>
					<div class="prices">
						<p class="price"><?php if ($_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo Product::convertPrice(array('price'=>$_smarty_tpl->getVariable('product')->value['details']->getPrice(false,$_smarty_tpl->getVariable('product')->value['details']->getDefaultAttribute($_smarty_tpl->tpl_vars['product']->value['id_product']))),$_smarty_tpl);?>
<?php }else{ ?><?php echo Product::convertPrice(array('price'=>$_smarty_tpl->getVariable('product')->value['details']->getPrice(true,$_smarty_tpl->getVariable('product')->value['details']->getDefaultAttribute($_smarty_tpl->tpl_vars['product']->value['id_product']))),$_smarty_tpl);?>
<?php }?></p>
							<?php if ($_smarty_tpl->getVariable('product')->value['details']->on_sale){?>
							<span class="on_sale"><?php echo smartyTranslate(array('s'=>'On sale!'),$_smarty_tpl);?>
</span>
						<?php }elseif(isset($_smarty_tpl->tpl_vars['product']->value['reduction'])&&$_smarty_tpl->tpl_vars['product']->value['reduction']){?>
							<span class="discount"><?php echo smartyTranslate(array('s'=>'Reduced price!'),$_smarty_tpl);?>
</span>
						<?php }?>
					</div>
					<?php }?>
					<div class="clear">
						<a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['link'],'htmlall','UTF-8');?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['details']->name,'htmlall','UTF-8');?>
">
							<img src="<?php echo $_smarty_tpl->getVariable('link')->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['id_product'],$_smarty_tpl->getVariable('imageIds')->value,'medium');?>
" alt="" width="<?php echo $_smarty_tpl->getVariable('mediumSize')->value['width'];?>
" height="<?php echo $_smarty_tpl->getVariable('mediumSize')->value['height'];?>
" />
						</a>
						<p class="description"><?php echo smarty_modifier_truncate(preg_replace('!<[^>]*?>!', ' ', $_smarty_tpl->getVariable('product')->value['details']->description_short),170,'...');?>
</p>
					</div>
				</div>
			<?php }} ?>
		</div>
		<?php }} ?>
	</div>
	<?php if (isset($_smarty_tpl->getVariable('scenes',null,true,false)->value[1])){?>
	<div class="thumbs_banner" style="height:<?php echo $_smarty_tpl->getVariable('thumbSceneImageType')->value['height'];?>
px;">
		<span class="space-keeper">
			<a class="prev" href="#" style="height:<?php echo smarty_function_math(array('equation'=>'a+2','a'=>$_smarty_tpl->getVariable('thumbSceneImageType')->value['height']),$_smarty_tpl);?>
px;" onclick="{next_scene_is_at_right = false; $(this).parent().next().trigger('stop').trigger('prev'); return false;}">&nbsp;</a>
		</span>
		<div id="scenes_list">
			<ul style="width:<?php echo smarty_function_math(array('equation'=>'(a*b + (a-1)*10)','a'=>count($_smarty_tpl->getVariable('scenes')->value),'b'=>$_smarty_tpl->getVariable('thumbSceneImageType')->value['width']),$_smarty_tpl);?>
px; height:<?php echo $_smarty_tpl->getVariable('thumbSceneImageType')->value['height'];?>
px;">
			<?php  $_smarty_tpl->tpl_vars['scene'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('scenes')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['scene']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['scene']->iteration=0;
if ($_smarty_tpl->tpl_vars['scene']->total > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['scene']->key => $_smarty_tpl->tpl_vars['scene']->value){
 $_smarty_tpl->tpl_vars['scene']->iteration++;
 $_smarty_tpl->tpl_vars['scene']->last = $_smarty_tpl->tpl_vars['scene']->iteration === $_smarty_tpl->tpl_vars['scene']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['scenes_list']['last'] = $_smarty_tpl->tpl_vars['scene']->last;
?>
				<li id="scene_thumb_<?php echo $_smarty_tpl->getVariable('scene')->value->id;?>
" style="<?php if (!$_smarty_tpl->getVariable('smarty')->value['foreach']['scenes_list']['last']){?> padding-right:10px;<?php }?>">
					<a style="width:<?php echo $_smarty_tpl->getVariable('thumbSceneImageType')->value['width'];?>
px; height:<?php echo $_smarty_tpl->getVariable('thumbSceneImageType')->value['height'];?>
px" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('scene')->value->name,'htmlall','UTF-8');?>
" href="#" rel="<?php echo $_smarty_tpl->getVariable('scene')->value->id;?>
" onclick="{loadScene(<?php echo $_smarty_tpl->getVariable('scene')->value->id;?>
);return false;}">
						<img alt="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('scene')->value->name,'htmlall','UTF-8');?>
" src="<?php echo $_smarty_tpl->getVariable('content_dir')->value;?>
img/scenes/thumbs/<?php echo $_smarty_tpl->getVariable('scene')->value->id;?>
-thumb_scene.jpg" width="<?php echo $_smarty_tpl->getVariable('thumbSceneSize')->value['width'];?>
" height="<?php echo $_smarty_tpl->getVariable('thumbSceneSize')->value['height'];?>
" />
					</a>
				</li>
		 	<?php }} ?>
		 	</ul>
		</div>
		<span class="space-keeper">
			<a class="next" href="#" style="height:<?php echo smarty_function_math(array('equation'=>'a+2','a'=>$_smarty_tpl->getVariable('thumbSceneImageType')->value['height']),$_smarty_tpl);?>
px;" onclick="{next_scene_is_at_right = true; $(this).parent().prev().trigger('stop').trigger('next'); return false;}">&nbsp;</a>
		</span>
	</div>
	<?php }?>
</div>
<?php }?>
