<?php /* Smarty version Smarty-3.0.7, created on 2011-09-08 14:04:07
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/contact-form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:19261450024e68af37270357-55604664%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '29031ddab135a35865377d5ad5d75e638bc3721a' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/contact-form.tpl',
      1 => 1315229603,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19261450024e68af37270357-55604664',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?>

<?php ob_start(); ?><?php echo smartyTranslate(array('s'=>'Contact'),$_smarty_tpl);?>
<?php  Smarty::$_smarty_vars['capture']['path']=ob_get_clean();?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./breadcrumb.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>

<h1><?php echo smartyTranslate(array('s'=>'Customer Service'),$_smarty_tpl);?>
 - <?php if (isset($_smarty_tpl->getVariable('customerThread',null,true,false)->value)&&$_smarty_tpl->getVariable('customerThread')->value){?><?php echo smartyTranslate(array('s'=>'Your reply'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'Contact us'),$_smarty_tpl);?>
<?php }?></h1>

<?php if (isset($_smarty_tpl->getVariable('confirmation',null,true,false)->value)){?>
	<p><?php echo smartyTranslate(array('s'=>'Your message has been successfully sent to our team.'),$_smarty_tpl);?>
</p>
	<ul class="footer_links">
		<li><a href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
"><img class="icon" alt="" src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/home.gif"/></a><a href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
"><?php echo smartyTranslate(array('s'=>'Home'),$_smarty_tpl);?>
</a></li>
	</ul>
<?php }elseif(isset($_smarty_tpl->getVariable('alreadySent',null,true,false)->value)){?>
	<p><?php echo smartyTranslate(array('s'=>'Your message has already been sent.'),$_smarty_tpl);?>
</p>
	<ul class="footer_links">
		<li><a href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
"><img class="icon" alt="" src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/home.gif"/></a><a href="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
"><?php echo smartyTranslate(array('s'=>'Home'),$_smarty_tpl);?>
</a></li>
	</ul>
<?php }else{ ?>
	<p class="bold"><?php echo smartyTranslate(array('s'=>'For questions about an order or for more information about our products'),$_smarty_tpl);?>
.</p>
	<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./errors.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
	<form action="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('request_uri')->value,'htmlall','UTF-8');?>
" method="post" class="std" enctype="multipart/form-data">
		<fieldset>
			<h3><?php echo smartyTranslate(array('s'=>'Send a message'),$_smarty_tpl);?>
</h3>
			<p class="select">
				<label for="id_contact"><?php echo smartyTranslate(array('s'=>'Subject Heading'),$_smarty_tpl);?>
</label>
			<?php if (isset($_smarty_tpl->getVariable('customerThread',null,true,false)->value['id_contact'])){?>
				<?php  $_smarty_tpl->tpl_vars['contact'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('contacts')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['contact']->key => $_smarty_tpl->tpl_vars['contact']->value){
?>
					<?php if ($_smarty_tpl->tpl_vars['contact']->value['id_contact']==$_smarty_tpl->getVariable('customerThread')->value['id_contact']){?>
						<input type="text" id="contact_name" name="contact_name" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['contact']->value['name'],'htmlall','UTF-8');?>
" readonly="readonly" />
						<input type="hidden" name="id_contact" value="<?php echo $_smarty_tpl->tpl_vars['contact']->value['id_contact'];?>
" />
					<?php }?>
				<?php }} ?>
			</p>
			<?php }else{ ?>
				<select id="id_contact" name="id_contact" onchange="showElemFromSelect('id_contact', 'desc_contact')">
					<option value="0"><?php echo smartyTranslate(array('s'=>'-- Choose --'),$_smarty_tpl);?>
</option>
				<?php  $_smarty_tpl->tpl_vars['contact'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('contacts')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['contact']->key => $_smarty_tpl->tpl_vars['contact']->value){
?>
					<option value="<?php echo intval($_smarty_tpl->tpl_vars['contact']->value['id_contact']);?>
" <?php if (isset($_POST['id_contact'])&&$_POST['id_contact']==$_smarty_tpl->tpl_vars['contact']->value['id_contact']){?>selected="selected"<?php }?>><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['contact']->value['name'],'htmlall','UTF-8');?>
</option>
				<?php }} ?>
				</select>
			</p>
			<p id="desc_contact0" class="desc_contact">&nbsp;</p>
				<?php  $_smarty_tpl->tpl_vars['contact'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('contacts')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['contact']->key => $_smarty_tpl->tpl_vars['contact']->value){
?>
					<p id="desc_contact<?php echo intval($_smarty_tpl->tpl_vars['contact']->value['id_contact']);?>
" class="desc_contact" style="display:none;">
						<label>&nbsp;</label><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['contact']->value['description'],'htmlall','UTF-8');?>

					</p>
				<?php }} ?>
			<?php }?>
			<p class="text">
				<label for="email"><?php echo smartyTranslate(array('s'=>'E-mail address'),$_smarty_tpl);?>
</label>
				<?php if (isset($_smarty_tpl->getVariable('customerThread',null,true,false)->value['email'])){?>
					<input type="text" id="email" name="from" value="<?php echo $_smarty_tpl->getVariable('customerThread')->value['email'];?>
" readonly="readonly" />
				<?php }else{ ?>
					<input type="text" id="email" name="from" value="<?php echo $_smarty_tpl->getVariable('email')->value;?>
" />
				<?php }?>
			</p>
		<?php if (!$_smarty_tpl->getVariable('PS_CATALOG_MODE')->value){?>
			<?php if ((!isset($_smarty_tpl->getVariable('customerThread',null,true,false)->value['id_order'])||$_smarty_tpl->getVariable('customerThread')->value['id_order']>0)){?>
			<p class="text">
				<label for="id_order"><?php echo smartyTranslate(array('s'=>'Order ID'),$_smarty_tpl);?>
</label>
				<?php if (!isset($_smarty_tpl->getVariable('customerThread',null,true,false)->value['id_order'])&&isset($_smarty_tpl->getVariable('isLogged',null,true,false)->value)&&$_smarty_tpl->getVariable('isLogged')->value==1){?>
					<select name="id_order" ><option value="0"><?php echo smartyTranslate(array('s'=>'-- Choose --'),$_smarty_tpl);?>
</option><?php echo $_smarty_tpl->getVariable('orderList')->value;?>
</select>
				<?php }elseif(!isset($_smarty_tpl->getVariable('customerThread',null,true,false)->value['id_order'])&&!isset($_smarty_tpl->getVariable('isLogged',null,true,false)->value)){?>
					<input type="text" name="id_order" id="id_order" value="<?php if (isset($_smarty_tpl->getVariable('customerThread',null,true,false)->value['id_order'])&&$_smarty_tpl->getVariable('customerThread')->value['id_order']>0){?><?php echo intval($_smarty_tpl->getVariable('customerThread')->value['id_order']);?>
<?php }else{ ?><?php if (isset($_POST['id_order'])){?><?php echo intval($_POST['id_order']);?>
<?php }?><?php }?>" />
				<?php }elseif($_smarty_tpl->getVariable('customerThread')->value['id_order']>0){?>
					<input type="text" name="id_order" id="id_order" value="<?php echo intval($_smarty_tpl->getVariable('customerThread')->value['id_order']);?>
" readonly="readonly" />
				<?php }?>
			</p>
			<?php }?>
			<?php if (isset($_smarty_tpl->getVariable('isLogged',null,true,false)->value)&&$_smarty_tpl->getVariable('isLogged')->value){?>
			<p class="text">
			<label for="id_product"><?php echo smartyTranslate(array('s'=>'Product'),$_smarty_tpl);?>
</label>
				<?php if (!isset($_smarty_tpl->getVariable('customerThread',null,true,false)->value['id_product'])){?>
					<select name="id_product" style="width:300px;"><option value="0"><?php echo smartyTranslate(array('s'=>'-- Choose --'),$_smarty_tpl);?>
</option><?php echo $_smarty_tpl->getVariable('orderedProductList')->value;?>
</select>
				<?php }elseif($_smarty_tpl->getVariable('customerThread')->value['id_product']>0){?>
					<input type="text" name="id_product" id="id_product" value="<?php echo intval($_smarty_tpl->getVariable('customerThread')->value['id_product']);?>
" readonly="readonly" />
				<?php }?>
			</p>
			<?php }?>
		<?php }?>
		<?php if ($_smarty_tpl->getVariable('fileupload')->value==1){?>
			<p class="text">
			<label for="fileUpload"><?php echo smartyTranslate(array('s'=>'Attach File'),$_smarty_tpl);?>
</label>
				<input type="hidden" name="MAX_FILE_SIZE" value="2000000" />
				<input type="file" name="fileUpload" id="fileUpload" />
			</p>
		<?php }?>
		<p class="textarea">
			<label for="message"><?php echo smartyTranslate(array('s'=>'Message'),$_smarty_tpl);?>
</label>
			 <textarea id="message" name="message" rows="15" cols="20" style="width:340px;height:220px"><?php if (isset($_smarty_tpl->getVariable('message',null,true,false)->value)){?><?php echo stripslashes(smarty_modifier_escape($_smarty_tpl->getVariable('message')->value,'htmlall','UTF-8'));?>
<?php }?></textarea>
		</p>
		<p class="submit">
			<input type="submit" name="submitMessage" id="submitMessage" value="<?php echo smartyTranslate(array('s'=>'Send'),$_smarty_tpl);?>
" class="button_large" onclick="$(this).hide();" />
		</p>
	</fieldset>
</form>
<?php }?>
