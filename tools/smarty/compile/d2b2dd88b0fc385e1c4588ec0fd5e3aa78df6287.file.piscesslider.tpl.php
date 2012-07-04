<?php /* Smarty version Smarty-3.0.7, created on 2011-10-19 10:20:48
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/piscesslider/piscesslider.tpl" */ ?>
<?php /*%%SmartyHeaderCode:18312488464e9e88609a74b5-54930602%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd2b2dd88b0fc385e1c4588ec0fd5e3aa78df6287' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/piscesslider/piscesslider.tpl',
      1 => 1317202986,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18312488464e9e88609a74b5-54930602',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_smarty_tpl->getVariable('page_name')->value=='index'){?>

<!-- piscesslider -->
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('this_path')->value;?>
js/jquery.nivo.slider.pack.js"></script>
<div id="slide_holder"> 	
    <div id="slider">
        
            <?php  $_smarty_tpl->tpl_vars['home_link'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('xml')->value->link; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['home_link']->key => $_smarty_tpl->tpl_vars['home_link']->value){
?>
                
                    <a href='<?php echo $_smarty_tpl->getVariable('home_link')->value->url;?>
'><img src='<?php echo $_smarty_tpl->getVariable('this_path')->value;?>
<?php echo $_smarty_tpl->getVariable('home_link')->value->img;?>
'alt="" title="" /></a>
                
            <?php }} ?>
        
	</div>
</div> 
<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'sliceUpDown', //Specify sets like: 'fold,fade,sliceDown'
		slices:9,
		animSpeed:500, //Slide transition speed
		pauseTime:5000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false, //Next & Prev
		directionNavHide:false, //Only show on hover
		controlNav:true, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
      	controlNavThumbsFromRel:false, //Use image rel for thumbs
		controlNavThumbsSearch: '.jpg', //Replace this with...
		controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
		keyboardNav:true, //Use left & right arrows
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>
<!-- /piscesslider -->

<?php }?>