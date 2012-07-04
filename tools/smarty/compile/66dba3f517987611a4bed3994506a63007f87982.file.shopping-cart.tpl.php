<?php /* Smarty version Smarty-3.0.7, created on 2011-10-12 08:02:17
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/shopping-cart.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12013752134e952d69bc30f3-11813146%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '66dba3f517987611a4bed3994506a63007f87982' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/shopping-cart.tpl',
      1 => 1315907227,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12013752134e952d69bc30f3-11813146',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><?php ob_start(); ?><?php echo smartyTranslate(array('s'=>'Your shopping cart'),$_smarty_tpl);?>
<?php  Smarty::$_smarty_vars['capture']['path']=ob_get_clean();?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./breadcrumb.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<h1 id="cart_title"><?php echo smartyTranslate(array('s'=>'Shopping cart summary'),$_smarty_tpl);?>
</h1>
<?php $_smarty_tpl->tpl_vars['current_step'] = new Smarty_variable('summary', null, null);?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./order-steps.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<?php if (isset($_smarty_tpl->getVariable('empty',null,true,false)->value)){?>
	<p class="warning"><?php echo smartyTranslate(array('s'=>'Your shopping cart is empty.'),$_smarty_tpl);?>
</p>
<?php }elseif($_smarty_tpl->getVariable('PS_CATALOG_MODE')->value){?>
	<p class="warning"><?php echo smartyTranslate(array('s'=>'This store has not accepted your new order.'),$_smarty_tpl);?>
</p>
<?php }else{ ?>
	<script type="text/javascript">
	// <![CDATA[
	var baseDir = '<?php echo $_smarty_tpl->getVariable('base_dir_ssl')->value;?>
';
	var currencySign = '<?php echo html_entity_decode($_smarty_tpl->getVariable('currencySign')->value,2,"UTF-8");?>
';
	var currencyRate = '<?php echo floatval($_smarty_tpl->getVariable('currencyRate')->value);?>
';
	var currencyFormat = '<?php echo intval($_smarty_tpl->getVariable('currencyFormat')->value);?>
';
	var currencyBlank = '<?php echo intval($_smarty_tpl->getVariable('currencyBlank')->value);?>
';
	var txtProduct = "<?php echo smartyTranslate(array('s'=>'product'),$_smarty_tpl);?>
";
	var txtProducts = "<?php echo smartyTranslate(array('s'=>'products'),$_smarty_tpl);?>
";
	// ]]>
	</script>
	<p style="display:none" id="emptyCartWarning" class="warning"><?php echo smartyTranslate(array('s'=>'Your shopping cart is empty.'),$_smarty_tpl);?>
</p>
<?php if (isset($_smarty_tpl->getVariable('lastProductAdded',null,true,false)->value)&&$_smarty_tpl->getVariable('lastProductAdded')->value){?>
	<?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('products')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value){
?>
		<?php if ($_smarty_tpl->tpl_vars['product']->value['id_product']==$_smarty_tpl->getVariable('lastProductAdded')->value['id_product']&&(!$_smarty_tpl->tpl_vars['product']->value['id_product_attribute']||($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']==$_smarty_tpl->getVariable('lastProductAdded')->value['id_product_attribute']))){?>
		<table class="cart_last_product std">
			<tr>
				<th colspan="2"><?php echo smartyTranslate(array('s'=>'Last added product'),$_smarty_tpl);?>
</th>
			</tr>
			<tr>
				<td class="cart_product"><a class="cart_last_product_img" href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getProductLink($_smarty_tpl->tpl_vars['product']->value['id_product'],$_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['category']),'htmlall','UTF-8');?>
"><img src="<?php echo $_smarty_tpl->getVariable('link')->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['id_image'],'small');?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'],'htmlall','UTF-8');?>
"/></a></td>
				<td>
					<h5><a class="product_link" href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getProductLink($_smarty_tpl->tpl_vars['product']->value['id_product'],$_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['category']),'htmlall','UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'],'htmlall','UTF-8');?>
</a></h5>
					<?php if (isset($_smarty_tpl->tpl_vars['product']->value['attributes'])&&$_smarty_tpl->tpl_vars['product']->value['attributes']){?><a class="product_descr" href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getProductLink($_smarty_tpl->tpl_vars['product']->value['id_product'],$_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['category']),'htmlall','UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['attributes'],'htmlall','UTF-8');?>
</a><?php }?>
				</td>
			</tr>
		</table>
		<?php }?>
	<?php }} ?>
<?php }?>
<p><?php echo smartyTranslate(array('s'=>'Your shopping cart contains'),$_smarty_tpl);?>
 <span id="summary_products_quantity"><?php echo $_smarty_tpl->getVariable('productNumber')->value;?>
 <?php if ($_smarty_tpl->getVariable('productNumber')->value==1){?><?php echo smartyTranslate(array('s'=>'product'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'products'),$_smarty_tpl);?>
<?php }?></span></p>
<div id="order-detail-content" class="table_block">
	<table id="cart_summary" class="std">
		<thead>
			<tr>
				<th class="cart_product first_item"><?php echo smartyTranslate(array('s'=>'Product'),$_smarty_tpl);?>
</th>
				<th class="cart_description item"><?php echo smartyTranslate(array('s'=>'Description'),$_smarty_tpl);?>
</th>
				<th class="cart_ref item"><?php echo smartyTranslate(array('s'=>'Ref.'),$_smarty_tpl);?>
</th>
				<th class="cart_availability item"><?php echo smartyTranslate(array('s'=>'Avail.'),$_smarty_tpl);?>
</th>
				<th class="cart_unit item"><?php echo smartyTranslate(array('s'=>'Unit price'),$_smarty_tpl);?>
</th>
				<th class="cart_quantity item"><?php echo smartyTranslate(array('s'=>'Qty'),$_smarty_tpl);?>
</th>
				<th class="cart_total last_item"><?php echo smartyTranslate(array('s'=>'Total'),$_smarty_tpl);?>
</th>
			</tr>
		</thead>
		<tfoot>
			<?php if ($_smarty_tpl->getVariable('use_taxes')->value){?>
				<?php if ($_smarty_tpl->getVariable('priceDisplay')->value){?>
					<tr class="cart_total_price">
						<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total products (tax excl.):'),$_smarty_tpl);?>
</td>
						<td class="price" id="total_product"><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_products')->value),$_smarty_tpl);?>
</span></td>
					</tr>
				<?php }else{ ?>
					<tr class="cart_total_price">
						<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total products (tax incl.):'),$_smarty_tpl);?>
</td>
						<td class="price" id="total_product"><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_products_wt')->value),$_smarty_tpl);?>
</span></td>
					</tr>
				<?php }?>
			<?php }else{ ?>
				<tr class="cart_total_price">
					<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total products:'),$_smarty_tpl);?>
</td>
					<td class="price" id="total_product"><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_products')->value),$_smarty_tpl);?>
</span></td>
				</tr>
			<?php }?>
			<tr class="cart_total_voucher" <?php if ($_smarty_tpl->getVariable('total_discounts')->value==0){?>style="display: none;"<?php }?>>
				<td colspan="6">
				<?php if ($_smarty_tpl->getVariable('use_taxes')->value){?>
					<?php if ($_smarty_tpl->getVariable('priceDisplay')->value){?>
					<?php echo smartyTranslate(array('s'=>'Total vouchers (tax excl.):'),$_smarty_tpl);?>

					<?php }else{ ?>
					<?php echo smartyTranslate(array('s'=>'Total vouchers (tax incl.):'),$_smarty_tpl);?>

					<?php }?>
				<?php }else{ ?>
					<?php echo smartyTranslate(array('s'=>'Total vouchers:'),$_smarty_tpl);?>

				<?php }?>
				</td>
				<td class="price-discount" id="total_discount">
					<span class="price"><?php if ($_smarty_tpl->getVariable('use_taxes')->value){?><?php if ($_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_discounts_tax_exc')->value),$_smarty_tpl);?>
<?php }else{ ?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_discounts')->value),$_smarty_tpl);?>
<?php }?><?php }else{ ?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_discounts_tax_exc')->value),$_smarty_tpl);?>
<?php }?></span>
				</td>
			</tr>
			<tr class="cart_total_voucher" <?php if ($_smarty_tpl->getVariable('total_wrapping')->value==0){?>style="display: none;"<?php }?>>
				<td colspan="6">
				<?php if ($_smarty_tpl->getVariable('use_taxes')->value){?>
					<?php if ($_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo smartyTranslate(array('s'=>'Total gift-wrapping (tax excl.):'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'Total gift-wrapping (tax incl.):'),$_smarty_tpl);?>
<?php }?>
				<?php }else{ ?>
					<?php echo smartyTranslate(array('s'=>'Total gift-wrapping:'),$_smarty_tpl);?>

				<?php }?>
				</td>
				<td class="price-discount" id="total_wrapping">
					<span class="price"><?php if ($_smarty_tpl->getVariable('use_taxes')->value){?><?php if ($_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_wrapping_tax_exc')->value),$_smarty_tpl);?>
<?php }else{ ?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_wrapping')->value),$_smarty_tpl);?>
<?php }?><?php }else{ ?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_wrapping_tax_exc')->value),$_smarty_tpl);?>
<?php }?></span>
				</td>
			</tr>
			<?php if ($_smarty_tpl->getVariable('use_taxes')->value){?>
				<?php if ($_smarty_tpl->getVariable('priceDisplay')->value){?>
					<tr class="cart_total_delivery" <?php if ($_smarty_tpl->getVariable('shippingCost')->value<=0){?> style="display:none;"<?php }?>>
						<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total shipping (tax excl.):'),$_smarty_tpl);?>
</td>
						<td class="price" id="total_shipping"><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('shippingCostTaxExc')->value),$_smarty_tpl);?>
</span></td>
					</tr>
				<?php }else{ ?>
					<tr class="cart_total_delivery"<?php if ($_smarty_tpl->getVariable('shippingCost')->value<=0){?> style="display:none;"<?php }?>>
						<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total shipping (tax incl.):'),$_smarty_tpl);?>
</td>
						<td class="price" id="total_shipping" ><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('shippingCost')->value),$_smarty_tpl);?>
</span></td>
					</tr>
				<?php }?>
			<?php }else{ ?>
				<tr class="cart_total_delivery"<?php if ($_smarty_tpl->getVariable('shippingCost')->value<=0){?> style="display:none;"<?php }?>>
					<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total shipping:'),$_smarty_tpl);?>
</td>
					<td class="price" id="total_shipping" ><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('shippingCostTaxExc')->value),$_smarty_tpl);?>
</span></td>
				</tr>
			<?php }?>
			<?php if ($_smarty_tpl->getVariable('use_taxes')->value){?>
			<tr class="cart_total_price">
				<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total (tax excl.):'),$_smarty_tpl);?>
</td>
				<td class="price" id="total_price_without_tax"><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_price_without_tax')->value),$_smarty_tpl);?>
</span></td>
			</tr>
			<tr class="cart_total_tax">
				<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total tax:'),$_smarty_tpl);?>
</td>
				<td class="price" id="total_tax"><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_tax')->value),$_smarty_tpl);?>
</span></td>
			</tr>
			<tr class="cart_total_price">
				<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total (tax incl.):'),$_smarty_tpl);?>
</td>
				<td class="price" id="total_price"><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_price')->value),$_smarty_tpl);?>
</span></td>
			</tr>
			<?php }else{ ?>
			<tr class="cart_total_price">
				<td colspan="6"><?php echo smartyTranslate(array('s'=>'Total:'),$_smarty_tpl);?>
</td>
				<td class="price" id="total_price"><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('total_price_without_tax')->value),$_smarty_tpl);?>
</span></td>
			</tr>
			<?php }?>
			<tr class="cart_free_shipping" <?php if ($_smarty_tpl->getVariable('free_ship')->value<=0||$_smarty_tpl->getVariable('isVirtualCart')->value){?> style="display:none;" <?php }?>>
					<td colspan="6" style="white-space:normal;"><?php echo smartyTranslate(array('s'=>'Remaining amount to be added to your cart in order to obtain free shipping:'),$_smarty_tpl);?>
</td>
					<td id="free_shipping" class="price"><span class="price"><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('free_ship')->value),$_smarty_tpl);?>
</span></td>
				</tr>
		</tfoot>
		<tbody>
		<?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('products')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value){
?>
			<?php $_smarty_tpl->tpl_vars['productId'] = new Smarty_variable($_smarty_tpl->tpl_vars['product']->value['id_product'], null, null);?>
			<?php $_smarty_tpl->tpl_vars['productAttributeId'] = new Smarty_variable($_smarty_tpl->tpl_vars['product']->value['id_product_attribute'], null, null);?>
			<?php $_smarty_tpl->tpl_vars['quantityDisplayed'] = new Smarty_variable(0, null, null);?>
			<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./shopping-cart-product-line.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
			<?php if (isset($_smarty_tpl->getVariable('customizedDatas',null,true,false)->value[$_smarty_tpl->getVariable('productId',null,true,false)->value][$_smarty_tpl->getVariable('productAttributeId',null,true,false)->value])){?>
				<?php  $_smarty_tpl->tpl_vars['customization'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['id_customization'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('customizedDatas')->value[$_smarty_tpl->getVariable('productId')->value][$_smarty_tpl->getVariable('productAttributeId')->value]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['customization']->key => $_smarty_tpl->tpl_vars['customization']->value){
 $_smarty_tpl->tpl_vars['id_customization']->value = $_smarty_tpl->tpl_vars['customization']->key;
?>
					<tr id="product_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
_<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
" class="alternate_item cart_item">
						<td colspan="5">
							<?php  $_smarty_tpl->tpl_vars['datas'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['type'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['customization']->value['datas']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['datas']->key => $_smarty_tpl->tpl_vars['datas']->value){
 $_smarty_tpl->tpl_vars['type']->value = $_smarty_tpl->tpl_vars['datas']->key;
?>
								<?php if ($_smarty_tpl->tpl_vars['type']->value==$_smarty_tpl->getVariable('CUSTOMIZE_FILE')->value){?>
									<div class="customizationUploaded">
										<ul class="customizationUploaded">
											<?php  $_smarty_tpl->tpl_vars['picture'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['datas']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['picture']->key => $_smarty_tpl->tpl_vars['picture']->value){
?><li><img src="<?php echo $_smarty_tpl->getVariable('pic_dir')->value;?>
<?php echo $_smarty_tpl->tpl_vars['picture']->value['value'];?>
_small" alt="" class="customizationUploaded" /></li><?php }} ?>
										</ul>
									</div>
								<?php }elseif($_smarty_tpl->tpl_vars['type']->value==$_smarty_tpl->getVariable('CUSTOMIZE_TEXTFIELD')->value){?>
									<ul class="typedText">
										<?php  $_smarty_tpl->tpl_vars['textField'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['datas']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['typedText']['index']=-1;
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['textField']->key => $_smarty_tpl->tpl_vars['textField']->value){
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['typedText']['index']++;
?><li><?php if ($_smarty_tpl->tpl_vars['textField']->value['name']){?><?php echo $_smarty_tpl->tpl_vars['textField']->value['name'];?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'Text #'),$_smarty_tpl);?>
<?php echo $_smarty_tpl->getVariable('smarty')->value['foreach']['typedText']['index']+1;?>
<?php }?><?php echo smartyTranslate(array('s'=>':'),$_smarty_tpl);?>
 <?php echo $_smarty_tpl->tpl_vars['textField']->value['value'];?>
</li><?php }} ?>
									</ul>
								<?php }?>
							<?php }} ?>
						</td>
						<td class="cart_quantity">
							<div id="cart_quantity_button" style="float:left">
								<a rel="nofollow" class="cart_quantity_up" id="cart_quantity_up_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
_<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
" href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('cart.php',true);?>
?add&amp;id_product=<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product']);?>
&amp;ipa=<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']);?>
&amp;id_customization=<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
&amp;token=<?php echo $_smarty_tpl->getVariable('token_cart')->value;?>
" title="<?php echo smartyTranslate(array('s'=>'Add'),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/quantity_up.png" alt="<?php echo smartyTranslate(array('s'=>'Add'),$_smarty_tpl);?>
" /></a>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['minimal_quantity']<($_smarty_tpl->tpl_vars['customization']->value['quantity']-$_smarty_tpl->getVariable('quantityDisplayed')->value)||$_smarty_tpl->tpl_vars['product']->value['minimal_quantity']<=1){?>
								<input class="text" size="2" type="text" value="<?php echo $_smarty_tpl->tpl_vars['customization']->value['quantity'];?>
" class="cart_quantity_input" name="quantity_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
_<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
"/>
								<a rel="nofollow" class="cart_quantity_down" id="cart_quantity_down_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
_<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
" href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('cart.php',true);?>
?add&amp;id_product=<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product']);?>
&amp;ipa=<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']);?>
&amp;id_customization=<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
&amp;op=down&amp;token=<?php echo $_smarty_tpl->getVariable('token_cart')->value;?>
" title="<?php echo smartyTranslate(array('s'=>'Subtract'),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/quantity_down.png" alt="<?php echo smartyTranslate(array('s'=>'Subtract'),$_smarty_tpl);?>
" /></a>
							<?php }else{ ?>
							<a class="cart_quantity_down" style="opacity:0.3;" id="cart_quantity_down_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
_<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
" href="#" title="<?php echo smartyTranslate(array('s'=>'Subtract'),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/quantity_down.png" alt="<?php echo smartyTranslate(array('s'=>'Subtract'),$_smarty_tpl);?>
" /></a>
							<?php }?>
							</div>
							<a rel="nofollow" class="cart_quantity_delete" id="<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
_<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
" href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('cart.php',true);?>
?delete&amp;id_product=<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product']);?>
&amp;ipa=<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']);?>
&amp;id_customization=<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
&amp;token=<?php echo $_smarty_tpl->getVariable('token_cart')->value;?>
"><img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/delete.gif" alt="<?php echo smartyTranslate(array('s'=>'Delete'),$_smarty_tpl);?>
" title="<?php echo smartyTranslate(array('s'=>'Delete this customization'),$_smarty_tpl);?>
" class="icon" /></a>
							<input type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['customization']->value['quantity'];?>
" name="quantity_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
_<?php echo $_smarty_tpl->tpl_vars['id_customization']->value;?>
_hidden"/>
						</td>
						<td class="cart_total"></td>
					</tr>
					<?php $_smarty_tpl->tpl_vars['quantityDisplayed'] = new Smarty_variable($_smarty_tpl->getVariable('quantityDisplayed')->value+$_smarty_tpl->tpl_vars['customization']->value['quantity'], null, null);?>
				<?php }} ?>
				<?php if ($_smarty_tpl->tpl_vars['product']->value['quantity']-$_smarty_tpl->getVariable('quantityDisplayed')->value>0){?><?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./shopping-cart-product-line.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?><?php }?>
			<?php }?>
		<?php }} ?>
		</tbody>
	<?php if (sizeof($_smarty_tpl->getVariable('discounts')->value)){?>
		<tbody>
		<?php  $_smarty_tpl->tpl_vars['discount'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('discounts')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['discount']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['discount']->iteration=0;
 $_smarty_tpl->tpl_vars['discount']->index=-1;
if ($_smarty_tpl->tpl_vars['discount']->total > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['discount']->key => $_smarty_tpl->tpl_vars['discount']->value){
 $_smarty_tpl->tpl_vars['discount']->iteration++;
 $_smarty_tpl->tpl_vars['discount']->index++;
 $_smarty_tpl->tpl_vars['discount']->first = $_smarty_tpl->tpl_vars['discount']->index === 0;
 $_smarty_tpl->tpl_vars['discount']->last = $_smarty_tpl->tpl_vars['discount']->iteration === $_smarty_tpl->tpl_vars['discount']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['discountLoop']['first'] = $_smarty_tpl->tpl_vars['discount']->first;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['discountLoop']['last'] = $_smarty_tpl->tpl_vars['discount']->last;
?>
			<tr class="cart_discount <?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['discountLoop']['last']){?>last_item<?php }elseif($_smarty_tpl->getVariable('smarty')->value['foreach']['discountLoop']['first']){?>first_item<?php }else{ ?>item<?php }?>" id="cart_discount_<?php echo $_smarty_tpl->tpl_vars['discount']->value['id_discount'];?>
">
				<td class="cart_discount_name" colspan="2"><?php echo $_smarty_tpl->tpl_vars['discount']->value['name'];?>
</td>
				<td class="cart_discount_description" colspan="3"><?php echo $_smarty_tpl->tpl_vars['discount']->value['description'];?>
</td>
				<td class="cart_discount_delete"><a href="<?php if ($_smarty_tpl->getVariable('opc')->value){?><?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('order-opc.php',true);?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('order.php',true);?>
<?php }?>?deleteDiscount=<?php echo $_smarty_tpl->tpl_vars['discount']->value['id_discount'];?>
" title="<?php echo smartyTranslate(array('s'=>'Delete'),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/delete.gif" alt="<?php echo smartyTranslate(array('s'=>'Delete'),$_smarty_tpl);?>
" class="icon" /></a></td>
				<td class="cart_discount_price"><span class="price-discount price">
					<?php if ($_smarty_tpl->tpl_vars['discount']->value['value_real']>0){?>
						<?php if (!$_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->tpl_vars['discount']->value['value_real']*-1),$_smarty_tpl);?>
<?php }else{ ?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->tpl_vars['discount']->value['value_tax_exc']*-1),$_smarty_tpl);?>
<?php }?>
					<?php }?>
				</span></td>
			</tr>
		<?php }} ?>
		</tbody>
	<?php }?>
	</table>
</div>
<?php if ($_smarty_tpl->getVariable('voucherAllowed')->value){?>
<div id="cart_voucher" class="table_block">
	<?php if (isset($_smarty_tpl->getVariable('errors_discount',null,true,false)->value)&&$_smarty_tpl->getVariable('errors_discount')->value){?>
		<ul class="error">
		<?php  $_smarty_tpl->tpl_vars['error'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('errors_discount')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['error']->key => $_smarty_tpl->tpl_vars['error']->value){
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['error']->key;
?>
			<li><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['error']->value,'htmlall','UTF-8');?>
</li>
		<?php }} ?>
		</ul>
	<?php }?>
	<form action="<?php if ($_smarty_tpl->getVariable('opc')->value){?><?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('order-opc.php',true);?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('order.php',true);?>
<?php }?>" method="post" id="voucher">
		<fieldset>
			<h2><?php echo smartyTranslate(array('s'=>'Vouchers'),$_smarty_tpl);?>
</h2>
			<p class="text">
				<label for="discount_name"><?php echo smartyTranslate(array('s'=>'Code:'),$_smarty_tpl);?>
</label>
				<input type="text" id="discount_name" name="discount_name" value="<?php if (isset($_smarty_tpl->getVariable('discount_name',null,true,false)->value)&&$_smarty_tpl->getVariable('discount_name')->value){?><?php echo $_smarty_tpl->getVariable('discount_name')->value;?>
<?php }?>" />
			</p>
			<p class="submit"><input type="hidden" name="submitDiscount" /><input type="submit" name="submitAddDiscount" value="<?php echo smartyTranslate(array('s'=>'Add'),$_smarty_tpl);?>
" class="button" /></p>
		<?php if ($_smarty_tpl->getVariable('displayVouchers')->value){?>
			<div class="clearblock"></div>
			<div id="display_cart_vouchers">
			<h4><?php echo smartyTranslate(array('s'=>'Take advantage of our offers:'),$_smarty_tpl);?>
</h4>
			<?php  $_smarty_tpl->tpl_vars['voucher'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('displayVouchers')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['voucher']->key => $_smarty_tpl->tpl_vars['voucher']->value){
?>
				<div><span onclick="$('#discount_name').val('<?php echo $_smarty_tpl->tpl_vars['voucher']->value['name'];?>
');return false;" class="voucher_name"><?php echo $_smarty_tpl->tpl_vars['voucher']->value['name'];?>
</span> &mdash; <?php echo $_smarty_tpl->tpl_vars['voucher']->value['description'];?>
</div>
			<?php }} ?>
			</div>
		<?php }?>
		</fieldset>
	</form>
</div>
<?php }?>
<div id="HOOK_SHOPPING_CART"><?php echo $_smarty_tpl->getVariable('HOOK_SHOPPING_CART')->value;?>
</div>
<?php if ((($_smarty_tpl->getVariable('carrier')->value->id&&!isset($_smarty_tpl->getVariable('virtualCart',null,true,false)->value))||$_smarty_tpl->getVariable('delivery')->value->id||$_smarty_tpl->getVariable('invoice')->value->id)&&!$_smarty_tpl->getVariable('opc')->value){?>
<div class="order_delivery">
	<?php if ($_smarty_tpl->getVariable('delivery')->value->id){?>
	<ul id="delivery_address" class="address item">
		<li class="address_title"><?php echo smartyTranslate(array('s'=>'Delivery address'),$_smarty_tpl);?>
</li>
		<?php if ($_smarty_tpl->getVariable('delivery')->value->company){?><li class="address_company"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('delivery')->value->company,'htmlall','UTF-8');?>
</li><?php }?>
		<li class="address_name"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('delivery')->value->firstname,'htmlall','UTF-8');?>
 <?php echo smarty_modifier_escape($_smarty_tpl->getVariable('delivery')->value->lastname,'htmlall','UTF-8');?>
</li>
		<li class="address_address1"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('delivery')->value->address1,'htmlall','UTF-8');?>
</li>
		<?php if ($_smarty_tpl->getVariable('delivery')->value->address2){?><li class="address_address2"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('delivery')->value->address2,'htmlall','UTF-8');?>
</li><?php }?>
		<li class="address_city"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('delivery')->value->postcode,'htmlall','UTF-8');?>
 <?php echo smarty_modifier_escape($_smarty_tpl->getVariable('delivery')->value->city,'htmlall','UTF-8');?>
</li>
		<li class="address_country"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('delivery')->value->country,'htmlall','UTF-8');?>
 <?php if ($_smarty_tpl->getVariable('delivery_state')->value){?>(<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('delivery_state')->value,'htmlall','UTF-8');?>
)<?php }?></li>
	</ul>
	<?php }?>
	<?php if ($_smarty_tpl->getVariable('invoice')->value->id){?>
	<ul id="invoice_address" class="address alternate_item">
		<li class="address_title"><?php echo smartyTranslate(array('s'=>'Invoice address'),$_smarty_tpl);?>
</li>
		<?php if ($_smarty_tpl->getVariable('invoice')->value->company){?><li class="address_company"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('invoice')->value->company,'htmlall','UTF-8');?>
</li><?php }?>
		<li class="address_name"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('invoice')->value->firstname,'htmlall','UTF-8');?>
 <?php echo smarty_modifier_escape($_smarty_tpl->getVariable('invoice')->value->lastname,'htmlall','UTF-8');?>
</li>
		<li class="address_address1"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('invoice')->value->address1,'htmlall','UTF-8');?>
</li>
		<?php if ($_smarty_tpl->getVariable('invoice')->value->address2){?><li class="address_address2"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('invoice')->value->address2,'htmlall','UTF-8');?>
</li><?php }?>
		<li class="address_city"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('invoice')->value->postcode,'htmlall','UTF-8');?>
 <?php echo smarty_modifier_escape($_smarty_tpl->getVariable('invoice')->value->city,'htmlall','UTF-8');?>
</li>
		<li class="address_country"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('invoice')->value->country,'htmlall','UTF-8');?>
 <?php if ($_smarty_tpl->getVariable('invoice_state')->value){?>(<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('invoice_state')->value,'htmlall','UTF-8');?>
)<?php }?></li>
	</ul>
	<?php }?>
<div class="clearblock"></div>
	<?php if ($_smarty_tpl->getVariable('carrier')->value->id&&!isset($_smarty_tpl->getVariable('virtualCart',null,true,false)->value)){?>
	<div id="order_carrier">
		<h4><?php echo smartyTranslate(array('s'=>'Carrier:'),$_smarty_tpl);?>
</h4>
		<?php if (isset($_smarty_tpl->getVariable('carrierPicture',null,true,false)->value)){?><img src="<?php echo $_smarty_tpl->getVariable('img_ship_dir')->value;?>
<?php echo $_smarty_tpl->getVariable('carrier')->value->id;?>
.jpg" alt="<?php echo smartyTranslate(array('s'=>'Carrier'),$_smarty_tpl);?>
" /><?php }?>
		<span><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('carrier')->value->name,'htmlall','UTF-8');?>
</span>
	</div>
	<?php }?>
</div>
<?php }?>
<p class="cart_navigation">
	<?php if (!$_smarty_tpl->getVariable('opc')->value){?><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('order.php',true);?>
?step=1<?php if ($_smarty_tpl->getVariable('back')->value){?>&amp;back=<?php echo $_smarty_tpl->getVariable('back')->value;?>
<?php }?>" class="exclusive" title="<?php echo smartyTranslate(array('s'=>'Next'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'Next'),$_smarty_tpl);?>
 &raquo;</a><?php }?>
	<a href="<?php if ((isset($_SERVER['HTTP_REFERER'])&&strstr($_SERVER['HTTP_REFERER'],'order.php'))||!isset($_SERVER['HTTP_REFERER'])){?><?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('index.php');?>
<?php }else{ ?><?php echo Tools::secureReferrer(smarty_modifier_escape($_SERVER['HTTP_REFERER'],'htmlall','UTF-8'));?>
<?php }?>" class="button_large" title="<?php echo smartyTranslate(array('s'=>'Continue shopping'),$_smarty_tpl);?>
">&laquo; <?php echo smartyTranslate(array('s'=>'Continue shopping'),$_smarty_tpl);?>
</a>
</p>
<?php echo $_smarty_tpl->getVariable('HOOK_SHOPPING_CART_EXTRA')->value;?>

<?php }?>