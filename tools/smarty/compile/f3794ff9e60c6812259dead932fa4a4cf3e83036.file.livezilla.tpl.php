<?php /* Smarty version Smarty-3.0.7, created on 2011-10-19 10:20:54
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/livezilla/livezilla.tpl" */ ?>
<?php /*%%SmartyHeaderCode:19582329824e9e8866eb3700-34690576%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f3794ff9e60c6812259dead932fa4a4cf3e83036' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/livezilla/livezilla.tpl',
      1 => 1317804592,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19582329824e9e8866eb3700-34690576',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>


<div style="margin:10px 0">
<?php if (isset($_smarty_tpl->getVariable('LIVEZILLA_SCRIPT',null,true,false)->value)){?>
	<?php echo $_smarty_tpl->getVariable('LIVEZILLA_SCRIPT')->value;?>

<?php }elseif(isset($_smarty_tpl->getVariable('LIVEZILLA_URL',null,true,false)->value)){?>
	<a href="javascript:void(window.open('<?php echo $_smarty_tpl->getVariable('LIVEZILLA_URL')->value;?>
chat.php','','width=590,height=610,left=0,top=0,resizable=yes,menubar=no,location=no,status=yes,scrollbars=yes'))">
		<img src="<?php echo $_smarty_tpl->getVariable('LIVEZILLA_URL')->value;?>
image.php?id=01" width="230" height="70" border="0" alt="<?php echo smartyTranslate(array('s'=>'LiveZilla Live Help'),$_smarty_tpl);?>
" />
	</a>
	<noscript>
		<div>
			<a href="<?php echo $_smarty_tpl->getVariable('LIVEZILLA_URL')->value;?>
chat.php" target="_blank">Start Live Help Chat</a>
		</div>
	</noscript>
	<div id="livezilla_tracking" style="display:none"></div>
	<script type="text/javascript">
	/* <![CDATA[ */
		var script = document.createElement("script");
		script.type = "text/javascript";
		var src = "<?php echo $_smarty_tpl->getVariable('LIVEZILLA_URL')->value;?>
server.php?request=track&output=jcrpt&nse=" + Math.random();
		setTimeout("script.src = src;document.getElementById('livezilla_tracking').appendChild(script)", 1);
	/* ]]> */
	</script>
	<noscript>
		<img src="<?php echo $_smarty_tpl->getVariable('LIVEZILLA_URL')->value;?>
server.php?request=track&amp;output=nojcrpt" width="0" height="0" style="visibility:hidden" alt="" />
	</noscript>
<?php }else{ ?>
	<img src="<?php echo $_smarty_tpl->getVariable('base_dir')->value;?>
modules/livezilla/offline.png" width="191" height="69" border="0" alt="LiveZilla" />
<?php }?>
</div>