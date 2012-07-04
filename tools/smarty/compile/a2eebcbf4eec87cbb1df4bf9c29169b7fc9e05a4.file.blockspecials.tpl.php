<?php /* Smarty version Smarty-3.0.7, created on 2011-09-21 15:41:21
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/modules/blockspecials/blockspecials.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17180038134e79e981c89489-40774360%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a2eebcbf4eec87cbb1df4bf9c29169b7fc9e05a4' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/modules/blockspecials/blockspecials.tpl',
      1 => 1315907584,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17180038134e79e981c89489-40774360',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?><!-- MODULE Block specials x2x-->
<div id="tmspecials" class="block">
	<h4><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('prices-drop.php');?>
" title="<?php echo smartyTranslate(array('s'=>'Specials','mod'=>'blockspecials'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'Specials','mod'=>'blockspecials'),$_smarty_tpl);?>
</a></h4>

		<div class="block_content">
<?php if ($_smarty_tpl->getVariable('special')->value){?>		
		<a class="product_image" href="<?php echo $_smarty_tpl->getVariable('special')->value['link'];?>
"><img src="<?php echo $_smarty_tpl->getVariable('link')->value->getImageLink($_smarty_tpl->getVariable('special')->value['link_rewrite'],$_smarty_tpl->getVariable('special')->value['id_image'],'medium');?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('special')->value['legend'],'html','UTF-8');?>
" height="<?php echo $_smarty_tpl->getVariable('mediumSize')->value['height'];?>
" width="<?php echo $_smarty_tpl->getVariable('mediumSize')->value['width'];?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('special')->value['name'],'html','UTF-8');?>
" /></a>
		<h5><a href="<?php echo $_smarty_tpl->getVariable('special')->value['link'];?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('special')->value['name'],'html','UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('special')->value['name'],'html','UTF-8');?>
</a></h5>

		<div class="product_desc"><a class="product_descr" href="<?php echo $_smarty_tpl->getVariable('special')->value['link'];?>
" title="<?php echo smartyTranslate(array('s'=>'More','mod'=>'blockspecials'),$_smarty_tpl);?>
"><?php echo smarty_modifier_truncate(preg_replace('!<[^>]*?>!', ' ', $_smarty_tpl->getVariable('special')->value['description_short']),50,'...');?>
</a></div>
		<div class="extrea_special">	
	<span class="price-discount"><?php if (!$_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo Product::displayWtPrice(array('p'=>$_smarty_tpl->getVariable('special')->value['price_without_reduction']),$_smarty_tpl);?>
<?php }else{ ?><?php echo Product::displayWtPrice(array('p'=>$_smarty_tpl->getVariable('priceWithoutReduction_tax_excl')->value),$_smarty_tpl);?>
<?php }?></span>
	<span class="price"><?php if (!$_smarty_tpl->getVariable('priceDisplay')->value){?><?php echo Product::displayWtPrice(array('p'=>$_smarty_tpl->getVariable('special')->value['price']),$_smarty_tpl);?>
<?php }else{ ?><?php echo Product::displayWtPrice(array('p'=>$_smarty_tpl->getVariable('special')->value['price_tax_exc']),$_smarty_tpl);?>
<?php }?></span>
		</div>

	<a class="ajax_add_to_cart_button exclusive" rel="ajax_id_product_<?php echo $_smarty_tpl->getVariable('special')->value['id_product'];?>
" href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('cart.php');?>
?qty=1&amp;id_product=<?php echo $_smarty_tpl->getVariable('special')->value['id_product'];?>
&amp;token=<?php echo $_smarty_tpl->getVariable('static_token')->value;?>
&amp;add" title="<?php echo smartyTranslate(array('s'=>'Add to cart','mod'=>'blockspecials'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'Add to cart','mod'=>'blockspecials'),$_smarty_tpl);?>
</a>
<?php }else{ ?>
		<p><?php echo smartyTranslate(array('s'=>'No specials at this time','mod'=>'blockspecials'),$_smarty_tpl);?>
</p>
<?php }?>		
		
		
		</div>	
	
</div>
<!-- /MODULE Block specials -->
