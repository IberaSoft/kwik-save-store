<?php /* Smarty version Smarty-3.0.7, created on 2011-10-19 10:20:48
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/jbx_menu/header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11536939414e9e88606f79b8-99593837%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '399823e04f5f389822966f74d1380a20b36350ce' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/jbx_menu/header.tpl',
      1 => 1315229631,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11536939414e9e88606f79b8-99593837',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>

        <!-- MODULE JBX_MENU -->
<?php if ($_smarty_tpl->getVariable('menu')->value['searchable_autocomplete']){?>
        <script type="text/javascript">
        //<![CDATA[
        var menu_path = '<?php echo $_smarty_tpl->getVariable('menu')->value['path'];?>
';
        var id_lang = '<?php echo $_smarty_tpl->getVariable('menu')->value['id_lang'];?>
';
        //]]>
        </script>
        <?php if (substr(@_PS_VERSION_,0,3)=='1.3'){?>
        <script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('menu')->value['path'];?>
js/search.js"></script>
		<?php }elseif(substr(@_PS_VERSION_,0,3)=='1.4'){?>
		<script type="text/javascript">
		//<!--
		
		$('document').ready( function() {
			$("#search_query_menu")
				.autocomplete(
					'<?php if ($_smarty_tpl->getVariable('menu')->value['search_ssl']==1){?><?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('search.php',true);?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('search.php');?>
<?php }?>', {
						minChars: 3,
						max: 10,
						width: 500,
						selectFirst: false,
						scroll: false,
						dataType: "json",
						formatItem: function(data, i, max, value, term) {
							return value;
						},
						parse: function(data) {
							var mytab = new Array();
							for (var i = 0; i < data.length; i++)
								mytab[mytab.length] = { data: data[i], value: data[i].cname + ' > ' + data[i].pname };
							return mytab;
						},
						extraParams: {
							ajaxSearch: 1,
							id_lang: 2
						}
					}
				)
				.result(function(event, data, formatted) {
					$('#search_query_menu').val(data.pname);
					document.location.href = data.product_link;
				})
		});
		
		//-->
		</script>
		<?php }?>
<?php }?>
        <!-- /MODULE JBX_MENU -->