<?php /* Smarty version Smarty-3.0.7, created on 2011-09-05 18:30:03
         compiled from "/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/authentication.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12090667234e64f90b6238e4-08125317%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8cfa4606074756ba23125614880ac976d2407039' => 
    array (
      0 => '/home/goforfu1/public_html/yourkwiksave.com/themes/yourkwiksave/authentication.tpl',
      1 => 1315229603,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12090667234e64f90b6238e4-08125317',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/goforfu1/public_html/yourkwiksave.com/tools/smarty/plugins/modifier.escape.php';
?>
<?php if (!isset($_smarty_tpl->getVariable('dlv_all_fields',null,true,false)->value)){?>
		<?php if (!isset($_smarty_tpl->tpl_vars['dlv_all_fields']) || !is_array($_smarty_tpl->tpl_vars['dlv_all_fields']->value)) $_smarty_tpl->createLocalArrayVariable('dlv_all_fields', null, null);
$_smarty_tpl->tpl_vars['dlv_all_fields']->value[0] = 'company';?>
		<?php if (!isset($_smarty_tpl->tpl_vars['dlv_all_fields']) || !is_array($_smarty_tpl->tpl_vars['dlv_all_fields']->value)) $_smarty_tpl->createLocalArrayVariable('dlv_all_fields', null, null);
$_smarty_tpl->tpl_vars['dlv_all_fields']->value[1] = 'firstname';?>
		<?php if (!isset($_smarty_tpl->tpl_vars['dlv_all_fields']) || !is_array($_smarty_tpl->tpl_vars['dlv_all_fields']->value)) $_smarty_tpl->createLocalArrayVariable('dlv_all_fields', null, null);
$_smarty_tpl->tpl_vars['dlv_all_fields']->value[2] = 'lastname';?>
		<?php if (!isset($_smarty_tpl->tpl_vars['dlv_all_fields']) || !is_array($_smarty_tpl->tpl_vars['dlv_all_fields']->value)) $_smarty_tpl->createLocalArrayVariable('dlv_all_fields', null, null);
$_smarty_tpl->tpl_vars['dlv_all_fields']->value[3] = 'address1';?>
		<?php if (!isset($_smarty_tpl->tpl_vars['dlv_all_fields']) || !is_array($_smarty_tpl->tpl_vars['dlv_all_fields']->value)) $_smarty_tpl->createLocalArrayVariable('dlv_all_fields', null, null);
$_smarty_tpl->tpl_vars['dlv_all_fields']->value[4] = 'address2';?>
		<?php if (!isset($_smarty_tpl->tpl_vars['dlv_all_fields']) || !is_array($_smarty_tpl->tpl_vars['dlv_all_fields']->value)) $_smarty_tpl->createLocalArrayVariable('dlv_all_fields', null, null);
$_smarty_tpl->tpl_vars['dlv_all_fields']->value[5] = 'postcode';?>
		<?php if (!isset($_smarty_tpl->tpl_vars['dlv_all_fields']) || !is_array($_smarty_tpl->tpl_vars['dlv_all_fields']->value)) $_smarty_tpl->createLocalArrayVariable('dlv_all_fields', null, null);
$_smarty_tpl->tpl_vars['dlv_all_fields']->value[6] = 'city';?>
		<?php if (!isset($_smarty_tpl->tpl_vars['dlv_all_fields']) || !is_array($_smarty_tpl->tpl_vars['dlv_all_fields']->value)) $_smarty_tpl->createLocalArrayVariable('dlv_all_fields', null, null);
$_smarty_tpl->tpl_vars['dlv_all_fields']->value[7] = 'country';?>
		<?php if (!isset($_smarty_tpl->tpl_vars['dlv_all_fields']) || !is_array($_smarty_tpl->tpl_vars['dlv_all_fields']->value)) $_smarty_tpl->createLocalArrayVariable('dlv_all_fields', null, null);
$_smarty_tpl->tpl_vars['dlv_all_fields']->value[8] = 'state';?>
<?php }?>

<?php ob_start(); ?><?php echo smartyTranslate(array('s'=>'Login'),$_smarty_tpl);?>
<?php  Smarty::$_smarty_vars['capture']['path']=ob_get_clean();?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./breadcrumb.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>

<script type="text/javascript">
// <![CDATA[
idSelectedCountry = <?php if (isset($_POST['id_state'])){?><?php echo intval($_POST['id_state']);?>
<?php }else{ ?>false<?php }?>;
countries = new Array();
countriesNeedIDNumber = new Array();
countriesNeedZipCode = new Array();
<?php if (isset($_smarty_tpl->getVariable('countries',null,true,false)->value)){?>
	<?php  $_smarty_tpl->tpl_vars['country'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('countries')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['country']->key => $_smarty_tpl->tpl_vars['country']->value){
?>
		<?php if (isset($_smarty_tpl->tpl_vars['country']->value['states'])&&$_smarty_tpl->tpl_vars['country']->value['contains_states']){?>
			countries[<?php echo intval($_smarty_tpl->tpl_vars['country']->value['id_country']);?>
] = new Array();
			<?php  $_smarty_tpl->tpl_vars['state'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['country']->value['states']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['state']->key => $_smarty_tpl->tpl_vars['state']->value){
?>
				countries[<?php echo intval($_smarty_tpl->tpl_vars['country']->value['id_country']);?>
].push({'id' : '<?php echo $_smarty_tpl->tpl_vars['state']->value['id_state'];?>
', 'name' : '<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['state']->value['name'],'htmlall','UTF-8');?>
'});
			<?php }} ?>
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['country']->value['need_identification_number']){?>
			countriesNeedIDNumber.push(<?php echo intval($_smarty_tpl->tpl_vars['country']->value['id_country']);?>
);
		<?php }?>
		<?php if (isset($_smarty_tpl->tpl_vars['country']->value['need_zip_code'])){?>
			countriesNeedZipCode[<?php echo intval($_smarty_tpl->tpl_vars['country']->value['id_country']);?>
] = <?php echo $_smarty_tpl->tpl_vars['country']->value['need_zip_code'];?>
;
		<?php }?>
	<?php }} ?>
<?php }?>
$(function(){
	$('.id_state option[value=<?php if (isset($_POST['id_state'])){?><?php echo $_POST['id_state'];?>
<?php }else{ ?><?php if (isset($_smarty_tpl->getVariable('address',null,true,false)->value)){?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('address')->value->id_state,'htmlall','UTF-8');?>
<?php }?><?php }?>]').attr('selected', 'selected');
});
//]]>
<?php if ($_smarty_tpl->getVariable('vat_management')->value){?>
	
	$(document).ready(function() {
		$('#company').blur(function(){
			vat_number();
		});
		vat_number();
		function vat_number()
		{
			if ($('#company').val() != '')
				$('#vat_number').show();
			else
				$('#vat_number').hide();
		}
	});
	
<?php }?>
</script>
<h1><?php if (!isset($_smarty_tpl->getVariable('email_create',null,true,false)->value)){?><?php echo smartyTranslate(array('s'=>'Log in'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'Create your account'),$_smarty_tpl);?>
<?php }?></h1>
<?php $_smarty_tpl->tpl_vars['current_step'] = new Smarty_variable('login', null, null);?>
<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./order-steps.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>

<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('tpl_dir')->value)."./errors.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<?php $_smarty_tpl->tpl_vars['stateExist'] = new Smarty_variable(false, null, null);?>
<?php if (!isset($_smarty_tpl->getVariable('email_create',null,true,false)->value)){?>
	<form action="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('authentication.php',true);?>
" method="post" id="create-account_form" class="std">
		<fieldset>
			<h3><?php echo smartyTranslate(array('s'=>'Create your account'),$_smarty_tpl);?>
</h3>
			<h4><?php echo smartyTranslate(array('s'=>'Enter your e-mail address to create an account'),$_smarty_tpl);?>
.</h4>
			<p class="text">
				<label for="email_create"><?php echo smartyTranslate(array('s'=>'E-mail address'),$_smarty_tpl);?>
</label>
				<span><input type="text" id="email_create" name="email_create" value="<?php if (isset($_POST['email_create'])){?><?php echo stripslashes(smarty_modifier_escape($_POST['email_create'],'htmlall','UTF-8'));?>
<?php }?>" class="account_input" /></span>
			</p>
			<p class="submit">
			<?php if (isset($_smarty_tpl->getVariable('back',null,true,false)->value)){?><input type="hidden" class="hidden" name="back" value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('back')->value,'htmlall','UTF-8');?>
" /><?php }?>
				<input type="submit" id="SubmitCreate" name="SubmitCreate" class="button_large" value="<?php echo smartyTranslate(array('s'=>'Create your account'),$_smarty_tpl);?>
" />
				<input type="hidden" class="hidden" name="SubmitCreate" value="<?php echo smartyTranslate(array('s'=>'Create your account'),$_smarty_tpl);?>
" />
			</p>
		</fieldset>
	</form>
	<form action="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('authentication.php',true);?>
" method="post" id="login_form" class="std">
		<fieldset>
			<h3><?php echo smartyTranslate(array('s'=>'Already registered ?'),$_smarty_tpl);?>
</h3>
			<p class="text">
				<label for="email"><?php echo smartyTranslate(array('s'=>'E-mail address'),$_smarty_tpl);?>
</label>
				<span><input type="text" id="email" name="email" value="<?php if (isset($_POST['email'])){?><?php echo stripslashes(smarty_modifier_escape($_POST['email'],'htmlall','UTF-8'));?>
<?php }?>" class="account_input" /></span>
			</p>
			<p class="text">
				<label for="passwd"><?php echo smartyTranslate(array('s'=>'Password'),$_smarty_tpl);?>
</label>
				<span><input type="password" id="passwd" name="passwd" value="<?php if (isset($_POST['passwd'])){?><?php echo stripslashes(smarty_modifier_escape($_POST['passwd'],'htmlall','UTF-8'));?>
<?php }?>" class="account_input" /></span>
			</p>
			<p class="submit">
				<?php if (isset($_smarty_tpl->getVariable('back',null,true,false)->value)){?><input type="hidden" class="hidden" name="back" value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('back')->value,'htmlall','UTF-8');?>
" /><?php }?>
				<input type="submit" id="SubmitLogin" name="SubmitLogin" class="button" value="<?php echo smartyTranslate(array('s'=>'Log in'),$_smarty_tpl);?>
" />
			</p>
			<p class="lost_password"><a href="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('password.php');?>
"><?php echo smartyTranslate(array('s'=>'Forgot your password?'),$_smarty_tpl);?>
</a></p>
		</fieldset>
	</form>
	<?php if (isset($_smarty_tpl->getVariable('inOrderProcess',null,true,false)->value)&&$_smarty_tpl->getVariable('inOrderProcess')->value&&$_smarty_tpl->getVariable('PS_GUEST_CHECKOUT_ENABLED')->value){?>
		<form action="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('authentication.php',true);?>
?back=<?php echo $_smarty_tpl->getVariable('back')->value;?>
" method="post" id="new_account_form" class="std">
			<fieldset>
				<h3><?php echo smartyTranslate(array('s'=>'Instant Checkout'),$_smarty_tpl);?>
</h3>
				<div id="opc_account_form" style="display: block; ">
					<!-- Account -->
					<p class="required text">
						<label for="email"><?php echo smartyTranslate(array('s'=>'E-mail address'),$_smarty_tpl);?>
</label>
						<input type="text" class="text" id="guest_email" name="guest_email" value="<?php if (isset($_POST['guest_email'])){?><?php echo $_POST['guest_email'];?>
<?php }?>">
						<sup>*</sup>
					</p>
					<p class="radio required">
						<span><?php echo smartyTranslate(array('s'=>'Title'),$_smarty_tpl);?>
</span>
						<input type="radio" name="id_gender" id="id_gender1" value="1" <?php if (isset($_POST['id_gender'])&&$_POST['id_gender']=='1'){?>checked="checked"<?php }?>>
						<label for="id_gender1" class="top"><?php echo smartyTranslate(array('s'=>'Mr.'),$_smarty_tpl);?>
</label>
						<input type="radio" name="id_gender" id="id_gender2" value="2" <?php if (isset($_POST['id_gender'])&&$_POST['id_gender']=='2'){?>checked="checked"<?php }?>>
						<label for="id_gender2" class="top"><?php echo smartyTranslate(array('s'=>'Ms.'),$_smarty_tpl);?>
</label>
					</p>
										<p class="required text">
						<label for="firstname"><?php echo smartyTranslate(array('s'=>'First name'),$_smarty_tpl);?>
</label>
						<input type="text" class="text" id="firstname" name="firstname" onblur="$('#customer_firstname').val($(this).val());" value="<?php if (isset($_POST['firstname'])){?><?php echo $_POST['firstname'];?>
<?php }?>">
						<input type="hidden" class="text" id="customer_firstname" name="customer_firstname" value="<?php if (isset($_POST['firstname'])){?><?php echo $_POST['firstname'];?>
<?php }?>">
						<sup>*</sup>
					</p>
					<p class="required text">
						<label for="lastname"><?php echo smartyTranslate(array('s'=>'Last name'),$_smarty_tpl);?>
</label>
						<input type="text" class="text" id="lastname" name="lastname" onblur="$('#customer_lastname').val($(this).val());" value="<?php if (isset($_POST['lastname'])){?><?php echo $_POST['lastname'];?>
<?php }?>">
						<input type="hidden" class="text" id="customer_lastname" name="customer_lastname" value="<?php if (isset($_POST['lastname'])){?><?php echo $_POST['lastname'];?>
<?php }?>">
						<sup>*</sup>
					</p>
					<p class="select">
						<span><?php echo smartyTranslate(array('s'=>'Date of Birth'),$_smarty_tpl);?>
</span>
						<select id="days" name="days">
							<option value="">-</option>
							<?php  $_smarty_tpl->tpl_vars['day'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('days')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['day']->key => $_smarty_tpl->tpl_vars['day']->value){
?>
								<option value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['day']->value,'htmlall','UTF-8');?>
" <?php if (($_smarty_tpl->getVariable('sl_day')->value==$_smarty_tpl->tpl_vars['day']->value)){?> selected="selected"<?php }?>><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['day']->value,'htmlall','UTF-8');?>
&nbsp;&nbsp;</option>
							<?php }} ?>
						</select>
						<select id="months" name="months">
							<option value="">-</option>
							<?php  $_smarty_tpl->tpl_vars['month'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('months')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['month']->key => $_smarty_tpl->tpl_vars['month']->value){
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['month']->key;
?>
								<option value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['k']->value,'htmlall','UTF-8');?>
" <?php if (($_smarty_tpl->getVariable('sl_month')->value==$_smarty_tpl->tpl_vars['k']->value)){?> selected="selected"<?php }?>><?php echo smartyTranslate(array('s'=>($_smarty_tpl->tpl_vars['month']->value)),$_smarty_tpl);?>
&nbsp;</option>
							<?php }} ?>
						</select>
						<select id="years" name="years">
							<option value="">-</option>
							<?php  $_smarty_tpl->tpl_vars['year'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('years')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['year']->key => $_smarty_tpl->tpl_vars['year']->value){
?>
								<option value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['year']->value,'htmlall','UTF-8');?>
" <?php if (($_smarty_tpl->getVariable('sl_year')->value==$_smarty_tpl->tpl_vars['year']->value)){?> selected="selected"<?php }?>><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['year']->value,'htmlall','UTF-8');?>
&nbsp;&nbsp;</option>
							<?php }} ?>
						</select>
					</p>
					<?php if (isset($_smarty_tpl->getVariable('newsletter',null,true,false)->value)&&$_smarty_tpl->getVariable('newsletter')->value){?>
						<p class="checkbox">
							<input type="checkbox" name="newsletter" id="newsletter" value="1" <?php if (isset($_POST['newsletter'])&&$_POST['newsletter']=='1'){?>checked="checked"<?php }?>>
							<label for="newsletter"><?php echo smartyTranslate(array('s'=>'Sign up for our newsletter'),$_smarty_tpl);?>
</label>
						</p>
						<p class="checkbox">
							<input type="checkbox" name="optin" id="optin" value="1" <?php if (isset($_POST['optin'])&&$_POST['optin']=='1'){?>checked="checked"<?php }?>>
							<label for="optin"><?php echo smartyTranslate(array('s'=>'Receive special offers from our partners'),$_smarty_tpl);?>
</label>
						</p>
					<?php }?>
					<h3><?php echo smartyTranslate(array('s'=>'Delivery address'),$_smarty_tpl);?>
</h3>
					<?php  $_smarty_tpl->tpl_vars['field_name'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('dlv_all_fields')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['field_name']->key => $_smarty_tpl->tpl_vars['field_name']->value){
?>
						<?php if ($_smarty_tpl->tpl_vars['field_name']->value=="company"){?>
						<p class="text">
							<label for="company"><?php echo smartyTranslate(array('s'=>'Company'),$_smarty_tpl);?>
</label>
							<input type="text" class="text" id="company" name="company" value="<?php if (isset($_POST['company'])){?><?php echo $_POST['company'];?>
<?php }?>" />
						</p>
						<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="vat_number"){?>
						<div id="vat_number" style="display:none;">
							<p class="text">
								<label for="vat_number"><?php echo smartyTranslate(array('s'=>'VAT number'),$_smarty_tpl);?>
</label>
								<input type="text" class="text" name="vat_number" value="<?php if (isset($_POST['vat_number'])){?><?php echo $_POST['vat_number'];?>
<?php }?>" />
							</p>
						</div>
						<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="address1"){?>
						<p class="required text">
							<label for="address1"><?php echo smartyTranslate(array('s'=>'Address'),$_smarty_tpl);?>
</label>
							<input type="text" class="text" name="address1" id="address1" value="<?php if (isset($_POST['address1'])){?><?php echo $_POST['address1'];?>
<?php }?>">
							<sup>*</sup>
						</p>
						<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="postcode"){?>
						<p class="required postcode text">
							<label for="postcode"><?php echo smartyTranslate(array('s'=>'Zip / Postal Code'),$_smarty_tpl);?>
</label>
							<input type="text" class="text" name="postcode" id="postcode" value="<?php if (isset($_POST['postcode'])){?><?php echo $_POST['postcode'];?>
<?php }?>" onblur="$('#postcode').val($('#postcode').val().toUpperCase());">
							<sup>*</sup>
						</p>
						<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="city"){?>
						<p class="required text">
							<label for="city"><?php echo smartyTranslate(array('s'=>'City'),$_smarty_tpl);?>
</label>
							<input type="text" class="text" name="city" id="city" value="<?php if (isset($_POST['city'])){?><?php echo $_POST['city'];?>
<?php }?>">
							<sup>*</sup>
						</p>
							<!--
								if customer hasn't update his layout address, country has to be verified
								but it's deprecated
							-->
						<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="Country:name"||$_smarty_tpl->tpl_vars['field_name']->value=="country"){?>
						<p class="required select">
							<label for="id_country"><?php echo smartyTranslate(array('s'=>'Country'),$_smarty_tpl);?>
</label>
							<select name="id_country" id="id_country">
								<option value="">-</option>
								<?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('countries')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value){
?>
								<option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['id_country'];?>
" <?php if (($_smarty_tpl->getVariable('sl_country')->value==$_smarty_tpl->tpl_vars['v']->value['id_country'])){?> selected="selected"<?php }?>><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['v']->value['name'],'htmlall','UTF-8');?>
</option>
								<?php }} ?>
							</select>
							<sup>*</sup>
						</p>
						<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="State:name"||$_smarty_tpl->tpl_vars['field_name']->value=='state'){?>
						<?php $_smarty_tpl->tpl_vars['stateExist'] = new Smarty_variable(true, null, null);?>

						<p class="required id_state select">
							<label for="id_state"><?php echo smartyTranslate(array('s'=>'State'),$_smarty_tpl);?>
</label>
							<select name="id_state" id="id_state">
								<option value="">-</option>
							</select>
							<sup>*</sup>
						</p>
						<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="phone"){?>
						<p class="text">
							<label for="phone"><?php echo smartyTranslate(array('s'=>'Phone'),$_smarty_tpl);?>
</label>
							<input type="text" class="text" name="phone" id="phone" value="<?php if (isset($_POST['phone'])){?><?php echo $_POST['phone'];?>
<?php }?>"> <sup style="color:red;">*</sup>
						</p>
						<?php }?>
					<?php }} ?>
					<?php if ($_smarty_tpl->getVariable('stateExist')->value==false){?>
					<p class="required id_state select">
						<label for="id_state"><?php echo smartyTranslate(array('s'=>'State'),$_smarty_tpl);?>
</label>
						<select name="id_state" id="id_state">
							<option value="">-</option>
						</select>
						<sup>*</sup>
					</p>
					<?php }?>
					<input type="hidden" name="alias" id="alias" value="<?php echo smartyTranslate(array('s'=>'My address'),$_smarty_tpl);?>
">
					<input type="hidden" name="is_new_customer" id="is_new_customer" value="0">
					<!-- END Account -->
				</div>
			</fieldset>
			<fieldset class="account_creation dni">
				<h3><?php echo smartyTranslate(array('s'=>'Tax identification'),$_smarty_tpl);?>
</h3>

				<p class="required text">
					<label for="dni"><?php echo smartyTranslate(array('s'=>'Identification number'),$_smarty_tpl);?>
</label>
					<input type="text" class="text" name="dni" id="dni" value="<?php if (isset($_POST['dni'])){?><?php echo $_POST['dni'];?>
<?php }?>" />
					<span class="form_info"><?php echo smartyTranslate(array('s'=>'DNI / NIF / NIE'),$_smarty_tpl);?>
</span>
					<sup>*</sup>
				</p>
			</fieldset>
			<p class="cart_navigation required submit">
				<span><sup>*</sup><?php echo smartyTranslate(array('s'=>'Required field'),$_smarty_tpl);?>
</span>
				<input type="submit" class="button" name="submitGuestAccount" id="submitGuestAccount" style="float:right" value="<?php echo smartyTranslate(array('s'=>'Continue'),$_smarty_tpl);?>
">
			</p>
		</form>
	<?php }?>
<?php }else{ ?>
<form action="<?php echo $_smarty_tpl->getVariable('link')->value->getPageLink('authentication.php',true);?>
" method="post" id="account-creation_form" class="std">
	<?php echo $_smarty_tpl->getVariable('HOOK_CREATE_ACCOUNT_TOP')->value;?>

	<fieldset class="account_creation">
		<h3><?php echo smartyTranslate(array('s'=>'Your personal information'),$_smarty_tpl);?>
</h3>
		<p class="radio required">
			<span><?php echo smartyTranslate(array('s'=>'Title'),$_smarty_tpl);?>
</span>
			<input type="radio" name="id_gender" id="id_gender1" value="1" <?php if (isset($_POST['id_gender'])&&$_POST['id_gender']==1){?>checked="checked"<?php }?> />
			<label for="id_gender1" class="top"><?php echo smartyTranslate(array('s'=>'Mr.'),$_smarty_tpl);?>
</label>
			<input type="radio" name="id_gender" id="id_gender2" value="2" <?php if (isset($_POST['id_gender'])&&$_POST['id_gender']==2){?>checked="checked"<?php }?> />
			<label for="id_gender2" class="top"><?php echo smartyTranslate(array('s'=>'Ms.'),$_smarty_tpl);?>
</label>
		</p>
		<p class="required text">
			<label for="customer_firstname"><?php echo smartyTranslate(array('s'=>'First name'),$_smarty_tpl);?>
</label>
			<input onkeyup="$('#firstname').val(this.value);" type="text" class="text" id="customer_firstname" name="customer_firstname" value="<?php if (isset($_POST['customer_firstname'])){?><?php echo $_POST['customer_firstname'];?>
<?php }?>" />
			<sup>*</sup>
		</p>
		<p class="required text">
			<label for="customer_lastname"><?php echo smartyTranslate(array('s'=>'Last name'),$_smarty_tpl);?>
</label>
			<input onkeyup="$('#lastname').val(this.value);" type="text" class="text" id="customer_lastname" name="customer_lastname" value="<?php if (isset($_POST['customer_lastname'])){?><?php echo $_POST['customer_lastname'];?>
<?php }?>" />
			<sup>*</sup>
		</p>
		<p class="required text">
			<label for="email"><?php echo smartyTranslate(array('s'=>'E-mail'),$_smarty_tpl);?>
</label>
			<input type="text" class="text" id="email" name="email" value="<?php if (isset($_POST['email'])){?><?php echo $_POST['email'];?>
<?php }?>" />
			<sup>*</sup>
		</p>
		<p class="required password">
			<label for="passwd"><?php echo smartyTranslate(array('s'=>'Password'),$_smarty_tpl);?>
</label>
			<input type="password" class="text" name="passwd" id="passwd" />
			<sup>*</sup>
			<span class="form_info"><?php echo smartyTranslate(array('s'=>'(5 characters min.)'),$_smarty_tpl);?>
</span>
		</p>
		<p class="select">
			<span><?php echo smartyTranslate(array('s'=>'Date of Birth'),$_smarty_tpl);?>
</span>
			<select id="days" name="days">
				<option value="">-</option>
				<?php  $_smarty_tpl->tpl_vars['day'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('days')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['day']->key => $_smarty_tpl->tpl_vars['day']->value){
?>
					<option value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['day']->value,'htmlall','UTF-8');?>
" <?php if (($_smarty_tpl->getVariable('sl_day')->value==$_smarty_tpl->tpl_vars['day']->value)){?> selected="selected"<?php }?>><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['day']->value,'htmlall','UTF-8');?>
&nbsp;&nbsp;</option>
				<?php }} ?>
			</select>
			<select id="months" name="months">
				<option value="">-</option>
				<?php  $_smarty_tpl->tpl_vars['month'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('months')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['month']->key => $_smarty_tpl->tpl_vars['month']->value){
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['month']->key;
?>
					<option value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['k']->value,'htmlall','UTF-8');?>
" <?php if (($_smarty_tpl->getVariable('sl_month')->value==$_smarty_tpl->tpl_vars['k']->value)){?> selected="selected"<?php }?>><?php echo smartyTranslate(array('s'=>($_smarty_tpl->tpl_vars['month']->value)),$_smarty_tpl);?>
&nbsp;</option>
				<?php }} ?>
			</select>
			<select id="years" name="years">
				<option value="">-</option>
				<?php  $_smarty_tpl->tpl_vars['year'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('years')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['year']->key => $_smarty_tpl->tpl_vars['year']->value){
?>
					<option value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['year']->value,'htmlall','UTF-8');?>
" <?php if (($_smarty_tpl->getVariable('sl_year')->value==$_smarty_tpl->tpl_vars['year']->value)){?> selected="selected"<?php }?>><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['year']->value,'htmlall','UTF-8');?>
&nbsp;&nbsp;</option>
				<?php }} ?>
			</select>
		</p>
		<?php if (isset($_smarty_tpl->getVariable('newsletter',null,true,false)->value)&&$_smarty_tpl->getVariable('newsletter')->value){?>
		<p class="checkbox" >
			<input type="checkbox" name="newsletter" id="newsletter" value="1" <?php if (isset($_POST['newsletter'])&&$_POST['newsletter']==1){?> checked="checked"<?php }?> />
			<label for="newsletter"><?php echo smartyTranslate(array('s'=>'Sign up for our newsletter'),$_smarty_tpl);?>
</label>
		</p>
		<p class="checkbox" >
			<input type="checkbox"name="optin" id="optin" value="1" <?php if (isset($_POST['optin'])&&$_POST['optin']==1){?> checked="checked"<?php }?> />
			<label for="optin"><?php echo smartyTranslate(array('s'=>'Receive special offers from our partners'),$_smarty_tpl);?>
</label>
		</p>
		<?php }?>
	</fieldset>
	<fieldset class="account_creation">
		<h3><?php echo smartyTranslate(array('s'=>'Your address'),$_smarty_tpl);?>
</h3>
		<?php  $_smarty_tpl->tpl_vars['field_name'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('dlv_all_fields')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['field_name']->key => $_smarty_tpl->tpl_vars['field_name']->value){
?>
			<?php if ($_smarty_tpl->tpl_vars['field_name']->value=="company"){?>
				<p class="text">
					<label for="company"><?php echo smartyTranslate(array('s'=>'Company'),$_smarty_tpl);?>
</label>
					<input type="text" class="text" id="company" name="company" value="<?php if (isset($_POST['company'])){?><?php echo $_POST['company'];?>
<?php }?>" />
				</p>
			<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="vat_number"){?>
				<div id="vat_number" style="display:none;">
					<p class="text">
						<label for="vat_number"><?php echo smartyTranslate(array('s'=>'VAT number'),$_smarty_tpl);?>
</label>
						<input type="text" class="text" name="vat_number" value="<?php if (isset($_POST['vat_number'])){?><?php echo $_POST['vat_number'];?>
<?php }?>" />
					</p>
				</div>
			<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="firstname"){?>
				<p class="required text">
					<label for="firstname"><?php echo smartyTranslate(array('s'=>'First name'),$_smarty_tpl);?>
</label>
					<input type="text" class="text" id="firstname" name="firstname" value="<?php if (isset($_POST['firstname'])){?><?php echo $_POST['firstname'];?>
<?php }?>" />
					<sup>*</sup>
				</p>
			<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="lastname"){?>
				<p class="required text">
					<label for="lastname"><?php echo smartyTranslate(array('s'=>'Last name'),$_smarty_tpl);?>
</label>
					<input type="text" class="text" id="lastname" name="lastname" value="<?php if (isset($_POST['lastname'])){?><?php echo $_POST['lastname'];?>
<?php }?>" />
					<sup>*</sup>
				</p>
			<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="address1"){?>
				<p class="required text">
					<label for="address1"><?php echo smartyTranslate(array('s'=>'Address'),$_smarty_tpl);?>
</label>
					<input type="text" class="text" name="address1" id="address1" value="<?php if (isset($_POST['address1'])){?><?php echo $_POST['address1'];?>
<?php }?>" />
					<sup>*</sup>
					<span class="inline-infos"><?php echo smartyTranslate(array('s'=>'Street address, P.O. box, company name, c/o'),$_smarty_tpl);?>
</span>
				</p>
			<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="address2"){?>
				<p class="text">
					<label for="address2"><?php echo smartyTranslate(array('s'=>'Address (Line 2)'),$_smarty_tpl);?>
</label>
					<input type="text" class="text" name="address2" id="address2" value="<?php if (isset($_POST['address2'])){?><?php echo $_POST['address2'];?>
<?php }?>" />
					<span class="inline-infos"><?php echo smartyTranslate(array('s'=>'Apartment, suite, unit, building, floor, etc.'),$_smarty_tpl);?>
</span>
				</p>
			<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="postcode"){?>
				<p class="required postcode text">
					<label for="postcode"><?php echo smartyTranslate(array('s'=>'Zip / Postal Code'),$_smarty_tpl);?>
</label>
					<input type="text" class="text" name="postcode" id="postcode" value="<?php if (isset($_POST['postcode'])){?><?php echo $_POST['postcode'];?>
<?php }?>" onkeyup="$('#postcode').val($('#postcode').val().toUpperCase());" />
					<sup>*</sup>
				</p>
			<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="city"){?>
				<p class="required text">
					<label for="city"><?php echo smartyTranslate(array('s'=>'City'),$_smarty_tpl);?>
</label>
					<input type="text" class="text" name="city" id="city" value="<?php if (isset($_POST['city'])){?><?php echo $_POST['city'];?>
<?php }?>" />
					<sup>*</sup>
				</p>
				<!--
					if customer hasn't update his layout address, country has to be verified
					but it's deprecated
				-->
			<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="Country:name"||$_smarty_tpl->tpl_vars['field_name']->value=="country"){?>
				<p class="required select">
					<label for="id_country"><?php echo smartyTranslate(array('s'=>'Country'),$_smarty_tpl);?>
</label>
					<select name="id_country" id="id_country">
						<option value="">-</option>
						<?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('countries')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value){
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['id_country'];?>
" <?php if (($_smarty_tpl->getVariable('sl_country')->value==$_smarty_tpl->tpl_vars['v']->value['id_country'])){?> selected="selected"<?php }?>><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['v']->value['name'],'htmlall','UTF-8');?>
</option>
						<?php }} ?>
					</select>
					<sup>*</sup>
				</p>
			<?php }elseif($_smarty_tpl->tpl_vars['field_name']->value=="State:name"||$_smarty_tpl->tpl_vars['field_name']->value=='state'){?>
				<?php $_smarty_tpl->tpl_vars['stateExist'] = new Smarty_variable(true, null, null);?>
				<p class="required id_state select">
					<label for="id_state"><?php echo smartyTranslate(array('s'=>'State'),$_smarty_tpl);?>
</label>
					<select name="id_state" id="id_state">
						<option value="">-</option>
					</select>
					<sup>*</sup>
				</p>
			<?php }?>
		<?php }} ?>
		<?php if ($_smarty_tpl->getVariable('stateExist')->value==false){?>
			<p class="required id_state select">
				<label for="id_state"><?php echo smartyTranslate(array('s'=>'State'),$_smarty_tpl);?>
</label>
				<select name="id_state" id="id_state">
					<option value="">-</option>
				</select>
				<sup>*</sup>
			</p>
		<?php }?>
		<p class="textarea">
			<label for="other"><?php echo smartyTranslate(array('s'=>'Additional information'),$_smarty_tpl);?>
</label>
			<textarea name="other" id="other" cols="26" rows="3"><?php if (isset($_POST['other'])){?><?php echo $_POST['other'];?>
<?php }?></textarea>
		</p>
		<p style="margin-left:50px;"><?php echo smartyTranslate(array('s'=>'You must register at least one phone number'),$_smarty_tpl);?>
 <sup style="color:red;">*</sup></p>
		<p class="text">
			<label for="phone"><?php echo smartyTranslate(array('s'=>'Home phone'),$_smarty_tpl);?>
</label>
			<input type="text" class="text" name="phone" id="phone" value="<?php if (isset($_POST['phone'])){?><?php echo $_POST['phone'];?>
<?php }?>" />
		</p>
		<p class="text">
			<label for="phone_mobile"><?php echo smartyTranslate(array('s'=>'Mobile phone'),$_smarty_tpl);?>
</label>
			<input type="text" class="text" name="phone_mobile" id="phone_mobile" value="<?php if (isset($_POST['phone_mobile'])){?><?php echo $_POST['phone_mobile'];?>
<?php }?>" />
		</p>
		<p class="required text" id="address_alias">
			<label for="alias"><?php echo smartyTranslate(array('s'=>'Assign an address title for future reference'),$_smarty_tpl);?>
 </label>
			<input type="text" class="text" name="alias" id="alias" value="<?php if (isset($_POST['alias'])){?><?php echo $_POST['alias'];?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'My address'),$_smarty_tpl);?>
<?php }?>" />
			<sup>*</sup>
		</p>
	</fieldset>
	<fieldset class="account_creation dni">
		<h3><?php echo smartyTranslate(array('s'=>'Tax identification'),$_smarty_tpl);?>
</h3>

		<p class="required text">
			<label for="dni"><?php echo smartyTranslate(array('s'=>'Identification number'),$_smarty_tpl);?>
</label>
			<input type="text" class="text" name="dni" id="dni" value="<?php if (isset($_POST['dni'])){?><?php echo $_POST['dni'];?>
<?php }?>" />
			<span class="form_info"><?php echo smartyTranslate(array('s'=>'DNI / NIF / NIE'),$_smarty_tpl);?>
</span>
			<sup>*</sup>
		</p>
	</fieldset>
	<?php echo $_smarty_tpl->getVariable('HOOK_CREATE_ACCOUNT_FORM')->value;?>

	<p class="cart_navigation required submit">
		<input type="hidden" name="email_create" value="1" />
		<input type="hidden" name="is_new_customer" value="1" />
		<?php if (isset($_smarty_tpl->getVariable('back',null,true,false)->value)){?><input type="hidden" class="hidden" name="back" value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('back')->value,'htmlall','UTF-8');?>
" /><?php }?>
		<input type="submit" name="submitAccount" id="submitAccount" value="<?php echo smartyTranslate(array('s'=>'Register'),$_smarty_tpl);?>
" class="exclusive" />
		<span><sup>*</sup><?php echo smartyTranslate(array('s'=>'Required field'),$_smarty_tpl);?>
</span>
	</p>

</form>
<?php }?>

