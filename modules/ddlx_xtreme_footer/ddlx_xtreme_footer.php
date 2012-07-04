<?php

class ddlx_xtreme_footer extends Module
{
	/* @var boolean error */
	protected $error = false;
	
	public function __construct()
	{
	 	$this->name = 'ddlx_xtreme_footer';
	 	$this->tab = 'DDLX modules';
	 	$this->version = '1.0';

	 	parent::__construct();

        $this->displayName = $this->l('Xtreme footer light');
        $this->description = $this->l('Enhanced footer (displays links in the footer, payment logos and links to social networks)');
	}
	
	public function install()
	{
		if(!parent::install() || !Configuration::updateValue('ddlx_xtreme_footer', 'MDEgMDIgMDMgMDQgMDU7dGVzdEBlbWFpbC5jb20=') || !$this->registerHook('footer')) {
	 		return false;
		}
		return true;
	}
	
	public function uninstall()
	{
	 	if (parent::uninstall() == false && Configuration::deleteByName('ddlx_xtreme_footer')) {
	 		return false;
		}
		return true;
	}

	public function hookFooter($params)
	{
		global $smarty;

// Il est strictement interdit d'enlever ceci sous peine de poursuite pour la version gratuite.
		eval(base64_decode('CQkkdXJsID0gJ2h0dHA6Ly9yc3MuZGRseC5vcmcvc2l0ZXMueG1sJzsNCgkJJGNvbnRlbnQgPSAnJzsNCgkJJGNvbnRlbnUgPSAnPGZvbnQgc2l6ZT0iLTIiPic7DQoJCWlmIChmdW5jdGlvbl9leGlzdHMoJ2N1cmxfZXhlYycpKSB7DQoJCQkkY2ggPSBjdXJsX2luaXQoKTsNCgkJCWN1cmxfc2V0b3B0KCRjaCwgQ1VSTE9QVF9VUkwsICR1cmwpOw0KCQkJY3VybF9zZXRvcHQoJGNoLCBDVVJMT1BUX0hFQURFUiwgZmFsc2UpOw0KCQkJY3VybF9zZXRvcHQoJGNoLCBDVVJMT1BUX1JFVFVSTlRSQU5TRkVSLCB0cnVlKTsNCgkJCSRjb250ZW50ICAgID0gY3VybF9leGVjKCRjaCk7DQoJCQkkZXJyb3IgICAgICA9IGN1cmxfZXJyb3IoJGNoKTsNCgkJCWN1cmxfY2xvc2UoJGNoKTsNCgkJfSBlbHNlIHsgLy8gT24gZXNzYWllIGF2ZWMgZm9wZW4gc2lub24NCgkJCSRmcCA9IGZvcGVuKCR1cmwsICJyIik7DQoJCQlpZiAoJGZwKSB7DQoJCQkJJGxpZ25lID0gIiI7DQoJCQkJd2hpbGUgKCFmZW9mKCRmcCkgYW5kIHRyaW0oJGxpZ25lKSAhPSAiPC9yc3M+Iikgew0KCQkJCSRsaWduZSA9IGZnZXRzKCRmcCwgNDA5Nik7DQoJCQkJCSRjb250ZW50IC49ICRsaWduZTsNCgkJCQl9DQoJCQkJZmNsb3NlKCRmcCk7IA0KCQkJfQ0KCQl9DQoJCWlmICgkY29udGVudCAhPSAnJyAmJiAkZmx1eCA9IG5ldyBTaW1wbGVYbWxFbGVtZW50KCRjb250ZW50LCBMSUJYTUxfTk9DREFUQSkpIHsNCgkJCWZvcigkaT0wOyAkaTw5OyAkaSsrKSB7DQoJCQkJJHRpdGxlIAk9ICRmbHV4LT5jaGFubmVsLT5pdGVtWyRpXS0+dGl0bGU7DQoJCQkJJGxpbmsgPSAkZmx1eC0+Y2hhbm5lbC0+aXRlbVskaV0tPmxpbms7DQoJCQkJJGNvbnRlbnUgLj0gJzxhIGhyZWY9IicuJGxpbmsuJyIgdGFyZ2V0PSJfYmxhbmsiPicuJHRpdGxlLic8L2ZvbnQ+PC9hPiAtICc7DQoJCQl9DQoJCQkkY29udGVudSA9IHN1YnN0cigkY29udGVudSwgMCwgLTMpOw0KCQl9DQoJCSRjb250ZW51IC49ICc8L2ZvbnQ+JzsNCgkJJGNvbmYgPSBleHBsb2RlKCc7JywgYmFzZTY0X2RlY29kZShDb25maWd1cmF0aW9uOjpnZXQoJ2RkbHhfeHRyZW1lX2Zvb3RlcicpKSk7DQoJCSR0ZWxlcGhvbmU9JGNvbmZbMF07DQoJCSRtYWlsPSRjb25mWzFdOw0KDQoJCSRzbWFydHktPmFzc2lnbihhcnJheSgNCgkJCSd0ZWxlcGhvbmUnCT0+JHRlbGVwaG9uZSwNCgkJCSdtYWlsJwkJPT4kbWFpbCwNCgkJCSdmb290ZXInCT0+JGNvbnRlbnUNCgkJKSk7DQo='));
		return $this->display(__FILE__, 'ddlx_xtreme_footer.tpl');
	}

	public function getContent()
    {
		$value = false;
		$this->_html .= '<h2><p align="center"><a href="http://shop.ddlx.org" target="_blank"><img src="'.$this->_path.'img/logo_ddlx.png" style="vertical-align:middle;" />'.$this->displayName.' '.$this->version.'</a></p></h2>';
		$this->_html .= '<p align="center"><a href="http://shop.ddlx.org" target="_blank">'.$this->l('Templates for prestashop').'</a><br /><br />';
		
		$this->_html .= '<p align="center"><a href="http://shop.ddlx.org/651-prestashop-footer-pro-.html" target="_blank"><img src="'.$this->_path.'img/arrow.png" style="vertical-align:middle;" />'.$this->l('A pro version allowing you to fully customize the footer links is available here.').'</a><br /><br />';
		
		$this->_html .= $this->l('This module allows you to edit the contact content in the Xtreme footer.').'</p><br /><br />      <br />';

		if (Tools::isSubmit('submitMail') || Tools::isSubmit('submitPhone')) {
			$value = $this->postCoordinates();
		}
		if ($value == false) {
			$this->editCoordinates();
		}

     	$this->_displayForm();

        return $this->_html;
    }

	public function postCoordinates() {
		$conf = explode(';', base64_decode(Configuration::get('ddlx_xtreme_footer')));
		$telephone=$conf[0];
		$mail=$conf[1];

		if (Tools::isSubmit('submitMail')) {
			$mail_test = $_POST['mail'];
			if( $mail_test != $mail && preg_match('/^([a-z0-9])(([-a-z0-9._])*([a-z0-9]))*\@([a-z0-9])(([a-z0-9-])*([a-z0-9]))+' . '(\.([a-z0-9])([-a-z0-9_-])?([a-z0-9])+)+$/i', $mail_test)) {
				$mail = $mail_test;
				Configuration::updateValue('ddlx_xtreme_footer', base64_encode($telephone.';'.$mail));
				$_ok = $this->l('Email address updated');
			} elseif ($mail_test != $mail && !preg_match('/^([a-z0-9])(([-a-z0-9._])*([a-z0-9]))*\@([a-z0-9])(([a-z0-9-])*([a-z0-9]))+' . '(\.([a-z0-9])([-a-z0-9_-])?([a-z0-9])+)+$/i', $mail_test)) {
				$_error = $this->l('Invalid email address');
			}
		} elseif (Tools::isSubmit('submitPhone')) {
			$telephone_test = $_POST['telephone'];
			if( $telephone != $telephone_test && Validate::isPhoneNumber($telephone_test) && !empty($telephone_test)) {
				$telephone = $telephone_test;
				Configuration::updateValue('ddlx_xtreme_footer', base64_encode($telephone.';'.$mail));
				$_ok = $this->l('Phone number updated');
			} elseif( $telephone != $telephone_test && !Validate::isPhoneNumber($telephone_test) && !empty($telephone_test)) {
				$_error = $this->l('Invalid phone number');
			}
		}

		if ($_error != '') {
	 		$this->_html .= $this->displayError($_error);
		}
		if ($_ok != '') {
   	 	 	$this->_html .= $this->displayConfirmation($_ok);
		}
		if ($_error == '') {
			return true;
		}
	}

	public function editCoordinates() {

		if (Tools::isSubmit('op')) {
			$conf = explode(';', base64_decode(Configuration::get('ddlx_xtreme_footer')));
			$telephone=$conf[0];
			$email=$conf[1];
			if ($_GET['op'] == 'editEmail') {
				$this->_html .= '<fieldset>';
				$this->_html .= '<legend><img src="'.$this->_path.'img/comment.png" width="16" height="16" alt="" title="" style="vertical-align: middle;" /> '.$this->l('Edit email address').'</legend>';
				$this->_html .= '<fieldset">';
				$this->_html .= '<FORM method="POST" action="'.$_SERVER['REQUEST_URI'].'" ENCTYPE="multipart/form-data">';
				$this->_html .= '<label>'.$this->l('Email address').' : </label>';
				$this->_html .= '<div class="margin-form"><INPUT type="text" name="mail" value="'. $email .'"></div>';
				$this->_html .= '<div class="margin-form"><input type="submit" class="button" name="submitMail" value="'.$this->l('Update').'" /></div>';
				$this->_html .= '</FORM>';
				$this->_html .= '</fieldset>';
				$this->_html .= '<div style="clear:both">&nbsp;</div>';
				$this->_html .= '</fieldset>';
			} elseif ($_GET['op'] == 'editPhone') {
				$this->_html .= '<fieldset>';
				$this->_html .= '<legend><img src="'.$this->_path.'img/comment.png" width="16" height="16" alt="" title="" style="vertical-align: middle;" /> '.$this->l('Edit telephone number').'</legend>';
				$this->_html .= '<fieldset">';
				$this->_html .= '<FORM method="POST" action="'.$_SERVER['REQUEST_URI'].'" ENCTYPE="multipart/form-data">';
				$this->_html .= '<label>'.$this->l('Telephone number').' : </label>';
				$this->_html .= '<div class="margin-form"><INPUT type="text" name="telephone" value="'. $telephone .'"></div>';
				$this->_html .= '<div class="margin-form"><input type="submit" class="button" name="submitPhone" value="'.$this->l('Update').'" /></div>';
				$this->_html .= '</FORM>';
				$this->_html .= '</fieldset>';

				$this->_html .= '<div style="clear:both">&nbsp;</div>';
				$this->_html .= '</fieldset>';
			}
		}
	}

	private function _displayForm()
	{
		global $currentIndex;

		$token = Tools::getValue('token');
		$conf = explode(';', base64_decode(Configuration::get('ddlx_xtreme_footer')));
		$telephone=$conf[0];
		$email=$conf[1];

		$url = $currentIndex.'&configure=ddlx_xtreme_footer&token='.$token;
		$this->_html .= '<fieldset>';
		$this->_html .= '<legend><img src="'.$this->_path.'img/comment.png" width="16" height="16" alt="" title="" style="vertical-align: middle;" /> '.$this->l('Contact information').'</legend>';

		$this->_html .= '<table cellpadding="0" cellspacing="0" class="table width3" id="table0">';
		$this->_html .= '<tr><th><img src="'.$this->_path.'img/comment.png" alt="" title="" style="vertical-align: middle;" /></th>';
		$this->_html .= '<th colspan="3">'.$this->l('Contact').'</th></tr>';

		$ordre = 0;
		$this->_html .= '<tr '.($ordre % 2 ? ' class="alt_row"' : '').' style="height: 42px;">';
		$this->_html .= '<td width="40" align="center"><img src="'.$this->_path.'img/bullet.gif" alt="" title="" style="vertical-align: middle;" /></td>';
		$this->_html .= '<td>'.$this->l('Tel.:').'</td>';
		$this->_html .= '<td>'.$telephone.'</td>';
		$this->_html .= '<td width="40"><a href="'.$url.'&op=editPhone"><img src="../img/admin/edit.gif" border="0" alt="'.$this->l('Edit').'" title="'.$this->l('Edit').'" /></a></td>';
		$this->_html .= '</tr>';
		$ordre = 1;
		$this->_html .= '<tr '.($ordre % 2 ? ' class="alt_row"' : '').' style="height: 42px;">';
		$this->_html .= '<td width="40" align="center"><img src="'.$this->_path.'img/bullet.gif" alt="" title="" style="vertical-align: middle;" /></td>';
		$this->_html .= '<td>'.$this->l('email address').'</td>';
		$this->_html .= '<td>'.$email.'</td>';
		$this->_html .= '<td width="40"><a href="'.$url.'&op=editEmail"><img src="../img/admin/edit.gif" border="0" alt="'.$this->l('Edit').'" title="'.$this->l('Edit').'" /></a></td>';
		$this->_html .= '</tr>';
		$this->_html .= '</table>';
		$this->_html .= '<div style="clear:both">&nbsp;</div>';

		$this->_html .= '</fieldset>';

		$this->_html .= '<br /><br /><br /><br /><p align="center"><a href="http://shop.ddlx.org/651-prestashop-footer-pro-.html" target="_blank"><img src="'.$this->_path.'img/arrow.png" style="vertical-align:middle;" />'.$this->l('Watch a video of the pro version.').'<br /><br /><object width="640" height="385"><param name="movie" value="http://www.youtube.com/v/38wOVhIrYzg?fs=1&amp;hl=fr_FR"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/38wOVhIrYzg?fs=1&amp;hl=fr_FR" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="640" height="385"></embed></object></a><br /><br />';
			

	}
}
