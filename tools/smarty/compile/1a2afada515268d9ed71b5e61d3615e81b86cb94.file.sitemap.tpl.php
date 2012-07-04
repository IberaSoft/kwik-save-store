<?php /* Smarty version Smarty-3.0.7, created on 2011-10-11 20:49:45
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/sitemap.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6619789994e948fc93772b8-33095338%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1a2afada515268d9ed71b5e61d3615e81b86cb94' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/sitemap.tpl',
      1 => 1315907228,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6619789994e948fc93772b8-33095338',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><?php ob_start(); ?><?php echo smartyTranslate(array('s'=>'Sitemap'),$_smarty_tpl);?>
<?php  Smarty::$_smarty_vars['capture']['path']=ob_get_clean();?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./breadcrumb.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<h1><?php echo smartyTranslate(array('s'=>'Sitemap'),$_smarty_tpl);?>
</h1>
<div id="sitemap_content">
	<div class="sitemap_block">
		<h3><?php echo smartyTranslate(array('s'=>'Our offers'),$_smarty_tpl);?>
</h3>
		<ul>
			<li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('new-products.php');?>
"><?php echo smartyTranslate(array('s'=>'New products'),$_smarty_tpl);?>
</a></li>
			<?php if (!$_smarty_tpl->getVariable('PS_CATALOG_MODE')->value){?>
			<li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('best-sales.php');?>
"><?php echo smartyTranslate(array('s'=>'Top sellers'),$_smarty_tpl);?>
</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('prices-drop.php');?>
"><?php echo smartyTranslate(array('s'=>'Price drop'),$_smarty_tpl);?>
</a></li>
			<?php }?>
			<?php if ($_smarty_tpl->getVariable('display_manufacturer_link')->value||$_smarty_tpl->getVariable('PS_DISPLAY_SUPPLIERS')->value){?><li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('manufacturer.php');?>
"><?php echo smartyTranslate(array('s'=>'Manufacturers'),$_smarty_tpl);?>
</a></li><?php }?>
			<?php if ($_smarty_tpl->getVariable('display_supplier_link')->value||$_smarty_tpl->getVariable('PS_DISPLAY_SUPPLIERS')->value){?><li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('supplier.php');?>
"><?php echo smartyTranslate(array('s'=>'Suppliers'),$_smarty_tpl);?>
</a></li><?php }?>
		</ul>
	</div>
	<div class="sitemap_block">
		<h3><?php echo smartyTranslate(array('s'=>'Your Account'),$_smarty_tpl);?>
</h3>
		<ul>
			<li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('my-account.php',true);?>
"><?php echo smartyTranslate(array('s'=>'Your Account'),$_smarty_tpl);?>
</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('identity.php',true);?>
"><?php echo smartyTranslate(array('s'=>'Personal information'),$_smarty_tpl);?>
</a></li>
			<li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('addresses.php',true);?>
"><?php echo smartyTranslate(array('s'=>'Addresses'),$_smarty_tpl);?>
</a></li>
			<?php if ($_smarty_tpl->getVariable('voucherAllowed')->value){?><li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('discount.php',true);?>
"><?php echo smartyTranslate(array('s'=>'Discounts'),$_smarty_tpl);?>
</a></li><?php }?>
			<li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('history.php',true);?>
"><?php echo smartyTranslate(array('s'=>'Order history'),$_smarty_tpl);?>
</a></li>
		</ul>
	</div>
	<div class="clearblock"></div>
</div>
<div>
	<div class="categTree">
		<h3><?php echo smartyTranslate(array('s'=>'Categories'),$_smarty_tpl);?>
</h3>
		<div class="tree_top"><a href="<?php echo $_smarty_tpl->getVariable('base_dir_ssl')->value;?>
"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('categoriesTree')->value['name'],'htmlall','UTF-8');?>
</a></div>
		<ul class="tree">
		<?php if (isset($_smarty_tpl->getVariable('categoriesTree',null,true,false)->value['children'])){?>
			<?php  $_smarty_tpl->tpl_vars['child'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('categoriesTree')->value['children']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['child']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['child']->iteration=0;
if ($_smarty_tpl->tpl_vars['child']->total > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['child']->key => $_smarty_tpl->tpl_vars['child']->value){
 $_smarty_tpl->tpl_vars['child']->iteration++;
 $_smarty_tpl->tpl_vars['child']->last = $_smarty_tpl->tpl_vars['child']->iteration === $_smarty_tpl->tpl_vars['child']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['sitemapTree']['last'] = $_smarty_tpl->tpl_vars['child']->last;
?>
				<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['sitemapTree']['last']){?>
					<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./category-tree-branch.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('node',$_smarty_tpl->tpl_vars['child']->value);$_template->assign('last','true'); echo $_template->getRenderedTemplate();?><?php unset($_template);?>
				<?php }else{ ?>
					<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./category-tree-branch.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('node',$_smarty_tpl->tpl_vars['child']->value); echo $_template->getRenderedTemplate();?><?php unset($_template);?>
				<?php }?>
			<?php }} ?>
		<?php }?>
		</ul>
	</div>
	<div class="categTree">
		<h3><?php echo smartyTranslate(array('s'=>'Pages'),$_smarty_tpl);?>
</h3>
		<div class="tree_top"><a href="<?php echo $_smarty_tpl->getVariable('categoriescmsTree')->value['link'];?>
"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('categoriescmsTree')->value['name'],'htmlall','UTF-8');?>
</a></div>
		<ul class="tree">
			<?php if (isset($_smarty_tpl->getVariable('categoriescmsTree',null,true,false)->value['children'])){?>
				<?php  $_smarty_tpl->tpl_vars['child'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('categoriescmsTree')->value['children']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['child']->key => $_smarty_tpl->tpl_vars['child']->value){
?>
					<?php if ((isset($_smarty_tpl->tpl_vars['child']->value['children'])&&count($_smarty_tpl->tpl_vars['child']->value['children'])>0)||count($_smarty_tpl->tpl_vars['child']->value['cms'])>0){?>
						<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./category-cms-tree-branch.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('node',$_smarty_tpl->tpl_vars['child']->value); echo $_template->getRenderedTemplate();?><?php unset($_template);?>
					<?php }?>
				<?php }} ?>
			<?php }?>
			<?php  $_smarty_tpl->tpl_vars['cms'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('categoriescmsTree')->value['cms']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['cms']->key => $_smarty_tpl->tpl_vars['cms']->value){
?>
				<li><a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['cms']->value['link'],'htmlall','UTF-8');?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['cms']->value['meta_title'],'htmlall','UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['cms']->value['meta_title'],'htmlall','UTF-8');?>
</a></li>
			<?php }} ?>
			<?php if ($_smarty_tpl->getVariable('display_store')->value){?><li><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('stores.php');?>
" title="<?php echo smartyTranslate(array('s'=>'Our stores'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'Our stores'),$_smarty_tpl);?>
</a></li><?php }?>
			<li class="last"><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('contact-form.php',true);?>
"><?php echo smartyTranslate(array('s'=>'Contact'),$_smarty_tpl);?>
</a></li>
		</ul>
	</div>
</div>