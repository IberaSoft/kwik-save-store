<?php /* Smarty version Smarty-3.0.7, created on 2011-09-05 15:42:42
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/newslettertabmodule/adminform.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12232923024e64d1d2061948-50448091%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7e55658543cba77775a89fb1543d9ebd088868d0' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/newslettertabmodule/adminform.tpl',
      1 => 1315229631,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12232923024e64d1d2061948-50448091',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<h2 class="space"><?php echo smartyTranslate(array('s'=>'Newsletter Module Configuration','mod'=>'newslettertabmodule'),$_smarty_tpl);?>
</h2>

<form action="" method="post">
<fieldset>
    <legend>
        <?php echo smartyTranslate(array('s'=>'Parent tab for newsletter tab','mod'=>'newslettertabmodule'),$_smarty_tpl);?>

    </legend>
    <label><?php echo smartyTranslate(array('s'=>'Choose the parent Tab:','mod'=>'newslettertabmodule'),$_smarty_tpl);?>
</label>

    <div class="margin-form">
        <select name="id_parent_tab">
            <option value="0" selected="selected"><?php echo smartyTranslate(array('s'=>'-- Choose --','mod'=>'newslettertabmodule'),$_smarty_tpl);?>
</option>
            <?php  $_smarty_tpl->tpl_vars['tab'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('tabsInfo')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['tab']->key => $_smarty_tpl->tpl_vars['tab']->value){
?>
            <option value="<?php echo $_smarty_tpl->tpl_vars['tab']->value['id_tab'];?>
" <?php if ($_smarty_tpl->getVariable('selectedTab')->value==$_smarty_tpl->tpl_vars['tab']->value['id_tab']){?> selected="selected"<?php }?> ><?php echo $_smarty_tpl->tpl_vars['tab']->value['class_name'];?>
</option>
            <?php }} ?>
        </select>
    </div>
    <div class="margin-form">
        <input type="submit" name="options_submit" value="<?php echo smartyTranslate(array('s'=>'Submit','mod'=>'newslettertabmodule'),$_smarty_tpl);?>
" />
    </div>
</fieldset>
</form>
