<?php /* Smarty version Smarty-3.0.7, created on 2011-09-05 10:36:07
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/blocktags/blocktags.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9520531604e6489f78e5136-81075929%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a798d7f4eac5b24740b526d3b34ae53b5cf546da' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/blocktags/blocktags.tpl',
      1 => 1315207479,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9520531604e6489f78e5136-81075929',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?>

<!-- Block tags module -->
<div id="tags_block_left" class="block tags_block">
	<h4><?php echo smartyTranslate(array('s'=>'Tags','mod'=>'blocktags'),$_smarty_tpl);?>
</h4>
	<p class="block_content">
<?php if ($_smarty_tpl->getVariable('tags')->value){?>
	<?php  $_smarty_tpl->tpl_vars['tag'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('tags')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['tag']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['tag']->iteration=0;
 $_smarty_tpl->tpl_vars['tag']->index=-1;
if ($_smarty_tpl->tpl_vars['tag']->total > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['tag']->key => $_smarty_tpl->tpl_vars['tag']->value){
 $_smarty_tpl->tpl_vars['tag']->iteration++;
 $_smarty_tpl->tpl_vars['tag']->index++;
 $_smarty_tpl->tpl_vars['tag']->first = $_smarty_tpl->tpl_vars['tag']->index === 0;
 $_smarty_tpl->tpl_vars['tag']->last = $_smarty_tpl->tpl_vars['tag']->iteration === $_smarty_tpl->tpl_vars['tag']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['myLoop']['first'] = $_smarty_tpl->tpl_vars['tag']->first;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['myLoop']['last'] = $_smarty_tpl->tpl_vars['tag']->last;
?>
		<a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('search.php');?>
?tag=<?php echo urlencode($_smarty_tpl->tpl_vars['tag']->value['name']);?>
" title="<?php echo smartyTranslate(array('s'=>'More about','mod'=>'blocktags'),$_smarty_tpl);?>
 <?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['tag']->value['name'],'html','UTF-8');?>
" class="<?php echo $_smarty_tpl->tpl_vars['tag']->value['class'];?>
 <?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['last']){?>last_item<?php }elseif($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['first']){?>first_item<?php }else{ ?>item<?php }?>"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['tag']->value['name'],'html','UTF-8');?>
</a>
	<?php }} ?>
<?php }else{ ?>
	<?php echo smartyTranslate(array('s'=>'No tags specified yet','mod'=>'blocktags'),$_smarty_tpl);?>

<?php }?>
	</p>
</div>
<!-- /Block tags module -->
