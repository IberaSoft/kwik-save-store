<?php /* Smarty version Smarty-3.0.7, created on 2011-10-12 07:17:15
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/sendtoafriend/product_page.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2518430274e9522db1b77c2-42134436%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c6d1368732537cf1f438f79a1df49133cea9c318' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/sendtoafriend/product_page.tpl',
      1 => 1315207946,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2518430274e9522db1b77c2-42134436',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>


<li><a href="<?php echo $_smarty_tpl->getVariable('this_path')->value;?>
sendtoafriend-form.php?id_product=<?php echo intval($_GET['id_product']);?>
"><?php echo smartyTranslate(array('s'=>'Send to a friend','mod'=>'sendtoafriend'),$_smarty_tpl);?>
</a></li>
