<?php
/** Modulo JQuerySlider Galery **/
/** www.tiendasvirtuales.com.ve **/

class slideric extends Module
{
	/** @var max image size */
 	protected $maxImageSize = 307200;

 	function __construct()
 	{
 	 	$this->name = 'slideric';
		$this->tab = 'Home';
 	 	$this->version = '2.0';

		/* The parent construct is required for translations */
	 	parent::__construct();

		$this->page = basename(__FILE__, '.php');
	 	$this->displayName = $this->l('Slideric - JQuery Nivo Slider');
	 	$this->description = $this->l('Slide the images with choosen languages | Prestashopic.com');
 	}

    function install()
    {
        if (!parent::install() OR !$this->registerHook('Home'))
            return false;
        return true;
    }

	function putContent($xml_data, $key, $field)
	{
		$field = htmlspecialchars($field);
		if (!$field)
			return 0;
		return ("\n".'		<'.$key.'>'.$field.'</'.$key.'>');
	}

 	function getContent()
 	{
        global $cookie;
        /* Languages preliminaries */
        $defaultLanguage = intval(Configuration::get('PS_LANG_DEFAULT'));
        $languages = Language::getLanguages();
        $iso = Language::getIsoById($defaultLanguage);
        $isoUser = Language::getIsoById(intval($cookie->id_lang));
  
       	 	
 	 	/* display the module name */
 	 	$this->_html = '<h2>'.$this->displayName.' '.$this->version.'</h2>';

 	 	/* update the editorial xml */
 	 	if (isset($_POST['submitUpdate']))
 	 	{
			// Generate new XML data
 	 	 	$newXml = '<?xml version=\'1.0\' encoding=\'utf-8\' ?>'."\n";
			$newXml .= '<links>'."\n";
			$i = 0;
			foreach ($_POST['link'] as $link)
			{
				$newXml .= '	<link>';
				foreach ($link AS $key => $field)
				{
					if ($line = $this->putContent($newXml, $key, $field))
						$newXml .= $line;
				}
				
				/* upload the image */
				if (isset($_FILES['link_'.$i.'_img']) AND isset($_FILES['link_'.$i.'_img']['tmp_name']) AND !empty($_FILES['link_'.$i.'_img']['tmp_name']))
				{
					Configuration::set('PS_IMAGE_GENERATION_METHOD', 1);
					if ($error = checkImage($_FILES['link_'.$i.'_img'], $this->maxImageSize))
						$this->_html .= $error;
				elseif (!$tmpName = tempnam(_PS_TMP_IMG_DIR_, 'PS') OR !move_uploaded_file($_FILES['link_'.$i.'_img']['tmp_name'], $tmpName))
					return false;
                elseif (!imageResize($tmpName, dirname(__FILE__).'/'.$isoUser.$i.'.jpg'))
					$this->_html .= $this->displayError($this->l('An error occurred during the image upload.'));
                unlink($tmpName);
				}
				if ($line = $this->putContent($newXml, 'img', $isoUser.$i.'.jpg'))
					$newXml .= $line;
				$newXml .= "\n".'	</link>'."\n";
				$i++;
			}
			$newXml .= '</links>'."\n";

			/* write it into the editorial xml file */
			if ($fd = @fopen(dirname(__FILE__).'/'.$isoUser.'links.xml', 'w'))
			{
				if (!@fwrite($fd, $newXml))
					$this->_html .= $this->displayError($this->l('Unable to write to the editor file.'));
				if (!@fclose($fd))
					$this->_html .= $this->displayError($this->l('Can\'t close the editor file.'));
			}
			else
				$this->_html .= $this->displayError($this->l('Unable to update the editor file.<br />Please check the editor file\'s writing permissions.'));
 	 	}

 		/* display the editorial's form */
 	 	$this->_displayForm();

 	 	return $this->_html;
 	}

 	private function _displayForm()
 	{
        global $cookie;
        /* Languages preliminaries */
        $defaultLanguage = intval(Configuration::get('PS_LANG_DEFAULT'));
        $languages = Language::getLanguages();
        $iso = Language::getIsoById($defaultLanguage);
        $isoUser = Language::getIsoById(intval($cookie->id_lang));
        

 	 	/* xml loading */
 	 	$xml = false;
 	 	if (file_exists(dirname(__FILE__).'/'.$isoUser.'links.xml'))
		  	if (!$xml = @simplexml_load_file(dirname(__FILE__).'/'.$isoUser.'links.xml'))
		  		$this->_html .= $this->displayError($this->l('Your links file is empty.'));
		        $this->_html .= '<br />
		<form method="post" action="'.$_SERVER['REQUEST_URI'].'" enctype="multipart/form-data">
			<fieldset style="width: 900px;">
        <legend><img src="'.$this->_path.'logo.gif" alt="" title="" /> '.$this->displayName.'</legend>';
		$i = 0;
		foreach ($xml->link as $link)
		{
	 	 	$divLangName = 'title'.$i.'¤cpara'.$i;
      $this->_html .= '<h4>'.$this->l('Slider #').$i.'</h4>';
			$this->_html .= '<div class="clear"></div>';
			$this->_html .= '

			<fieldset style="width:870px">
      	<h5><label>'.$this->l('Image Size (50%)').'</label></h5>
				<div class="margin-form">
					<img src="'.$this->_path.$isoUser.$i.'.jpg" alt="" title="" style="width:50%; height:50%;" /><br />
					<input type="file" name="link_'.$i.'_img" />
				</div>
				<h5><label>'.$this->l('URL').'</label></h5>
				<div class="margin-form">
					<input type="text" name="link['.$i.'][url]" size="64" value="'.($xml ? stripslashes(htmlspecialchars($xml->link[$i]->url)) : '').'" />
				</div>
			</fieldset>';

			$i++;
		}
		
		$this->_html .= '
					<div class="margin-form clear">
            <div class="clear pspace"></div>
            <div class="margin-form">
                 <input type="submit" name="submitUpdate" value="'.$this->l('Save').'" class="button" />
            </div>
          </div>
					
				</fieldset>
			</form>';
 	}

 	function hookHome($params)
 	{
        global $cookie;
        /* Languages preliminaries */
        $defaultLanguage = intval(Configuration::get('PS_LANG_DEFAULT'));
        $languages = Language::getLanguages();
        $iso = Language::getIsoById($defaultLanguage);
        $isoUser = Language::getIsoById(intval($cookie->id_lang));

 	 	if (file_exists(dirname(__FILE__).'/'.$isoUser.'links.xml'))
 	 		if ($xml = simplexml_load_file(dirname(__FILE__).'/'.$isoUser.'links.xml'))
 	 		{
 	 		 	global $cookie, $smarty;
				$smarty->assign(array(
					'xml' => $xml,
					'this_path' => $this->_path
				));
				return $this->display(__FILE__, 'slideric.tpl');
			}
		return false;
 	}
  
}

?>
