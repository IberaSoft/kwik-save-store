<?php /* Smarty version Smarty-3.0.7, created on 2011-09-12 17:32:03
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4369707764e6e25f3a479b1-28672742%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ec25cebec54e5b1e11025a9c6538ccbf7bbaba83' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/footer.tpl',
      1 => 1315229603,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4369707764e6e25f3a479b1-28672742',
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
