<?php /* Smarty version Smarty-3.0.7, created on 2011-10-11 21:55:06
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/supplier-list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15760032424e949f1ac7fe17-54635069%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b6bbe814a8251da6b4f99c3aa9515ecfa2790e89' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/supplier-list.tpl',
      1 => 1315907230,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15760032424e949f1ac7fe17-54635069',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><?php ob_start(); ?><?php echo smartyTranslate(array('s'=>'Suppliers'),$_smarty_tpl);?>
<?php  Smarty::$_smarty_vars['capture']['path']=ob_get_clean();?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./breadcrumb.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<h1><?php echo smartyTranslate(array('s'=>'Suppliers'),$_smarty_tpl);?>
</h1>
<?php if (isset($_smarty_tpl->getVariable('errors',null,true,false)->value)&&$_smarty_tpl->getVariable('errors')->value){?>
	<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./errors.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<?php }else{ ?>
	<p><span class="bold"><?php if ($_smarty_tpl->getVariable('nbSuppliers')->value==0){?><?php echo smartyTranslate(array('s'=>'There are no suppliers.'),$_smarty_tpl);?>
<?php }else{ ?><?php if ($_smarty_tpl->getVariable('nbSuppliers')->value==1){?><?php echo smartyTranslate(array('s'=>'There is'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'There are'),$_smarty_tpl);?>
<?php }?>&#160;<?php echo $_smarty_tpl->getVariable('nbSuppliers')->value;?>
&#160;<?php if ($_smarty_tpl->getVariable('nbSuppliers')->value==1){?><?php echo smartyTranslate(array('s'=>'supplier.'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'suppliers.'),$_smarty_tpl);?>
<?php }?><?php }?></span>
	</p>
<?php if ($_smarty_tpl->getVariable('nbSuppliers')->value>0){?>
	<ul id="suppliers_list">
	<?php  $_smarty_tpl->tpl_vars['supplier'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('suppliers')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['supplier']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['supplier']->iteration=0;
 $_smarty_tpl->tpl_vars['supplier']->index=-1;
if ($_smarty_tpl->tpl_vars['supplier']->total > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['supplier']->key => $_smarty_tpl->tpl_vars['supplier']->value){
 $_smarty_tpl->tpl_vars['supplier']->iteration++;
 $_smarty_tpl->tpl_vars['supplier']->index++;
 $_smarty_tpl->tpl_vars['supplier']->first = $_smarty_tpl->tpl_vars['supplier']->index === 0;
 $_smarty_tpl->tpl_vars['supplier']->last = $_smarty_tpl->tpl_vars['supplier']->iteration === $_smarty_tpl->tpl_vars['supplier']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['suppliers']['first'] = $_smarty_tpl->tpl_vars['supplier']->first;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['suppliers']['last'] = $_smarty_tpl->tpl_vars['supplier']->last;
?>
		<li class="<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['suppliers']['first']){?>first_item<?php }elseif($_smarty_tpl->getVariable('smarty')->value['foreach']['suppliers']['last']){?>last_item<?php }else{ ?>item<?php }?>"> 
			<div class="left_side">
				<div class="logo">
				<?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']>0){?>
				<a href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getsupplierLink($_smarty_tpl->tpl_vars['supplier']->value['id_supplier'],$_smarty_tpl->tpl_vars['supplier']->value['link_rewrite']),'htmlall','UTF-8');?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['supplier']->value['name'],'htmlall','UTF-8');?>
">
				<?php }?>
					<img src="<?php echo $_smarty_tpl->getVariable('img_sup_dir')->value;?>
<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['supplier']->value['image'],'htmlall','UTF-8');?>
-medium.jpg" alt="" width="<?php echo $_smarty_tpl->getVariable('mediumSize')->value['width'];?>
" height="<?php echo $_smarty_tpl->getVariable('mediumSize')->value['height'];?>
" />
				<?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']>0){?>
				</a>
				<?php }?>
				</div>
				<h3>
					<?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']>0){?>
					<a href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getsupplierLink($_smarty_tpl->tpl_vars['supplier']->value['id_supplier'],$_smarty_tpl->tpl_vars['supplier']->value['link_rewrite']),'htmlall','UTF-8');?>
">
					<?php }?>
					<?php echo smarty_modifier_escape(smarty_modifier_truncate($_smarty_tpl->tpl_vars['supplier']->value['name'],60,'...'),'htmlall','UTF-8');?>

					<?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']>0){?>
					</a>
					<?php }?>
				</h3>
				<p class="description">
				<?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']>0){?>
					<a href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getsupplierLink($_smarty_tpl->tpl_vars['supplier']->value['id_supplier'],$_smarty_tpl->tpl_vars['supplier']->value['link_rewrite']),'htmlall','UTF-8');?>
">
				<?php }?>
				<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['supplier']->value['description'],'htmlall','UTF-8');?>

				<?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']>0){?>
				</a>
				<?php }?>
				</p>
			</div>
			<div class="right_side">
			<?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']>0){?>
				<a href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getsupplierLink($_smarty_tpl->tpl_vars['supplier']->value['id_supplier'],$_smarty_tpl->tpl_vars['supplier']->value['link_rewrite']),'htmlall','UTF-8');?>
">
			<?php }?>
				<span><?php echo intval($_smarty_tpl->tpl_vars['supplier']->value['nb_products']);?>
 <?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']==1){?><?php echo smartyTranslate(array('s'=>'product'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'products'),$_smarty_tpl);?>
<?php }?></span>
			<?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']>0){?>
				</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['supplier']->value['nb_products']>0){?>
				<a class="button" href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getsupplierLink($_smarty_tpl->tpl_vars['supplier']->value['id_supplier'],$_smarty_tpl->tpl_vars['supplier']->value['link_rewrite']),'htmlall','UTF-8');?>
"><?php echo smartyTranslate(array('s'=>'view products'),$_smarty_tpl);?>
</a>
			<?php }?>
			</div>
			<div class="clearblock"></div>
		</li>
	<?php }} ?>
	</ul>
	<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./pagination.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<?php }?>
<?php }?>