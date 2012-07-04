<?php /* Smarty version Smarty-3.0.7, created on 2011-09-05 10:16:22
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/prestashop/./product-compare.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12854455654e648556d48886-60326967%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c13866bc240e8aa0450ef0fa72ecbc5d97096eb1' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/prestashop/./product-compare.tpl',
      1 => 1315208927,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12854455654e648556d48886-60326967',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>


<?php if ($_smarty_tpl->getVariable('comparator_max_item')->value){?>
<script type="text/javascript">
// <![CDATA[
	var min_item = '<?php echo smartyTranslate(array('s'=>'Please select at least one product.','js'=>1),$_smarty_tpl);?>
';
	var max_item = "<?php echo smartyTranslate(array('s'=>'You cannot add more than','js'=>1),$_smarty_tpl);?>
 <?php echo $_smarty_tpl->getVariable('comparator_max_item')->value;?>
 <?php echo smartyTranslate(array('s'=>'product(s) in the product comparator','js'=>1),$_smarty_tpl);?>
";
//]]>
</script>
	<form method="get" action="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('products-comparison.php',true);?>
" onsubmit="true">
		<p>
		<input type="submit" class="button" value="<?php echo smartyTranslate(array('s'=>'Compare'),$_smarty_tpl);?>
" style="float:right" />
		<input type="hidden" name="compare_product_list" class="compare_product_list" value="" />
		</p>
	</form>
<?php }?>

