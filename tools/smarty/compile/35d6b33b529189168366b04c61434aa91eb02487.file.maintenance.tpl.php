<?php /* Smarty version Smarty-3.0.7, created on 2011-10-18 12:25:14
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/maintenance.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3380028394e9d540ac995c5-47878418%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '35d6b33b529189168366b04c61434aa91eb02487' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/maintenance.tpl',
      1 => 1315907186,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3380028394e9d540ac995c5-47878418',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $_smarty_tpl->getVariable('lang_iso')->value;?>
" lang="<?php echo $_smarty_tpl->getVariable('lang_iso')->value;?>
">
	<head>
		<title><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('meta_title')->value,'htmlall','UTF-8');?>
</title>	
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php if (isset($_smarty_tpl->getVariable('meta_description',null,true,false)->value)){?>
		<meta name="description" content="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('meta_description')->value,'htmlall','UTF-8');?>
" />
<?php }?>
<?php if (isset($_smarty_tpl->getVariable('meta_keywords',null,true,false)->value)){?>
		<meta name="keywords" content="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('meta_keywords')->value,'htmlall','UTF-8');?>
" />
<?php }?>
		<meta name="robots" content="<?php if (isset($_smarty_tpl->getVariable('nobots',null,true,false)->value)){?>no<?php }?>index,follow" />
		<link rel="shortcut icon" href="<?php echo $_smarty_tpl->getVariable('img_ps_dir')->value;?>
favicon.ico" />
		<link href="<?php echo $_smarty_tpl->getVariable('css_dir')->value;?>
maintenance.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div id="maintenance">
			 <p id="logo"><img src="<?php echo $_smarty_tpl->getVariable('content_dir')->value;?>
img/logo.jpg" alt="logo" /></p>
			 <p id="message">
				<?php echo smartyTranslate(array('s'=>'In order to perform site maintenance, our online shop has shut down temporarily. We apologize for the inconvenience and ask that you please try again later.'),$_smarty_tpl);?>

			 </p>
		</div>
	</body>
</html>