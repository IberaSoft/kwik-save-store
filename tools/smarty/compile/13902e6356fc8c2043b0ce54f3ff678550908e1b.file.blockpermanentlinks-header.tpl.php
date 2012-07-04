<?php /* Smarty version Smarty-3.0.7, created on 2011-09-13 12:09:51
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/modules/blockpermanentlinks/blockpermanentlinks-header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11586451924e6f2bef265431-79752307%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '13902e6356fc8c2043b0ce54f3ff678550908e1b' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/modules/blockpermanentlinks/blockpermanentlinks-header.tpl',
      1 => 1315907564,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11586451924e6f2bef265431-79752307',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!-- Block permanent links module HEADER -->
<ul id="header_links">
  	<li id="header_link_home"><a class="headerlink_home<?php if ($_smarty_tpl->getVariable('page_name')->value=='index'){?> active<?php }?>" href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
" title="<?php echo smartyTranslate(array('s'=>'home','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'home','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</a></li>
	<li id="header_link_specials"><a class="headerlink_contact<?php if ($_smarty_tpl->getVariable('page_name')->value=='prices-drop'){?> active<?php }?>" href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
prices-drop.php" title="<?php echo smartyTranslate(array('s'=>'Specials','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'Specials','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</a></li>
	<li id="header_link_sitemap"><a class="headerlink_sitemap<?php if ($_smarty_tpl->getVariable('page_name')->value=='sitemap'){?> active<?php }?>" href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
sitemap.php" title="<?php echo smartyTranslate(array('s'=>'sitemap','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'sitemap','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</a></li>
	<li id="header_link_contact"><a class="headerlink_specials<?php if ($_smarty_tpl->getVariable('page_name')->value=='contact-form'){?> active<?php }?>" href="<?php echo $_smarty_tpl->getVariable('base_dir_ssl')->value;?>
contact-form.php" title="<?php echo smartyTranslate(array('s'=>'contact','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'contact','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</a></li>
</ul>
<!-- /Block permanent links module HEADER -->