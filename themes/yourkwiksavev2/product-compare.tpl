{if $comparator_max_item}
<script type="text/javascript">
// <![CDATA[
	var min_item = '{l s='Please select at least one product.' js=1}';
	var max_item = "{l s='You cannot add more than' js=1} {$comparator_max_item} {l s='product(s) in the product comparator' js=1}";
//]]>
</script>
<form class="product_compare" method="get" action="products-comparison.php" onsubmit="return checkBeforeComparison();">
	<input type="submit" class="button" value="{l s='Compare'}" style="float:right" />
	<input type="hidden" name="compare_product_list" class="compare_product_list" value="" />
</form>
{/if}