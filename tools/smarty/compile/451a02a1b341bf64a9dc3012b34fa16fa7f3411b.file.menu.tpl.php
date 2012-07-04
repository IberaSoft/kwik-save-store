<?php /* Smarty version Smarty-3.0.7, created on 2011-10-19 10:20:48
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/modules/jbx_menu/menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7048909944e9e8860a025a8-21300460%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '451a02a1b341bf64a9dc3012b34fa16fa7f3411b' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/modules/jbx_menu/menu.tpl',
      1 => 1315229631,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7048909944e9e8860a025a8-21300460',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (count($_smarty_tpl->getVariable('menu')->value['items'])>0){?>
    <?php if ($_smarty_tpl->getVariable('menu')->value['hook']=='top'){?></div><?php }?>
    <!-- MODULE JBX_MENU -->
    <div class="sf-contener">
        <ul class="sf-menu">
          <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('menu')->value['items']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
?>
              <?php $_template = new Smarty_Internal_Template($_smarty_tpl->getVariable('menu_tpl_tree')->value, $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
          <?php }} ?>
          <?php if ($_smarty_tpl->getVariable('menu')->value['searchable_active']){?>
          <li class="sf-search noBack" style="float:right">
              <form id="searchbox" action="search.php" method="get">
                  <input type="hidden" value="position" name="orderby" />
                  <input type="hidden" value="desc" name="orderway" />
                  <input type="text" name="search_query" id="search_query_menu" class="search" value="<?php if (isset($_GET['search_query'])){?><?php echo $_GET['search_query'];?>
<?php }?>" autocomplete="off" />
                  <?php if ($_smarty_tpl->getVariable('menu')->value['searchable_button']){?>
                      <input type="submit" value="ok" class="search_button" />
                  <?php }?>
              </form>
          </li>
          <?php }?>
        </ul>
        <!-- /MODULE JBX_MENU -->
<?php }?>
<?php if ($_smarty_tpl->getVariable('menu')->value['hook']=='menu'&&count($_smarty_tpl->getVariable('menu')->value['items'])>0){?></div><?php }?>