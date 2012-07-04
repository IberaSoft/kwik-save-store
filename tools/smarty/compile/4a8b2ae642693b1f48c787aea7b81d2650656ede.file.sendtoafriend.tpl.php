<?php /* Smarty version Smarty-3.0.7, created on 2011-10-12 05:33:01
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/sendtoafriend/sendtoafriend.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14496936024e950a6decbba4-61858763%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4a8b2ae642693b1f48c787aea7b81d2650656ede' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/sendtoafriend/sendtoafriend.tpl',
      1 => 1315207948,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14496936024e950a6decbba4-61858763',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?>

<?php ob_start(); ?><?php echo smartyTranslate(array('s'=>'Send to a friend','mod'=>'sendtoafriend'),$_smarty_tpl);?>
<?php  Smarty::$_smarty_vars['capture']['path']=ob_get_clean();?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./breadcrumb.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>

<h1><?php echo smartyTranslate(array('s'=>'Send to a friend','mod'=>'sendtoafriend'),$_smarty_tpl);?>
</h1>

<p class="bold"><?php echo smartyTranslate(array('s'=>'Send this page to a friend who might be interested in the item below.','mod'=>'sendtoafriend'),$_smarty_tpl);?>
.</p>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./errors.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>

<?php if (isset($_GET['submited'])){?>
	<p class="success"><?php echo smartyTranslate(array('s'=>'Your email has been sent successfully','mod'=>'sendtoafriend'),$_smarty_tpl);?>
</p>
<?php }else{ ?>
	<form method="post" action="<?php echo $_smarty_tpl->getVariable('request_uri')->value;?>
" class="std">
		<fieldset>
			<h3><?php echo smartyTranslate(array('s'=>'Send a message','mod'=>'sendtoafriend'),$_smarty_tpl);?>
</h3>

			<p class="align_center">
				<a href="<?php echo $_smarty_tpl->getVariable('productLink')->value;?>
"><img src="<?php echo $_smarty_tpl->getVariable('link')->value->getImageLink($_smarty_tpl->getVariable('product')->value->link_rewrite,$_smarty_tpl->getVariable('cover')->value['id_image'],'small');?>
" alt="" title="<?php echo $_smarty_tpl->getVariable('cover')->value['legend'];?>
" /></a><br/>
				<a href="<?php echo $_smarty_tpl->getVariable('productLink')->value;?>
"><?php echo $_smarty_tpl->getVariable('product')->value->name;?>
</a>
			</p>

			<p>
				<label for="friend-name"><?php echo smartyTranslate(array('s'=>'Friend\'s name:','mod'=>'sendtoafriend'),$_smarty_tpl);?>
</label>
				<input type="text" id="friend-name" name="name" value="<?php if (isset($_POST['name'])){?><?php echo stripslashes(smarty_modifier_escape($_POST['name'],'htmlall','UTF-8'));?>
<?php }?>" />
			</p>
			<p>
				<label for="friend-address"><?php echo smartyTranslate(array('s'=>'Friend\'s email:','mod'=>'sendtoafriend'),$_smarty_tpl);?>
</label>
				<input type="text" id="friend-address" name="email" value="<?php if (isset($_POST['name'])){?><?php echo stripslashes(smarty_modifier_escape($_POST['email'],'htmlall'));?>
<?php }?>" />
			</p>

			<p class="submit">
				<input type="submit" name="submitAddtoafriend" value="<?php echo smartyTranslate(array('s'=>'send','mod'=>'sendtoafriend'),$_smarty_tpl);?>
" class="button" />
			</p>
		</fieldset>
	</form>
<?php }?>

<ul class="footer_links">
	<li><a href="<?php echo $_smarty_tpl->getVariable('productLink')->value;?>
" class="button_large"><?php echo smartyTranslate(array('s'=>'Back to product page','mod'=>'sendtoafriend'),$_smarty_tpl);?>
</a></li>
</ul>

