<?php /* Smarty version Smarty-3.0.7, created on 2011-09-14 10:43:22
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/homecarousel/homecarousel.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9550082624e70692a338eb0-35546930%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '708af463a6e902e2ecd00850b84ca8c106d78054' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/homecarousel/homecarousel.tpl',
      1 => 1315907948,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9550082624e70692a338eb0-35546930',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><!-- MODULE Home Featured Products -->
<?php if (isset($_smarty_tpl->getVariable('products',null,true,false)->value)&&$_smarty_tpl->getVariable('products')->value){?>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('module_dir')->value;?>
jquery.jcarousel.pack.js"></script>
<?php if ($_smarty_tpl->getVariable('autoplay')->value){?>
	<script type="text/javascript">
		var carousel_autoplay = <?php echo $_smarty_tpl->getVariable('autoplayduration')->value;?>
;
		var carousel_items_visible = <?php echo $_smarty_tpl->getVariable('itemsvisible')->value;?>
;
		var carousel_scroll = <?php echo $_smarty_tpl->getVariable('itemsscroll')->value;?>
;
	</script>
<?php }else{ ?>
	<script type="text/javascript">
		var carousel_autoplay = 0;
		var carousel_items_visible = <?php echo $_smarty_tpl->getVariable('itemsvisible')->value;?>
;
		var carousel_scroll = <?php echo $_smarty_tpl->getVariable('itemsscroll')->value;?>
;
	</script>
<?php }?>

<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('module_dir')->value;?>
homecarousel.js"></script>


<ul id="mycarousel">
	<?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('products')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value){
?>
	<?php $_smarty_tpl->tpl_vars['productLink'] = new Smarty_variable($_smarty_tpl->getVariable('link')->value->getProductLink($_smarty_tpl->tpl_vars['product']->value['id_product'],$_smarty_tpl->tpl_vars['product']->value['link_rewrite']), null, null);?>
	
			<li >
		<a href="<?php echo $_smarty_tpl->getVariable('productLink')->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['product']->value['legend'];?>
" class="product_image"><img src="<?php echo $_smarty_tpl->getVariable('link')->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['id_image'],'home');?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'],'html','UTF-8');?>
" /></a>	
		<?php if ($_smarty_tpl->getVariable('displayname')->value){?><h5><a href="<?php echo $_smarty_tpl->getVariable('productLink')->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['product']->value['name'];?>
"><?php echo smarty_modifier_truncate(smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'],'htmlall','UTF-8'),30);?>
</a></h5><?php }?>
		</li>	

	<?php }} ?>
</ul>

<?php }else{ ?>
<p><?php echo smartyTranslate(array('s'=>'No products for carousel','mod'=>'homecarousel'),$_smarty_tpl);?>
</p>
<?php }?>
<!-- /MODULE Home Featured Products -->