<?php
/*
* 2007-2011 PrestaShop 
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2011 PrestaShop SA
*  @version  Release: $Revision: 7771 $
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA 
*/

class ImageCore extends ObjectModel
{
	public		$id;

	/** @var integer Image ID */
	public 		$id_image;
	
	/** @var integer Product ID */
	public		$id_product;
	
	/** @var string HTML title and alt attributes */
	public		$legend;
	
	/** @var integer Position used to order images of the same product */
	public		$position;
	
	/** @var boolean Image is cover */
	public		$cover;

	/** @var string image extension */
	public $image_format = 'jpg';
	
	/** @var string path to index.php file to be copied to new image folders */ 
	public $source_index;
	
	/** @var string image folder */
	protected $folder;
	
	/** @var string image path without extension */
	protected $existing_path;
	
	protected $tables = array ('image', 'image_lang');
	
	protected	$fieldsRequired = array('id_product');
	protected 	$fieldsValidate = array('id_product' => 'isUnsignedId', 'position' => 'isUnsignedInt', 'cover' => 'isBool');
	protected 	$fieldsRequiredLang = array('legend');
	protected 	$fieldsSizeLang = array('legend' => 128);
	protected 	$fieldsValidateLang = array('legend' => 'isGenericName');
	
	protected 	$table = 'image';
	protected 	$identifier = 'id_image';	
	
	protected	static $_cacheGetSize = array();
	
	public function __construct($id = NULL, $id_lang = NULL)
	{
		parent::__construct($id, $id_lang);
		$this->image_dir = _PS_PROD_IMG_DIR_;
		$this->source_index = _PS_PROD_IMG_DIR_.'index.php';
	}
	
	public function getFields()
	{
		parent::validateFields();
		$fields['id_product'] = (int)($this->id_product);
		$fields['position'] = (int)($this->position);
		$fields['cover'] = (int)($this->cover);
		return $fields;
	}
	
	public function getTranslationsFieldsChild()
	{
		parent::validateFieldsLang();
		return parent::getTranslationsFields(array('legend'));
	}
	
	public function delete()
	{
		if (!parent::delete() || 
			!$this->deleteProductAttributeImage() || 
			!$this->deleteImage())
			return false;
		
		// update positions
		$result = Db::getInstance()->ExecuteS('
		SELECT *
		FROM `'._DB_PREFIX_.'image`
		WHERE `id_product` = '.(int)$this->id_product.'
		ORDER BY `position`');
		$i = 1;
		if ($result)	
			foreach ($result AS $row)
			{
				$row['position'] = $i++;
				Db::getInstance()->AutoExecute(_DB_PREFIX_.$this->table, $row, 'UPDATE', '`id_image` = '.(int)($row['id_image']), 1);
			}
			
		return true;
	}
		
	/**
	  * Return available images for a product
	  *
	  * @param integer $id_lang Language ID
	  * @param integer $id_product Product ID
	  * @return array Images
	  */
	public static function getImages($id_lang, $id_product)
	{
		return Db::getInstance()->ExecuteS('
		SELECT *
		FROM `'._DB_PREFIX_.'image` i
		LEFT JOIN `'._DB_PREFIX_.'image_lang` il ON (i.`id_image` = il.`id_image`)
		WHERE i.`id_product` = '.(int)$id_product.' AND il.`id_lang` = '.(int)$id_lang.'
		ORDER BY i.`position` ASC');
	}
	
	/**
	  * Return Images
	  *
	  * @return array Images
	  */
	public static function getAllImages()
	{
		return Db::getInstance()->ExecuteS('
		SELECT `id_image`, `id_product`
		FROM `'._DB_PREFIX_.'image`
		ORDER BY `id_image` ASC');
	}
	
	/**
	  * Return number of images for a product
	  *
	  * @param integer $id_product Product ID
	  * @return integer number of images
	  */
	public static function getImagesTotal($id_product)
	{
		$result = Db::getInstance()->getRow('
		SELECT COUNT(`id_image`) AS total
		FROM `'._DB_PREFIX_.'image`
		WHERE `id_product` = '.(int)($id_product));
		return $result['total'];
	}
	
	/**
	  * Return highest position of images for a product
	  *
	  * @param integer $id_product Product ID
	  * @return integer highest position of images
	  */
	public static function getHighestPosition($id_product)
	{
		$result = Db::getInstance()->getRow('
		SELECT MAX(`position`) AS max
		FROM `'._DB_PREFIX_.'image`
		WHERE `id_product` = '.(int)($id_product));
		return $result['max'];
	}
	
	/**
	  * Delete product cover
	  *
	  * @param integer $id_product Product ID
	  * @return boolean result
	  */
	public static function deleteCover($id_product)
	{
	 	if (!Validate::isUnsignedId($id_product))
	 		die(Tools::displayError());
			
		if (file_exists(_PS_TMP_IMG_DIR_.'product_'.$id_product.'.jpg'))
			unlink(_PS_TMP_IMG_DIR_.'product_'.$id_product.'.jpg');
		return Db::getInstance()->Execute('
		UPDATE `'._DB_PREFIX_.'image` 
		SET `cover` = 0 
		WHERE `id_product` = '.(int)($id_product));
	}
	
	/**
	  *Get product cover
	  *
	  * @param integer $id_product Product ID
	  * @return boolean result
	  */
	public static function getCover($id_product)
	{
		return Db::getInstance()->getRow('
		SELECT * FROM `'._DB_PREFIX_.'image` 
		WHERE `id_product` = '.(int)($id_product).'
		AND `cover`= 1');
	}
	
	/**
	  * Copy images from a product to another
	  *
	  * @param integer $id_product_old Source product ID
	  * @param boolean $id_product_new Destination product ID
	  */
	public static function duplicateProductImages($id_product_old, $id_product_new, $combinationImages)
	{
		$imagesTypes = ImageType::getImagesTypes('products');
		$result = Db::getInstance()->ExecuteS('
		SELECT `id_image`
		FROM `'._DB_PREFIX_.'image`
		WHERE `id_product` = '.(int)($id_product_old));
		foreach ($result as $row)
		{
			$imageOld = new Image($row['id_image']);
			$imageNew = clone $imageOld;
			$imageNew->id_product = (int)($id_product_new);
			// A new id is generated for the cloned image when calling add()
			if ($imageNew->add())
            {
				$new_path = $imageNew->getPathForCreation();
            	foreach ($imagesTypes AS $imageType)
            	{
					if (file_exists(_PS_PROD_IMG_DIR_.$imageOld->getExistingImgPath().'-'.$imageType['name'].'.jpg'))
					{
						if (!Configuration::get('PS_LEGACY_IMAGES'))
							$imageNew->createImgFolder();
						copy(_PS_PROD_IMG_DIR_.$imageOld->getExistingImgPath().'-'.$imageType['name'].'.jpg',
						$new_path.'-'.$imageType['name'].'.jpg');
					}
            	}
                if (file_exists(_PS_PROD_IMG_DIR_.$imageOld->getExistingImgPath().'.jpg'))
                    copy(_PS_PROD_IMG_DIR_.$imageOld->getExistingImgPath().'.jpg', $new_path.'.jpg');

				self::replaceAttributeImageAssociationId($combinationImages, (int)($imageOld->id), (int)($imageNew->id));
            }
			else
				return false;
		}
		return self::duplicateAttributeImageAssociations($combinationImages);
	}

	static protected function replaceAttributeImageAssociationId(&$combinationImages, $saved_id, $id_image)
	{
		if (!isset($combinationImages['new']) OR !is_array($combinationImages['new']))
			return ;
		foreach ($combinationImages['new'] AS $id_product_attribute => $imageIds)
			foreach ($imageIds AS $key => $imageId)
				if ((int)($imageId) == (int)($saved_id))
					$combinationImages['new'][$id_product_attribute][$key] = (int)($id_image);
	}

	/**
	* Duplicate product attribute image associations
	* @param integer $id_product_attribute_old
	* @return boolean
	*/
	public static function duplicateAttributeImageAssociations($combinationImages)
	{
		if (!isset($combinationImages['new']) OR !is_array($combinationImages['new']))
			return true;
		$query = 'INSERT INTO `'._DB_PREFIX_.'product_attribute_image` (`id_product_attribute`, `id_image`) VALUES ';
		foreach ($combinationImages['new'] AS $id_product_attribute => $imageIds)
			foreach ($imageIds AS $imageId)
				$query .= '('.(int)($id_product_attribute).', '.(int)($imageId).'), ';
		$query = rtrim($query, ', ');
		return DB::getInstance()->Execute($query);
	}

	/**
	  * Reposition image
	  *
	  * @param integer $position Position
	  * @param boolean $direction Direction
	  */
	public function positionImage($position, $direction)
	{
		$position = (int)($position);
		$direction = (int)($direction);
		
		// temporary position
		$high_position = Image::getHighestPosition($this->id_product) + 1;
		
		Db::getInstance()->Execute('
		UPDATE `'._DB_PREFIX_.'image`
		SET `position` = '.(int)($high_position).'
		WHERE `id_product` = '.(int)($this->id_product).'
		AND `position` = '.($direction ? $position - 1 : $position + 1));
		
		Db::getInstance()->Execute('
		UPDATE `'._DB_PREFIX_.'image`
		SET `position` = `position`'.($direction ? '-1' : '+1').'
		WHERE `id_image` = '.(int)($this->id));
		
		Db::getInstance()->Execute('
		UPDATE `'._DB_PREFIX_.'image`
		SET `position` = '.$this->position.'
		WHERE `id_product` = '.(int)($this->id_product).'
		AND `position` = '.(int)($high_position));
	}
	
	public static function getSize($type)
	{
		if (!isset(self::$_cacheGetSize[$type]) OR self::$_cacheGetSize[$type] === NULL)
			self::$_cacheGetSize[$type] = Db::getInstance()->getRow('SELECT `width`, `height` FROM '._DB_PREFIX_.'image_type WHERE `name` = \''.pSQL($type).'\'');
	 	return self::$_cacheGetSize[$type];
	}
	
	/**
	  * Clear all images in tmp dir
	  */
	public static function clearTmpDir()
	{
		foreach (scandir(_PS_TMP_IMG_DIR_) AS $d)
			if (preg_match('/(.*)\.jpg$/', $d))
				unlink(_PS_TMP_IMG_DIR_.$d);
	}
	/**
	 * Delete Image - Product attribute associations for this image
	 */
	public function deleteProductAttributeImage()
	{
		return Db::getInstance()->Execute('
			DELETE
			FROM `'._DB_PREFIX_.'product_attribute_image`
			WHERE `id_image` = '.(int)($this->id)
		);
	}
	
	/**
	 * Delete the product image from disk and remove the containing folder if empty
	 * Handles both legacy and new image filesystems
	 */
	public function deleteImage()
	{
		if (!$this->id)
			return false;
			
		// Delete base image
		if (file_exists($this->image_dir.$this->getExistingImgPath().'.'.$this->image_format))
			unlink($this->image_dir.$this->getExistingImgPath().'.'.$this->image_format);
		else
			return false;
	
		$files_to_delete = array();
		
		// Delete auto-generated images
		$imageTypes = ImageType::getImagesTypes();
		foreach ($imageTypes AS $imageType)
			$files_to_delete[] = $this->image_dir.$this->getExistingImgPath().'-'.$imageType['name'].'.'.$this->image_format;
			
		// Delete watermark image
		$files_to_delete[] = $this->image_dir.$this->getExistingImgPath().'-watermark.'.$this->image_format;
		// delete index.php
		$files_to_delete[] = $this->image_dir.$this->getImgFolder().'index.php';
		// Delete tmp images
		$files_to_delete[] = _PS_TMP_IMG_DIR_.'product_'.$this->id_product.'.'.$this->image_format;
		$files_to_delete[] = _PS_TMP_IMG_DIR_.'product_mini_'.$this->id_product.'.'.$this->image_format;
		
		foreach ($files_to_delete as $file)
			if (file_exists($file) && !@unlink($file))
				return false;
		
		// Can we delete the image folder?
		if (is_dir($this->image_dir.$this->getImgFolder()))
		{
			$delete_folder = true;
			foreach (scandir($this->image_dir.$this->getImgFolder()) as $file)
				if (($file != '.' && $file != '..'))
				{
					$delete_folder = false;
					break;
				}
		}		
		if (isset($delete_folder) && $delete_folder)
			@rmdir($this->image_dir.$this->getImgFolder());

		return true;
	}
	
	/**
	 * Recursively deletes all product images in the given folder tree and removes empty folders.
	 * 
	 * @param string $path folder containing the product images to delete
	 * @param string $format image format
	 * @return bool success
	 */
	public static function deleteAllImages($path, $format='jpg')
	{
		if (!$path || !$format || !is_dir($path))
			return false;
		foreach (scandir($path) as $file)
		{
			if (preg_match('/^[0-9]+(\-(.*))?\.'.$format.'$/', $file))
				unlink($path.$file);
			elseif (is_dir($path.$file) && (preg_match('/^[0-9]$/', $file)))
				self::deleteAllImages($path.$file.'/', $format);
		}
		
		// Can we remove the image folder?
		$remove_folder = true;
		foreach (scandir($path) as $file)
			if (($file != '.' && $file != '..'&& $file != 'index.php'))
			{
				$remove_folder = false;
				break;
			}

		if ($remove_folder)
		{
			// we're only removing index.php if it's a folder we want to delete
			if (file_exists($path.'index.php'))
				@unlink ($path.'index.php');
			@rmdir($path);	
		}
		
		return true;
	}
	
	/**
	 * Returns image path in the old or in the new filesystem
	 * 
	 * @ returns string image path
	 */
	public function getExistingImgPath()
	{
		if (!$this->id)
			return false;
			
		if (!$this->existing_path)
		{
			if (Configuration::get('PS_LEGACY_IMAGES') && file_exists(_PS_PROD_IMG_DIR_.$this->id_product.'-'.$this->id.'.'.$this->image_format))
				$this->existing_path = $this->id_product.'-'.$this->id;
			else
				$this->existing_path = $this->getImgPath();
		}

		return $this->existing_path;
	}
	
	/**
	 * Returns the path to the folder containing the image in the new filesystem
	 * 
	 * @return string path to folder
	 */
	public function getImgFolder()
	{
		if (!$this->id)
			return false;
			
		if (!$this->folder)		
			$this->folder = self::getImgFolderStatic($this->id);

		return $this->folder;
	}
	
	/**
	 * Create parent folders for the image in the new filesystem
	 * 
	 * @return bool success
	 */
	public function createImgFolder()
	{
		if (!$this->id)
			return false;

		if (!file_exists(_PS_PROD_IMG_DIR_.$this->getImgFolder()))
		{
			// Apparently sometimes mkdir cannot set the rights, and sometimes chmod can't. Trying both.
			$success = @mkdir(_PS_PROD_IMG_DIR_.$this->getImgFolder(), 0755, true) 
						|| @chmod(_PS_PROD_IMG_DIR_.$this->getImgFolder(), 0755);
			
			// Create an index.php file in the new folder
			if ($success 
				&& !file_exists(_PS_PROD_IMG_DIR_.$this->getImgFolder().'index.php')
				&& file_exists($this->source_index))
				return @copy($this->source_index, _PS_PROD_IMG_DIR_.$this->getImgFolder().'index.php');	
		}
		return true;
	}
	
	/**
	 * Returns the path to the image without file extension
	 * 
	 * @return string path
	 */
	public function getImgPath()
	{
		if (!$this->id)
			return false;
			
		$path = $this->getImgFolder().$this->id;
		return $path;
	}
	
	/**
	 * Returns the path to the folder containing the image in the new filesystem
	 *
	 * @param mixed $id_image
	 * @return string path to folder
	 */
	public static function getImgFolderStatic($id_image)
	{
		if (!is_numeric($id_image))
			return false;
		$folders = str_split((string)$id_image);
		return implode('/', $folders).'/';	
	}

	/**
	 * Move all legacy product image files from the image folder root to their subfolder in the new filesystem.
	 * If max_execution_time is provided, stops before timeout and returns string "timeout".
	 * If any image cannot be moved, stops and returns "false"
	 *
	 * @return mixed success or timeout
	 */
	public static function moveToNewFileSystem($max_execution_time = 0)
	{
		$start_time = time();
		$image = null;
		foreach (scandir(_PS_PROD_IMG_DIR_) as $file)
		{
			// matches the base product image or the thumbnails
			if (preg_match('/^([0-9]+\-)([0-9]+)(\-(.*))?\.jpg$/', $file, $matches))
			{
				// don't recreate an image object for each image type
				if (!$image || $image->id !== (int)$matches[2])
					$image = new Image((int)$matches[2]);
					
				if (Validate::isLoadedObject($image))
				{
					// create the new folder if it does not exist
					if (!$image->createImgFolder())
						return false;
					
					// move the image
					$new_path = _PS_PROD_IMG_DIR_.$image->getImgPath().(isset($matches[3]) ? $matches[3] : '').'.jpg';
					if (file_exists($new_path))
						return false;
					if (!@rename(_PS_PROD_IMG_DIR_.$file, $new_path) || !file_exists($new_path))
						return false;
				}
			}
			if ((int)$max_execution_time != 0 && (time() - $start_time > (int)$max_execution_time - 4))
				return 'timeout';
		}
		return true;
	}
	
	public static function testFileSystem()
	{
		$safe_mode = ini_get('safe_mode');
		if ($safe_mode)
			return false;
		$folder1 = _PS_PROD_IMG_DIR_.'testfilesystem/';
		$test_folder = $folder1.'testsubfolder/';
		if (file_exists($test_folder))
		{
			@rmdir($test_folder);
			@rmdir($folder1);
		}
		if (file_exists($test_folder))
			return false;
		@mkdir($test_folder, 0755, true);
		@chmod($test_folder, 0755);
		if (!is_writeable($test_folder))
			return false;
		@rmdir($test_folder);
		@rmdir($folder1);
		if (file_exists($folder1))
			return false;
		return true;
	}
	
	/**
	 * Returns the path where a product image should be created (without file format)
	 * 
	 * @return string path 
	 */
	public function getPathForCreation()
	{
		if (!$this->id)
			return false;
		if (Configuration::get('PS_LEGACY_IMAGES'))
		{
			if (!$this->id_product)
				return false;
			$path = $this->id_product.'-'.$this->id;
		} else
		{
			$path = $this->getImgPath();
			$this->createImgFolder();
		}
		return _PS_PROD_IMG_DIR_.$path;
	}
}
