<?php

class BlockVariousLinks extends Module
{
	private $_html;
	function __construct()
	{
		$this->name = 'blockvariouslinks';
		$this->tab = 'Blocks';
		$this->version = 0.1;

		parent::__construct();
		
		$this->displayName = $this->l('Footer links block--');
		$this->description = $this->l('Displays miscellaneous links (generally in footer)--');
	}

	function install()
	{
		if (!parent::install())
			return false;
		if (!$this->registerHook('footer'))
			return false;
		Db::getInstance()->Execute('INSERT INTO `'._DB_PREFIX_.'block_cms`(`id_block`, `id_cms`) VALUES
															 	('.intval($this->id).', 3),
															 	('.intval($this->id).', 4)');
		return true;
	}
	public function uninstall()
	{
	 	Db::getInstance()->Execute('DELETE FROM `'._DB_PREFIX_.'block_cms` WHERE `id_block` = '.intval($this->id));
    	parent::uninstall();
  }
	
   public function getContent()
   {
		if (isset($_POST['btnSubmit']))
			$this->_postProcess();
    $this-> _displayForm();
    return $this->_html;
   }
    
	private function _displayForm()
	{
		global $cookie;

		$this->_html .=
		'<form action="'.$_SERVER['REQUEST_URI'].'" method="post">
			<fieldset>
			<legend>'.$this->l('Selected files displayed').'</legend>
					<span>'.$this->l('Please check files that will be displayed in this module').'.</span><br /><br />
					<table cellspacing="0" cellpadding="0" class="table" style="width: 29.5em;">
							<thead>	
								<tr>
									<th><input type="checkbox" name="checkme" class="noborder" onclick="checkDelBoxes(this.form, \'categoryBox[]\', this.checked)" /></th>
									<th>'.$this->l('ID').'</th>
									<th>'.$this->l('Name').'</th>
								</tr>
							</thead>
							<tbody>';	
		$cms = CMS::listCms(intval($cookie->id_lang));
		foreach($cms AS $row)
			$this->_html.='<tr><td><input type="checkbox" class="noborder" value="'.intval($row['id_cms']).'" name="categoryBox[]" '.((CMS::isInBlock(intval($row['id_cms']), intval($this->id))) ? 'checked="checked"' : '').'></td><td>'.intval($row['id_cms']).'</td><td>'.$row['meta_title'].'</td></tr>';
		$this->_html .='
										</tbody>
									</table>
									<br />
									<input type="submit" name="btnSubmit" class="button" value="'.$this->l('Update').'">
						</fieldset>
					</form>';
	}

	private function _postProcess()
	{
		if (isset($_POST['categoryBox']) AND is_array($_POST['categoryBox']) AND count($_POST['categoryBox'] >= 1))
		{
			foreach ($_POST['categoryBox'] AS $row)
				$cms[] = intval($row);
			if (CMS::updateCmsToBlock($cms, intval($this->id)))
		 		$this->_html .= '<div class="conf confirm">'.$this->l('Cms Updated').'</div>';
		 }
		else
		 	CMS::updateCmsToBlock(array(), intval($this->id));
	}

	/**
	* Returns module content
	*
	* @param array $params Parameters
	* @return string Content
	*/
	function hookFooter($params)
	{
		global $smarty, $cookie;
		$cms = CMS::listCms($cookie->id_lang, $this->id);
		$id_cms = array();
		foreach($cms AS $row)
			$id_cms[] = intval($row['id_cms']);
		$smarty->assign('cmslinks', $id_cms ? CMS::getLinks($cookie->id_lang, $id_cms) : array());
		return $this->display(__FILE__, 'blockvariouslinks.tpl');
	}

}

?>