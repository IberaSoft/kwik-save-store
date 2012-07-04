<?php /* Smarty version Smarty-3.0.7, created on 2011-10-10 13:09:58
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/blockvariouslinks/blockvariouslinks.tpl" */ ?>
<?php /*%%SmartyHeaderCode:18244513304e92d2869a13e8-58093093%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '62c3d3ed9caebfa714f0148151919a5ad74c032d' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/blockvariouslinks/blockvariouslinks.tpl',
      1 => 1316705485,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18244513304e92d2869a13e8-58093093',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><!-- MODULE Block various links -->
<ul class="block_various_links" id="block_various_links_footer">
	<li class="first_item"><a href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
prices-drop.php" title=""><?php echo smartyTranslate(array('s'=>'Specials','mod'=>'blockvariouslinks'),$_smarty_tpl);?>
</a></li>
	<li class="item"><a href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
new-products.php" title=""><?php echo smartyTranslate(array('s'=>'New products','mod'=>'blockvariouslinks'),$_smarty_tpl);?>
</a></li>
	<li class="item"><a href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
best-sales.php" title=""><?php echo smartyTranslate(array('s'=>'Top sellers','mod'=>'blockvariouslinks'),$_smarty_tpl);?>
</a></li>
	<li class="item"><a href="<?php echo $_smarty_tpl->getVariable('base_dir_ssl')->value;?>
contact-form.php" title=""><?php echo smartyTranslate(array('s'=>'Contact us','mod'=>'blockvariouslinks'),$_smarty_tpl);?>
</a></li>
	<?php  $_smarty_tpl->tpl_vars['cmslink'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('cmslinks')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['cmslink']->key => $_smarty_tpl->tpl_vars['cmslink']->value){
?>
		<li class="item"><a href="<?php echo addslashes($_smarty_tpl->tpl_vars['cmslink']->value['link']);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['cmslink']->value['meta_title'],'htmlall','UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['cmslink']->value['meta_title'],'htmlall','UTF-8');?>
</a></li>
	<?php }} ?>	
</ul>
<!-- /MODULE Block various links -->
