<?php /* Smarty version Smarty-3.0.7, created on 2011-10-11 18:02:20
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/search.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11651202434e94688c3094a1-20145988%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2031f7ffc1420e6f91b28d0b5f9302d5d1764723' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/search.tpl',
      1 => 1315907224,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11651202434e94688c3094a1-20145988',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><?php ob_start(); ?><?php echo smartyTranslate(array('s'=>'Search'),$_smarty_tpl);?>
<?php  Smarty::$_smarty_vars['capture']['path']=ob_get_clean();?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./breadcrumb.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<h1 <?php if (isset($_smarty_tpl->getVariable('instantSearch',null,true,false)->value)&&$_smarty_tpl->getVariable('instantSearch')->value){?>id="instant_search_results"<?php }?>>
<?php echo smartyTranslate(array('s'=>'Search'),$_smarty_tpl);?>
&nbsp;<?php if ($_smarty_tpl->getVariable('nbProducts')->value>0){?>"<?php if (isset($_smarty_tpl->getVariable('search_query',null,true,false)->value)&&$_smarty_tpl->getVariable('search_query')->value){?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('search_query')->value,'htmlall','UTF-8');?>
<?php }elseif($_smarty_tpl->getVariable('search_tag')->value){?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('search_tag')->value,'htmlall','UTF-8');?>
<?php }elseif($_smarty_tpl->getVariable('ref')->value){?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('ref')->value,'htmlall','UTF-8');?>
<?php }?>"<?php }?>
<?php if (isset($_smarty_tpl->getVariable('instantSearch',null,true,false)->value)&&$_smarty_tpl->getVariable('instantSearch')->value){?><a href="#" class="close"><?php echo smartyTranslate(array('s'=>'Return to previous page'),$_smarty_tpl);?>
</a><?php }?>
</h1>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./errors.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<?php if (!$_smarty_tpl->getVariable('nbProducts')->value){?>
	<p class="warning">
		<?php if (isset($_smarty_tpl->getVariable('search_query',null,true,false)->value)&&$_smarty_tpl->getVariable('search_query')->value){?>
			<?php echo smartyTranslate(array('s'=>'No results found for your search'),$_smarty_tpl);?>
&nbsp;"<?php if (isset($_smarty_tpl->getVariable('search_query',null,true,false)->value)){?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('search_query')->value,'htmlall','UTF-8');?>
<?php }?>"
		<?php }elseif(isset($_smarty_tpl->getVariable('search_tag',null,true,false)->value)&&$_smarty_tpl->getVariable('search_tag')->value){?>
			<?php echo smartyTranslate(array('s'=>'No results found for your search'),$_smarty_tpl);?>
&nbsp;"<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tag')->value,'htmlall','UTF-8');?>
"
		<?php }else{ ?>
			<?php echo smartyTranslate(array('s'=>'Please type a search keyword'),$_smarty_tpl);?>

		<?php }?>
	</p>
<?php }else{ ?>
	<h3 class="search_results"><?php echo intval($_smarty_tpl->getVariable('nbProducts')->value);?>
&nbsp;<?php if ($_smarty_tpl->getVariable('nbProducts')->value==1){?><?php echo smartyTranslate(array('s'=>'result has been found.'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'results have been found.'),$_smarty_tpl);?>
<?php }?></h3>
	<?php if (!isset($_smarty_tpl->getVariable('instantSearch',null,true,false)->value)||(isset($_smarty_tpl->getVariable('instantSearch',null,true,false)->value)&&!$_smarty_tpl->getVariable('instantSearch')->value)){?><?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./product-sort.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?><?php }?>
	<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./product-list.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('products',$_smarty_tpl->getVariable('search_products')->value); echo $_template->getRenderedTemplate();?><?php unset($_template);?>
	<?php if (!isset($_smarty_tpl->getVariable('instantSearch',null,true,false)->value)||(isset($_smarty_tpl->getVariable('instantSearch',null,true,false)->value)&&!$_smarty_tpl->getVariable('instantSearch')->value)){?><?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./pagination.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?><?php }?>
<?php }?>