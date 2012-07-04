<?php
/**
 *  Newsletter Admin Tab Module for PrestaShop 1.4.3
 * @category admin
 *
 * @author Richard Smaizys <richard@smaizys.com> www.smaizys.com 
 * @contributor Odlanier de Souza <master_odlanier@hotmail.com>
 * @copyright prestashopbr.com
 * @license http://www.opensource.org/licenses/osl-3.0.php Open-source licence 3.0
 * @version 1.1
 *
 */

if (!defined('_CAN_LOAD_FILES_'))
    exit;
 
class newslettertabmodule extends Module
{
    
    public function __construct ()
    {
        $this->name = 'newslettertabmodule';
        $this->tab = 'administration';
        $this->version = 1.0;
        $this->author = 'www.smaizys.com';
        
        parent::__construct();
 
        $this->confirmUninstall = $this->l('Are you sure you want me to keep away from displaying content?');
        $this->displayName = $this->l('Newsletter tab module');
        $this->description = $this->l('Adss newsletter functionality to the system');         
    }

    public function getContent ()
    {
        if(Tools::isSubmit('options_submit'))
        {
            $idParentTab = Configuration::get('NSletter_id_parent_tab');
            $newIdParentTab = Tools::getValue('id_parent_tab');
            if($newIdParentTab != $idParentTab)
            {
                $tab = new Tab(Tab::getIdFromClassName('AdminNewsletter'));
                $tab->delete();
                unset($tab);
                $this->adminInstall($newIdParentTab);   
                Configuration::updateValue('NSletter_id_parent_tab', $newIdParentTab);
                echo $this->displayConfirmation($this->l('Configuration updated'));
            }
        }
        return $this->_displayForm();
    }
 
    private function _displayForm()
    {
        global $cookie, $smarty;
        $tabsInfo = Tab::getTabs($cookie->id_lang, 0);
        $smarty->assign(array('tabsInfo'=>$tabsInfo, 
                              'selectedTab'=>Configuration::get('NSletter_id_parent_tab')));
        return $this->display(__FILE__, 'adminform.tpl');
    }    
    
    private function adminInstall($idParentTab = "7")
    {
            $tab = new Tab();
            $tab->class_name = 'AdminNewsletter';
            $tab->id_parent = $idParentTab;
            $tab->module = 'newslettertabmodule';
            $tab->name[(int)(Configuration::get('PS_LANG_DEFAULT'))] = $this->l('Newsletters');
            return $tab->add();
    }            
 
    public function install ()
    {
        return parent::install();
    }
 
    public function uninstall ()
    {
        $tab = new Tab(Tab::getIdFromClassName('AdminNewsletter'));
        return parent::uninstall()
                && $tab->delete()
                && Configuration::deleteByName('NSletter_id_parent_tab');;
    }

}
 
