<?php /* Smarty version Smarty-3.0.7, created on 2011-09-05 10:36:09
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/prestashop/footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14895306834e6489f9062b61-59752515%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1556e148c8e67fa5d817fa40c61be1dcc1dded2f' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/prestashop/footer.tpl',
      1 => 1315208915,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14895306834e6489f9062b61-59752515',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>


		<?php if (!$_smarty_tpl->getVariable('content_only')->value){?>
				</div>

<!-- Right -->
				<div id="right_column" class="column">
					<?php echo $_smarty_tpl->getVariable('HOOK_RIGHT_COLUMN')->value;?>

				</div>
			</div>

<!-- Footer -->
			<div id="footer"><?php echo $_smarty_tpl->getVariable('HOOK_FOOTER')->value;?>
</div>
		</div>
	<?php }?>
	</body>
</html>
