<?php /* Smarty version Smarty-3.0.7, created on 2011-09-06 11:53:23
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/slideric/slideric.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9353779134e65ed93f1bd18-56200340%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0dcec10538d8d1b080fd60b74dfca400a6c8961d' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/slideric/slideric.tpl',
      1 => 1315239324,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9353779134e65ed93f1bd18-56200340',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>

<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('this_path')->value;?>
js/jquery.nivo.slider.pack.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('this_path')->value;?>
css/nivo-slider.css" />
        <!-- SLIDER ---------------------------------------------------------------------------------------------------------------------------------------> 
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
'alt="" /></a>
        
        <?php }} ?>
        
	</div>
</div>    
<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'fade', //Specify sets like: 'fold,fade,sliceDown'
		slices:4,
		animSpeed:800, //Slide transition speed
		pauseTime:3500,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false, //Next & Prev
		directionNavHide:true, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
      	controlNavThumbsFromRel:false, //Use image rel for thumbs
		controlNavThumbsSearch: '.jpg', //Replace this with...
		controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
		keyboardNav:false, //Use left & right arrows
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});

</script>
 
<!-- SLIDER --------------------------------------------------------------------------------------------------------------------------------------->


