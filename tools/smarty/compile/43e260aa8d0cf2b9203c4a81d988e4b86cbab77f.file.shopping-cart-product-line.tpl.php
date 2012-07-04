<?php /* Smarty version Smarty-3.0.7, created on 2011-09-13 21:58:02
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/./shopping-cart-product-line.tpl" */ ?>
<?php /*%%SmartyHeaderCode:577079854e6fb5cadfbd16-36290589%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '43e260aa8d0cf2b9203c4a81d988e4b86cbab77f' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/./shopping-cart-product-line.tpl',
      1 => 1315907226,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '577079854e6fb5cadfbd16-36290589',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><tr id="product_<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
" class="<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['productLoop']['last']){?>last_item<?php }elseif($_smarty_tpl->getVariable('smarty')->value['foreach']['productLoop']['first']){?>first_item<?php }?><?php if (isset($_smarty_tpl->getVariable('customizedDatas',null,true,false)->value[$_smarty_tpl->getVariable('productId',null,true,false)->value][$_smarty_tpl->getVariable('productAttributeId',null,true,false)->value])&&$_smarty_tpl->getVariable('quantityDisplayed')->value==0){?>alternate_item<?php }?> cart_item">
	<td class="cart_product">
		<a href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getProductLink($_smarty_tpl->getVariable('product')->value['id_product'],$_smarty_tpl->getVariable('product')->value['link_rewrite'],$_smarty_tpl->getVariable('product')->value['category']),'htmlall','UTF-8');?>
"><img src="<?php echo $_smarty_tpl->getVariable('link')->value->getImageLink($_smarty_tpl->getVariable('product')->value['link_rewrite'],$_smarty_tpl->getVariable('product')->value['id_image'],'small');?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['name'],'htmlall','UTF-8');?>
" <?php if (isset($_smarty_tpl->getVariable('smallSize',null,true,false)->value)){?>width="<?php echo $_smarty_tpl->getVariable('smallSize')->value['width'];?>
" height="<?php echo $_smarty_tpl->getVariable('smallSize')->value['height'];?>
" <?php }?> /></a>
	</td>
	<td class="cart_description">
		<h5><a class="product_link" href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getProductLink($_smarty_tpl->getVariable('product')->value['id_product'],$_smarty_tpl->getVariable('product')->value['link_rewrite'],$_smarty_tpl->getVariable('product')->value['category']),'htmlall','UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['name'],'htmlall','UTF-8');?>
</a></h5>
		<?php if (isset($_smarty_tpl->getVariable('product',null,true,false)->value['attributes'])&&$_smarty_tpl->getVariable('product')->value['attributes']){?><a class="product_descr" href="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('link')->value->getProductLink($_smarty_tpl->getVariable('product')->value['id_product'],$_smarty_tpl->getVariable('product')->value['link_rewrite'],$_smarty_tpl->getVariable('product')->value['category']),'htmlall','UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['attributes'],'htmlall','UTF-8');?>
</a><?php }?>
	</td>
	<td class="cart_ref"><?php if ($_smarty_tpl->getVariable('product')->value['reference']){?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['reference'],'htmlall','UTF-8');?>
<?php }else{ ?>&mdash;<?php }?></td>
	<td class="cart_availability">
		<?php if ($_smarty_tpl->getVariable('product')->value['active']&&($_smarty_tpl->getVariable('product')->value['allow_oosp']||($_smarty_tpl->getVariable('product')->value['quantity']<=$_smarty_tpl->getVariable('product')->value['stock_quantity']))&&$_smarty_tpl->getVariable('product')->value['available_for_order']&&!$_smarty_tpl->getVariable('PS_CATALOG_MODE')->value){?>
			<img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/available.png" alt="<?php echo smartyTranslate(array('s'=>'Available'),$_smarty_tpl);?>
" width="14" height="14" />
		<?php }else{ ?>
			<img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/unavailable.png" alt="<?php echo smartyTranslate(array('s'=>'Out of stock'),$_smarty_tpl);?>
" width="14" height="14" />
		<?php }?>
	</td>
	<td class="cart_unit">
		<span class="price" id="product_price_<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
">
			<?php if (!$_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo Product::convertPrice(array('price'=>$_smarty_tpl->getVariable('product')->value['price_wt']),$_smarty_tpl);?>
<?php }else{ ?><?php echo Product::convertPrice(array('price'=>$_smarty_tpl->getVariable('product')->value['price']),$_smarty_tpl);?>
<?php }?>
		</span>
	</td>
	<td class="cart_quantity">
		<?php if (isset($_smarty_tpl->getVariable('customizedDatas',null,true,false)->value[$_smarty_tpl->getVariable('productId',null,true,false)->value][$_smarty_tpl->getVariable('productAttributeId',null,true,false)->value])&&$_smarty_tpl->getVariable('quantityDisplayed')->value==0){?><span id="cart_quantity_custom_<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
"><?php echo $_smarty_tpl->getVariable('product')->value['customizationQuantityTotal'];?>
</span><?php }?>
		<?php if (!isset($_smarty_tpl->getVariable('customizedDatas',null,true,false)->value[$_smarty_tpl->getVariable('productId',null,true,false)->value][$_smarty_tpl->getVariable('productAttributeId',null,true,false)->value])||$_smarty_tpl->getVariable('quantityDisplayed')->value>0){?>
			<div id="cart_quantity_button">
				<a rel="nofollow" class="cart_quantity_up" id="cart_quantity_up_<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
" href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('cart.php',true);?>
?add&amp;id_product=<?php echo intval($_smarty_tpl->getVariable('product')->value['id_product']);?>
&amp;ipa=<?php echo intval($_smarty_tpl->getVariable('product')->value['id_product_attribute']);?>
&amp;token=<?php echo $_smarty_tpl->getVariable('token_cart')->value;?>
" title="<?php echo smartyTranslate(array('s'=>'Add'),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/quantity_up.png" alt="<?php echo smartyTranslate(array('s'=>'Add'),$_smarty_tpl);?>
" width="14" height="9" /></a>
				<input class="cart_quantity_input text" size="2" type="text" value="<?php if ($_smarty_tpl->getVariable('quantityDisplayed')->value==0&&isset($_smarty_tpl->getVariable('customizedDatas',null,true,false)->value[$_smarty_tpl->getVariable('productId',null,true,false)->value][$_smarty_tpl->getVariable('productAttributeId',null,true,false)->value])){?><?php echo count($_smarty_tpl->getVariable('customizedDatas')->value[$_smarty_tpl->getVariable('productId')->value][$_smarty_tpl->getVariable('productAttributeId')->value]);?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('product')->value['cart_quantity']-$_smarty_tpl->getVariable('quantityDisplayed')->value;?>
<?php }?>"  name="quantity_<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
" />
				<?php if ($_smarty_tpl->getVariable('product')->value['minimal_quantity']<($_smarty_tpl->getVariable('product')->value['cart_quantity']-$_smarty_tpl->getVariable('quantityDisplayed')->value)||$_smarty_tpl->getVariable('product')->value['minimal_quantity']<=1){?>
				<a class="cart_quantity_down" rel="nofollow" id="cart_quantity_down_<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
" href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('cart.php',true);?>
?add&amp;id_product=<?php echo intval($_smarty_tpl->getVariable('product')->value['id_product']);?>
&amp;ipa=<?php echo intval($_smarty_tpl->getVariable('product')->value['id_product_attribute']);?>
&amp;op=down&amp;token=<?php echo $_smarty_tpl->getVariable('token_cart')->value;?>
" title="<?php echo smartyTranslate(array('s'=>'Subtract'),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/quantity_down.png" alt="<?php echo smartyTranslate(array('s'=>'Subtract'),$_smarty_tpl);?>
" width="14" height="9" /></a>
				<?php }else{ ?>
				<a class="cart_quantity_down" style="opacity:0.3;" href="#" id="cart_quantity_down_<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
" title="<?php echo smartyTranslate(array('s'=>'You must purchase a minimum of '),$_smarty_tpl);?>
<?php echo $_smarty_tpl->getVariable('product')->value['minimal_quantity'];?>
<?php echo smartyTranslate(array('s'=>' of this product.'),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/quantity_down.png" width="14" height="9" alt="<?php echo smartyTranslate(array('s'=>'Subtract'),$_smarty_tpl);?>
" /></a>
				<?php }?>
			</div>
			<a class="cart_quantity_delete" rel="nofollow" id="<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
" href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('cart.php',true);?>
?delete&amp;id_product=<?php echo intval($_smarty_tpl->getVariable('product')->value['id_product']);?>
&amp;ipa=<?php echo intval($_smarty_tpl->getVariable('product')->value['id_product_attribute']);?>
&amp;token=<?php echo $_smarty_tpl->getVariable('token_cart')->value;?>
" title="<?php echo smartyTranslate(array('s'=>'Delete'),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('img_dir')->value;?>
icon/delete.gif" alt="<?php echo smartyTranslate(array('s'=>'Delete'),$_smarty_tpl);?>
" class="icon" /></a
			<input type="hidden" value="<?php if ($_smarty_tpl->getVariable('quantityDisplayed')->value==0&&isset($_smarty_tpl->getVariable('customizedDatas',null,true,false)->value[$_smarty_tpl->getVariable('productId',null,true,false)->value][$_smarty_tpl->getVariable('productAttributeId',null,true,false)->value])){?><?php echo count($_smarty_tpl->getVariable('customizedDatas')->value[$_smarty_tpl->getVariable('productId')->value][$_smarty_tpl->getVariable('productAttributeId')->value]);?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('product')->value['cart_quantity']-$_smarty_tpl->getVariable('quantityDisplayed')->value;?>
<?php }?>" name="quantity_<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
_hidden" />
		<?php }?>
	</td>
	<td class="cart_total">
		<span class="price" id="total_product_price_<?php echo $_smarty_tpl->getVariable('product')->value['id_product'];?>
_<?php echo $_smarty_tpl->getVariable('product')->value['id_product_attribute'];?>
">
			<?php if ($_smarty_tpl->getVariable('quantityDisplayed')->value==0&&isset($_smarty_tpl->getVariable('customizedDatas',null,true,false)->value[$_smarty_tpl->getVariable('productId',null,true,false)->value][$_smarty_tpl->getVariable('productAttributeId',null,true,false)->value])){?>
				<?php if (!$_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('product')->value['total_customization_wt']),$_smarty_tpl);?>
<?php }else{ ?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('product')->value['total_customization']),$_smarty_tpl);?>
<?php }?>
			<?php }else{ ?>
				<?php if (!$_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('product')->value['total_wt']),$_smarty_tpl);?>
<?php }else{ ?><?php echo Tools::displayPriceSmarty(array('price'=>$_smarty_tpl->getVariable('product')->value['total']),$_smarty_tpl);?>
<?php }?>
			<?php }?>
		</span>
	</td>
</tr>