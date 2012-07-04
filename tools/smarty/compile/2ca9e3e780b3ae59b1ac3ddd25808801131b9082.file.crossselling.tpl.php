<?php /* Smarty version Smarty-3.0.7, created on 2011-10-12 07:17:15
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/crossselling/crossselling.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7267295614e9522db1dc609-19006832%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2ca9e3e780b3ae59b1ac3ddd25808801131b9082' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/crossselling/crossselling.tpl',
      1 => 1315207560,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7267295614e9522db1dc609-19006832',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_math')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/function.math.php';
if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?>

<?php if (isset($_smarty_tpl->getVariable('orderProducts',null,true,false)->value)&&count($_smarty_tpl->getVariable('orderProducts')->value)){?>
<div id="crossselling">
	<script type="text/javascript">var middle = <?php echo $_smarty_tpl->getVariable('middlePosition_crossselling')->value;?>
;</script>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('content_dir')->value;?>
modules/crossselling/js/crossselling.js"></script>
	<h2 class="productscategory_h2"><?php echo smartyTranslate(array('s'=>'Customers who bought this product also bought:','mod'=>'crossselling'),$_smarty_tpl);?>
</h2>
	<div id="<?php if (count($_smarty_tpl->getVariable('orderProducts')->value)>5){?>crossselling<?php }else{ ?>crossselling_noscroll<?php }?>">
		<?php if (count($_smarty_tpl->getVariable('orderProducts')->value)>5){?><a id="crossselling_scroll_left" title="<?php echo smartyTranslate(array('s'=>'Previous','mod'=>'crossselling'),$_smarty_tpl);?>
" href="javascript:{}"><?php echo smartyTranslate(array('s'=>'Previous','mod'=>'crossselling'),$_smarty_tpl);?>
</a><?php }?>
		<div id="crossselling_list">
			<ul <?php if (count($_smarty_tpl->getVariable('orderProducts')->value)>5){?>style="width: <?php echo smarty_function_math(array('equation'=>"width * nbImages",'width'=>107,'nbImages'=>count($_smarty_tpl->getVariable('orderProducts')->value)),$_smarty_tpl);?>
px"<?php }?>>
				<?php  $_smarty_tpl->tpl_vars['orderProduct'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('orderProducts')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['orderProduct']->key => $_smarty_tpl->tpl_vars['orderProduct']->value){
?>
				<li <?php if (count($_smarty_tpl->getVariable('orderProducts')->value)<6){?>style="width: <?php echo smarty_function_math(array('equation'=>"width / nbImages",'width'=>94,'nbImages'=>count($_smarty_tpl->getVariable('orderProducts')->value)),$_smarty_tpl);?>
%"<?php }?>>
					<a href="<?php echo $_smarty_tpl->tpl_vars['orderProduct']->value['link'];?>
" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['orderProduct']->value['name']);?>
">
						<img src="<?php echo $_smarty_tpl->tpl_vars['orderProduct']->value['image'];?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['orderProduct']->value['name']);?>
" />
					</a><br/>
					<a href="<?php echo $_smarty_tpl->tpl_vars['orderProduct']->value['link'];?>
" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['orderProduct']->value['name']);?>
">
					<?php echo smarty_modifier_escape(smarty_modifier_truncate($_smarty_tpl->tpl_vars['orderProduct']->value['name'],15,'...'),'htmlall','UTF-8');?>

					</a><br />
					<?php if ($_smarty_tpl->getVariable('crossDisplayPrice')->value&&$_smarty_tpl->tpl_vars['orderProduct']->value['show_price']==1&&!isset($_smarty_tpl->getVariable('restricted_country_mode',null,true,false)->value)&&!$_smarty_tpl->getVariable('PS_CATALOG_MODE')->value){?>
						<span class="price_display">
							<span class="price"><?php echo Product::convertPrice(array('price'=>$_smarty_tpl->tpl_vars['orderProduct']->value['displayed_price']),$_smarty_tpl);?>
</span>
						</span><br />
					<?php }else{ ?>
						<br />
					<?php }?>
					<a title="<?php echo smartyTranslate(array('s'=>'View','mod'=>'crossselling'),$_smarty_tpl);?>
" href="<?php echo $_smarty_tpl->tpl_vars['orderProduct']->value['link'];?>
" class="button_small"><?php echo smartyTranslate(array('s'=>'View','mod'=>'crossselling'),$_smarty_tpl);?>
</a><br />
				</li>
				<?php }} ?>
			</ul>
		</div>
	<?php if (count($_smarty_tpl->getVariable('orderProducts')->value)>5){?><a id="crossselling_scroll_right" title="<?php echo smartyTranslate(array('s'=>'Next','mod'=>'crossselling'),$_smarty_tpl);?>
" href="javascript:{}"><?php echo smartyTranslate(array('s'=>'Next','mod'=>'crossselling'),$_smarty_tpl);?>
</a><?php }?>
	</div>
</div>
<?php }?>
