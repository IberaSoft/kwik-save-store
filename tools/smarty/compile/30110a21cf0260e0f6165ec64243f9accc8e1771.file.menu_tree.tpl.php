<?php /* Smarty version Smarty-3.0.7, created on 2011-10-19 10:20:49
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/jbx_menu/menu_tree.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14480676104e9e8861893ed0-66712356%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '30110a21cf0260e0f6165ec64243f9accc8e1771' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/jbx_menu/menu_tree.tpl',
      1 => 1315302539,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14480676104e9e8861893ed0-66712356',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><?php if (!$_smarty_tpl->getVariable('item')->value['logged']||($_smarty_tpl->getVariable('item')->value['logged']&&$_smarty_tpl->getVariable('menu')->value['logged'])){?>
<li <?php if (($_smarty_tpl->getVariable('item')->value['type']==$_smarty_tpl->getVariable('page_name')->value&&$_smarty_tpl->getVariable('item')->value['id']==$_smarty_tpl->getVariable('menu')->value['id'])){?>class="sfHoverForce"<?php }?><?php if ($_smarty_tpl->getVariable('item')->value['css']){?> id="<?php echo $_smarty_tpl->getVariable('item')->value['css'];?>
"<?php }?>>
  <a href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('item')->value['link'],'htmlall','UTF-8');?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('item')->value['title'],'htmlall','UTF-8');?>
"<?php if ($_smarty_tpl->getVariable('item')->value['new_window']>0){?> target="_blank"<?php }?>>
    <?php if ($_smarty_tpl->getVariable('menu')->value['icons']){?>
      <?php if (file_exists((($_smarty_tpl->getVariable('menu')->value['icons_path']).($_smarty_tpl->getVariable('item')->value['id_menu'])).('.jpg'))){?>
        <img src="<?php echo (($_smarty_tpl->getVariable('menu')->value['icons_url']).($_smarty_tpl->getVariable('item')->value['id_menu'])).('.jpg');?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('item')->value['title'],'htmlall','UTF-8');?>
" />
        <?php $_smarty_tpl->tpl_vars['haveIcon'] = new Smarty_variable('1', null, null);?>
      <?php }?>
      <?php if (file_exists((($_smarty_tpl->getVariable('menu')->value['icons_path']).($_smarty_tpl->getVariable('item')->value['id_menu'])).('.gif'))){?>
        <img src="<?php echo (($_smarty_tpl->getVariable('menu')->value['icons_url']).($_smarty_tpl->getVariable('item')->value['id_menu'])).('.gif');?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('item')->value['title'],'htmlall','UTF-8');?>
" />
        <?php $_smarty_tpl->tpl_vars['haveIcon'] = new Smarty_variable('1', null, null);?>
      <?php }?>
      <?php if (file_exists((($_smarty_tpl->getVariable('menu')->value['icons_path']).($_smarty_tpl->getVariable('item')->value['id_menu'])).('.png'))){?>
        <img src="<?php echo (($_smarty_tpl->getVariable('menu')->value['icons_url']).($_smarty_tpl->getVariable('item')->value['id_menu'])).('.png');?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('item')->value['title'],'htmlall','UTF-8');?>
" />
        <?php $_smarty_tpl->tpl_vars['haveIcon'] = new Smarty_variable('1', null, null);?>
      <?php }?>
    <?php }?>
    &nbsp;<?php if (isset($_smarty_tpl->getVariable('haveIcon',null,true,false)->value)){?><p><?php }?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('item')->value['title'],'htmlall','UTF-8');?>
<?php if (isset($_smarty_tpl->getVariable('haveIcon',null,true,false)->value)){?></p><?php }?>
    <?php if (isset($_smarty_tpl->getVariable('item',null,true,false)->value['numProducts'])&&$_smarty_tpl->getVariable('menu')->value['categories_num']&&(!$_smarty_tpl->getVariable('menu')->value['categories_zero']&&$_smarty_tpl->getVariable('item')->value['numProducts']>0||$_smarty_tpl->getVariable('menu')->value['categories_zero'])){?>&nbsp;<i>(<?php echo $_smarty_tpl->getVariable('item')->value['numProducts'];?>
)</i><?php }?>
  </a>
  <?php if (count($_smarty_tpl->getVariable('item')->value['childrens'])>0){?>
  	<ul>
  	<?php $_smarty_tpl->tpl_vars['childrens'] = new Smarty_variable($_smarty_tpl->getVariable('item')->value['childrens'], null, null);?>
  	<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('childrens')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
?>
  		<?php $_template = new Smarty_Internal_Template($_smarty_tpl->getVariable('menu_tpl_tree')->value, $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
  	<?php }} ?>
  	</ul>
  <?php }?>
</li>
<?php }?>