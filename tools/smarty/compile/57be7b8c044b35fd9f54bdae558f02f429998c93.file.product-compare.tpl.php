<?php /* Smarty version Smarty-3.0.7, created on 2011-10-19 10:20:54
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/./product-compare.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3014803094e9e886653edc9-51090395%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '57be7b8c044b35fd9f54bdae558f02f429998c93' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksavev2/./product-compare.tpl',
      1 => 1315907215,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3014803094e9e886653edc9-51090395',
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
<form class="product_compare" method="get" action="products-comparison.php" onsubmit="return checkBeforeComparison();">
	<input type="submit" class="button" value="<?php echo smartyTranslate(array('s'=>'Compare'),$_smarty_tpl);?>
" style="float:right" />
	<input type="hidden" name="compare_product_list" class="compare_product_list" value="" />
</form>
<?php }?>