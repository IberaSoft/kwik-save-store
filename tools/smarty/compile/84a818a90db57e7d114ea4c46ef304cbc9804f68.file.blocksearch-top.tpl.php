<?php /* Smarty version Smarty-3.0.7, created on 2011-09-13 12:09:51
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/modules/blocksearch/blocksearch-top.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20962759054e6f2bef160b82-99345757%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '84a818a90db57e7d114ea4c46ef304cbc9804f68' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/modules/blocksearch/blocksearch-top.tpl',
      1 => 1315907574,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20962759054e6f2bef160b82-99345757',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!-- Block search module TOP -->
<div id="search_block_top">
	<form method="get" action="<?php echo $_smarty_tpl->getVariable('base_dir_ssl')->value;?>
search.php" id="searchbox">
		<input class="search_query" type="text" id="search_query_top" name="search_query" value="" />
		<a href="javascript:document.getElementById('searchbox').submit();"><?php echo smartyTranslate(array('s'=>'Search','mod'=>'blocksearch'),$_smarty_tpl);?>
</a>
		<input type="hidden" name="orderby" value="position" />
		<input type="hidden" name="orderway" value="desc" />
	</form>
</div>

<?php if ($_smarty_tpl->getVariable('ajaxsearch')->value){?>
	<script type="text/javascript">
		
		
		function formatSearch(row) {
			return row[2] + ' > ' + row[1];
		}

		function redirectSearch(event, data, formatted) {
			$('#search_query').val(data[1]);
			document.location.href = data[3];
		}
		
		$('document').ready( function() {
			$("#search_query").autocomplete(
				'<?php if ($_smarty_tpl->getVariable('search_ssl')->value==1){?><?php echo $_smarty_tpl->getVariable('base_dir_ssl')->value;?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
<?php }?>search.php', {
				minChars: 3,
				max:10,
				selectFirst:false,
				width:500,
				scroll: false,
				formatItem:formatSearch,
				extraParams:{ajaxSearch:1,id_lang:<?php echo $_smarty_tpl->getVariable('cookie')->value->id_lang;?>
}
			}).result(redirectSearch)
		});
		
	</script>
<?php }?>
<!-- /Block search module TOP -->
