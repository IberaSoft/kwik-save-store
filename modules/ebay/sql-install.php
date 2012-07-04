<?php

	// Init
	$sql = array();

	// Create Category Table in Database
	$sql[] = 'CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'ebay_category` (
			  `id_ebay_category` int(16) NOT NULL AUTO_INCREMENT,
			  `id_category_ref` int(16) NOT NULL,
			  `id_category_ref_parent` int(16) NOT NULL,
			  `id_country` int(16) NOT NULL,
			  `level` tinyint(1) NOT NULL,
			  `is_multi_sku` tinyint(1) NOT NULL,
			  `name` varchar(255) NOT NULL,
			  UNIQUE(`id_category_ref`),
			  PRIMARY KEY  (`id_ebay_category`)
		) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8;';


	// Create Configuration Table in Database
	$sql[] = 'CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'ebay_category_configuration` (
			  `id_ebay_category_configuration` int(16) NOT NULL AUTO_INCREMENT,
			  `id_country` int(16) NOT NULL,
			  `id_ebay_category` int(16) NOT NULL,
			  `id_category` int(16) NOT NULL,
			  `percent` double(10,2) NOT NULL,
			  `sync` tinyint(1) NOT NULL,
			  `date_add` datetime NOT NULL,
			  `date_upd` datetime NOT NULL,
			  PRIMARY KEY  (`id_ebay_category_configuration`),
			  KEY `id_ebay_category` (`id_ebay_category`),
			  KEY `id_category` (`id_category`)
		) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8;';


	// Create Category Table in Database
	$sql[] = 'CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'ebay_product` (
			  `id_ebay_product` int(16) NOT NULL AUTO_INCREMENT,
			  `id_country` int(16) NOT NULL,
		 	  `id_product` int(16) NOT NULL,
		 	  `id_attribute` int(16) NOT NULL,
			  `id_product_ref` varchar(32) NOT NULL,
			  `date_add` datetime NOT NULL,
			  `date_upd` datetime NOT NULL,
			  UNIQUE(`id_product_ref`),
			  PRIMARY KEY  (`id_ebay_product`),
			  KEY `id_product` (`id_product`)
		) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8;';



?>
