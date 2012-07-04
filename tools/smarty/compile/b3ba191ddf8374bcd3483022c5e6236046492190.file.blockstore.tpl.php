<?php /* Smarty version Smarty-3.0.7, created on 2011-10-19 10:20:54
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/blockstore/blockstore.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20114241914e9e8866e36a97-28894215%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b3ba191ddf8374bcd3483022c5e6236046492190' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/blockstore/blockstore.tpl',
      1 => 1318692492,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20114241914e9e8866e36a97-28894215',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>


<!-- Block stores module -->
<div id="stores_block_left" class="block">
	<h4><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('stores.php');?>
" title="<?php echo smartyTranslate(array('s'=>'Our store','mod'=>'blockstore'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'Our store','mod'=>'blockstore'),$_smarty_tpl);?>
</a></h4>
	<div>
		<p>
			<a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('stores.php');?>
" title="<?php echo smartyTranslate(array('s'=>'Our store','mod'=>'blockstore'),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('module_dir')->value;?>
<?php echo $_smarty_tpl->getVariable('store_img')->value;?>
" alt="<?php echo smartyTranslate(array('s'=>'Our stores','mod'=>'blockstore'),$_smarty_tpl);?>
" width="230" height="170" /></a><br />
			<a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('stores.php');?>
" title="<?php echo smartyTranslate(array('s'=>'Our store','mod'=>'blockstore'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'Discover our store','mod'=>'blockstore'),$_smarty_tpl);?>
</a>
		</p>
	</div>
</div>
<!-- /Block stores module -->
