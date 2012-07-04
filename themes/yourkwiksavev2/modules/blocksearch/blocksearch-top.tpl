<!-- Block search module TOP -->
<div id="search_block_top">
	<form method="get" action="{$base_dir_ssl}search.php" id="searchbox">
		<input class="search_query" type="text" id="search_query_top" name="search_query" value="" />
		<a href="javascript:document.getElementById('searchbox').submit();">{l s='Search' mod='blocksearch'}</a>
		<input type="hidden" name="orderby" value="position" />
		<input type="hidden" name="orderway" value="desc" />
	</form>
</div>

{if $ajaxsearch}
	<script type="text/javascript">
		{literal}
		
		function formatSearch(row) {
			return row[2] + ' > ' + row[1];
		}

		function redirectSearch(event, data, formatted) {
			$('#search_query').val(data[1]);
			document.location.href = data[3];
		}
		
		$('document').ready( function() {
			$("#search_query").autocomplete(
				'{/literal}{if $search_ssl == 1}{$base_dir_ssl}{else}{$base_dir}{/if}{literal}search.php', {
				minChars: 3,
				max:10,
				selectFirst:false,
				width:500,
				scroll: false,
				formatItem:formatSearch,
				extraParams:{ajaxSearch:1,id_lang:{/literal}{$cookie->id_lang}{literal}}
			}).result(redirectSearch)
		});
		{/literal}
	</script>
{/if}
<!-- /Block search module TOP -->
