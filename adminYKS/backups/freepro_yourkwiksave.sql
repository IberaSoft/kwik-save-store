-- phpMyAdmin SQL Dump
-- version 3.4.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-12-2011 a las 15:25:12
-- Versión del servidor: 5.1.56
-- Versión de PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `freepro_yourkwiksave`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_access`
--

DROP TABLE IF EXISTS `ps_access`;
CREATE TABLE IF NOT EXISTS `ps_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_tab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_access`
--

INSERT INTO `ps_access` (`id_profile`, `id_tab`, `view`, `add`, `edit`, `delete`) VALUES
(1, 1, 1, 1, 1, 1),
(1, 2, 1, 1, 1, 1),
(1, 3, 1, 1, 1, 1),
(1, 4, 1, 1, 1, 1),
(1, 5, 1, 1, 1, 1),
(1, 6, 1, 1, 1, 1),
(1, 7, 1, 1, 1, 1),
(1, 8, 1, 1, 1, 1),
(1, 9, 1, 1, 1, 1),
(1, 10, 1, 1, 1, 1),
(1, 11, 1, 1, 1, 1),
(1, 12, 1, 1, 1, 1),
(1, 13, 1, 1, 1, 1),
(1, 14, 1, 1, 1, 1),
(1, 15, 1, 1, 1, 1),
(1, 16, 1, 1, 1, 1),
(1, 17, 1, 1, 1, 1),
(1, 18, 1, 1, 1, 1),
(1, 19, 1, 1, 1, 1),
(1, 20, 1, 1, 1, 1),
(1, 21, 1, 1, 1, 1),
(1, 22, 1, 1, 1, 1),
(1, 23, 1, 1, 1, 1),
(1, 24, 1, 1, 1, 1),
(1, 26, 1, 1, 1, 1),
(1, 27, 1, 1, 1, 1),
(1, 28, 1, 1, 1, 1),
(1, 29, 1, 1, 1, 1),
(1, 30, 1, 1, 1, 1),
(1, 31, 1, 1, 1, 1),
(1, 32, 1, 1, 1, 1),
(1, 33, 1, 1, 1, 1),
(1, 34, 1, 1, 1, 1),
(1, 35, 1, 1, 1, 1),
(1, 36, 1, 1, 1, 1),
(1, 37, 1, 1, 1, 1),
(1, 38, 1, 1, 1, 1),
(1, 39, 1, 1, 1, 1),
(1, 40, 1, 1, 1, 1),
(1, 41, 1, 1, 1, 1),
(1, 42, 1, 1, 1, 1),
(1, 43, 1, 1, 1, 1),
(1, 44, 1, 1, 1, 1),
(1, 46, 1, 1, 1, 1),
(1, 47, 1, 1, 1, 1),
(1, 48, 1, 1, 1, 1),
(1, 49, 1, 1, 1, 1),
(1, 51, 1, 1, 1, 1),
(1, 52, 1, 1, 1, 1),
(1, 53, 1, 1, 1, 1),
(1, 54, 1, 1, 1, 1),
(1, 55, 1, 1, 1, 1),
(1, 56, 1, 1, 1, 1),
(1, 57, 1, 1, 1, 1),
(1, 58, 1, 1, 1, 1),
(1, 59, 1, 1, 1, 1),
(1, 60, 1, 1, 1, 1),
(1, 61, 1, 1, 1, 1),
(1, 62, 1, 1, 1, 1),
(1, 63, 1, 1, 1, 1),
(1, 64, 1, 1, 1, 1),
(1, 65, 1, 1, 1, 1),
(1, 66, 1, 1, 1, 1),
(1, 67, 1, 1, 1, 1),
(1, 68, 1, 1, 1, 1),
(1, 69, 1, 1, 1, 1),
(1, 70, 1, 1, 1, 1),
(1, 71, 1, 1, 1, 1),
(1, 72, 1, 1, 1, 1),
(1, 73, 1, 1, 1, 1),
(1, 80, 1, 1, 1, 1),
(1, 81, 1, 1, 1, 1),
(1, 82, 1, 1, 1, 1),
(1, 83, 1, 1, 1, 1),
(1, 84, 1, 1, 1, 1),
(1, 85, 1, 1, 1, 1),
(1, 86, 1, 1, 1, 1),
(1, 87, 1, 1, 1, 1),
(1, 88, 1, 1, 1, 1),
(1, 89, 1, 1, 1, 1),
(1, 90, 1, 1, 1, 1),
(1, 91, 1, 1, 1, 1),
(2, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 1),
(2, 3, 1, 1, 1, 1),
(2, 4, 0, 0, 0, 0),
(2, 5, 1, 1, 1, 1),
(2, 6, 0, 0, 0, 0),
(2, 7, 0, 0, 0, 0),
(2, 8, 0, 0, 0, 0),
(2, 9, 0, 0, 0, 0),
(2, 10, 0, 0, 0, 0),
(2, 11, 0, 0, 0, 0),
(2, 12, 1, 1, 1, 1),
(2, 13, 1, 1, 1, 1),
(2, 14, 0, 0, 0, 0),
(2, 15, 0, 0, 0, 0),
(2, 16, 0, 0, 0, 0),
(2, 17, 1, 1, 1, 1),
(2, 18, 0, 0, 0, 0),
(2, 19, 0, 0, 0, 0),
(2, 20, 1, 1, 1, 1),
(2, 21, 1, 1, 1, 1),
(2, 22, 0, 0, 0, 0),
(2, 23, 0, 0, 0, 0),
(2, 24, 0, 0, 0, 0),
(2, 26, 0, 0, 0, 0),
(2, 27, 0, 0, 0, 0),
(2, 28, 0, 0, 0, 0),
(2, 29, 0, 0, 0, 0),
(2, 30, 0, 0, 0, 0),
(2, 31, 0, 0, 0, 0),
(2, 32, 0, 0, 0, 0),
(2, 33, 0, 0, 0, 0),
(2, 34, 1, 1, 1, 1),
(2, 35, 0, 0, 0, 0),
(2, 36, 0, 0, 0, 0),
(2, 37, 0, 0, 0, 0),
(2, 38, 0, 0, 0, 0),
(2, 39, 0, 0, 0, 0),
(2, 40, 0, 0, 0, 0),
(2, 41, 0, 0, 0, 0),
(2, 42, 1, 1, 1, 1),
(2, 43, 0, 0, 0, 0),
(2, 44, 0, 0, 0, 0),
(2, 46, 0, 0, 0, 0),
(2, 47, 1, 1, 1, 1),
(2, 48, 0, 0, 0, 0),
(2, 49, 1, 1, 1, 1),
(2, 51, 0, 0, 0, 0),
(2, 52, 0, 0, 0, 0),
(2, 53, 0, 0, 0, 0),
(2, 54, 0, 0, 0, 0),
(2, 55, 1, 1, 1, 1),
(2, 56, 0, 0, 0, 0),
(2, 57, 0, 0, 0, 0),
(2, 58, 0, 0, 0, 0),
(2, 59, 1, 1, 1, 1),
(2, 60, 1, 1, 1, 1),
(2, 61, 0, 0, 0, 0),
(2, 62, 0, 0, 0, 0),
(2, 63, 0, 0, 0, 0),
(2, 64, 0, 0, 0, 0),
(2, 65, 0, 0, 0, 0),
(2, 66, 0, 0, 0, 0),
(2, 67, 0, 0, 0, 0),
(2, 68, 0, 0, 0, 0),
(2, 69, 0, 0, 0, 0),
(2, 70, 0, 0, 0, 0),
(2, 71, 0, 0, 0, 0),
(2, 72, 0, 0, 0, 0),
(2, 73, 1, 1, 1, 1),
(2, 80, 0, 0, 0, 0),
(2, 81, 0, 0, 0, 0),
(2, 82, 0, 0, 0, 0),
(2, 83, 0, 0, 0, 0),
(2, 84, 0, 0, 0, 0),
(2, 85, 0, 0, 0, 0),
(2, 86, 0, 0, 0, 0),
(2, 87, 0, 0, 0, 0),
(2, 88, 1, 1, 1, 1),
(2, 90, 0, 0, 0, 0),
(2, 91, 0, 0, 0, 0),
(3, 1, 1, 1, 1, 1),
(3, 2, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0),
(3, 4, 0, 0, 0, 0),
(3, 5, 0, 0, 0, 0),
(3, 6, 0, 0, 0, 0),
(3, 7, 0, 0, 0, 0),
(3, 8, 0, 0, 0, 0),
(3, 9, 1, 0, 0, 0),
(3, 10, 0, 0, 0, 0),
(3, 11, 0, 0, 0, 0),
(3, 12, 0, 0, 0, 0),
(3, 13, 0, 0, 0, 0),
(3, 14, 0, 0, 0, 0),
(3, 15, 0, 0, 0, 0),
(3, 16, 0, 0, 0, 0),
(3, 17, 0, 0, 0, 0),
(3, 18, 0, 0, 0, 0),
(3, 19, 0, 0, 0, 0),
(3, 20, 0, 0, 0, 0),
(3, 21, 0, 0, 0, 0),
(3, 22, 0, 0, 0, 0),
(3, 23, 0, 0, 0, 0),
(3, 24, 0, 0, 0, 0),
(3, 26, 0, 0, 0, 0),
(3, 27, 0, 0, 0, 0),
(3, 28, 0, 0, 0, 0),
(3, 29, 0, 0, 0, 0),
(3, 30, 0, 0, 0, 0),
(3, 31, 0, 0, 0, 0),
(3, 32, 1, 1, 1, 1),
(3, 33, 1, 1, 1, 1),
(3, 34, 0, 0, 0, 0),
(3, 35, 0, 0, 0, 0),
(3, 36, 0, 0, 0, 0),
(3, 37, 0, 0, 0, 0),
(3, 38, 0, 0, 0, 0),
(3, 39, 0, 0, 0, 0),
(3, 40, 0, 0, 0, 0),
(3, 41, 0, 0, 0, 0),
(3, 42, 0, 0, 0, 0),
(3, 43, 1, 0, 0, 0),
(3, 44, 0, 0, 0, 0),
(3, 46, 0, 0, 0, 0),
(3, 47, 0, 0, 0, 0),
(3, 48, 0, 0, 0, 0),
(3, 49, 0, 0, 0, 0),
(3, 51, 0, 0, 0, 0),
(3, 52, 0, 0, 0, 0),
(3, 53, 0, 0, 0, 0),
(3, 54, 0, 0, 0, 0),
(3, 55, 0, 0, 0, 0),
(3, 56, 0, 0, 0, 0),
(3, 57, 1, 1, 1, 1),
(3, 58, 0, 0, 0, 0),
(3, 59, 0, 0, 0, 0),
(3, 60, 0, 0, 0, 0),
(3, 61, 0, 0, 0, 0),
(3, 62, 0, 0, 0, 0),
(3, 63, 0, 0, 0, 0),
(3, 64, 0, 0, 0, 0),
(3, 65, 0, 0, 0, 0),
(3, 66, 0, 0, 0, 0),
(3, 67, 0, 0, 0, 0),
(3, 68, 0, 0, 0, 0),
(3, 69, 0, 0, 0, 0),
(3, 70, 0, 0, 0, 0),
(3, 71, 0, 0, 0, 0),
(3, 72, 0, 0, 0, 0),
(3, 73, 0, 0, 0, 0),
(3, 80, 0, 0, 0, 0),
(3, 81, 0, 0, 0, 0),
(3, 82, 0, 0, 0, 0),
(3, 83, 0, 0, 0, 0),
(3, 84, 0, 0, 0, 0),
(3, 85, 0, 0, 0, 0),
(3, 86, 0, 0, 0, 0),
(3, 87, 0, 0, 0, 0),
(3, 88, 1, 1, 1, 1),
(3, 90, 0, 0, 0, 0),
(3, 91, 0, 0, 0, 0),
(4, 1, 1, 1, 1, 1),
(4, 2, 1, 1, 1, 1),
(4, 3, 1, 1, 1, 1),
(4, 4, 1, 1, 1, 1),
(4, 5, 1, 1, 1, 1),
(4, 6, 1, 1, 1, 1),
(4, 7, 0, 0, 0, 0),
(4, 8, 1, 0, 1, 0),
(4, 9, 1, 0, 0, 0),
(4, 10, 1, 1, 1, 1),
(4, 11, 1, 1, 1, 1),
(4, 12, 1, 1, 1, 1),
(4, 13, 1, 1, 1, 1),
(4, 14, 1, 1, 1, 1),
(4, 15, 1, 1, 1, 1),
(4, 16, 1, 1, 1, 1),
(4, 17, 1, 1, 1, 1),
(4, 18, 1, 1, 1, 1),
(4, 19, 1, 1, 1, 1),
(4, 20, 1, 1, 1, 1),
(4, 21, 1, 1, 1, 1),
(4, 22, 0, 0, 0, 0),
(4, 23, 0, 0, 0, 0),
(4, 24, 0, 0, 0, 0),
(4, 26, 0, 0, 0, 0),
(4, 27, 0, 0, 0, 0),
(4, 28, 1, 1, 1, 1),
(4, 29, 1, 0, 0, 0),
(4, 30, 0, 0, 0, 0),
(4, 31, 0, 0, 0, 0),
(4, 32, 1, 0, 1, 0),
(4, 33, 1, 0, 1, 0),
(4, 34, 1, 1, 1, 1),
(4, 35, 0, 0, 0, 0),
(4, 36, 1, 1, 1, 1),
(4, 37, 1, 1, 1, 1),
(4, 38, 0, 0, 0, 0),
(4, 39, 1, 0, 1, 0),
(4, 40, 1, 1, 1, 1),
(4, 41, 0, 0, 0, 0),
(4, 42, 1, 1, 1, 1),
(4, 43, 1, 0, 0, 0),
(4, 44, 0, 0, 0, 0),
(4, 46, 1, 1, 1, 1),
(4, 47, 1, 1, 1, 1),
(4, 48, 1, 1, 1, 1),
(4, 49, 1, 1, 1, 1),
(4, 51, 1, 1, 1, 1),
(4, 52, 0, 0, 0, 0),
(4, 53, 0, 0, 0, 0),
(4, 54, 1, 1, 1, 1),
(4, 55, 1, 1, 1, 1),
(4, 56, 0, 0, 0, 0),
(4, 57, 0, 0, 0, 0),
(4, 58, 1, 1, 1, 1),
(4, 59, 1, 1, 1, 1),
(4, 60, 1, 1, 1, 1),
(4, 61, 1, 1, 1, 1),
(4, 62, 1, 1, 1, 1),
(4, 63, 1, 1, 1, 1),
(4, 64, 0, 0, 0, 0),
(4, 65, 1, 1, 1, 1),
(4, 66, 1, 1, 1, 1),
(4, 67, 0, 0, 0, 0),
(4, 68, 1, 1, 1, 1),
(4, 69, 0, 0, 0, 0),
(4, 70, 0, 0, 0, 0),
(4, 71, 1, 0, 0, 0),
(4, 72, 0, 0, 0, 0),
(4, 73, 1, 1, 1, 1),
(4, 80, 0, 0, 0, 0),
(4, 81, 0, 0, 0, 0),
(4, 82, 1, 1, 1, 1),
(4, 83, 0, 0, 0, 0),
(4, 84, 0, 0, 0, 0),
(4, 85, 1, 1, 1, 1),
(4, 86, 0, 0, 0, 0),
(4, 87, 1, 1, 1, 1),
(4, 88, 1, 1, 1, 1),
(4, 90, 0, 0, 0, 0),
(4, 91, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_accessory`
--

DROP TABLE IF EXISTS `ps_accessory`;
CREATE TABLE IF NOT EXISTS `ps_accessory` (
  `id_product_1` int(10) unsigned NOT NULL,
  `id_product_2` int(10) unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_address`
--

DROP TABLE IF EXISTS `ps_address`;
CREATE TABLE IF NOT EXISTS `ps_address` (
  `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(16) DEFAULT NULL,
  `phone_mobile` varchar(16) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ps_address`
--

INSERT INTO `ps_address` (`id_address`, `id_country`, `id_state`, `id_customer`, `id_manufacturer`, `id_supplier`, `alias`, `company`, `lastname`, `firstname`, `address1`, `address2`, `postcode`, `city`, `other`, `phone`, `phone_mobile`, `vat_number`, `dni`, `date_add`, `date_upd`, `active`, `deleted`) VALUES
(2, 8, 0, 1, 0, 0, 'Mon adresse', 'My Company', 'DOE', 'John', '16, Main street', '2nd floor', '75000', 'Paris ', NULL, '0102030405', NULL, NULL, NULL, '2011-09-05 03:03:32', '2011-09-05 03:03:32', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_address_format`
--

DROP TABLE IF EXISTS `ps_address_format`;
CREATE TABLE IF NOT EXISTS `ps_address_format` (
  `id_country` int(10) unsigned NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT '',
  KEY `country` (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_address_format`
--

INSERT INTO `ps_address_format` (`id_country`, `format`) VALUES
(1, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(2, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(3, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(6, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(7, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(8, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(9, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(10, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(12, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(13, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(14, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(15, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(16, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(17, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(18, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(20, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(23, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(26, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(36, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(37, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(76, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(86, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(125, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(130, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(131, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(139, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(143, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(193, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(216, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(233, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(236, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(4, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(21, 'firstname lastname\ncompany\naddress1 address2\ncity, State:name postcode\nCountry:name\nphone'),
(39, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(43, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(48, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(51, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(55, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(145, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(223, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(224, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(5, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(11, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(22, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(25, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(28, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(29, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(45, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(47, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(49, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(50, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(56, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(59, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(61, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(63, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(80, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(93, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(110, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(111, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(112, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(113, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(117, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(118, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(121, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(122, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(123, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(124, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(126, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(132, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(136, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(137, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(149, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(156, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(164, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(165, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(167, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(172, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(175, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(188, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(197, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(202, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(203, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(204, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(206, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(212, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(217, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(219, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(222, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(227, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(231, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(238, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(239, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(30, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(31, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(32, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(33, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(35, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(38, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(41, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(54, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(57, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(60, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(62, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(64, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(65, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(66, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(67, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(70, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(71, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(72, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(77, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(82, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(84, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(85, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(87, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(91, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(92, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(94, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(102, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(103, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(119, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(127, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(128, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(129, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(134, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(135, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(138, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(142, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(144, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(152, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(153, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(154, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(160, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(176, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(178, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(187, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(189, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(191, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(192, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(195, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(198, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(201, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(205, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(210, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(215, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(226, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(228, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(229, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(24, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(27, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(90, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(106, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(140, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(146, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(155, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(158, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(161, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(162, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(163, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(166, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(169, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(173, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(185, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(194, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(207, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(208, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(214, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(220, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(225, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(232, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(234, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(235, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(240, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(242, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(243, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(34, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(44, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(58, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(68, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(69, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(81, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(104, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(170, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(171, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(209, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(218, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(221, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(241, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(19, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(40, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(52, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(74, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(89, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(96, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(97, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(101, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(107, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(109, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(114, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(116, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(120, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(133, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(147, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(148, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(150, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(177, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(186, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(190, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(200, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(211, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(230, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(244, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(42, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(46, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(53, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(73, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(75, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(78, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(79, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(83, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(88, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(95, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(98, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(99, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(100, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(105, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(108, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(115, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(141, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(151, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(157, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(159, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(168, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(174, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(179, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(180, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(181, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(182, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(183, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(184, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(196, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(199, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(213, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),
(237, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_alias`
--

DROP TABLE IF EXISTS `ps_alias`;
CREATE TABLE IF NOT EXISTS `ps_alias` (
  `id_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `ps_alias`
--

INSERT INTO `ps_alias` (`id_alias`, `alias`, `search`, `active`) VALUES
(3, 'ipdo', 'ipod', 1),
(4, 'piod', 'ipod', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_attachment`
--

DROP TABLE IF EXISTS `ps_attachment`;
CREATE TABLE IF NOT EXISTS `ps_attachment` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `mime` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_attachment_lang`
--

DROP TABLE IF EXISTS `ps_attachment_lang`;
CREATE TABLE IF NOT EXISTS `ps_attachment_lang` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_attribute`
--

DROP TABLE IF EXISTS `ps_attribute`;
CREATE TABLE IF NOT EXISTS `ps_attribute` (
  `id_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_attribute_group` int(10) unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_attribute_group`
--

DROP TABLE IF EXISTS `ps_attribute_group`;
CREATE TABLE IF NOT EXISTS `ps_attribute_group` (
  `id_attribute_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_attribute_group_lang`
--

DROP TABLE IF EXISTS `ps_attribute_group_lang`;
CREATE TABLE IF NOT EXISTS `ps_attribute_group_lang` (
  `id_attribute_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_attribute_impact`
--

DROP TABLE IF EXISTS `ps_attribute_impact`;
CREATE TABLE IF NOT EXISTS `ps_attribute_impact` (
  `id_attribute_impact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_attribute` int(11) unsigned NOT NULL,
  `weight` float NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_attribute_lang`
--

DROP TABLE IF EXISTS `ps_attribute_lang`;
CREATE TABLE IF NOT EXISTS `ps_attribute_lang` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_carrier`
--

DROP TABLE IF EXISTS `ps_carrier`;
CREATE TABLE IF NOT EXISTS `ps_carrier` (
  `id_carrier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tax_rules_group` int(10) unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `need_range` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ps_carrier`
--

INSERT INTO `ps_carrier` (`id_carrier`, `id_tax_rules_group`, `name`, `url`, `active`, `deleted`, `shipping_handling`, `range_behavior`, `is_module`, `is_free`, `shipping_external`, `need_range`, `external_module_name`, `shipping_method`) VALUES
(1, 0, '0', NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(2, 1, 'My carrier', NULL, 1, 0, 1, 0, 0, 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_carrier_group`
--

DROP TABLE IF EXISTS `ps_carrier_group`;
CREATE TABLE IF NOT EXISTS `ps_carrier_group` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  UNIQUE KEY `id_carrier` (`id_carrier`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_carrier_group`
--

INSERT INTO `ps_carrier_group` (`id_carrier`, `id_group`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_carrier_lang`
--

DROP TABLE IF EXISTS `ps_carrier_lang`;
CREATE TABLE IF NOT EXISTS `ps_carrier_lang` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `delay` varchar(128) DEFAULT NULL,
  UNIQUE KEY `shipper_lang_index` (`id_lang`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_carrier_lang`
--

INSERT INTO `ps_carrier_lang` (`id_carrier`, `id_lang`, `delay`) VALUES
(1, 1, 'Pick up in-store'),
(2, 1, 'Delivery next day!'),
(1, 2, 'Retrait au magasin'),
(2, 2, 'Livraison le lendemain !'),
(1, 3, 'Recogida en la tienda'),
(2, 3, '¡Entrega día siguiente!'),
(1, 4, 'Abholung im Geschäft'),
(2, 4, 'Zustellung am nächsten Tag!'),
(1, 5, 'Ritiro in magazzino'),
(2, 5, 'Consegna il giorno dopo!'),
(1, 6, 'Pick up in-store'),
(2, 6, 'Delivery next day!'),
(1, 7, 'Pick up in-store'),
(2, 7, 'Delivery next day!'),
(1, 8, 'Pick up in-store'),
(2, 8, 'Delivery next day!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_carrier_zone`
--

DROP TABLE IF EXISTS `ps_carrier_zone`;
CREATE TABLE IF NOT EXISTS `ps_carrier_zone` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_carrier_zone`
--

INSERT INTO `ps_carrier_zone` (`id_carrier`, `id_zone`) VALUES
(1, 1),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cart`
--

DROP TABLE IF EXISTS `ps_cart`;
CREATE TABLE IF NOT EXISTS `ps_cart` (
  `id_cart` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `ps_cart`
--

INSERT INTO `ps_cart` (`id_cart`, `id_carrier`, `id_lang`, `id_address_delivery`, `id_address_invoice`, `id_currency`, `id_customer`, `id_guest`, `secure_key`, `recyclable`, `gift`, `gift_message`, `date_add`, `date_upd`) VALUES
(1, 2, 2, 6, 6, 1, 1, 1, '-1', 1, 0, NULL, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(2, 0, 1, 0, 0, 1, 0, 4, '', 1, 0, NULL, '2011-09-06 16:30:54', '2011-09-06 16:31:31'),
(3, 0, 1, 0, 0, 1, 0, 2, '', 1, 0, NULL, '2011-09-09 14:39:50', '2011-09-13 21:48:51'),
(4, 0, 1, 0, 0, 1, 0, 16, '', 1, 0, NULL, '2011-09-12 13:32:16', '2011-09-12 18:18:28'),
(5, 0, 1, 0, 0, 1, 0, 18, '', 1, 0, NULL, '2011-09-12 19:13:18', '2011-09-12 19:13:18'),
(6, 0, 1, 0, 0, 1, 0, 19, '', 1, 0, NULL, '2011-09-13 15:59:08', '2011-09-13 15:59:14'),
(7, 0, 1, 0, 0, 1, 0, 20, '', 1, 0, NULL, '2011-09-13 21:58:00', '2011-09-13 21:58:01'),
(8, 0, 1, 0, 0, 1, 0, 22, '', 1, 0, NULL, '2011-09-14 00:38:24', '2011-09-14 00:38:24'),
(9, 0, 1, 0, 0, 1, 0, 8, '', 1, 0, NULL, '2011-09-14 23:34:12', '2011-09-14 23:34:12'),
(10, 0, 1, 0, 0, 1, 0, 40, '', 1, 0, NULL, '2011-09-15 08:38:13', '2011-09-15 10:09:47'),
(11, 0, 1, 0, 0, 1, 0, 42, '', 1, 0, NULL, '2011-09-15 15:18:41', '2011-09-16 14:16:54'),
(12, 0, 1, 0, 0, 1, 0, 55, '', 1, 0, NULL, '2011-09-16 18:41:48', '2011-09-16 18:43:32'),
(13, 0, 1, 0, 0, 1, 0, 57, '', 1, 0, NULL, '2011-09-17 11:16:07', '2011-09-19 22:54:03'),
(14, 0, 1, 0, 0, 1, 0, 60, '', 1, 0, NULL, '2011-09-18 19:19:52', '2011-09-18 19:20:52'),
(15, 0, 1, 0, 0, 1, 0, 96, '', 1, 0, NULL, '2011-09-29 12:27:25', '2011-09-29 13:08:23'),
(16, 0, 1, 0, 0, 1, 0, 135, '', 1, 0, NULL, '2011-10-06 17:47:53', '2011-10-06 17:47:53'),
(17, 0, 1, 0, 0, 1, 0, 201, '', 1, 0, NULL, '2011-10-18 12:20:21', '2011-10-18 12:20:21'),
(18, 0, 1, 0, 0, 1, 0, 215, '', 1, 0, '', '2011-12-13 23:43:43', '2011-12-13 23:43:52'),
(19, 0, 1, 0, 0, 1, 0, 217, '', 1, 0, '', '2011-12-14 09:36:51', '2011-12-14 09:37:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cart_discount`
--

DROP TABLE IF EXISTS `ps_cart_discount`;
CREATE TABLE IF NOT EXISTS `ps_cart_discount` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_discount` int(10) unsigned NOT NULL,
  KEY `cart_discount_index` (`id_cart`,`id_discount`),
  KEY `id_discount` (`id_discount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cart_product`
--

DROP TABLE IF EXISTS `ps_cart_product`;
CREATE TABLE IF NOT EXISTS `ps_cart_product` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  KEY `cart_product_index` (`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_cart_product`
--

INSERT INTO `ps_cart_product` (`id_cart`, `id_product`, `id_product_attribute`, `quantity`, `date_add`) VALUES
(4, 10, 0, 2, '2011-09-12 11:18:28'),
(5, 10, 0, 1, '2011-09-12 19:13:18'),
(6, 10, 0, 1, '2011-09-13 15:59:08'),
(6, 11, 0, 1, '2011-09-13 15:59:14'),
(7, 10, 0, 1, '2011-09-13 21:58:01'),
(8, 10, 0, 1, '2011-09-14 00:38:24'),
(9, 10, 0, 1, '2011-09-14 23:34:12'),
(11, 10, 0, 4, '2011-09-16 07:16:54'),
(12, 10, 0, 2, '2011-09-16 11:43:32'),
(13, 10, 0, 2, '2011-09-19 15:54:03'),
(14, 10, 0, 3, '2011-09-18 12:20:52'),
(15, 10, 0, 2, '2011-09-29 06:08:23'),
(16, 12, 0, 1, '2011-10-06 17:47:53'),
(17, 14, 0, 1, '2011-10-18 12:20:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_category`
--

DROP TABLE IF EXISTS `ps_category`;
CREATE TABLE IF NOT EXISTS `ps_category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nleft` int(10) unsigned NOT NULL DEFAULT '0',
  `nright` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`),
  KEY `nleftright` (`nleft`,`nright`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Volcado de datos para la tabla `ps_category`
--

INSERT INTO `ps_category` (`id_category`, `id_parent`, `level_depth`, `nleft`, `nright`, `active`, `date_add`, `date_upd`, `position`) VALUES
(1, 0, 0, 1, 218, 1, '2011-09-05 03:03:32', '2011-09-05 03:03:32', 0),
(2, 1, 1, 2, 17, 1, '2011-09-05 03:03:32', '2011-09-18 13:39:33', 0),
(3, 1, 1, 18, 39, 1, '2011-09-05 03:03:32', '2011-09-18 13:43:37', 1),
(4, 1, 1, 40, 61, 1, '2011-09-05 03:03:32', '2011-09-19 12:15:37', 2),
(5, 1, 1, 62, 93, 1, '2011-09-05 19:24:00', '2011-09-18 13:50:36', 3),
(6, 1, 1, 94, 103, 1, '2011-09-05 19:24:34', '2011-09-18 14:11:44', 4),
(7, 1, 1, 104, 133, 1, '2011-09-05 19:25:16', '2011-10-05 15:08:28', 5),
(8, 1, 1, 134, 165, 1, '2011-09-05 19:25:47', '2011-09-19 11:10:45', 6),
(9, 1, 1, 166, 179, 1, '2011-09-05 19:26:17', '2011-09-19 11:13:15', 7),
(10, 1, 1, 180, 199, 1, '2011-09-05 19:26:39', '2011-09-18 14:06:19', 8),
(11, 1, 1, 200, 217, 1, '2011-09-05 19:27:04', '2011-09-18 14:09:14', 9),
(12, 2, 2, 3, 4, 1, '2011-09-07 16:41:54', '2011-09-15 18:17:02', 0),
(13, 2, 2, 5, 6, 1, '2011-09-07 16:42:36', '2011-09-19 12:03:21', 1),
(14, 2, 2, 7, 8, 1, '2011-09-07 16:44:30', '2011-09-17 13:38:17', 2),
(16, 3, 2, 19, 20, 1, '2011-09-07 16:52:52', '2011-09-19 12:09:11', 0),
(17, 3, 2, 21, 22, 1, '2011-09-07 16:53:23', '2011-09-17 13:58:10', 2),
(18, 3, 2, 23, 24, 1, '2011-09-07 16:53:50', '2011-09-19 12:10:48', 5),
(19, 4, 2, 41, 42, 1, '2011-09-07 16:56:07', '2011-09-19 12:17:32', 0),
(20, 4, 2, 43, 44, 1, '2011-09-07 16:58:08', '2011-09-19 12:17:58', 1),
(21, 4, 2, 45, 46, 1, '2011-09-07 16:59:08', '2011-09-19 12:18:41', 2),
(22, 4, 2, 47, 48, 1, '2011-09-07 16:59:40', '2011-10-05 15:07:00', 5),
(23, 4, 2, 49, 50, 1, '2011-09-07 17:00:09', '2011-09-07 17:00:09', 3),
(24, 4, 2, 51, 52, 1, '2011-09-07 17:00:54', '2011-09-19 12:21:05', 4),
(25, 5, 2, 63, 64, 1, '2011-09-07 17:01:54', '2011-09-19 12:30:17', 4),
(26, 5, 2, 65, 66, 1, '2011-09-07 17:02:28', '2011-09-07 17:02:28', 0),
(27, 5, 2, 67, 68, 1, '2011-09-07 17:03:07', '2011-09-07 17:03:07', 1),
(28, 5, 2, 69, 70, 1, '2011-09-07 17:03:42', '2011-09-07 17:03:42', 2),
(29, 5, 2, 71, 72, 1, '2011-09-07 17:04:16', '2011-09-07 17:04:16', 3),
(30, 5, 2, 73, 74, 1, '2011-09-07 17:04:45', '2011-09-07 17:04:45', 5),
(31, 6, 2, 95, 96, 1, '2011-09-07 17:05:55', '2011-09-19 12:39:21', 0),
(32, 6, 2, 97, 98, 1, '2011-09-07 17:07:06', '2011-09-19 12:39:54', 1),
(34, 6, 2, 99, 100, 1, '2011-09-07 17:08:55', '2011-09-07 17:08:55', 2),
(36, 6, 2, 101, 102, 1, '2011-09-07 17:09:47', '2011-09-07 17:09:47', 3),
(37, 7, 2, 105, 106, 1, '2011-09-07 17:10:30', '2011-09-07 17:10:30', 0),
(38, 7, 2, 107, 108, 1, '2011-09-07 17:10:55', '2011-09-07 17:10:55', 1),
(39, 7, 2, 109, 110, 1, '2011-09-07 17:11:24', '2011-09-07 17:11:24', 2),
(40, 7, 2, 111, 112, 1, '2011-09-07 17:20:07', '2011-09-07 17:20:07', 3),
(41, 7, 2, 113, 114, 1, '2011-09-07 17:20:38', '2011-09-07 17:20:38', 4),
(42, 7, 2, 115, 116, 1, '2011-09-07 17:21:01', '2011-09-07 17:21:01', 5),
(43, 10, 2, 181, 182, 1, '2011-09-07 17:21:55', '2011-09-07 17:21:55', 0),
(44, 10, 2, 183, 184, 1, '2011-09-07 17:22:15', '2011-09-07 17:22:15', 1),
(45, 10, 2, 185, 186, 1, '2011-09-07 17:22:33', '2011-09-19 13:16:04', 2),
(46, 10, 2, 187, 188, 1, '2011-09-07 17:22:53', '2011-09-07 17:22:53', 3),
(47, 10, 2, 189, 190, 1, '2011-09-07 17:23:19', '2011-10-05 15:12:19', 4),
(48, 10, 2, 191, 192, 1, '2011-09-07 17:23:44', '2011-09-07 17:23:44', 5),
(49, 11, 2, 201, 202, 1, '2011-09-07 17:24:20', '2011-09-07 17:24:20', 0),
(50, 11, 2, 203, 204, 1, '2011-09-07 17:24:42', '2011-09-07 17:24:42', 1),
(51, 11, 2, 205, 206, 1, '2011-09-07 17:25:00', '2011-09-19 13:20:40', 2),
(52, 11, 2, 207, 208, 1, '2011-09-07 17:25:25', '2011-09-07 17:25:25', 3),
(53, 11, 2, 209, 210, 1, '2011-09-07 17:25:53', '2011-09-19 13:19:41', 4),
(54, 11, 2, 211, 212, 1, '2011-09-07 17:26:13', '2011-09-07 17:26:13', 5),
(55, 9, 2, 167, 168, 1, '2011-09-07 17:27:29', '2011-09-19 13:03:08', 0),
(56, 9, 2, 169, 170, 1, '2011-09-07 17:27:51', '2011-09-19 13:03:41', 1),
(57, 9, 2, 171, 172, 1, '2011-09-07 17:28:13', '2011-09-19 13:07:34', 2),
(58, 9, 2, 173, 174, 1, '2011-09-07 17:28:33', '2011-09-19 13:08:47', 3),
(59, 8, 2, 135, 136, 1, '2011-09-07 17:29:23', '2011-09-07 17:29:23', 0),
(60, 8, 2, 137, 138, 1, '2011-09-07 17:30:12', '2011-09-07 17:30:12', 1),
(61, 8, 2, 139, 140, 1, '2011-09-07 17:30:47', '2011-09-19 12:51:55', 2),
(62, 8, 2, 141, 142, 1, '2011-09-07 17:31:10', '2011-09-07 17:31:10', 3),
(63, 8, 2, 143, 144, 1, '2011-09-07 17:31:30', '2011-09-07 17:31:30', 4),
(64, 8, 2, 145, 146, 1, '2011-09-07 17:32:00', '2011-09-07 17:32:00', 5),
(65, 8, 2, 147, 148, 1, '2011-09-07 17:32:32', '2011-09-07 17:32:32', 6),
(66, 8, 2, 149, 150, 1, '2011-09-07 17:33:00', '2011-09-19 12:53:18', 7),
(67, 3, 2, 25, 26, 1, '2011-09-10 20:31:35', '2011-09-10 20:31:35', 1),
(68, 3, 2, 27, 28, 1, '2011-09-10 20:32:41', '2011-09-19 12:10:21', 3),
(69, 3, 2, 29, 30, 1, '2011-09-15 18:20:19', '2011-09-19 12:11:33', 6),
(70, 2, 2, 9, 10, 1, '2011-09-17 13:35:24', '2011-09-17 13:37:39', 3),
(74, 2, 2, 11, 12, 1, '2011-09-17 13:38:47', '2011-09-17 13:51:59', 4),
(75, 2, 2, 13, 14, 1, '2011-09-17 13:49:41', '2011-09-19 12:05:14', 5),
(76, 3, 2, 31, 32, 1, '2011-09-17 13:56:08', '2011-09-17 13:56:08', 8),
(77, 3, 2, 33, 34, 1, '2011-09-17 13:56:47', '2011-09-17 13:56:47', 9),
(78, 3, 2, 35, 36, 1, '2011-09-17 13:57:40', '2011-09-17 13:57:40', 4),
(79, 3, 2, 37, 38, 1, '2011-09-17 13:58:38', '2011-09-19 12:12:11', 7),
(80, 4, 2, 53, 54, 1, '2011-09-19 12:22:41', '2011-09-19 12:22:41', 6),
(81, 4, 2, 55, 56, 1, '2011-09-19 12:23:28', '2011-09-19 12:23:28', 7),
(82, 4, 2, 57, 58, 1, '2011-09-19 12:23:53', '2011-09-19 12:23:53', 8),
(83, 4, 2, 59, 60, 1, '2011-09-19 12:24:52', '2011-09-19 12:24:52', 9),
(84, 5, 2, 75, 76, 1, '2011-09-19 12:29:37', '2011-09-19 12:29:37', 6),
(85, 5, 2, 77, 78, 1, '2011-09-19 12:30:50', '2011-09-19 12:30:50', 7),
(86, 5, 2, 79, 80, 1, '2011-09-19 12:31:26', '2011-09-19 12:31:26', 8),
(87, 5, 2, 81, 82, 1, '2011-09-19 12:31:54', '2011-09-19 12:31:54', 9),
(88, 5, 2, 83, 84, 1, '2011-09-19 12:32:56', '2011-09-19 12:32:56', 10),
(89, 5, 2, 85, 86, 1, '2011-09-19 12:34:07', '2011-09-19 12:34:07', 11),
(90, 5, 2, 87, 88, 1, '2011-09-19 12:35:08', '2011-09-19 12:35:08', 12),
(91, 5, 2, 89, 90, 1, '2011-09-19 12:35:52', '2011-09-19 12:35:52', 13),
(92, 5, 2, 91, 92, 1, '2011-09-19 12:36:23', '2011-09-19 12:36:23', 14),
(93, 7, 2, 117, 118, 1, '2011-09-19 12:43:51', '2011-09-19 12:43:51', 6),
(94, 7, 2, 119, 120, 1, '2011-09-19 12:44:31', '2011-09-19 12:44:31', 7),
(95, 7, 2, 121, 122, 1, '2011-09-19 12:45:04', '2011-09-19 12:45:04', 8),
(96, 7, 2, 123, 124, 1, '2011-09-19 12:46:11', '2011-10-05 15:10:41', 9),
(97, 7, 2, 125, 126, 1, '2011-09-19 12:47:18', '2011-09-19 12:47:18', 10),
(98, 7, 2, 127, 128, 1, '2011-09-19 12:47:50', '2011-09-19 12:47:50', 11),
(99, 7, 2, 129, 130, 1, '2011-09-19 12:48:30', '2011-09-19 12:48:30', 12),
(100, 7, 2, 131, 132, 1, '2011-09-19 12:48:57', '2011-09-19 12:48:57', 13),
(101, 8, 2, 151, 152, 1, '2011-09-19 12:54:54', '2011-09-19 12:54:54', 8),
(102, 8, 2, 153, 154, 1, '2011-09-19 12:55:51', '2011-09-19 12:55:51', 9),
(103, 8, 2, 155, 156, 1, '2011-09-19 12:56:19', '2011-09-19 12:56:19', 10),
(104, 8, 2, 157, 158, 1, '2011-09-19 12:58:30', '2011-09-19 12:58:30', 11),
(105, 8, 2, 159, 160, 1, '2011-09-19 12:59:48', '2011-09-19 12:59:48', 12),
(106, 8, 2, 161, 162, 1, '2011-09-19 13:00:10', '2011-09-19 13:00:10', 13),
(107, 8, 2, 163, 164, 1, '2011-09-19 13:00:41', '2011-09-19 13:00:41', 14),
(108, 9, 2, 175, 176, 1, '2011-09-19 13:09:45', '2011-09-19 13:09:45', 4),
(109, 9, 2, 177, 178, 1, '2011-09-19 13:10:21', '2011-09-19 13:10:21', 5),
(110, 10, 2, 193, 194, 1, '2011-09-19 13:16:31', '2011-09-19 13:16:31', 6),
(111, 10, 2, 195, 196, 1, '2011-09-19 13:17:29', '2011-09-19 13:17:29', 7),
(112, 10, 2, 197, 198, 1, '2011-09-19 13:18:18', '2011-09-19 13:18:18', 8),
(113, 11, 2, 213, 214, 1, '2011-09-19 13:21:29', '2011-09-19 13:21:29', 6),
(114, 11, 2, 215, 216, 1, '2011-09-19 13:21:46', '2011-09-19 13:21:46', 7),
(116, 2, 2, 15, 16, 1, '2011-09-19 13:24:31', '2011-09-19 13:26:53', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_category_group`
--

DROP TABLE IF EXISTS `ps_category_group`;
CREATE TABLE IF NOT EXISTS `ps_category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  UNIQUE KEY `category_group_index` (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_category_group`
--

INSERT INTO `ps_category_group` (`id_category`, `id_group`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(34, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(116, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_category_lang`
--

DROP TABLE IF EXISTS `ps_category_lang`;
CREATE TABLE IF NOT EXISTS `ps_category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  UNIQUE KEY `category_lang_index` (`id_category`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_category_lang`
--

INSERT INTO `ps_category_lang` (`id_category`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Home', NULL, 'home', NULL, NULL, NULL),
(1, 2, 'Accueil', NULL, 'home', NULL, NULL, NULL),
(1, 3, 'Inicio', NULL, 'home', NULL, NULL, NULL),
(1, 4, 'Start', NULL, 'home', NULL, NULL, NULL),
(1, 5, 'Home page', NULL, 'home', NULL, NULL, NULL),
(1, 6, 'Home', NULL, 'home', NULL, NULL, NULL),
(1, 7, 'Home', NULL, 'home', NULL, NULL, NULL),
(1, 8, 'Home', NULL, 'home', NULL, NULL, NULL),
(2, 1, 'Bread', 'Both freshly baked and brought home\r\n\r\n  "We have plenty of bread, cakes, biscuits in our sortient -\r\n and we sell quantities of toast too.\r\nBut nothing beats the sales of our baguettes\r\n\r\nOur always freshly baked baguettes\r\nin several guises - both rustic normal and poppy seeds, seeds, etc..\r\n\r\nWe sell Danish rolls and rye bread, pastry - try to hit the numbers every day - but some days there is a total sell out, so therefore our webshop a good way to make bread for them, we have taken into account, because we know what are ordered.\r\nWe also eg. Wasa crispbread and other specialties - and fortunately there are many who think our line is good. "\r\n\r\nChelsea', 'bakery', NULL, NULL, NULL),
(2, 2, 'iPods', 'Il est temps, pour le meilleur lecteur de musique, de remonter sur scène pour un rappel. Avec le nouvel iPod, le monde est votre scène.', 'musique-ipods', NULL, NULL, NULL),
(2, 3, 'iPods', 'Es hora de que el mejor jugador de la música, al escenario para hacer un bis. Con el nuevo iPod, el mundo es tu escenario.', 'musica-ipods', NULL, NULL, NULL),
(2, 4, 'iPods', 'Now that you can buy movies from the iTunes Store and sync them to your iPod, the whole world is your theater.', 'musik-iPods', NULL, NULL, NULL),
(2, 5, 'iPods', 'Adesso che puoi acquistare film dall''iTunes Store e inserirli nel tuo iPod, il tuo mondo è un palcoscenico.', 'musica-ipods', NULL, NULL, NULL),
(2, 6, 'iPods', 'Now that you can buy movies from the iTunes Store and sync them to your iPod, the whole world is your theater.', 'music-ipods', NULL, NULL, NULL),
(2, 7, 'iPods', 'Now that you can buy movies from the iTunes Store and sync them to your iPod, the whole world is your theater.', 'music-ipods', NULL, NULL, NULL),
(2, 8, 'iPods', 'Now that you can buy movies from the iTunes Store and sync them to your iPod, the whole world is your theater.', 'music-ipods', NULL, NULL, NULL),
(3, 1, 'Frozen', 'Frozen and fresh any way\r\n\r\n"At yourkwiksave.com we have a good selection of frozen products.\r\n\r\nVegetables from Denmark, all the familiar vegetable mixtures which do not occur here in Spain which is scalloped potatoes, French fries, creamy pasta dishes, stir mixture, and all the standard vegetables in really good quality.\r\n\r\nWe have spring rolls from Daloon, cabbage, meatballs, vegetables, burgers, chicken, lamb and lots of other good products - and quality frozen fruit and berries, or maybe smoothies.\r\nFish fillet, salmon, shrimp and other types of fish.\r\n\r\nIf you need a product in our freezer, please send us an email. "\r\n\r\nMaggie', 'frozen', NULL, NULL, NULL),
(3, 2, 'Accessoires', 'Tous les accessoires à la mode pour votre iPod', 'accessoires-ipod', NULL, NULL, NULL),
(3, 3, 'Accesorios', 'Todos los accesorios de moda para tu iPod', 'ipod-accesorios', NULL, NULL, NULL),
(3, 4, 'Zubehör', 'Wonderful accessories for your iPod', 'zubehor-ipod', NULL, NULL, NULL),
(3, 5, 'Accessori', 'Fantastici accessori per il tuo iPod', 'accessori-ipod', NULL, NULL, NULL),
(3, 6, 'Accessories', 'Wonderful accessories for your iPod', 'accessories-ipod', NULL, NULL, NULL),
(3, 7, 'Accessories', 'Wonderful accessories for your iPod', 'accessories-ipod', NULL, NULL, NULL),
(3, 8, 'Accessories', 'Wonderful accessories for your iPod', 'accessories-ipod', NULL, NULL, NULL),
(4, 1, 'Milk  & Cheese', 'Cheese & Dairy\r\nIt is fresh and well\r\n\r\n  "We have many types of cheese, many types of yoghurt and ælk and cream in multiple guises.\r\nOur ambition is to deliver your desired products, even if there are short lifespan of the product-you for helping us when you make your booking - because we know how much we have to take home eg. of sour cream 18% is not hard to find, Cheasy yoghurt and other products.\r\n\r\nWe make sure that you get your favorite products - you just order them, we''ll do the rest.\r\n\r\nOur selection ranges from mild to hawarti dana blues, and other exciting brands - from milk products - chocolate milk to lurpak, dip.\r\nSomething you do not send us an email "\r\n\r\nMilo Alonso\r\n', 'dairy-and-cheese', NULL, NULL, NULL),
(4, 2, 'Portables', 'Le tout dernier processeur Intel, un disque dur plus spacieux, de la mémoire à profusion et d''autres nouveautés. Le tout, dans à peine 2,59 cm qui vous libèrent de toute entrave. Les nouveaux portables Mac réunissent les performances, la puissance et la connectivité d''un ordinateur de bureau. Sans la partie bureau.', 'portables-apple', 'Portables Apple', 'portables apple macbook air', 'portables apple puissants et design'),
(4, 3, 'Portátiles', 'El último procesador Intel, un disco duro más grande, con profusión de memoria y otras novedades. Todo en sólo 2,59 cm libres de cualquier obstrucción. Las nuevas portátiles Mac cumplir rendimiento, potencia y conectividad de una computadora de escritorio. Sin la parte del escritorio.', 'portatiles-apple', 'Portátiles Apple', 'portátiles apple macbook air', 'portátiles apple poderoso y el diseño'),
(4, 4, 'Laptops', 'The latest Intel processor, a bigger hard drive, plenty of memory, and even more new features all fit inside just one liberating inch. The new Mac laptops have the performance, power, and connectivity of a desktop computer. Without the desk part.', 'laptops', 'Apple laptops', 'Apple MacBook Air-Laptops', 'Powerful and chic Apple laptops'),
(4, 5, 'Laptop', 'L''ultimissimo processore Intel, hard drive più ampio, moltissima memoria, e ancora più funzioni tutte inserite in 2,54 centimetri. I nuovi laptop Mac offrono le prestazioni, la potenza e la connettività di un computer da tavolo. Senza bisogno del tavolo.', 'laptop', 'laptop Apple', 'laptot Apple MacBook Air', 'Laptop Apple potenti ed eleganti'),
(4, 6, 'Laptops', 'The latest Intel processor, a bigger hard drive, plenty of memory, and even more new features all fit inside just one liberating inch. The new Mac laptops have the performance, power, and connectivity of a desktop computer. Without the desk part.', 'laptops', 'Apple laptops', 'Apple laptops MacBook Air', 'Powerful and chic Apple laptops'),
(4, 7, 'Laptops', 'The latest Intel processor, a bigger hard drive, plenty of memory, and even more new features all fit inside just one liberating inch. The new Mac laptops have the performance, power, and connectivity of a desktop computer. Without the desk part.', 'laptops', 'Apple laptops', 'Apple laptops MacBook Air', 'Powerful and chic Apple laptops'),
(4, 8, 'Laptops', 'The latest Intel processor, a bigger hard drive, plenty of memory, and even more new features all fit inside just one liberating inch. The new Mac laptops have the performance, power, and connectivity of a desktop computer. Without the desk part.', 'laptops', 'Apple laptops', 'Apple laptops MacBook Air', 'Powerful and chic Apple laptops'),
(5, 1, 'Meat & Spreads', 'It''s just fresh\r\n\r\n"When you order from us, we order by our butcher - it''s always fresh meat you get ..\r\nOur meat is in store for the physical clients who come into the store - but the meat you order is the only butcher who have got hold in. So it is quite fresh. "\r\n\r\nYou can order different butchers at us - so they come with your order -\r\nAll our beef is of Irish cattle - while all pork products are Spanish.\r\nOur orders are Spanish, German, and Danish and come packaged from the respective countries.\r\n\r\nWe always try to have Danish liver pate, bacon, and looked on our shelves, because there is high demand - you have a desire for other things for instance jam etc.. instance up to Christmas, so get there eg. An order form out around Christmas products, and ordering one just in time, and you get exactly what you want. (also Danish roast pork) "\r\n\r\nBrian Hald Shopping\r\nButcher Jodie Hall\r\nThe Irish Butcher\r\nArroy Del Miel. Benmaldena\r\n', 'meat-spreads', NULL, NULL, NULL),
(5, 2, 'Meat & Spreads', NULL, 'meat-spreads', NULL, NULL, NULL),
(5, 3, 'Meat & Spreads', NULL, 'meat-spreads', NULL, NULL, NULL),
(5, 4, 'Meat & Spreads', NULL, 'meat-spreads', NULL, NULL, NULL),
(5, 5, 'Meat & Spreads', NULL, 'meat-spreads', NULL, NULL, NULL),
(5, 6, 'Meat & Spreads', NULL, 'meat-spreads', NULL, NULL, NULL),
(5, 7, 'Meat & Spreads', NULL, 'meat-spreads', NULL, NULL, NULL),
(5, 8, 'Meat & Spreads', NULL, 'meat-spreads', NULL, NULL, NULL),
(6, 1, 'Fruits & Vegetables', 'Fruits & Vegetables\r\n\r\n"We have every fresh fruit and vegetables, so we are very aware of the quality of these products."\r\n\r\nThe only drawback there always is in Spain''s warm, it makes many of these type products matures quickly - we try to place many of them in the fridge, and it decreases many of the problems.\r\n\r\nOur goal is to deliver the best quality at your door, you experience something different - then we invite from you, our suppliers also offer us the best - so we are all satisfied.\r\n\r\nChelsea ', 'fruits-vegetables', NULL, NULL, NULL),
(6, 2, 'Fruits & Vegetables', NULL, 'fruits-vegetables', NULL, NULL, NULL),
(6, 3, 'Fruits & Vegetables', NULL, 'fruits-vegetables', NULL, NULL, NULL),
(6, 4, 'Fruits & Vegetables', NULL, 'fruits-vegetables', NULL, NULL, NULL),
(6, 5, 'Fruits & Vegetables', NULL, 'fruits-vegetables', NULL, NULL, NULL),
(6, 6, 'Fruits & Vegetables', NULL, 'fruits-vegetables', NULL, NULL, NULL),
(6, 7, 'Fruits & Vegetables', NULL, 'fruits-vegetables', NULL, NULL, NULL),
(6, 8, 'Fruits & Vegetables', NULL, 'fruits-vegetables', NULL, NULL, NULL),
(7, 1, 'Colonial', NULL, 'colonial', NULL, NULL, NULL),
(7, 2, 'Colonial', NULL, 'colonial', NULL, NULL, NULL),
(7, 3, 'Colonial', NULL, 'colonial', NULL, NULL, NULL),
(7, 4, 'Colonial', NULL, 'colonial', NULL, NULL, NULL),
(7, 5, 'Colonial', NULL, 'colonial', NULL, NULL, NULL),
(7, 6, 'Colonial', NULL, 'colonial', NULL, NULL, NULL),
(7, 7, 'Colonial', NULL, 'colonial', NULL, NULL, NULL),
(7, 8, 'Colonial', NULL, 'colonial', NULL, NULL, NULL),
(8, 1, 'Wine & Beer & Beverages', 'Beverages\r\n\r\nAll the important little things\r\n"Now you can swing a trip to the kiosk with a few clicks.\r\nWe have all your favorite magazines, and of course you can get everything from tobacco to headache pills and much more.\r\nBut do not out in the rain or standing in line behind a lot of lottery customers.\r\nSimply click, so we provide at home before you can say kiosk flapping. "\r\n\r\nTessa & Brian \r\n', 'wine-kiosk', NULL, NULL, NULL),
(8, 2, 'Wine & Kiosk', NULL, 'wine-kiosk', NULL, NULL, NULL),
(8, 3, 'Wine & Kiosk', NULL, 'wine-kiosk', NULL, NULL, NULL),
(8, 4, 'Wine & Kiosk', NULL, 'wine-kiosk', NULL, NULL, NULL),
(8, 5, 'Wine & Kiosk', NULL, 'wine-kiosk', NULL, NULL, NULL),
(8, 6, 'Wine & Kiosk', NULL, 'wine-kiosk', NULL, NULL, NULL),
(8, 7, 'Wine & Kiosk', NULL, 'wine-kiosk', NULL, NULL, NULL),
(8, 8, 'Wine & Kiosk', NULL, 'wine-kiosk', NULL, NULL, NULL),
(9, 1, 'Candy & Chips', 'quis pellentesque ante mattis ut. Donec quam purus, tristique sit amet pretium a, sodales quis justo. Integer nec nisi ut ligula pellentesque ultricies nec id tellus.', 'beverages', NULL, NULL, NULL),
(9, 2, 'Beverages', NULL, 'beverages', NULL, NULL, NULL),
(9, 3, 'Beverages', NULL, 'beverages', NULL, NULL, NULL),
(9, 4, 'Beverages', NULL, 'beverages', NULL, NULL, NULL),
(9, 5, 'Beverages', NULL, 'beverages', NULL, NULL, NULL),
(9, 6, 'Beverages', NULL, 'beverages', NULL, NULL, NULL),
(9, 7, 'Beverages', NULL, 'beverages', NULL, NULL, NULL),
(9, 8, 'Beverages', NULL, 'beverages', NULL, NULL, NULL),
(10, 1, 'Personal Care', 'Body & Beauty\r\n\r\nNow you get diapers and toilet paper delivered direct to home\r\n  We have the most to you and your family.\r\n\r\nShampoo, conditioner, hairspray, gels, soaps, shaving cream, nail cleaners, creams, baby products, Vaseline - cotton buds, and much more, click and order.\r\n\r\nMaggie ', 'personal-care', NULL, NULL, NULL),
(10, 2, 'Personal Care', NULL, 'personal-care', NULL, NULL, NULL),
(10, 3, 'Personal Care', NULL, 'personal-care', NULL, NULL, NULL),
(10, 4, 'Personal Care', NULL, 'personal-care', NULL, NULL, NULL),
(10, 5, 'Personal Care', NULL, 'personal-care', NULL, NULL, NULL),
(10, 6, 'Personal Care', NULL, 'personal-care', NULL, NULL, NULL),
(10, 7, 'Personal Care', NULL, 'personal-care', NULL, NULL, NULL),
(10, 8, 'Personal Care', NULL, 'personal-care', NULL, NULL, NULL),
(11, 1, 'Household', 'Household and cleaning products\r\n\r\n  "Washing powder, fabric softeners, tabs, salt, detergents - that''s some of what there is is really annoying to go shopping.\r\nSo why not leave it to us. We bring it right home to you, you just click and order.\r\n\r\nWe can not make it much easier. "\r\nMaggie \r\n', 'household', NULL, NULL, NULL),
(11, 2, 'Household', NULL, 'household', NULL, NULL, NULL),
(11, 3, 'Household', NULL, 'household', NULL, NULL, NULL),
(11, 4, 'Household', NULL, 'household', NULL, NULL, NULL),
(11, 5, 'Household', NULL, 'household', NULL, NULL, NULL),
(11, 6, 'Household', NULL, 'household', NULL, NULL, NULL),
(11, 7, 'Household', NULL, 'household', NULL, NULL, NULL),
(11, 8, 'Household', NULL, 'household', NULL, NULL, NULL),
(12, 1, 'Rye bread', NULL, 'rye-bread', NULL, NULL, NULL),
(12, 2, 'Rye bread', NULL, 'rye-bread', NULL, NULL, NULL),
(12, 3, 'Rye bread', NULL, 'rye-bread', NULL, NULL, NULL),
(12, 4, 'Rye bread', NULL, 'rye-bread', NULL, NULL, NULL),
(12, 5, 'Rye bread', NULL, 'rye-bread', NULL, NULL, NULL),
(12, 6, 'Rye bread', NULL, 'rye-bread', NULL, NULL, NULL),
(12, 7, 'Rye bread', NULL, 'rye-bread', NULL, NULL, NULL),
(12, 8, 'Rye bread', NULL, 'rye-bread', NULL, NULL, NULL),
(13, 1, 'Bread & Buns', NULL, 'bread-buns', NULL, NULL, NULL),
(13, 2, 'Bread & Buns', NULL, 'bread-buns', NULL, NULL, NULL),
(13, 3, 'Bread & Buns', NULL, 'bread-buns', NULL, NULL, NULL),
(13, 4, 'Bread & Buns', NULL, 'bread-buns', NULL, NULL, NULL),
(13, 5, 'Bread & Buns', NULL, 'bread-buns', NULL, NULL, NULL),
(13, 6, 'Bread & Buns', NULL, 'bread-buns', NULL, NULL, NULL),
(13, 7, 'Bread & Buns', NULL, 'bread-buns', NULL, NULL, NULL),
(13, 8, 'Bread & Buns', NULL, 'bread-buns', NULL, NULL, NULL),
(14, 1, 'Crispbread,  ', NULL, 'crispbread-biscuits-cake-etc', NULL, NULL, NULL),
(14, 2, 'Crispbread, biscuits, cake etc.', NULL, 'crispbread-biscuits-cake-etc', NULL, NULL, NULL),
(14, 3, 'Crispbread, biscuits, cake etc.', NULL, 'crispbread-biscuits-cake-etc', NULL, NULL, NULL),
(14, 4, 'Crispbread, biscuits, cake etc.', NULL, 'crispbread-biscuits-cake-etc', NULL, NULL, NULL),
(14, 5, 'Crispbread, biscuits, cake etc.', NULL, 'crispbread-biscuits-cake-etc', NULL, NULL, NULL),
(14, 6, 'Crispbread, biscuits, cake etc.', NULL, 'crispbread-biscuits-cake-etc', NULL, NULL, NULL),
(14, 7, 'Crispbread, biscuits, cake etc.', NULL, 'crispbread-biscuits-cake-etc', NULL, NULL, NULL),
(14, 8, 'Crispbread, biscuits, cake etc.', NULL, 'crispbread-biscuits-cake-etc', NULL, NULL, NULL),
(16, 1, 'Bread ', NULL, 'fast-food', NULL, NULL, NULL),
(16, 2, 'Fast Food', NULL, 'fast-food', NULL, NULL, NULL),
(16, 3, 'Fast Food', NULL, 'fast-food', NULL, NULL, NULL),
(16, 4, 'Fast Food', NULL, 'fast-food', NULL, NULL, NULL),
(16, 5, 'Fast Food', NULL, 'fast-food', NULL, NULL, NULL),
(16, 6, 'Fast Food', NULL, 'fast-food', NULL, NULL, NULL),
(16, 7, 'Fast Food', NULL, 'fast-food', NULL, NULL, NULL),
(16, 8, 'Fast Food', NULL, 'fast-food', NULL, NULL, NULL),
(17, 1, 'Ready meals', NULL, 'ready-meals-fish', NULL, NULL, NULL),
(17, 2, 'Ready meals & Fish', NULL, 'ready-meals-fish', NULL, NULL, NULL),
(17, 3, 'Ready meals & Fish', NULL, 'ready-meals-fish', NULL, NULL, NULL),
(17, 4, 'Ready meals & Fish', NULL, 'ready-meals-fish', NULL, NULL, NULL),
(17, 5, 'Ready meals & Fish', NULL, 'ready-meals-fish', NULL, NULL, NULL),
(17, 6, 'Ready meals & Fish', NULL, 'ready-meals-fish', NULL, NULL, NULL),
(17, 7, 'Ready meals & Fish', NULL, 'ready-meals-fish', NULL, NULL, NULL),
(17, 8, 'Ready meals & Fish', NULL, 'ready-meals-fish', NULL, NULL, NULL),
(18, 1, 'Berry & Fruit', NULL, 'vegetables-fruit', NULL, NULL, NULL),
(18, 2, 'Vegetables & Fruit', NULL, 'vegetables-fruit', NULL, NULL, NULL),
(18, 3, 'Vegetables & Fruit', NULL, 'vegetables-fruit', NULL, NULL, NULL),
(18, 4, 'Vegetables & Fruit', NULL, 'vegetables-fruit', NULL, NULL, NULL),
(18, 5, 'Vegetables & Fruit', NULL, 'vegetables-fruit', NULL, NULL, NULL),
(18, 6, 'Vegetables & Fruit', NULL, 'vegetables-fruit', NULL, NULL, NULL),
(18, 7, 'Vegetables & Fruit', NULL, 'vegetables-fruit', NULL, NULL, NULL),
(18, 8, 'Vegetables & Fruit', NULL, 'vegetables-fruit', NULL, NULL, NULL),
(19, 1, 'Milk & Cream', NULL, 'milk-yogurt', NULL, NULL, NULL),
(19, 2, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(19, 3, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(19, 4, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(19, 5, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(19, 6, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(19, 7, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(19, 8, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(20, 1, 'Youghurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(20, 2, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(20, 3, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(20, 4, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(20, 5, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(20, 6, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(20, 7, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(20, 8, 'Milk & Yogurt', NULL, 'milk-yogurt', NULL, NULL, NULL),
(21, 1, 'Daily Cheese', NULL, 'cheese', NULL, NULL, NULL),
(21, 2, 'Cheese', NULL, 'cheese', NULL, NULL, NULL),
(21, 3, 'Cheese', NULL, 'cheese', NULL, NULL, NULL),
(21, 4, 'Cheese', NULL, 'cheese', NULL, NULL, NULL),
(21, 5, 'Cheese', NULL, 'cheese', NULL, NULL, NULL),
(21, 6, 'Cheese', NULL, 'cheese', NULL, NULL, NULL),
(21, 7, 'Cheese', NULL, 'cheese', NULL, NULL, NULL),
(21, 8, 'Cheese', NULL, 'cheese', NULL, NULL, NULL),
(22, 1, 'Cream cheese', NULL, 'cream-cheese-blue-cheese', NULL, NULL, NULL),
(22, 2, 'Cream cheese & blue cheese', NULL, 'cream-cheese-blue-cheese', NULL, NULL, NULL),
(22, 3, 'Cream cheese & blue cheese', NULL, 'cream-cheese-blue-cheese', NULL, NULL, NULL),
(22, 4, 'Cream cheese & blue cheese', NULL, 'cream-cheese-blue-cheese', NULL, NULL, NULL),
(22, 5, 'Cream cheese & blue cheese', NULL, 'cream-cheese-blue-cheese', NULL, NULL, NULL),
(22, 6, 'Cream cheese & blue cheese', NULL, 'cream-cheese-blue-cheese', NULL, NULL, NULL),
(22, 7, 'Cream cheese & blue cheese', NULL, 'cream-cheese-blue-cheese', NULL, NULL, NULL),
(22, 8, 'Cream cheese & blue cheese', NULL, 'cream-cheese-blue-cheese', NULL, NULL, NULL),
(23, 1, 'Special Cheese', NULL, 'special-cheese', NULL, NULL, NULL),
(23, 2, 'Special Cheese', NULL, 'special-cheese', NULL, NULL, NULL),
(23, 3, 'Special Cheese', NULL, 'special-cheese', NULL, NULL, NULL),
(23, 4, 'Special Cheese', NULL, 'special-cheese', NULL, NULL, NULL),
(23, 5, 'Special Cheese', NULL, 'special-cheese', NULL, NULL, NULL),
(23, 6, 'Special Cheese', NULL, 'special-cheese', NULL, NULL, NULL),
(23, 7, 'Special Cheese', NULL, 'special-cheese', NULL, NULL, NULL),
(23, 8, 'Special Cheese', NULL, 'special-cheese', NULL, NULL, NULL),
(24, 1, 'Chooking Cheese', NULL, 'madlavningsost', NULL, NULL, NULL),
(24, 2, 'Madlavningsost', NULL, 'madlavningsost', NULL, NULL, NULL),
(24, 3, 'Madlavningsost', NULL, 'madlavningsost', NULL, NULL, NULL),
(24, 4, 'Madlavningsost', NULL, 'madlavningsost', NULL, NULL, NULL),
(24, 5, 'Madlavningsost', NULL, 'madlavningsost', NULL, NULL, NULL),
(24, 6, 'Madlavningsost', NULL, 'madlavningsost', NULL, NULL, NULL),
(24, 7, 'Madlavningsost', NULL, 'madlavningsost', NULL, NULL, NULL),
(24, 8, 'Madlavningsost', NULL, 'madlavningsost', NULL, NULL, NULL),
(25, 1, 'Fish', NULL, 'gourmet-express', NULL, NULL, NULL),
(25, 2, 'Gourmet Express', NULL, 'gourmet-express', NULL, NULL, NULL),
(25, 3, 'Gourmet Express', NULL, 'gourmet-express', NULL, NULL, NULL),
(25, 4, 'Gourmet Express', NULL, 'gourmet-express', NULL, NULL, NULL),
(25, 5, 'Gourmet Express', NULL, 'gourmet-express', NULL, NULL, NULL),
(25, 6, 'Gourmet Express', NULL, 'gourmet-express', NULL, NULL, NULL),
(25, 7, 'Gourmet Express', NULL, 'gourmet-express', NULL, NULL, NULL),
(25, 8, 'Gourmet Express', NULL, 'gourmet-express', NULL, NULL, NULL),
(26, 1, 'Beef', NULL, 'beef', NULL, NULL, NULL),
(26, 2, 'Beef', NULL, 'beef', NULL, NULL, NULL),
(26, 3, 'Beef', NULL, 'beef', NULL, NULL, NULL),
(26, 4, 'Beef', NULL, 'beef', NULL, NULL, NULL),
(26, 5, 'Beef', NULL, 'beef', NULL, NULL, NULL),
(26, 6, 'Beef', NULL, 'beef', NULL, NULL, NULL),
(26, 7, 'Beef', NULL, 'beef', NULL, NULL, NULL),
(26, 8, 'Beef', NULL, 'beef', NULL, NULL, NULL),
(27, 1, 'Pork', NULL, 'pork', NULL, NULL, NULL),
(27, 2, 'Pork', NULL, 'pork', NULL, NULL, NULL),
(27, 3, 'Pork', NULL, 'pork', NULL, NULL, NULL),
(27, 4, 'Pork', NULL, 'pork', NULL, NULL, NULL),
(27, 5, 'Pork', NULL, 'pork', NULL, NULL, NULL),
(27, 6, 'Pork', NULL, 'pork', NULL, NULL, NULL),
(27, 7, 'Pork', NULL, 'pork', NULL, NULL, NULL),
(27, 8, 'Pork', NULL, 'pork', NULL, NULL, NULL),
(28, 1, 'Veal', NULL, 'veal', NULL, NULL, NULL),
(28, 2, 'Veal', NULL, 'veal', NULL, NULL, NULL),
(28, 3, 'Veal', NULL, 'veal', NULL, NULL, NULL),
(28, 4, 'Veal', NULL, 'veal', NULL, NULL, NULL),
(28, 5, 'Veal', NULL, 'veal', NULL, NULL, NULL),
(28, 6, 'Veal', NULL, 'veal', NULL, NULL, NULL),
(28, 7, 'Veal', NULL, 'veal', NULL, NULL, NULL),
(28, 8, 'Veal', NULL, 'veal', NULL, NULL, NULL),
(29, 1, 'Minced meat', NULL, 'minced-meat', NULL, NULL, NULL),
(29, 2, 'Minced meat', NULL, 'minced-meat', NULL, NULL, NULL),
(29, 3, 'Minced meat', NULL, 'minced-meat', NULL, NULL, NULL),
(29, 4, 'Minced meat', NULL, 'minced-meat', NULL, NULL, NULL),
(29, 5, 'Minced meat', NULL, 'minced-meat', NULL, NULL, NULL),
(29, 6, 'Minced meat', NULL, 'minced-meat', NULL, NULL, NULL),
(29, 7, 'Minced meat', NULL, 'minced-meat', NULL, NULL, NULL),
(29, 8, 'Minced meat', NULL, 'minced-meat', NULL, NULL, NULL),
(30, 1, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(30, 2, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(30, 3, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(30, 4, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(30, 5, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(30, 6, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(30, 7, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(30, 8, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(31, 1, 'Fruit & Berry', NULL, 'fruit', NULL, NULL, NULL),
(31, 2, 'Fruit', NULL, 'fruit', NULL, NULL, NULL),
(31, 3, 'Fruit', NULL, 'fruit', NULL, NULL, NULL),
(31, 4, 'Fruit', NULL, 'fruit', NULL, NULL, NULL),
(31, 5, 'Fruit', NULL, 'fruit', NULL, NULL, NULL),
(31, 6, 'Fruit', NULL, 'fruit', NULL, NULL, NULL),
(31, 7, 'Fruit', NULL, 'fruit', NULL, NULL, NULL),
(31, 8, 'Fruit', NULL, 'fruit', NULL, NULL, NULL),
(32, 1, 'Vegetables', NULL, 'berries-other-fruits', NULL, NULL, NULL),
(32, 2, 'Berries & Other Fruits', NULL, 'berries-other-fruits', NULL, NULL, NULL),
(32, 3, 'Berries & Other Fruits', NULL, 'berries-other-fruits', NULL, NULL, NULL),
(32, 4, 'Berries & Other Fruits', NULL, 'berries-other-fruits', NULL, NULL, NULL),
(32, 5, 'Berries & Other Fruits', NULL, 'berries-other-fruits', NULL, NULL, NULL),
(32, 6, 'Berries & Other Fruits', NULL, 'berries-other-fruits', NULL, NULL, NULL),
(32, 7, 'Berries & Other Fruits', NULL, 'berries-other-fruits', NULL, NULL, NULL),
(32, 8, 'Berries & Other Fruits', NULL, 'berries-other-fruits', NULL, NULL, NULL),
(34, 1, 'Salads & Herbs', NULL, 'salads-herbs', NULL, NULL, NULL),
(34, 2, 'Salads & Herbs', NULL, 'salads-herbs', NULL, NULL, NULL),
(34, 3, 'Salads & Herbs', NULL, 'salads-herbs', NULL, NULL, NULL),
(34, 4, 'Salads & Herbs', NULL, 'salads-herbs', NULL, NULL, NULL),
(34, 5, 'Salads & Herbs', NULL, 'salads-herbs', NULL, NULL, NULL),
(34, 6, 'Salads & Herbs', NULL, 'salads-herbs', NULL, NULL, NULL),
(34, 7, 'Salads & Herbs', NULL, 'salads-herbs', NULL, NULL, NULL),
(34, 8, 'Salads & Herbs', NULL, 'salads-herbs', NULL, NULL, NULL),
(36, 1, 'Nuts, Dried Fruit, etc.', NULL, 'nuts-dried-fruit-etc', NULL, NULL, NULL),
(36, 2, 'Nuts, Dried Fruit, etc.', NULL, 'nuts-dried-fruit-etc', NULL, NULL, NULL),
(36, 3, 'Nuts, Dried Fruit, etc.', NULL, 'nuts-dried-fruit-etc', NULL, NULL, NULL),
(36, 4, 'Nuts, Dried Fruit, etc.', NULL, 'nuts-dried-fruit-etc', NULL, NULL, NULL),
(36, 5, 'Nuts, Dried Fruit, etc.', NULL, 'nuts-dried-fruit-etc', NULL, NULL, NULL),
(36, 6, 'Nuts, Dried Fruit, etc.', NULL, 'nuts-dried-fruit-etc', NULL, NULL, NULL),
(36, 7, 'Nuts, Dried Fruit, etc.', NULL, 'nuts-dried-fruit-etc', NULL, NULL, NULL),
(36, 8, 'Nuts, Dried Fruit, etc.', NULL, 'nuts-dried-fruit-etc', NULL, NULL, NULL),
(37, 1, 'Pasta, Rice, etc.', NULL, 'pasta-rice-etc', NULL, NULL, NULL),
(37, 2, 'Pasta, Rice, etc.', NULL, 'pasta-rice-etc', NULL, NULL, NULL),
(37, 3, 'Pasta, Rice, etc.', NULL, 'pasta-rice-etc', NULL, NULL, NULL),
(37, 4, 'Pasta, Rice, etc.', NULL, 'pasta-rice-etc', NULL, NULL, NULL),
(37, 5, 'Pasta, Rice, etc.', NULL, 'pasta-rice-etc', NULL, NULL, NULL),
(37, 6, 'Pasta, Rice, etc.', NULL, 'pasta-rice-etc', NULL, NULL, NULL),
(37, 7, 'Pasta, Rice, etc.', NULL, 'pasta-rice-etc', NULL, NULL, NULL),
(37, 8, 'Pasta, Rice, etc.', NULL, 'pasta-rice-etc', NULL, NULL, NULL),
(38, 1, 'Oil, Spice, etc.', NULL, 'oil-spice-etc', NULL, NULL, NULL),
(38, 2, 'Oil, Spice, etc.', NULL, 'oil-spice-etc', NULL, NULL, NULL),
(38, 3, 'Oil, Spice, etc.', NULL, 'oil-spice-etc', NULL, NULL, NULL),
(38, 4, 'Oil, Spice, etc.', NULL, 'oil-spice-etc', NULL, NULL, NULL),
(38, 5, 'Oil, Spice, etc.', NULL, 'oil-spice-etc', NULL, NULL, NULL),
(38, 6, 'Oil, Spice, etc.', NULL, 'oil-spice-etc', NULL, NULL, NULL),
(38, 7, 'Oil, Spice, etc.', NULL, 'oil-spice-etc', NULL, NULL, NULL),
(38, 8, 'Oil, Spice, etc.', NULL, 'oil-spice-etc', NULL, NULL, NULL),
(39, 1, 'Ketchup, Dressing, etc.', NULL, 'ketchup-dressing-etc', NULL, NULL, NULL),
(39, 2, 'Ketchup, Dressing, etc.', NULL, 'ketchup-dressing-etc', NULL, NULL, NULL),
(39, 3, 'Ketchup, Dressing, etc.', NULL, 'ketchup-dressing-etc', NULL, NULL, NULL),
(39, 4, 'Ketchup, Dressing, etc.', NULL, 'ketchup-dressing-etc', NULL, NULL, NULL),
(39, 5, 'Ketchup, Dressing, etc.', NULL, 'ketchup-dressing-etc', NULL, NULL, NULL),
(39, 6, 'Ketchup, Dressing, etc.', NULL, 'ketchup-dressing-etc', NULL, NULL, NULL),
(39, 7, 'Ketchup, Dressing, etc.', NULL, 'ketchup-dressing-etc', NULL, NULL, NULL),
(39, 8, 'Ketchup, Dressing, etc.', NULL, 'ketchup-dressing-etc', NULL, NULL, NULL),
(40, 1, 'Glass, Canned, etc.', NULL, 'glass-canned-etc', NULL, NULL, NULL),
(40, 2, 'Glass, Canned, etc.', NULL, 'glass-canned-etc', NULL, NULL, NULL),
(40, 3, 'Glass, Canned, etc.', NULL, 'glass-canned-etc', NULL, NULL, NULL),
(40, 4, 'Glass, Canned, etc.', NULL, 'glass-canned-etc', NULL, NULL, NULL),
(40, 5, 'Glass, Canned, etc.', NULL, 'glass-canned-etc', NULL, NULL, NULL),
(40, 6, 'Glass, Canned, etc.', NULL, 'glass-canned-etc', NULL, NULL, NULL),
(40, 7, 'Glass, Canned, etc.', NULL, 'glass-canned-etc', NULL, NULL, NULL),
(40, 8, 'Glass, Canned, etc.', NULL, 'glass-canned-etc', NULL, NULL, NULL),
(41, 1, 'Sauces, etc', NULL, 'sauces-etc', NULL, NULL, NULL),
(41, 2, 'Sauces, etc', NULL, 'sauces-etc', NULL, NULL, NULL),
(41, 3, 'Sauces, etc', NULL, 'sauces-etc', NULL, NULL, NULL),
(41, 4, 'Sauces, etc', NULL, 'sauces-etc', NULL, NULL, NULL),
(41, 5, 'Sauces, etc', NULL, 'sauces-etc', NULL, NULL, NULL),
(41, 6, 'Sauces, etc', NULL, 'sauces-etc', NULL, NULL, NULL),
(41, 7, 'Sauces, etc', NULL, 'sauces-etc', NULL, NULL, NULL),
(41, 8, 'Sauces, etc', NULL, 'sauces-etc', NULL, NULL, NULL),
(42, 1, 'Sugar, flour, etc.', NULL, 'sugar-flour-etc', NULL, NULL, NULL),
(42, 2, 'Sugar, flour, etc.', NULL, 'sugar-flour-etc', NULL, NULL, NULL),
(42, 3, 'Sugar, flour, etc.', NULL, 'sugar-flour-etc', NULL, NULL, NULL),
(42, 4, 'Sugar, flour, etc.', NULL, 'sugar-flour-etc', NULL, NULL, NULL),
(42, 5, 'Sugar, flour, etc.', NULL, 'sugar-flour-etc', NULL, NULL, NULL),
(42, 6, 'Sugar, flour, etc.', NULL, 'sugar-flour-etc', NULL, NULL, NULL),
(42, 7, 'Sugar, flour, etc.', NULL, 'sugar-flour-etc', NULL, NULL, NULL),
(42, 8, 'Sugar, flour, etc.', NULL, 'sugar-flour-etc', NULL, NULL, NULL),
(43, 1, 'For Her', NULL, 'for-her', NULL, NULL, NULL),
(43, 2, 'For Her', NULL, 'for-her', NULL, NULL, NULL),
(43, 3, 'For Her', NULL, 'for-her', NULL, NULL, NULL),
(43, 4, 'For Her', NULL, 'for-her', NULL, NULL, NULL),
(43, 5, 'For Her', NULL, 'for-her', NULL, NULL, NULL),
(43, 6, 'For Her', NULL, 'for-her', NULL, NULL, NULL),
(43, 7, 'For Her', NULL, 'for-her', NULL, NULL, NULL),
(43, 8, 'For Her', NULL, 'for-her', NULL, NULL, NULL),
(44, 1, 'For Baby', NULL, 'for-baby', NULL, NULL, NULL),
(44, 2, 'For Baby', NULL, 'for-baby', NULL, NULL, NULL),
(44, 3, 'For Baby', NULL, 'for-baby', NULL, NULL, NULL),
(44, 4, 'For Baby', NULL, 'for-baby', NULL, NULL, NULL),
(44, 5, 'For Baby', NULL, 'for-baby', NULL, NULL, NULL),
(44, 6, 'For Baby', NULL, 'for-baby', NULL, NULL, NULL),
(44, 7, 'For Baby', NULL, 'for-baby', NULL, NULL, NULL),
(44, 8, 'For Baby', NULL, 'for-baby', NULL, NULL, NULL),
(45, 1, 'Toothpaste etc.', NULL, 'for-children', NULL, NULL, NULL),
(45, 2, 'For Children', NULL, 'for-children', NULL, NULL, NULL),
(45, 3, 'For Children', NULL, 'for-children', NULL, NULL, NULL),
(45, 4, 'For Children', NULL, 'for-children', NULL, NULL, NULL),
(45, 5, 'For Children', NULL, 'for-children', NULL, NULL, NULL),
(45, 6, 'For Children', NULL, 'for-children', NULL, NULL, NULL),
(45, 7, 'For Children', NULL, 'for-children', NULL, NULL, NULL),
(45, 8, 'For Children', NULL, 'for-children', NULL, NULL, NULL),
(46, 1, 'For Him', NULL, 'for-him', NULL, NULL, NULL),
(46, 2, 'For Him', NULL, 'for-him', NULL, NULL, NULL),
(46, 3, 'For Him', NULL, 'for-him', NULL, NULL, NULL),
(46, 4, 'For Him', NULL, 'for-him', NULL, NULL, NULL),
(46, 5, 'For Him', NULL, 'for-him', NULL, NULL, NULL),
(46, 6, 'For Him', NULL, 'for-him', NULL, NULL, NULL),
(46, 7, 'For Him', NULL, 'for-him', NULL, NULL, NULL),
(46, 8, 'For Him', NULL, 'for-him', NULL, NULL, NULL),
(47, 1, 'Shampoo, Conditioner', NULL, 'shampoo-conditioner', NULL, NULL, NULL),
(47, 2, 'Shampoo, Conditioner etc.', NULL, 'shampoo-conditioner-etc', NULL, NULL, NULL),
(47, 3, 'Shampoo, Conditioner etc.', NULL, 'shampoo-conditioner-etc', NULL, NULL, NULL),
(47, 4, 'Shampoo, Conditioner etc.', NULL, 'shampoo-conditioner-etc', NULL, NULL, NULL),
(47, 5, 'Shampoo, Conditioner etc.', NULL, 'shampoo-conditioner-etc', NULL, NULL, NULL),
(47, 6, 'Shampoo, Conditioner etc.', NULL, 'shampoo-conditioner-etc', NULL, NULL, NULL),
(47, 7, 'Shampoo, Conditioner etc.', NULL, 'shampoo-conditioner-etc', NULL, NULL, NULL),
(47, 8, 'Shampoo, Conditioner etc.', NULL, 'shampoo-conditioner-etc', NULL, NULL, NULL),
(48, 1, 'Hair Products', NULL, 'hair-products', NULL, NULL, NULL),
(48, 2, 'Hair Products', NULL, 'hair-products', NULL, NULL, NULL),
(48, 3, 'Hair Products', NULL, 'hair-products', NULL, NULL, NULL),
(48, 4, 'Hair Products', NULL, 'hair-products', NULL, NULL, NULL),
(48, 5, 'Hair Products', NULL, 'hair-products', NULL, NULL, NULL),
(48, 6, 'Hair Products', NULL, 'hair-products', NULL, NULL, NULL),
(48, 7, 'Hair Products', NULL, 'hair-products', NULL, NULL, NULL),
(48, 8, 'Hair Products', NULL, 'hair-products', NULL, NULL, NULL),
(49, 1, 'Laundry & Dishwashers', NULL, 'laundry-dishwashers', NULL, NULL, NULL),
(49, 2, 'Laundry & Dishwashers', NULL, 'laundry-dishwashers', NULL, NULL, NULL),
(49, 3, 'Laundry & Dishwashers', NULL, 'laundry-dishwashers', NULL, NULL, NULL),
(49, 4, 'Laundry & Dishwashers', NULL, 'laundry-dishwashers', NULL, NULL, NULL),
(49, 5, 'Laundry & Dishwashers', NULL, 'laundry-dishwashers', NULL, NULL, NULL),
(49, 6, 'Laundry & Dishwashers', NULL, 'laundry-dishwashers', NULL, NULL, NULL),
(49, 7, 'Laundry & Dishwashers', NULL, 'laundry-dishwashers', NULL, NULL, NULL),
(49, 8, 'Laundry & Dishwashers', NULL, 'laundry-dishwashers', NULL, NULL, NULL),
(50, 1, 'Cleaning', NULL, 'cleaning', NULL, NULL, NULL),
(50, 2, 'Cleaning', NULL, 'cleaning', NULL, NULL, NULL),
(50, 3, 'Cleaning', NULL, 'cleaning', NULL, NULL, NULL),
(50, 4, 'Cleaning', NULL, 'cleaning', NULL, NULL, NULL),
(50, 5, 'Cleaning', NULL, 'cleaning', NULL, NULL, NULL),
(50, 6, 'Cleaning', NULL, 'cleaning', NULL, NULL, NULL),
(50, 7, 'Cleaning', NULL, 'cleaning', NULL, NULL, NULL),
(50, 8, 'Cleaning', NULL, 'cleaning', NULL, NULL, NULL),
(51, 1, 'Paper, Bags, Alminium', NULL, 'paper-in-household', NULL, NULL, NULL),
(51, 2, 'Paper in household', NULL, 'paper-in-household', NULL, NULL, NULL),
(51, 3, 'Paper in household', NULL, 'paper-in-household', NULL, NULL, NULL),
(51, 4, 'Paper in household', NULL, 'paper-in-household', NULL, NULL, NULL),
(51, 5, 'Paper in household', NULL, 'paper-in-household', NULL, NULL, NULL),
(51, 6, 'Paper in household', NULL, 'paper-in-household', NULL, NULL, NULL),
(51, 7, 'Paper in household', NULL, 'paper-in-household', NULL, NULL, NULL),
(51, 8, 'Paper in household', NULL, 'paper-in-household', NULL, NULL, NULL),
(52, 1, 'Candles & Napkins', NULL, 'candles-napkins', NULL, NULL, NULL),
(52, 2, 'Candles & Napkins', NULL, 'candles-napkins', NULL, NULL, NULL),
(52, 3, 'Candles & Napkins', NULL, 'candles-napkins', NULL, NULL, NULL),
(52, 4, 'Candles & Napkins', NULL, 'candles-napkins', NULL, NULL, NULL),
(52, 5, 'Candles & Napkins', NULL, 'candles-napkins', NULL, NULL, NULL),
(52, 6, 'Candles & Napkins', NULL, 'candles-napkins', NULL, NULL, NULL),
(52, 7, 'Candles & Napkins', NULL, 'candles-napkins', NULL, NULL, NULL),
(52, 8, 'Candles & Napkins', NULL, 'candles-napkins', NULL, NULL, NULL),
(53, 1, 'Others', NULL, 'disposables-birthday', NULL, NULL, NULL),
(53, 2, 'Disposables & Birthday', NULL, 'disposables-birthday', NULL, NULL, NULL),
(53, 3, 'Disposables & Birthday', NULL, 'disposables-birthday', NULL, NULL, NULL),
(53, 4, 'Disposables & Birthday', NULL, 'disposables-birthday', NULL, NULL, NULL),
(53, 5, 'Disposables & Birthday', NULL, 'disposables-birthday', NULL, NULL, NULL),
(53, 6, 'Disposables & Birthday', NULL, 'disposables-birthday', NULL, NULL, NULL),
(53, 7, 'Disposables & Birthday', NULL, 'disposables-birthday', NULL, NULL, NULL),
(53, 8, 'Disposables & Birthday', NULL, 'disposables-birthday', NULL, NULL, NULL),
(54, 1, 'Pet food', NULL, 'pet-food', NULL, NULL, NULL),
(54, 2, 'Pet food', NULL, 'pet-food', NULL, NULL, NULL),
(54, 3, 'Pet food', NULL, 'pet-food', NULL, NULL, NULL),
(54, 4, 'Pet food', NULL, 'pet-food', NULL, NULL, NULL),
(54, 5, 'Pet food', NULL, 'pet-food', NULL, NULL, NULL),
(54, 6, 'Pet food', NULL, 'pet-food', NULL, NULL, NULL),
(54, 7, 'Pet food', NULL, 'pet-food', NULL, NULL, NULL),
(54, 8, 'Pet food', NULL, 'pet-food', NULL, NULL, NULL),
(55, 1, 'Chocolate', NULL, 'danish-microol', NULL, NULL, NULL),
(55, 2, 'Danish Microøl', NULL, 'danish-microol', NULL, NULL, NULL),
(55, 3, 'Danish Microøl', NULL, 'danish-microol', NULL, NULL, NULL),
(55, 4, 'Danish Microøl', NULL, 'danish-microol', NULL, NULL, NULL),
(55, 5, 'Danish Microøl', NULL, 'danish-microol', NULL, NULL, NULL),
(55, 6, 'Danish Microøl', NULL, 'danish-microol', NULL, NULL, NULL),
(55, 7, 'Danish Microøl', NULL, 'danish-microol', NULL, NULL, NULL),
(55, 8, 'Danish Microøl', NULL, 'danish-microol', NULL, NULL, NULL),
(56, 1, 'Candy Bags', NULL, 'cider-breezer-ice-etc', NULL, NULL, NULL),
(56, 2, 'Cider, Breezer, Ice, etc.', NULL, 'cider-breezer-ice-etc', NULL, NULL, NULL),
(56, 3, 'Cider, Breezer, Ice, etc.', NULL, 'cider-breezer-ice-etc', NULL, NULL, NULL),
(56, 4, 'Cider, Breezer, Ice, etc.', NULL, 'cider-breezer-ice-etc', NULL, NULL, NULL),
(56, 5, 'Cider, Breezer, Ice, etc.', NULL, 'cider-breezer-ice-etc', NULL, NULL, NULL),
(56, 6, 'Cider, Breezer, Ice, etc.', NULL, 'cider-breezer-ice-etc', NULL, NULL, NULL),
(56, 7, 'Cider, Breezer, Ice, etc.', NULL, 'cider-breezer-ice-etc', NULL, NULL, NULL),
(56, 8, 'Cider, Breezer, Ice, etc.', NULL, 'cider-breezer-ice-etc', NULL, NULL, NULL),
(57, 1, 'Gum & Lozenge', NULL, 'soda', NULL, NULL, NULL),
(57, 2, 'Soda', NULL, 'soda', NULL, NULL, NULL),
(57, 3, 'Soda', NULL, 'soda', NULL, NULL, NULL),
(57, 4, 'Soda', NULL, 'soda', NULL, NULL, NULL),
(57, 5, 'Soda', NULL, 'soda', NULL, NULL, NULL),
(57, 6, 'Soda', NULL, 'soda', NULL, NULL, NULL),
(57, 7, 'Soda', NULL, 'soda', NULL, NULL, NULL),
(57, 8, 'Soda', NULL, 'soda', NULL, NULL, NULL),
(58, 1, 'Chips &  Nuts', NULL, 'water', NULL, NULL, NULL),
(58, 2, 'Water', NULL, 'water', NULL, NULL, NULL),
(58, 3, 'Water', NULL, 'water', NULL, NULL, NULL),
(58, 4, 'Water', NULL, 'water', NULL, NULL, NULL),
(58, 5, 'Water', NULL, 'water', NULL, NULL, NULL),
(58, 6, 'Water', NULL, 'water', NULL, NULL, NULL),
(58, 7, 'Water', NULL, 'water', NULL, NULL, NULL),
(58, 8, 'Water', NULL, 'water', NULL, NULL, NULL),
(59, 1, 'Red wine', NULL, 'red-wine', NULL, NULL, NULL),
(59, 2, 'Red wine', NULL, 'red-wine', NULL, NULL, NULL),
(59, 3, 'Red wine', NULL, 'red-wine', NULL, NULL, NULL),
(59, 4, 'Red wine', NULL, 'red-wine', NULL, NULL, NULL),
(59, 5, 'Red wine', NULL, 'red-wine', NULL, NULL, NULL),
(59, 6, 'Red wine', NULL, 'red-wine', NULL, NULL, NULL),
(59, 7, 'Red wine', NULL, 'red-wine', NULL, NULL, NULL),
(59, 8, 'Red wine', NULL, 'red-wine', NULL, NULL, NULL),
(60, 1, 'White & rose wine', NULL, 'white-rose-wine', NULL, NULL, NULL),
(60, 2, 'White & rose wine', NULL, 'white-rose-wine', NULL, NULL, NULL),
(60, 3, 'White & rose wine', NULL, 'white-rose-wine', NULL, NULL, NULL),
(60, 4, 'White & rose wine', NULL, 'white-rose-wine', NULL, NULL, NULL),
(60, 5, 'White & rose wine', NULL, 'white-rose-wine', NULL, NULL, NULL),
(60, 6, 'White & rose wine', NULL, 'white-rose-wine', NULL, NULL, NULL),
(60, 7, 'White & rose wine', NULL, 'white-rose-wine', NULL, NULL, NULL),
(60, 8, 'White & rose wine', NULL, 'white-rose-wine', NULL, NULL, NULL),
(61, 1, 'Cognac & Whishy', NULL, 'wine-in-box', NULL, NULL, NULL),
(61, 2, 'Wine in Box', NULL, 'wine-in-box', NULL, NULL, NULL),
(61, 3, 'Wine in Box', NULL, 'wine-in-box', NULL, NULL, NULL),
(61, 4, 'Wine in Box', NULL, 'wine-in-box', NULL, NULL, NULL),
(61, 5, 'Wine in Box', NULL, 'wine-in-box', NULL, NULL, NULL),
(61, 6, 'Wine in Box', NULL, 'wine-in-box', NULL, NULL, NULL),
(61, 7, 'Wine in Box', NULL, 'wine-in-box', NULL, NULL, NULL),
(61, 8, 'Wine in Box', NULL, 'wine-in-box', NULL, NULL, NULL),
(62, 1, 'Vermouth', NULL, 'vermouth', NULL, NULL, NULL),
(62, 2, 'Vermouth', NULL, 'vermouth', NULL, NULL, NULL),
(62, 3, 'Vermouth', NULL, 'vermouth', NULL, NULL, NULL),
(62, 4, 'Vermouth', NULL, 'vermouth', NULL, NULL, NULL),
(62, 5, 'Vermouth', NULL, 'vermouth', NULL, NULL, NULL),
(62, 6, 'Vermouth', NULL, 'vermouth', NULL, NULL, NULL),
(62, 7, 'Vermouth', NULL, 'vermouth', NULL, NULL, NULL),
(62, 8, 'Vermouth', NULL, 'vermouth', NULL, NULL, NULL),
(63, 1, 'Sparkling', NULL, 'sparkling', NULL, NULL, NULL),
(63, 2, 'Sparkling', NULL, 'sparkling', NULL, NULL, NULL),
(63, 3, 'Sparkling', NULL, 'sparkling', NULL, NULL, NULL),
(63, 4, 'Sparkling', NULL, 'sparkling', NULL, NULL, NULL),
(63, 5, 'Sparkling', NULL, 'sparkling', NULL, NULL, NULL),
(63, 6, 'Sparkling', NULL, 'sparkling', NULL, NULL, NULL),
(63, 7, 'Sparkling', NULL, 'sparkling', NULL, NULL, NULL),
(63, 8, 'Sparkling', NULL, 'sparkling', NULL, NULL, NULL),
(64, 1, 'Port Wine & Liquor', NULL, 'port-wine-liquor', NULL, NULL, NULL),
(64, 2, 'Port Wine & Liquor', NULL, 'port-wine-liquor', NULL, NULL, NULL),
(64, 3, 'Port Wine & Liquor', NULL, 'port-wine-liquor', NULL, NULL, NULL),
(64, 4, 'Port Wine & Liquor', NULL, 'port-wine-liquor', NULL, NULL, NULL),
(64, 5, 'Port Wine & Liquor', NULL, 'port-wine-liquor', NULL, NULL, NULL),
(64, 6, 'Port Wine & Liquor', NULL, 'port-wine-liquor', NULL, NULL, NULL),
(64, 7, 'Port Wine & Liquor', NULL, 'port-wine-liquor', NULL, NULL, NULL),
(64, 8, 'Port Wine & Liquor', NULL, 'port-wine-liquor', NULL, NULL, NULL),
(65, 1, 'Beer', NULL, 'beer', NULL, NULL, NULL),
(65, 2, 'Beer', NULL, 'beer', NULL, NULL, NULL),
(65, 3, 'Beer', NULL, 'beer', NULL, NULL, NULL),
(65, 4, 'Beer', NULL, 'beer', NULL, NULL, NULL),
(65, 5, 'Beer', NULL, 'beer', NULL, NULL, NULL),
(65, 6, 'Beer', NULL, 'beer', NULL, NULL, NULL),
(65, 7, 'Beer', NULL, 'beer', NULL, NULL, NULL),
(65, 8, 'Beer', NULL, 'beer', NULL, NULL, NULL),
(66, 1, 'Juice', NULL, 'foreign-beer', NULL, NULL, NULL),
(66, 2, 'Foreign beer', NULL, 'foreign-beer', NULL, NULL, NULL),
(66, 3, 'Foreign beer', NULL, 'foreign-beer', NULL, NULL, NULL),
(66, 4, 'Foreign beer', NULL, 'foreign-beer', NULL, NULL, NULL),
(66, 5, 'Foreign beer', NULL, 'foreign-beer', NULL, NULL, NULL),
(66, 6, 'Foreign beer', NULL, 'foreign-beer', NULL, NULL, NULL),
(66, 7, 'Foreign beer', NULL, 'foreign-beer', NULL, NULL, NULL),
(66, 8, 'Foreign beer', NULL, 'foreign-beer', NULL, NULL, NULL),
(67, 1, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(67, 2, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(67, 3, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(67, 4, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(67, 5, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(67, 6, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(67, 7, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(67, 8, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(68, 1, 'Poultry', NULL, 'spring-rolls', NULL, NULL, NULL),
(68, 2, 'Spring rolls', NULL, 'spring-rolls', NULL, NULL, NULL),
(68, 3, 'Spring rolls', NULL, 'spring-rolls', NULL, NULL, NULL),
(68, 4, 'Spring rolls', NULL, 'spring-rolls', NULL, NULL, NULL),
(68, 5, 'Spring rolls', NULL, 'spring-rolls', NULL, NULL, NULL),
(68, 6, 'Spring rolls', NULL, 'spring-rolls', NULL, NULL, NULL),
(68, 7, 'Spring rolls', NULL, 'spring-rolls', NULL, NULL, NULL),
(68, 8, 'Spring rolls', NULL, 'spring-rolls', NULL, NULL, NULL),
(69, 1, 'Vegetables', NULL, 'rolls', NULL, NULL, NULL),
(69, 2, 'Rolls', NULL, 'rolls', NULL, NULL, NULL),
(69, 3, 'Rolls', NULL, 'rolls', NULL, NULL, NULL),
(69, 4, 'Rolls', NULL, 'rolls', NULL, NULL, NULL),
(69, 5, 'Rolls', NULL, 'rolls', NULL, NULL, NULL),
(69, 6, 'Rolls', NULL, 'rolls', NULL, NULL, NULL),
(69, 7, 'Rolls', NULL, 'rolls', NULL, NULL, NULL),
(69, 8, 'Rolls', NULL, 'rolls', NULL, NULL, NULL),
(70, 1, 'Cakes', NULL, 'cake-and-', NULL, NULL, NULL),
(70, 2, 'Cake and ', NULL, 'cake-and-', NULL, NULL, NULL),
(70, 3, 'Cake and ', NULL, 'cake-and-', NULL, NULL, NULL),
(70, 4, 'Cake and ', NULL, 'cake-and-', NULL, NULL, NULL),
(70, 5, 'Cake and ', NULL, 'cake-and-', NULL, NULL, NULL),
(70, 6, 'Cake and ', NULL, 'cake-and-', NULL, NULL, NULL),
(70, 7, 'Cake and ', NULL, 'cake-and-', NULL, NULL, NULL),
(70, 8, 'Cake and ', NULL, 'cake-and-', NULL, NULL, NULL),
(74, 1, 'Biscuits ', NULL, 'biscuits-crakers', NULL, NULL, NULL),
(74, 2, 'Biscuits & Crakers', NULL, 'biscuits-crakers', NULL, NULL, NULL),
(74, 3, 'Biscuits & Crakers', NULL, 'biscuits-crakers', NULL, NULL, NULL),
(74, 4, 'Biscuits & Crakers', NULL, 'biscuits-crakers', NULL, NULL, NULL),
(74, 5, 'Biscuits & Crakers', NULL, 'biscuits-crakers', NULL, NULL, NULL),
(74, 6, 'Biscuits & Crakers', NULL, 'biscuits-crakers', NULL, NULL, NULL),
(74, 7, 'Biscuits & Crakers', NULL, 'biscuits-crakers', NULL, NULL, NULL),
(74, 8, 'Biscuits & Crakers', NULL, 'biscuits-crakers', NULL, NULL, NULL),
(75, 1, 'Fast Food Bread', NULL, 'burgerbuns-hotdog', NULL, NULL, NULL),
(75, 2, 'Burgerbuns, Hotdog', NULL, 'burgerbuns-hotdog', NULL, NULL, NULL),
(75, 3, 'Burgerbuns, Hotdog', NULL, 'burgerbuns-hotdog', NULL, NULL, NULL),
(75, 4, 'Burgerbuns, Hotdog', NULL, 'burgerbuns-hotdog', NULL, NULL, NULL),
(75, 5, 'Burgerbuns, Hotdog', NULL, 'burgerbuns-hotdog', NULL, NULL, NULL),
(75, 6, 'Burgerbuns, Hotdog', NULL, 'burgerbuns-hotdog', NULL, NULL, NULL),
(75, 7, 'Burgerbuns, Hotdog', NULL, 'burgerbuns-hotdog', NULL, NULL, NULL),
(75, 8, 'Burgerbuns, Hotdog', NULL, 'burgerbuns-hotdog', NULL, NULL, NULL),
(76, 1, 'Desserts', NULL, 'desserts', NULL, NULL, NULL),
(76, 2, 'Desserts', NULL, 'desserts', NULL, NULL, NULL),
(76, 3, 'Desserts', NULL, 'desserts', NULL, NULL, NULL),
(76, 4, 'Desserts', NULL, 'desserts', NULL, NULL, NULL),
(76, 5, 'Desserts', NULL, 'desserts', NULL, NULL, NULL),
(76, 6, 'Desserts', NULL, 'desserts', NULL, NULL, NULL),
(76, 7, 'Desserts', NULL, 'desserts', NULL, NULL, NULL),
(76, 8, 'Desserts', NULL, 'desserts', NULL, NULL, NULL),
(77, 1, 'Ice cream', NULL, 'ice-cream', NULL, NULL, NULL),
(77, 2, 'Ice cream', NULL, 'ice-cream', NULL, NULL, NULL),
(77, 3, 'Ice cream', NULL, 'ice-cream', NULL, NULL, NULL),
(77, 4, 'Ice cream', NULL, 'ice-cream', NULL, NULL, NULL),
(77, 5, 'Ice cream', NULL, 'ice-cream', NULL, NULL, NULL),
(77, 6, 'Ice cream', NULL, 'ice-cream', NULL, NULL, NULL),
(77, 7, 'Ice cream', NULL, 'ice-cream', NULL, NULL, NULL),
(77, 8, 'Ice cream', NULL, 'ice-cream', NULL, NULL, NULL),
(78, 1, 'Fish', NULL, 'fish', NULL, NULL, NULL),
(78, 2, 'Fish', NULL, 'fish', NULL, NULL, NULL),
(78, 3, 'Fish', NULL, 'fish', NULL, NULL, NULL),
(78, 4, 'Fish', NULL, 'fish', NULL, NULL, NULL),
(78, 5, 'Fish', NULL, 'fish', NULL, NULL, NULL),
(78, 6, 'Fish', NULL, 'fish', NULL, NULL, NULL),
(78, 7, 'Fish', NULL, 'fish', NULL, NULL, NULL),
(78, 8, 'Fish', NULL, 'fish', NULL, NULL, NULL),
(79, 1, 'Soups', NULL, 'meat', NULL, NULL, NULL),
(79, 2, 'Meat', NULL, 'meat', NULL, NULL, NULL),
(79, 3, 'Meat', NULL, 'meat', NULL, NULL, NULL),
(79, 4, 'Meat', NULL, 'meat', NULL, NULL, NULL),
(79, 5, 'Meat', NULL, 'meat', NULL, NULL, NULL),
(79, 6, 'Meat', NULL, 'meat', NULL, NULL, NULL),
(79, 7, 'Meat', NULL, 'meat', NULL, NULL, NULL),
(79, 8, 'Meat', NULL, 'meat', NULL, NULL, NULL),
(80, 1, 'Butter & Margarine', NULL, 'butter-margarine', NULL, NULL, NULL),
(80, 2, 'Butter & Margarine', NULL, 'butter-margarine', NULL, NULL, NULL),
(80, 3, 'Butter & Margarine', NULL, 'butter-margarine', NULL, NULL, NULL),
(80, 4, 'Butter & Margarine', NULL, 'butter-margarine', NULL, NULL, NULL),
(80, 5, 'Butter & Margarine', NULL, 'butter-margarine', NULL, NULL, NULL),
(80, 6, 'Butter & Margarine', NULL, 'butter-margarine', NULL, NULL, NULL),
(80, 7, 'Butter & Margarine', NULL, 'butter-margarine', NULL, NULL, NULL),
(80, 8, 'Butter & Margarine', NULL, 'butter-margarine', NULL, NULL, NULL),
(81, 1, 'Eggs & Yest', NULL, 'eggs-yest', NULL, NULL, NULL),
(81, 2, 'Eggs & Yest', NULL, 'eggs-yest', NULL, NULL, NULL),
(81, 3, 'Eggs & Yest', NULL, 'eggs-yest', NULL, NULL, NULL),
(81, 4, 'Eggs & Yest', NULL, 'eggs-yest', NULL, NULL, NULL),
(81, 5, 'Eggs & Yest', NULL, 'eggs-yest', NULL, NULL, NULL),
(81, 6, 'Eggs & Yest', NULL, 'eggs-yest', NULL, NULL, NULL),
(81, 7, 'Eggs & Yest', NULL, 'eggs-yest', NULL, NULL, NULL),
(81, 8, 'Eggs & Yest', NULL, 'eggs-yest', NULL, NULL, NULL),
(82, 1, 'Dessert', NULL, 'dessert', NULL, NULL, NULL),
(82, 2, 'Dessert', NULL, 'dessert', NULL, NULL, NULL),
(82, 3, 'Dessert', NULL, 'dessert', NULL, NULL, NULL),
(82, 4, 'Dessert', NULL, 'dessert', NULL, NULL, NULL),
(82, 5, 'Dessert', NULL, 'dessert', NULL, NULL, NULL),
(82, 6, 'Dessert', NULL, 'dessert', NULL, NULL, NULL),
(82, 7, 'Dessert', NULL, 'dessert', NULL, NULL, NULL),
(82, 8, 'Dessert', NULL, 'dessert', NULL, NULL, NULL),
(83, 1, 'Sauces Frigde', NULL, 'sauces-frigde', NULL, NULL, NULL),
(83, 2, 'Sauces Frigde', NULL, 'sauces-frigde', NULL, NULL, NULL),
(83, 3, 'Sauces Frigde', NULL, 'sauces-frigde', NULL, NULL, NULL),
(83, 4, 'Sauces Frigde', NULL, 'sauces-frigde', NULL, NULL, NULL),
(83, 5, 'Sauces Frigde', NULL, 'sauces-frigde', NULL, NULL, NULL),
(83, 6, 'Sauces Frigde', NULL, 'sauces-frigde', NULL, NULL, NULL),
(83, 7, 'Sauces Frigde', NULL, 'sauces-frigde', NULL, NULL, NULL),
(83, 8, 'Sauces Frigde', NULL, 'sauces-frigde', NULL, NULL, NULL),
(84, 1, 'Smoked Meat', NULL, 'smoked-meat', NULL, NULL, NULL),
(84, 2, 'Smoked Meat', NULL, 'smoked-meat', NULL, NULL, NULL),
(84, 3, 'Smoked Meat', NULL, 'smoked-meat', NULL, NULL, NULL),
(84, 4, 'Smoked Meat', NULL, 'smoked-meat', NULL, NULL, NULL),
(84, 5, 'Smoked Meat', NULL, 'smoked-meat', NULL, NULL, NULL),
(84, 6, 'Smoked Meat', NULL, 'smoked-meat', NULL, NULL, NULL),
(84, 7, 'Smoked Meat', NULL, 'smoked-meat', NULL, NULL, NULL),
(84, 8, 'Smoked Meat', NULL, 'smoked-meat', NULL, NULL, NULL),
(85, 1, 'Sausages & Bacon', NULL, 'sausages-bacon', NULL, NULL, NULL),
(85, 2, 'Sausages & Bacon', NULL, 'sausages-bacon', NULL, NULL, NULL),
(85, 3, 'Sausages & Bacon', NULL, 'sausages-bacon', NULL, NULL, NULL),
(85, 4, 'Sausages & Bacon', NULL, 'sausages-bacon', NULL, NULL, NULL),
(85, 5, 'Sausages & Bacon', NULL, 'sausages-bacon', NULL, NULL, NULL),
(85, 6, 'Sausages & Bacon', NULL, 'sausages-bacon', NULL, NULL, NULL),
(85, 7, 'Sausages & Bacon', NULL, 'sausages-bacon', NULL, NULL, NULL),
(85, 8, 'Sausages & Bacon', NULL, 'sausages-bacon', NULL, NULL, NULL),
(86, 1, 'Pate', NULL, 'pate', NULL, NULL, NULL),
(86, 2, 'Pate', NULL, 'pate', NULL, NULL, NULL),
(86, 3, 'Pate', NULL, 'pate', NULL, NULL, NULL),
(86, 4, 'Pate', NULL, 'pate', NULL, NULL, NULL),
(86, 5, 'Pate', NULL, 'pate', NULL, NULL, NULL),
(86, 6, 'Pate', NULL, 'pate', NULL, NULL, NULL),
(86, 7, 'Pate', NULL, 'pate', NULL, NULL, NULL),
(86, 8, 'Pate', NULL, 'pate', NULL, NULL, NULL),
(87, 1, 'Salads', NULL, 'salads', NULL, NULL, NULL),
(87, 2, 'Salads', NULL, 'salads', NULL, NULL, NULL),
(87, 3, 'Salads', NULL, 'salads', NULL, NULL, NULL),
(87, 4, 'Salads', NULL, 'salads', NULL, NULL, NULL),
(87, 5, 'Salads', NULL, 'salads', NULL, NULL, NULL),
(87, 6, 'Salads', NULL, 'salads', NULL, NULL, NULL),
(87, 7, 'Salads', NULL, 'salads', NULL, NULL, NULL),
(87, 8, 'Salads', NULL, 'salads', NULL, NULL, NULL),
(88, 1, 'Sliced Meat', NULL, 'sliced-meat', NULL, NULL, NULL),
(88, 2, 'Sliced Meat', NULL, 'sliced-meat', NULL, NULL, NULL),
(88, 3, 'Sliced Meat', NULL, 'sliced-meat', NULL, NULL, NULL),
(88, 4, 'Sliced Meat', NULL, 'sliced-meat', NULL, NULL, NULL),
(88, 5, 'Sliced Meat', NULL, 'sliced-meat', NULL, NULL, NULL),
(88, 6, 'Sliced Meat', NULL, 'sliced-meat', NULL, NULL, NULL),
(88, 7, 'Sliced Meat', NULL, 'sliced-meat', NULL, NULL, NULL),
(88, 8, 'Sliced Meat', NULL, 'sliced-meat', NULL, NULL, NULL),
(89, 1, 'Whole Meat ', NULL, 'whole-meat-', NULL, NULL, NULL),
(89, 2, 'Whole Meat ', NULL, 'whole-meat-', NULL, NULL, NULL),
(89, 3, 'Whole Meat ', NULL, 'whole-meat-', NULL, NULL, NULL),
(89, 4, 'Whole Meat ', NULL, 'whole-meat-', NULL, NULL, NULL),
(89, 5, 'Whole Meat ', NULL, 'whole-meat-', NULL, NULL, NULL),
(89, 6, 'Whole Meat ', NULL, 'whole-meat-', NULL, NULL, NULL),
(89, 7, 'Whole Meat ', NULL, 'whole-meat-', NULL, NULL, NULL),
(89, 8, 'Whole Meat ', NULL, 'whole-meat-', NULL, NULL, NULL),
(90, 1, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(90, 2, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(90, 3, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(90, 4, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(90, 5, 'Poultry', NULL, 'poultry', NULL, NULL, NULL);
INSERT INTO `ps_category_lang` (`id_category`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(90, 6, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(90, 7, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(90, 8, 'Poultry', NULL, 'poultry', NULL, NULL, NULL),
(91, 1, 'Ready Meals', NULL, 'ready-meals', NULL, NULL, NULL),
(91, 2, 'Ready Meals', NULL, 'ready-meals', NULL, NULL, NULL),
(91, 3, 'Ready Meals', NULL, 'ready-meals', NULL, NULL, NULL),
(91, 4, 'Ready Meals', NULL, 'ready-meals', NULL, NULL, NULL),
(91, 5, 'Ready Meals', NULL, 'ready-meals', NULL, NULL, NULL),
(91, 6, 'Ready Meals', NULL, 'ready-meals', NULL, NULL, NULL),
(91, 7, 'Ready Meals', NULL, 'ready-meals', NULL, NULL, NULL),
(91, 8, 'Ready Meals', NULL, 'ready-meals', NULL, NULL, NULL),
(92, 1, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(92, 2, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(92, 3, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(92, 4, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(92, 5, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(92, 6, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(92, 7, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(92, 8, 'Pizza', NULL, 'pizza', NULL, NULL, NULL),
(93, 1, 'Baby Food', NULL, 'baby-food', NULL, NULL, NULL),
(93, 2, 'Baby Food', NULL, 'baby-food', NULL, NULL, NULL),
(93, 3, 'Baby Food', NULL, 'baby-food', NULL, NULL, NULL),
(93, 4, 'Baby Food', NULL, 'baby-food', NULL, NULL, NULL),
(93, 5, 'Baby Food', NULL, 'baby-food', NULL, NULL, NULL),
(93, 6, 'Baby Food', NULL, 'baby-food', NULL, NULL, NULL),
(93, 7, 'Baby Food', NULL, 'baby-food', NULL, NULL, NULL),
(93, 8, 'Baby Food', NULL, 'baby-food', NULL, NULL, NULL),
(94, 1, 'Cereals', NULL, 'cereals', NULL, NULL, NULL),
(94, 2, 'Cereals', NULL, 'cereals', NULL, NULL, NULL),
(94, 3, 'Cereals', NULL, 'cereals', NULL, NULL, NULL),
(94, 4, 'Cereals', NULL, 'cereals', NULL, NULL, NULL),
(94, 5, 'Cereals', NULL, 'cereals', NULL, NULL, NULL),
(94, 6, 'Cereals', NULL, 'cereals', NULL, NULL, NULL),
(94, 7, 'Cereals', NULL, 'cereals', NULL, NULL, NULL),
(94, 8, 'Cereals', NULL, 'cereals', NULL, NULL, NULL),
(95, 1, 'Coffee, Tee, Chocolate', NULL, 'coffee-tee-chocolate', NULL, NULL, NULL),
(95, 2, 'Coffee, Tee, Chocolate', NULL, 'coffee-tee-chocolate', NULL, NULL, NULL),
(95, 3, 'Coffee, Tee, Chocolate', NULL, 'coffee-tee-chocolate', NULL, NULL, NULL),
(95, 4, 'Coffee, Tee, Chocolate', NULL, 'coffee-tee-chocolate', NULL, NULL, NULL),
(95, 5, 'Coffee, Tee, Chocolate', NULL, 'coffee-tee-chocolate', NULL, NULL, NULL),
(95, 6, 'Coffee, Tee, Chocolate', NULL, 'coffee-tee-chocolate', NULL, NULL, NULL),
(95, 7, 'Coffee, Tee, Chocolate', NULL, 'coffee-tee-chocolate', NULL, NULL, NULL),
(95, 8, 'Coffee, Tee, Chocolate', NULL, 'coffee-tee-chocolate', NULL, NULL, NULL),
(96, 1, 'Jam, Honey', NULL, 'jam-honey-chocolate-cream', NULL, NULL, NULL),
(96, 2, 'Jam, Honey, Chocolate Cream', NULL, 'jam-honey-chocolate-cream', NULL, NULL, NULL),
(96, 3, 'Jam, Honey, Chocolate Cream', NULL, 'jam-honey-chocolate-cream', NULL, NULL, NULL),
(96, 4, 'Jam, Honey, Chocolate Cream', NULL, 'jam-honey-chocolate-cream', NULL, NULL, NULL),
(96, 5, 'Jam, Honey, Chocolate Cream', NULL, 'jam-honey-chocolate-cream', NULL, NULL, NULL),
(96, 6, 'Jam, Honey, Chocolate Cream', NULL, 'jam-honey-chocolate-cream', NULL, NULL, NULL),
(96, 7, 'Jam, Honey, Chocolate Cream', NULL, 'jam-honey-chocolate-cream', NULL, NULL, NULL),
(96, 8, 'Jam, Honey, Chocolate Cream', NULL, 'jam-honey-chocolate-cream', NULL, NULL, NULL),
(97, 1, 'Beetroot, Gherkings etc.', NULL, 'beetroot-gherkings-etc', NULL, NULL, NULL),
(97, 2, 'Beetroot, Gherkings etc.', NULL, 'beetroot-gherkings-etc', NULL, NULL, NULL),
(97, 3, 'Beetroot, Gherkings etc.', NULL, 'beetroot-gherkings-etc', NULL, NULL, NULL),
(97, 4, 'Beetroot, Gherkings etc.', NULL, 'beetroot-gherkings-etc', NULL, NULL, NULL),
(97, 5, 'Beetroot, Gherkings etc.', NULL, 'beetroot-gherkings-etc', NULL, NULL, NULL),
(97, 6, 'Beetroot, Gherkings etc.', NULL, 'beetroot-gherkings-etc', NULL, NULL, NULL),
(97, 7, 'Beetroot, Gherkings etc.', NULL, 'beetroot-gherkings-etc', NULL, NULL, NULL),
(97, 8, 'Beetroot, Gherkings etc.', NULL, 'beetroot-gherkings-etc', NULL, NULL, NULL),
(98, 1, 'Olives', NULL, 'olives', NULL, NULL, NULL),
(98, 2, 'Olives', NULL, 'olives', NULL, NULL, NULL),
(98, 3, 'Olives', NULL, 'olives', NULL, NULL, NULL),
(98, 4, 'Olives', NULL, 'olives', NULL, NULL, NULL),
(98, 5, 'Olives', NULL, 'olives', NULL, NULL, NULL),
(98, 6, 'Olives', NULL, 'olives', NULL, NULL, NULL),
(98, 7, 'Olives', NULL, 'olives', NULL, NULL, NULL),
(98, 8, 'Olives', NULL, 'olives', NULL, NULL, NULL),
(99, 1, 'Mex - Thai - Indian', NULL, 'mex-thai-indian', NULL, NULL, NULL),
(99, 2, 'Mex - Thai - Indian', NULL, 'mex-thai-indian', NULL, NULL, NULL),
(99, 3, 'Mex - Thai - Indian', NULL, 'mex-thai-indian', NULL, NULL, NULL),
(99, 4, 'Mex - Thai - Indian', NULL, 'mex-thai-indian', NULL, NULL, NULL),
(99, 5, 'Mex - Thai - Indian', NULL, 'mex-thai-indian', NULL, NULL, NULL),
(99, 6, 'Mex - Thai - Indian', NULL, 'mex-thai-indian', NULL, NULL, NULL),
(99, 7, 'Mex - Thai - Indian', NULL, 'mex-thai-indian', NULL, NULL, NULL),
(99, 8, 'Mex - Thai - Indian', NULL, 'mex-thai-indian', NULL, NULL, NULL),
(100, 1, 'Ready Meals', NULL, 'ready', NULL, NULL, NULL),
(100, 2, 'Ready Meals', NULL, 'ready', NULL, NULL, NULL),
(100, 3, 'Ready Meals', NULL, 'ready', NULL, NULL, NULL),
(100, 4, 'Ready Meals', NULL, 'ready', NULL, NULL, NULL),
(100, 5, 'Ready Meals', NULL, 'ready', NULL, NULL, NULL),
(100, 6, 'Ready Meals', NULL, 'ready', NULL, NULL, NULL),
(100, 7, 'Ready Meals', NULL, 'ready', NULL, NULL, NULL),
(100, 8, 'Ready Meals', NULL, 'ready', NULL, NULL, NULL),
(101, 1, 'Soda ', NULL, 'soda-', NULL, NULL, NULL),
(101, 2, 'Soda ', NULL, 'soda-', NULL, NULL, NULL),
(101, 3, 'Soda ', NULL, 'soda-', NULL, NULL, NULL),
(101, 4, 'Soda ', NULL, 'soda-', NULL, NULL, NULL),
(101, 5, 'Soda ', NULL, 'soda-', NULL, NULL, NULL),
(101, 6, 'Soda ', NULL, 'soda-', NULL, NULL, NULL),
(101, 7, 'Soda ', NULL, 'soda-', NULL, NULL, NULL),
(101, 8, 'Soda ', NULL, 'soda-', NULL, NULL, NULL),
(102, 1, 'Spirits', NULL, 'spirits', NULL, NULL, NULL),
(102, 2, 'Spirits', NULL, 'spirits', NULL, NULL, NULL),
(102, 3, 'Spirits', NULL, 'spirits', NULL, NULL, NULL),
(102, 4, 'Spirits', NULL, 'spirits', NULL, NULL, NULL),
(102, 5, 'Spirits', NULL, 'spirits', NULL, NULL, NULL),
(102, 6, 'Spirits', NULL, 'spirits', NULL, NULL, NULL),
(102, 7, 'Spirits', NULL, 'spirits', NULL, NULL, NULL),
(102, 8, 'Spirits', NULL, 'spirits', NULL, NULL, NULL),
(103, 1, 'Bitter and Brandies', NULL, 'bitter-and-brandies', NULL, NULL, NULL),
(103, 2, 'Bitter and Brandies', NULL, 'bitter-and-brandies', NULL, NULL, NULL),
(103, 3, 'Bitter and Brandies', NULL, 'bitter-and-brandies', NULL, NULL, NULL),
(103, 4, 'Bitter and Brandies', NULL, 'bitter-and-brandies', NULL, NULL, NULL),
(103, 5, 'Bitter and Brandies', NULL, 'bitter-and-brandies', NULL, NULL, NULL),
(103, 6, 'Bitter and Brandies', NULL, 'bitter-and-brandies', NULL, NULL, NULL),
(103, 7, 'Bitter and Brandies', NULL, 'bitter-and-brandies', NULL, NULL, NULL),
(103, 8, 'Bitter and Brandies', NULL, 'bitter-and-brandies', NULL, NULL, NULL),
(104, 1, 'Alcohol-Water', NULL, 'alcohol-water', NULL, NULL, NULL),
(104, 2, 'Alcohol-Water', NULL, 'alcohol-water', NULL, NULL, NULL),
(104, 3, 'Alcohol-Water', NULL, 'alcohol-water', NULL, NULL, NULL),
(104, 4, 'Alcohol-Water', NULL, 'alcohol-water', NULL, NULL, NULL),
(104, 5, 'Alcohol-Water', NULL, 'alcohol-water', NULL, NULL, NULL),
(104, 6, 'Alcohol-Water', NULL, 'alcohol-water', NULL, NULL, NULL),
(104, 7, 'Alcohol-Water', NULL, 'alcohol-water', NULL, NULL, NULL),
(104, 8, 'Alcohol-Water', NULL, 'alcohol-water', NULL, NULL, NULL),
(105, 1, 'Energy Drinks', NULL, 'energy-drinks', NULL, NULL, NULL),
(105, 2, 'Energy Drinks', NULL, 'energy-drinks', NULL, NULL, NULL),
(105, 3, 'Energy Drinks', NULL, 'energy-drinks', NULL, NULL, NULL),
(105, 4, 'Energy Drinks', NULL, 'energy-drinks', NULL, NULL, NULL),
(105, 5, 'Energy Drinks', NULL, 'energy-drinks', NULL, NULL, NULL),
(105, 6, 'Energy Drinks', NULL, 'energy-drinks', NULL, NULL, NULL),
(105, 7, 'Energy Drinks', NULL, 'energy-drinks', NULL, NULL, NULL),
(105, 8, 'Energy Drinks', NULL, 'energy-drinks', NULL, NULL, NULL),
(106, 1, 'Water', NULL, 'water', NULL, NULL, NULL),
(106, 2, 'Water', NULL, 'water', NULL, NULL, NULL),
(106, 3, 'Water', NULL, 'water', NULL, NULL, NULL),
(106, 4, 'Water', NULL, 'water', NULL, NULL, NULL),
(106, 5, 'Water', NULL, 'water', NULL, NULL, NULL),
(106, 6, 'Water', NULL, 'water', NULL, NULL, NULL),
(106, 7, 'Water', NULL, 'water', NULL, NULL, NULL),
(106, 8, 'Water', NULL, 'water', NULL, NULL, NULL),
(107, 1, 'Cider & Ice Tea', NULL, 'cider-ice-tea', NULL, NULL, NULL),
(107, 2, 'Cider & Ice Tea', NULL, 'cider-ice-tea', NULL, NULL, NULL),
(107, 3, 'Cider & Ice Tea', NULL, 'cider-ice-tea', NULL, NULL, NULL),
(107, 4, 'Cider & Ice Tea', NULL, 'cider-ice-tea', NULL, NULL, NULL),
(107, 5, 'Cider & Ice Tea', NULL, 'cider-ice-tea', NULL, NULL, NULL),
(107, 6, 'Cider & Ice Tea', NULL, 'cider-ice-tea', NULL, NULL, NULL),
(107, 7, 'Cider & Ice Tea', NULL, 'cider-ice-tea', NULL, NULL, NULL),
(107, 8, 'Cider & Ice Tea', NULL, 'cider-ice-tea', NULL, NULL, NULL),
(108, 1, 'Pix & Mix', NULL, 'pix-mix', NULL, NULL, NULL),
(108, 2, 'Pix & Mix', NULL, 'pix-mix', NULL, NULL, NULL),
(108, 3, 'Pix & Mix', NULL, 'pix-mix', NULL, NULL, NULL),
(108, 4, 'Pix & Mix', NULL, 'pix-mix', NULL, NULL, NULL),
(108, 5, 'Pix & Mix', NULL, 'pix-mix', NULL, NULL, NULL),
(108, 6, 'Pix & Mix', NULL, 'pix-mix', NULL, NULL, NULL),
(108, 7, 'Pix & Mix', NULL, 'pix-mix', NULL, NULL, NULL),
(108, 8, 'Pix & Mix', NULL, 'pix-mix', NULL, NULL, NULL),
(109, 1, 'Other Candy', NULL, 'other-candy', NULL, NULL, NULL),
(109, 2, 'Other Candy', NULL, 'other-candy', NULL, NULL, NULL),
(109, 3, 'Other Candy', NULL, 'other-candy', NULL, NULL, NULL),
(109, 4, 'Other Candy', NULL, 'other-candy', NULL, NULL, NULL),
(109, 5, 'Other Candy', NULL, 'other-candy', NULL, NULL, NULL),
(109, 6, 'Other Candy', NULL, 'other-candy', NULL, NULL, NULL),
(109, 7, 'Other Candy', NULL, 'other-candy', NULL, NULL, NULL),
(109, 8, 'Other Candy', NULL, 'other-candy', NULL, NULL, NULL),
(110, 1, 'Soap', NULL, 'soap', NULL, NULL, NULL),
(110, 2, 'Soap', NULL, 'soap', NULL, NULL, NULL),
(110, 3, 'Soap', NULL, 'soap', NULL, NULL, NULL),
(110, 4, 'Soap', NULL, 'soap', NULL, NULL, NULL),
(110, 5, 'Soap', NULL, 'soap', NULL, NULL, NULL),
(110, 6, 'Soap', NULL, 'soap', NULL, NULL, NULL),
(110, 7, 'Soap', NULL, 'soap', NULL, NULL, NULL),
(110, 8, 'Soap', NULL, 'soap', NULL, NULL, NULL),
(111, 1, 'Toiletries', NULL, 'toiletries', NULL, NULL, NULL),
(111, 2, 'Toiletries', NULL, 'toiletries', NULL, NULL, NULL),
(111, 3, 'Toiletries', NULL, 'toiletries', NULL, NULL, NULL),
(111, 4, 'Toiletries', NULL, 'toiletries', NULL, NULL, NULL),
(111, 5, 'Toiletries', NULL, 'toiletries', NULL, NULL, NULL),
(111, 6, 'Toiletries', NULL, 'toiletries', NULL, NULL, NULL),
(111, 7, 'Toiletries', NULL, 'toiletries', NULL, NULL, NULL),
(111, 8, 'Toiletries', NULL, 'toiletries', NULL, NULL, NULL),
(112, 1, 'Bodycare', NULL, 'bodycare', NULL, NULL, NULL),
(112, 2, 'Bodycare', NULL, 'bodycare', NULL, NULL, NULL),
(112, 3, 'Bodycare', NULL, 'bodycare', NULL, NULL, NULL),
(112, 4, 'Bodycare', NULL, 'bodycare', NULL, NULL, NULL),
(112, 5, 'Bodycare', NULL, 'bodycare', NULL, NULL, NULL),
(112, 6, 'Bodycare', NULL, 'bodycare', NULL, NULL, NULL),
(112, 7, 'Bodycare', NULL, 'bodycare', NULL, NULL, NULL),
(112, 8, 'Bodycare', NULL, 'bodycare', NULL, NULL, NULL),
(113, 1, 'Kitchen Towels', NULL, 'kitchen-towels', NULL, NULL, NULL),
(113, 2, 'Kitchen Towels', NULL, 'kitchen-towels', NULL, NULL, NULL),
(113, 3, 'Kitchen Towels', NULL, 'kitchen-towels', NULL, NULL, NULL),
(113, 4, 'Kitchen Towels', NULL, 'kitchen-towels', NULL, NULL, NULL),
(113, 5, 'Kitchen Towels', NULL, 'kitchen-towels', NULL, NULL, NULL),
(113, 6, 'Kitchen Towels', NULL, 'kitchen-towels', NULL, NULL, NULL),
(113, 7, 'Kitchen Towels', NULL, 'kitchen-towels', NULL, NULL, NULL),
(113, 8, 'Kitchen Towels', NULL, 'kitchen-towels', NULL, NULL, NULL),
(114, 1, 'Toilet Rolls', NULL, 'toilet-rolls', NULL, NULL, NULL),
(114, 2, 'Toilet Rolls', NULL, 'toilet-rolls', NULL, NULL, NULL),
(114, 3, 'Toilet Rolls', NULL, 'toilet-rolls', NULL, NULL, NULL),
(114, 4, 'Toilet Rolls', NULL, 'toilet-rolls', NULL, NULL, NULL),
(114, 5, 'Toilet Rolls', NULL, 'toilet-rolls', NULL, NULL, NULL),
(114, 6, 'Toilet Rolls', NULL, 'toilet-rolls', NULL, NULL, NULL),
(114, 7, 'Toilet Rolls', NULL, 'toilet-rolls', NULL, NULL, NULL),
(114, 8, 'Toilet Rolls', NULL, 'toilet-rolls', NULL, NULL, NULL),
(116, 1, 'Fresh from  Bakery', NULL, 'fresh-for-bakery', NULL, NULL, NULL),
(116, 2, 'Fresh for Bakery', NULL, 'fresh-for-bakery', NULL, NULL, NULL),
(116, 3, 'Fresh for Bakery', NULL, 'fresh-for-bakery', NULL, NULL, NULL),
(116, 4, 'Fresh for Bakery', NULL, 'fresh-for-bakery', NULL, NULL, NULL),
(116, 5, 'Fresh for Bakery', NULL, 'fresh-for-bakery', NULL, NULL, NULL),
(116, 6, 'Fresh for Bakery', NULL, 'fresh-for-bakery', NULL, NULL, NULL),
(116, 7, 'Fresh for Bakery', NULL, 'fresh-for-bakery', NULL, NULL, NULL),
(116, 8, 'Fresh for Bakery', NULL, 'fresh-for-bakery', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_category_product`
--

DROP TABLE IF EXISTS `ps_category_product`;
CREATE TABLE IF NOT EXISTS `ps_category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `category_product_index` (`id_category`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_category_product`
--

INSERT INTO `ps_category_product` (`id_category`, `id_product`, `position`) VALUES
(1, 10, 0),
(25, 10, 0),
(1, 11, 1),
(2, 12, 0),
(1, 13, 2),
(2, 13, 1),
(116, 13, 0),
(1, 14, 3),
(2, 14, 2),
(116, 14, 1),
(1, 15, 4),
(2, 15, 3),
(116, 15, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cms`
--

DROP TABLE IF EXISTS `ps_cms`;
CREATE TABLE IF NOT EXISTS `ps_cms` (
  `id_cms` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ps_cms`
--

INSERT INTO `ps_cms` (`id_cms`, `id_cms_category`, `position`, `active`) VALUES
(1, 1, 0, 1),
(2, 1, 1, 1),
(3, 1, 2, 1),
(4, 1, 3, 1),
(5, 1, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cms_block`
--

DROP TABLE IF EXISTS `ps_cms_block`;
CREATE TABLE IF NOT EXISTS `ps_cms_block` (
  `id_cms_block` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) unsigned NOT NULL,
  `name` varchar(40) NOT NULL,
  `location` tinyint(1) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `display_store` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms_block`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_cms_block`
--

INSERT INTO `ps_cms_block` (`id_cms_block`, `id_cms_category`, `name`, `location`, `position`, `display_store`) VALUES
(1, 1, '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cms_block_lang`
--

DROP TABLE IF EXISTS `ps_cms_block_lang`;
CREATE TABLE IF NOT EXISTS `ps_cms_block_lang` (
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_cms_block`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_cms_block_lang`
--

INSERT INTO `ps_cms_block_lang` (`id_cms_block`, `id_lang`, `name`) VALUES
(1, 1, 'Information'),
(1, 2, 'Informations'),
(1, 3, 'Informaciónes'),
(1, 4, 'Information'),
(1, 5, 'Informazioni'),
(1, 6, 'Information'),
(1, 7, 'Information'),
(1, 8, 'Information');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cms_block_page`
--

DROP TABLE IF EXISTS `ps_cms_block_page`;
CREATE TABLE IF NOT EXISTS `ps_cms_block_page` (
  `id_cms_block_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_cms` int(10) unsigned NOT NULL,
  `is_category` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id_cms_block_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ps_cms_block_page`
--

INSERT INTO `ps_cms_block_page` (`id_cms_block_page`, `id_cms_block`, `id_cms`, `is_category`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cms_category`
--

DROP TABLE IF EXISTS `ps_cms_category`;
CREATE TABLE IF NOT EXISTS `ps_cms_category` (
  `id_cms_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_cms_category`
--

INSERT INTO `ps_cms_category` (`id_cms_category`, `id_parent`, `level_depth`, `active`, `date_add`, `date_upd`, `position`) VALUES
(1, 0, 0, 1, '2011-09-05 03:03:32', '2011-09-05 03:03:32', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cms_category_lang`
--

DROP TABLE IF EXISTS `ps_cms_category_lang`;
CREATE TABLE IF NOT EXISTS `ps_cms_category_lang` (
  `id_cms_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  UNIQUE KEY `category_lang_index` (`id_cms_category`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_cms_category_lang`
--

INSERT INTO `ps_cms_category_lang` (`id_cms_category`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Home', NULL, 'home', NULL, NULL, NULL),
(1, 2, 'Accueil', NULL, 'home', NULL, NULL, NULL),
(1, 3, 'Inicio', NULL, 'home', NULL, NULL, NULL),
(1, 4, 'Start', NULL, 'Start', NULL, NULL, NULL),
(1, 5, 'Home', NULL, 'home', NULL, NULL, NULL),
(1, 6, 'Home', NULL, 'home', NULL, NULL, NULL),
(1, 7, 'Home', NULL, 'home', NULL, NULL, NULL),
(1, 8, 'Home', NULL, 'home', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_cms_lang`
--

DROP TABLE IF EXISTS `ps_cms_lang`;
CREATE TABLE IF NOT EXISTS `ps_cms_lang` (
  `id_cms` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_cms_lang`
--

INSERT INTO `ps_cms_lang` (`id_cms`, `id_lang`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `link_rewrite`) VALUES
(1, 1, 'Shipments and Returns', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2>\r\n<h3>﻿DELIVERY</h3>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><strong>yourkwiksave.com</strong> delivers to selected postal codes and we check your address when you order so we are sure that you live in an area where we deliver.</p>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><br />When you place your order you can choose delivery according to the days we provide delivery in your area.We would also like you to indicate which time of the day suits you best. However, we cannot guarantee to always be there “on the dot” since many aspects have to be considered.This time interval is used in regard to the planning of our drivers’ routes so we can deliver when you require. However, we make certain reservations for unforeseen hindrances such as traffic and weather conditions, etc. that may delay our drivers.</p>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><br /><strong style="border-style: initial; border-color: initial; font-size: 12px;">yourkwiksave.com</strong> delivers the groceries directly to your front door. In consideration of food safety in regard to chilled and frozen goods, you must be home at the delivery time in order to accept the products. If no one is home, the driver will try to contact you telephonically on the number indicated on the order so you can make arrangements for the products. The driver may only leave the products if you have arranged this over the phone. An arrangement like this means that the products are left at your own risk and <strong style="border-style: initial; border-color: initial; font-size: 12px;">yourkwiksave.com</strong> cannot subsequently guarantee the quality and content of the delivery.</p>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><br />If the driver cannot deliver the products or get hold of you on the phone, he will take the products back to the warehouse. You will be charged a delivery charge and you will be refunded for the items that are not fresh, chilled or frozen. These items will be disposed of since <strong style="border-style: initial; border-color: initial; font-size: 12px;">yourkwiksave.com</strong> will no longer be able to guarantee their quality. The money to be refunded will be deposited into your account.﻿</p>\r\n<h3 style="font-size: 12px; border-style: initial; border-color: initial;">STOCK</h3>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;">In connection with the submission of an order, yourkwiksave.com checks whether there is sufficient stock of the products. Situations may arise where we have to dispose of products in stock if the products’ quality does not live up to our strict quality requirements. In such situations we will not be able to deliver all the required products.When orders are submitted, the stock is checked two days ahead of delivery. If the order is for delivery later, there is a risk that the products will be out of stock on the delivery date.</p>\r\n<h3 style="font-size: 12px; border-style: initial; border-color: initial;">COMPLAINT</h3>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;">If you receive a product which, against expectations, does not correspond to what is required, you must notify our customer service as soon as possible via e-mail or telephone so we can correct the error. Contact information can be found under the section “Customer Service".</p>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><br />There may be instances where yourkwiksave.com needs to have the defective product returned so we can forward it to our supplier. In such case, the costs for transport are naturally paid for by <strong style="border-style: initial; border-color: initial; font-size: 12px;">yourkwiksave.com</strong>.</p>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><br />For products that are not for the household’s regular consumption, you have two years’ right of return. This means that you can either have the product repaired, exchanged, money refunded or a discount on the price depending on the specific situation. Naturally, this only applies if this concerns a legitimate complaint and if the defect of the product has not come about as a result of wear, incorrect use or other circumstances that have caused damage to the product. You must submit your complaint as quickly as possible and, at the latest, two months after you have discovered the defect/deficiency of the product.﻿</p>\r\n<h3 style="font-size: 12px; border-style: initial; border-color: initial;">RIGHT OF CANCELLATION</h3>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><strong style="border-style: initial; border-color: initial; font-size: 12px;">yourkwiksave.com provides the right of cancellation pursuant to the following points in the Danish Consumer Protection Act:</strong></p>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><br /><strong style="border-style: initial; border-color: initial; font-size: 12px;">For all other products than foodstuff and products for housekeeping, there is a 14-day right of cancellation.For foodstuff and products for housekeeping, there is NO right of cancellation.</strong></p>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><br /><strong style="border-style: initial; border-color: initial; font-size: 12px;">In order to utilise the right of cancellation on products that are not foodstuff or for housekeeping, you must return the item in the original packaging within 14 days from receipt to yourkwiksave.com at the address specified in the section “Address”. Please enclose your contact information and the invoice number relating to the product concerned. You can also choose to cancel your purchase by refusing receipt of the products. You can also take the products to our shop.</strong></p>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><br /><strong style="border-style: initial; border-color: initial; font-size: 12px;">You can return the product to us by post or carrier and pay for the transport costs yourself. You can also transfer the product to a driver from yourkwiksave.com if you have ordered new products for delivery before the right of cancellation has expired.</strong></p>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;"><br /><strong style="border-style: initial; border-color: initial; font-size: 12px;">If the product is returned in essentially the same condition and quantity to yourkwiksave.com, we will refund the purchase price to the payment card you used.﻿</strong></p>\r\n<h3 style="font-size: 12px; border-style: initial; border-color: initial;">CUSTOMER SERVICE</h3>\r\n<p style="border-style: initial; border-color: initial; font-size: 12px;">Our Customer Service can be contacted in the following ways:</p>\r\n<ul style="border-style: initial; border-color: initial; font-size: 12px;">\r\n<li style="border-style: initial; border-color: initial; font-size: 12px;"><span style="color: #888888;"><em style="border-style: initial; border-color: initial; font-size: 12px;">Telephone</em></span></li>\r\n<li style="border-style: initial; border-color: initial; font-size: 12px;"><span style="color: #888888;"><em style="border-style: initial; border-color: initial; font-size: 12px;">Opening hours</em></span></li>\r\n<li style="border-style: initial; border-color: initial; font-size: 12px;"><span style="color: #888888;"><em style="border-style: initial; border-color: initial; font-size: 12px;">All weekdays: 8 a.m.-9.30 p.m.</em></span></li>\r\n<li style="border-style: initial; border-color: initial; font-size: 12px;"><span style="color: #888888;"><em style="border-style: initial; border-color: initial; font-size: 12px;">Saturdays: 12 p.m. – 5.30 p.m.</em></span></li>\r\n<li style="border-style: initial; border-color: initial; font-size: 12px;"><span style="color: #888888;"><em style="border-style: initial; border-color: initial; font-size: 12px;">Sundays &amp; public holidays: Closed</em></span></li>\r\n<li style="border-style: initial; border-color: initial; font-size: 12px;"><span style="color: #888888;"><em style="border-style: initial; border-color: initial; font-size: 12px;">E-mail:  info@yourkwiksave.com</em></span></li>\r\n<li style="border-style: initial; border-color: initial; font-size: 12px;"><span style="color: #888888;"><em style="border-style: initial; border-color: initial; font-size: 12px;">Chat: on www.yourkwiksave.com, all weekdays between 8 a.m. and 3.30 p.m.﻿</em></span></li>\r\n</ul>', 'shipments-and-returns'),
(1, 2, 'Livraison', 'Nos conditions générales de livraison', 'conditions, livraison, délais, transport, colis', '<h2>Livraisons et retours</h2>\r\n<h3>Le transport de votre colis</h3>\r\n<p>Les colis sont généralement expédiés en 48h après réception de votre paiement. Le mode d''expédition standard est le Colissimo suivi, remis sans signature. Si vous souhaitez une remise avec signature, un coût supplémentaire s''applique, merci de nous contacter. Quel que soit le mode d''expédition choisi, nous vous fournirons dès que possible un lien qui vous permettra de suivre en ligne la livraison de votre colis.</p>\r\n<p>Les frais d''expédition comprennent l''emballage, la manutention et les frais postaux. Ils peuvent contenir une partie fixe et une partie variable en fonction du prix ou du poids de votre commande. Nous vous conseillons de regrouper vos achats en une unique commande. Nous ne pouvons pas grouper deux commandes distinctes et vous devrez vous acquitter des frais de port pour chacune d''entre elles. Votre colis est expédié à vos propres risques, un soin particulier est apporté au colis contenant des produits fragiles..<br /><br />Les colis sont surdimensionnés et protégés.</p>', 'livraison'),
(1, 3, 'Entrega', 'Nuestras condiciones de entrega', 'condiciones, plazos de entrega, transporte, paquetería', '<h2><span id="result_box"><span style="background-color: #ffffff;" title="Livraisons et retours">shipping &amp; Returns</span></span></h2>\r\n<h3><span id="result_box"><span style="background-color: #ffffff;" title="Le transport de votre colis">El transporte de su paquete</span></span></h3>\r\n<p><span id="result_box"><span style="background-color: #ffffff;" title="Les colis sont généralement expédiés en 48h après réception de votre paiement.">Los paquetes son generalmente enviados en 48 horas después de la recepción de su pago. </span><span style="background-color: #ffffff;" title="Le mode d''expédition standard est le Colissimo suivi, remis sans signature.">La moda es el estándar expédition Colissimo seguido, entrega sin firma. </span><span style="background-color: #ffffff;" title="Si vous souhaitez une remise avec signature, un coût supplémentaire s''applique, merci de nous contacter.">Si desea una entrega con la firma, un cargo adicional, gracias al contacto con nosotros. </span><span style="background-color: #ffffff;" title="Quel que soit le mode d''expédition choisi, nous vous fournirons dès que possible un lien qui vous permettra de suivre en ligne la livraison de votre colis.">Sea cual sea el método de envío seleccionado, vamos a presentar lo antes posible, un vínculo que le permite rastrear el envío en línea de su paquete.<br /><br /></span><span style="background-color: #ffffff;" title="Les frais d''expédition comprennent l''emballage, la manutention et les frais postaux.">Gastos de envío incluyen el embalaje, la manipulación y envío. </span><span style="background-color: #ffffff;" title="Ils peuvent contenir une partie fixe et une partie variable en fonction du prix ou du poids de votre commande.">Pueden contener un fijo y una parte variable basado en el precio o el peso de su solicitud. </span><span style="background-color: #ffffff;" title="Nous vous conseillons de regrouper vos achats en une unique commande.">Le recomendamos que para consolidar sus compras en un solo comando. </span><span style="background-color: #ffffff;" title="Nous ne pouvons pas grouper deux commandes distinctes et vous devrez vous acquitter des frais de port pour chacune d''entre elles.">No podemos grupo de dos órdenes distintos y hay que pagar gastos de envío para cada uno. </span><span style="background-color: #ffffff;" title="Votre colis est expédié à vos propres risques, un soin particulier est apporté au colis contenant des produits fragiles..">Su paquete es enviado a su propio riesgo, se presta especial atención a las parcelas que contienen objetos frágiles ..<br /><br /></span><span style="background-color: #ffffff;" title="Les colis sont surdimensionnés et protégés.">Los paquetes son de gran tamaño y protegidas.</span></span></p>', 'entrega'),
(1, 4, 'Lieferung', 'Unsere Lieferbedingungen', 'Bedingungen, Lieferung, Frist, Versand, Verpackung', '<h2>Versand und Rücknahme</h2>\r\n<h3>Ihre Versandverpackung</h3>\r\n<p>Pakete werden normalerweise 2 Tage nach Zahlungseingang mit UPS mit Bestellverfolgemöglichkeit und Ablieferung ohne Unterschrift geliefert. Wenn Sie lieber eine UPS-Sendung per Einschreiben erhalten möchten, entstehen zusätzliche Kosten. Bitte kontaktieren Sie uns, bevor Sie dieses Liefermethode wählen. Wir senden Ihnen einen Link für die Bestellverfolgung unabhängig davon, welche Liefermethode Sie wählen.</p>\r\n<p>Die Versandkosten beinhalten Lade- und Verpackungsgebühren sowie die Portokosten. Die Verladegebühren stehen fest, wobei Transportkosten schwanken, je nach Gesamtgewicht des Pakets. Wir raten Ihnen, mehrere Artikel in einer Bestellung zusammenzufassen. Wir können zwei verschiedene Bestellungen nicht zusammenlegen, und die Versandkosten werden separat für jede Bestellung gerechnet. Ihr Paket wird auf Ihr Risiko versandt, aber zerbrechliche Ware wird besonders sorgsam behandelt.<br /><br />Die Versandschachteln sind weit geschnitten und ihre Ware wird gut geschützt verpackt.</p>', 'Lieferung'),
(1, 5, 'Consegna', 'I nostri termini e condizioni di consegna', 'condizioni, consegna, tempo, spedizione, pacco', '<h2>Spedizioni e resi</h2>\r\n<h3>Spedizione del tuo pacco</h3>\r\n<p>I pacchi sono solitamente spediti entro 2 giorni dopo il ricevimento del pagamento e inviati tramite UPS con controllo e consegna senza firma. Se preferisci una consegna con UPS Extra con richiesta di firma, sarà applicato un costo aggiuntivo, pertanto contattaci prima di scegliere questo mezzo. Qualunque tipo di spedizione tu scelga, ti garantiremo un link per controllare online il percorso del tuo pacco.</p>\r\n<p>Le spese di spedizione comprendono le spese di imballaggio e affrancatura. Le spese di imballaggio sono fisse, mentre quelle di trasporto variano in base al peso totale della spedizione. Ti consigliamo di raggruppare i tuoi articoli in un unico ordine. Non possiamo raggruppare due ordini distinti eseguiti separatamente, e ad ognuno di esso saranno applicate le spese di spedizione. Il tuo pacco sarà inviato sotto la tua responsabilità, ma un''attenzione particolare è riservata agli oggetti fragili.<br /><br />Le scatole hanno dimensioni ragionevoli e i tuoi articoli sono ben protetti.</p>', 'consegna'),
(1, 6, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2>\r\n<h3>Your pack shipment</h3>\r\n<p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p>\r\n<p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 7, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2>\r\n<h3>Your pack shipment</h3>\r\n<p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p>\r\n<p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 8, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2>\r\n<h3>Your pack shipment</h3>\r\n<p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p>\r\n<p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(2, 1, 'Approved by the e-commerce Foundation', 'approved by the e-commerce Foundation', 'e-commerce, fundation', '<h2>Yourkwiksave.com is approved by the e-commerce Foundation﻿</h2>\r\n<h3><em>When a website e-marked, you can be certain that:</em>﻿</h3>\r\n<ul>\r\n<li>\r\n<p><em><strong>The payment solution is encrypted and security approved</strong></em></p>\r\n</li>\r\n<li>\r\n<p><em><strong>You never receive SPAM</strong></em></p>\r\n</li>\r\n<li>\r\n<p><em><strong>You can easily find out what your personal information is being used for</strong></em></p>\r\n</li>\r\n<li>\r\n<p><em><strong>You can receive newsletters or electronic advertisements when you have expressly agreed to this</strong></em></p>\r\n</li>\r\n<li>\r\n<p><em><strong>When you make a purchase you are explicitly made aware of the conditions of the trade</strong></em></p>\r\n</li>\r\n<li>\r\n<p><em><strong>The right of cancellation and complaint is apparent in the electronic order confirmation</strong></em></p>\r\n</li>\r\n<li>\r\n<p><em><strong>You can participate in any competitions without binding yourself to anything else (registration for newsletters, acceptance of advertisements, etc.)</strong></em></p>\r\n</li>\r\n<li>\r\n<p><em><strong>It is clearly indicated which company you are shopping with</strong></em></p>\r\n</li>\r\n<li>\r\n<p><em><strong>You cannot prepay by account-to-account, cheque or giro (where you are personally liable to pay the amount in the event that the product is not delivered)</strong></em></p>\r\n<p><em><strong><br /></strong></em></p>\r\n</li>\r\n</ul>\r\n<p>The e-commerce Foundation regularly checks the e-marked websites.﻿</p>\r\n<p><img title="emaerket" src="../themes/yourkwiksavev2/img/logo-emaerket.jpg" alt="logo-emaerket" width="94" height="94" /></p>', 'approved-by-the-e-commerce-foundation'),
(2, 2, 'Mentions légales', 'Mentions légales', 'mentions, légales, crédits', '<h2>Mentions légales</h2>\r\n<h3>Crédits</h3>\r\n<p>Concept et production :</p>\r\n<p>Ce site internet a été réalisé en utilisant la solution open-source <a href="http://www.prestashop.com">PrestaShop</a>™ .</p>', 'mentions-legales'),
(2, 3, 'Aviso legal', 'Aviso legal', 'términos, condiciones y créditos fotográficos', '<h2><span id="result_box"><span style="background-color: #ffffff;" title="Mentions légales">Pie de imprenta</span></span></h2>\r\n<h2><span id="result_box"><span style="background-color: #ffffff;" title="Crédits">Créditos</span></span></h2>\r\n<h3> </h3>\r\n<p><span id="result_box"><span style="background-color: #ffffff;" title="Crédits"><br /></span><span style="background-color: #ffffff;" title="Concept et production :">Concepto y producción:<br /><br /></span><span style="background-color: #ffffff;" title="Ce site internet a été réalisé en utilisant la solution open-source PrestaShop™ .">Este sitio web fue creado utilizando la solución de código abierto <a href="http://www.prestashop.com" target="_blank">PrestaShop</a>™.</span></span></p>', 'aviso-legal'),
(2, 4, 'Rechtliche Hinweise', 'Rechtliche Hinweise', 'Hinweise, rechtlich, Gutscheine', '<h2>Legal</h2>\r\n<h3>Credits</h3>\r\n<p>Konzept und Gestaltung:</p>\r\n<p>Diese Webseite wurde hergestellt unter Verwendung von <a href="http://www.prestashop.com">PrestaShop</a>™ open-source software.</p>', 'rechtliche-hinweise'),
(2, 5, 'Nota Legale', 'Nota legale', 'nota, legale, crediti', '<h2>Legale</h2>\r\n<h3>Crediti</h3>\r\n<p>Creazione e produzione:</p>\r\n<p>Questo sito web è stato realizzato usando un software open-source<a href="http://www.prestashop.com">PrestaShop</a>™.</p>', 'nota-legale'),
(2, 6, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2>\r\n<h3>Credits</h3>\r\n<p>Concept and production:</p>\r\n<p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>™ open-source software.</p>', 'legal-notice'),
(2, 7, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2>\r\n<h3>Credits</h3>\r\n<p>Concept and production:</p>\r\n<p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>™ open-source software.</p>', 'legal-notice'),
(2, 8, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2>\r\n<h3>Credits</h3>\r\n<p>Concept and production:</p>\r\n<p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>™ open-source software.</p>', 'legal-notice'),
(3, 1, 'Terms and conditions of sell', 'Our terms and conditions of sell', 'conditions, terms, use, sell', '<h2>Terms and conditions of sale</h2>\r\n<p>These terms and conditions of sale are applicable to all shopping on <a href="http://www.juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/">www.yourkwiksave.com</a>.﻿</p>\r\n<h3>Ordering</h3>\r\n<p>All orders on <strong>yourkwiksave.com</strong> shall take place as follows:﻿</p>\r\n<ul>\r\n<li><span style="color: #888888;"><em>Your purchase must be﻿ minimum € 75.00 incl.VAT.</em></span></li>\r\n<li><span style="color: #888888;"><em>Select products and quantities as required and place them in the shopping basket.﻿</em></span></li>\r\n<li><span style="color: #888888;"><em>From the shopping basket on the right side of the page, you can continuously keep track of your order and subsequently select “to checkout”.﻿</em></span></li>\r\n<li><span style="color: #888888;"><em>Enter your customer information, select delivery date and accept our terms and conditions of sale.﻿</em></span></li>\r\n<li><span style="color: #888888;"><em>Confirm that all information is correct and approve the order by paying.</em></span>﻿</li>\r\n</ul>\r\n<p>Your order will be completed when your payment is approved.﻿</p>\r\n<h3><span class="Apple-style-span" style="color: #777777; font-weight: bold; text-transform: uppercase;"><strong>Payment</strong>﻿</span></h3>\r\n<p>You can pay with one of the following payment cards: Visa, MasterCard, Eurocard, Maestro, Visa Electron, JCB and American Express.</p>\r\n<p><br />Your payment will be withdrawn when we have sent your order to our warehouse.Please note that your bank may charge a fee when you use your payment card on the internet.﻿</p>\r\n<h3>Prices﻿</h3>\r\n<p>All prices on <strong>yourkwiksave.com</strong> include VAT and all taxes. There are products on our website that are priced according to weight. This means that the exact price will only be known when we have weighed the product in connection with the packing of your order. The final price may easily be lower than indicated when ordering and this will be reflected in your invoice. For example, this may be the case with steaks and roasts from our Irish butcher. </p>\r\n<p><br />On your order, you will also be able to see the price we charge for packaging and delivery to you. You will also be able to see any charges for card payment.</p>\r\n<p><br />The prices on <strong>yourkwiksave.com</strong> are current prices and are updated once daily.﻿</p>\r\n<h3>Charges</h3>\r\n<p><strong>yourkwiksave.com</strong> operates with two types of charges:</p>\r\n<p>Delivery charge of € 5.00 (if you purchase for € 75.00 or more, delivery is free)</p>\r\n<p><br />2) Packaging charge</p>\r\n<p>To ensure the best possible storage of your groceries, we have divided our packing warehouse into the following four temperature zones:</p>\r\n<ul>\r\n<li><em><span style="color: #888888;">Dry products zone, approx. 18 degrees</span></em></li>\r\n<li><em><span style="color: #888888;">Vegetable zone, approx. 8-10 degrees</span></em></li>\r\n<li><em><span style="color: #888888;">Refrigerated products zone, approx. 2 degrees</span></em></li>\r\n<li><em><span style="color: #888888;">Frozen products zone, approx. -22 degrees</span></em></li>\r\n</ul>\r\n<p>From the time we receive the goods from our suppliers and until the finally packed orders are collected by our drivers, the goods are stored in their respective temperature zones in our warehouse. We then use thermal boxes to store frozen and chilled goods when they are transported from us to you. In so doing, we ensure that the cold chain is constantly maintained.</p>\r\n<p><br />The packaging charge is € 0.50 per temperature zone for the bags we use to pack the goods. Consequently, the price for packaging (the bags) will be minimum € 0.50 and maximum € 2.00 per order.﻿</p>\r\n<p>3) Card charge:﻿</p>\r\n<ul>\r\n<li><em><span style="color: #888888;">Dankort and Visa/Dankort: No charge</span></em></li>\r\n<li><em><span style="color: #888888;">Credit cards issued in Denmark: 1.25% of the order amount, however minimum DKK 1,95</span></em></li>\r\n<li><em><span style="color: #888888;">Credit cards issued in other countries: 3.75% of the order amount, however minimum DKK 0,70</span></em></li>\r\n</ul>\r\n<p>The actual packing is free of charge.﻿</p>\r\n<h3>Receipt</h3>\r\n<p>When you have approved your payment on <strong>yourkwiksave.com</strong>, you will receive an order confirmation via e-mail. You will receive an invoice together with your groceries. You can also see your invoice/order confirmation on <strong>yourkwiksave.com</strong> as soon as the order has been delivered.</p>\r\n<h3>Security</h3>\r\n<p>When you shop on <strong>yourkwiksave.com</strong> you will need to use a payment card. In order to protect your card information, upon entering your card information you will be led to a payment page supplied by Paypal, which is certified to handle payment data and Paypal ensures that all information is processed encrypted so neither <strong>yourkwiksave.com</strong> nor others can gain access to your card information.﻿</p>\r\n<h3> Easy Shopping﻿</h3>\r\n<p>To make it as easy as possible for you, we offer Easy Shopping to registered users. With Easy Shopping you only need to register your payment information once. Your payment information will be kept securely and confidentially at Paypal. <strong>yourkwiksave.com</strong> will then automatically withdraw the money in connection with your order when you choose payment with Easy Shopping.</p>\r\n<p><br />You can at any time delete your card registration under “yourkwiksave card”. If you would like to change the card that is used, you must first delete the original card information and then add the new information.</p>\r\n<p><br />For reasons of security, your card registration will also be deleted if you choose to change your e-mail address.﻿</p>\r\n<h3>Resale</h3>\r\n<p>Products may not be purchased on yourkwiksave.com with the intention of resale.As a company, you can join our company’s agreements.See under membership card.</p>\r\n<h3>Errors</h3>\r\n<p>Reservation is made for any errors in texts and prices.</p>\r\n<h3>Contracts</h3>\r\n<p>All contracts are entered into in English.﻿</p>\r\n<h3>Personal data</h3>\r\n<p>When you submit an order on <strong>yourkwiksave.com</strong>, you must disclose your name, address, e-mail and telephone number. We need this information to deliver your order to you.</p>\r\n<p><br />All information which <strong>yourkwiksave.com</strong>﻿ registers to be able to process your order is processed confidentially and pursuant to the Danish Act on Processing of Personal Data. For the sake of our bookkeeping, we need to keep this information for five years. The information will not be sold, passed on or in another way be transferred to a third party.</p>\r\n<p><br />When you are registered with <strong>yourkwiksave.com</strong>﻿ you always have the right to object to the registration. You also have the right to access which information we have registered about you. According to the Danish Act on Processing of Personal Data you have these rights and enquiry in connection with this must be directed to <strong>yourkwiksave.com</strong>﻿ via e-mail: contact@yourkwiksave.com</p>\r\n<p><br />The information is kept unencrypted and is transmitted unencrypted.The information systems manager is: The manager of <strong>yourkwiksave.com</strong>﻿. ﻿</p>', 'terms-and-conditions-of-sell'),
(3, 2, 'Conditions d''utilisation', 'Nos conditions générales de ventes', 'conditions, utilisation, générales, ventes', '<h2>Vos conditions de ventes</h2>\r\n<h3>Règle n°1</h3>\r\n<p>Contenu de la règle numéro 1</p>\r\n<h3>Règle n°2</h3>\r\n<p>Contenu de la règle numéro 2</p>\r\n<h3>Règle n°3</h3>\r\n<p>Contenu de la règle numéro 3</p>', 'conditions-generales-de-ventes'),
(3, 3, 'Condiciones de uso', 'Condiciones de uso', 'condiciones, el consumo, las ventas generales', '<h2><span id="result_box"><span style="background-color: #ffffff;" title="Vos conditions de ventes">Sus condiciones de venta</span></span></h2>\r\n<h3>Regla N º 1</h3>\r\n<p><span id="result_box"><span style="background-color: #ffffff;" title="Contenu de la règle numéro 1">Contenido de la Regla Número 1</span></span></p>\r\n<h3>Regla N º 2</h3>\r\n<p><span id="result_box"><span style="background-color: #ffffff;" title="Contenu de la règle numéro 2">Contenido de la Regla N º 2</span></span></p>\r\n<h3>Regla N º 3</h3>\r\n<p><span id="result_box"><span style="background-color: #ffffff;" title="Contenu de la règle numéro 3">Contenido de la Regla Número 3</span></span></p>', 'condiciones-de-uso'),
(3, 4, 'Allgemeine Nutzungsbedingungen', 'Unsere allgemeinen Nutzungsbedingungen', 'Voraussetzungen, Bedingungen, nutzen, verkaufen', '<h2>Your terms and conditions of use</h2>\r\n<h3>Rule 1</h3>\r\n<p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3>\r\n<p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3>\r\n<p>Here is the rule 3 content</p>', 'allgemeine-nutzungsbedingungen'),
(3, 5, 'Termini e condizioni d''uso', 'I nostri termini e condizioni d''uso', 'condizioni, termini, uso, vendi', '<h2>I tuoi termini e condizioni d''uso</h2>\r\n<h3>Regola 1</h3>\r\n<p>Ecco il contenuto della regola 1</p>\r\n<h3>Regola 2</h3>\r\n<p>Ecco il contenuto della regola 2</p>\r\n<h3>Regola 3</h3>\r\n<p>Ecco il contenuto della regola 3</p>', 'termini-e-condizioni-di-uso'),
(3, 6, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h2>Your terms and conditions of use</h2>\r\n<h3>Rule 1</h3>\r\n<p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3>\r\n<p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3>\r\n<p>Here is the rule 3 content</p>', 'terms-and-conditions-of-use'),
(3, 7, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h2>Your terms and conditions of use</h2>\r\n<h3>Rule 1</h3>\r\n<p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3>\r\n<p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3>\r\n<p>Here is the rule 3 content</p>', 'terms-and-conditions-of-use'),
(3, 8, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h2>Your terms and conditions of use</h2>\r\n<h3>Rule 1</h3>\r\n<p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3>\r\n<p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3>\r\n<p>Here is the rule 3 content</p>', 'terms-and-conditions-of-use'),
(4, 1, 'About us', 'Learn more about us', 'about us, informations', '<h2>Who is yourkwiksave.com?﻿</h2>\r\n<h3>Our company</h3>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">We are a supermarket on the coast that tries to satisfy our customers as best possible.﻿﻿</span></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">We are not just an online supermarket – you can actually come by the shop and say hello and get a sense of who you are doing business with.</span></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">From our warehouse, we pack groceries for same-day delivery and prepare for the next day.We receive products and repack constantly – some products go directly into our own supermarket and the rest is packed directly for delivery to our customers.</span></p>\r\n<h4><span class="Apple-style-span" style="white-space: pre-wrap;">Manager</span></h4>\r\n<p><strong><span class="Apple-style-span" style="white-space: pre-wrap;">Brian Hald</span></strong></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">Brian attends to the allocation of tasks so everyone knows what they need to do. </span></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">His major activity is purchasing from and selling to wholesale customers – to negotiate the right prices and products.</span></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">Photocopy – print – scan – mobile phone subscriptions – P.O. Boxes – and other service agreements</span></p>\r\n<div><span class="Apple-style-span" style="white-space: pre-wrap;"><br /></span></div>\r\n<p><strong><span class="Apple-style-span" style="white-space: pre-wrap;">Milo Alonso Carr</span></strong></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">The man on the floor – he makes sure that the shop is always presentable – and that there are products on the shelves.</span></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">Supervises and allocates tasks in the shop – and helps anyone who needs a hand.</span></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">Areas of responsibility: Chilled products – hardware – wine, as well as suppliers.</span></p>\r\n<div><span class="Apple-style-span" style="white-space: pre-wrap;"><br /></span></div>\r\n<p><strong><span class="Apple-style-span" style="white-space: pre-wrap;">Chelsee le Wagner</span></strong></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">Chelsee manages the biscuits, bread, fruit, sweets and chocolate areas.</span></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">She also manages the till as well as mobile recharge, photocopying and print.</span></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;"><br /></span></p>\r\n<p><strong><span class="Apple-style-span" style="white-space: pre-wrap;">Glendys Snow</span></strong></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">Glendys is a cashier who is also responsible for the processed foods department and baked articles.</span></p>\r\n<div><span class="Apple-style-span" style="white-space: pre-wrap;"><br /></span></div>\r\n<p><strong><span class="Apple-style-span" style="white-space: pre-wrap;">Maggi</span></strong></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">Maggi is a cashier and responsible for pet articles. She can also be found in the cafeteria.</span></p>\r\n<div><span class="Apple-style-span" style="white-space: pre-wrap;"><br /></span></div>\r\n<p><strong><span class="Apple-style-span" style="white-space: pre-wrap;">Tessa Van Verden</span></strong></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">Tessa is a cashier with responsibility for all beverages.﻿</span></p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;"><br /></span></p>\r\n<div><span class="Apple-style-span" style="color: #777777; font-weight: bold; text-transform: uppercase;">Our goal</span></div>\r\n<p>We want you to be able to do your shopping online as effortlessly as possible and not to have to worry about shopping in your busy daily life.</p>\r\n<p>So in other words: <strong>Groceries when it suits you.﻿</strong></p>\r\n<p> </p>\r\n<p><span class="Apple-style-span" style="white-space: pre-wrap;">We have linked our supermarket and our other services together so you can also get other items from us than just groceries.</span></p>\r\n<ul>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Replenishing of mobile telephone card</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Sale of MasmovilSIM cards as well as USB data modem</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Sale of Hits Mobile SIM cards</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Sale of mobile phones. Hits, Phonehouse all brands</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Setting up of mobile phone subscriptions with Masmovil, Hits, Orange </span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Sale of mobile modems for computers (Orange)</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Black/white or colour photocopies</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Scanning for e-mails</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Business cards – Letterheads – Logos – Webshop – Website – Catalogue – Hosting domains - Graphics</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Rental of post office boxes</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Sending of letters and packages – we also accept your packages if you send them to us</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Laundry service, dry cleaning – deliver here and collect two days later</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Handing over of keys to tenants for house owners</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Cleaning service for houses, apartments</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Leasing, sale of residences via partners</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Free internet wifi zone</span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Cafeteria with delivery. Read more at www.yourkwikdeli.com. </span></em></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><em><span class="Apple-style-span" style="white-space: pre-wrap;">Take-away. The coast’s best chicken﻿</span></em></strong></p>\r\n</li>\r\n</ul>\r\n<p> </p>\r\n<p><strong>We are continuously adding more and more services all depending on your needs.</strong></p>\r\n<ul>\r\n<li>\r\n<p><em><strong>Our goal is to have the best service on the coast</strong></em></p>\r\n</li>\r\n</ul>\r\n<p>- Consequently, we are very particular that you delivery is in order</p>\r\n<ul>\r\n<li>\r\n<p><em><strong>Delivery six days per week</strong></em></p>\r\n</li>\r\n</ul>\r\n<p>- We deliver Monday to Friday; 5€ per delivery in the community (Torremuelle-Benalmadena-Fuengirola)   </p>\r\n<p>For purchases of more than 75€  we provide free delivery. (For other areas, read here).</p>\r\n<ul>\r\n<li>\r\n<p><em><strong>Open 7 days per week</strong></em></p>\r\n</li>\r\n</ul>\r\n<p>- We are open all days of the week (Mon-Fri 8.30 a.m. – 8 p.m., Saturday 9 a.m. – 8 p.m., Sunday 9 a.m. – 7 p.m.)</p>\r\n<ul>\r\n<li>\r\n<p><em><strong>Denmark’s biggest selection of groceries on the internet</strong></em></p>\r\n</li>\r\n</ul>\r\n<p>- The same price level as in many other supermarkets, but with many Scandinavian and British products – and, of course, a standard range of basic Spanish products. </p>\r\n<ul>\r\n<li>\r\n<p><em><strong>Special offer online newspaper every 14 days</strong></em></p>\r\n</li>\r\n</ul>\r\n<p>-Register on our website.﻿</p>\r\n<div><span class="Apple-style-span" style="white-space: pre-wrap;"><strong><em><br /></em></strong></span></div>\r\n<div><span class="Apple-style-span" style="white-space: pre-wrap;"><br /></span></div>', 'about-us'),
(4, 2, 'A propos', 'Apprenez-en d''avantage sur nous', 'à propos, informations', '<h2>A propos</h2>\r\n<h3>Notre entreprise</h3>\r\n<p>Notre entreprise</p>\r\n<h3>Notre équipe</h3>\r\n<p>Notre équipe</p>\r\n<h3>Informations</h3>\r\n<p>Informations</p>', 'a-propos'),
(4, 3, 'Sobre', 'Conozca más sobre nosotros', 'sobre, información', '<h2>Sobre</h2>', 'sobre'),
(4, 4, 'Über uns', 'Learn more about us', 'über uns, Informationen', '<h2>About us</h2>\r\n<h3>Our company</h3>\r\n<p>Our company</p>\r\n<h3>Our team</h3>\r\n<p>Our team</p>\r\n<h3>Informations</h3>\r\n<p>Informations</p>', 'uber-uns'),
(4, 5, 'Chi siamo', 'Per sapere chi siamo', 'chi siamo, informazioni', '<h2>Chi siamo</h2>\r\n<h3>La nostra azienda</h3>\r\n<p>La nostra azienda</p>\r\n<h3>Il nostro team</h3>\r\n<p>Il nostro team</p>\r\n<h3>Informazioni</h3>\r\n<p>Informazioni</p>', 'chi-siamo'),
(4, 6, 'About us', 'Learn more about us', 'about us, informations', '<h2>About us</h2>\r\n<h3>Our company</h3>\r\n<p>Our company</p>\r\n<h3>Our team</h3>\r\n<p>Our team</p>\r\n<h3>Informations</h3>\r\n<p>Informations</p>', 'about-us'),
(4, 7, 'About us', 'Learn more about us', 'about us, informations', '<h2>About us</h2>\r\n<h3>Our company</h3>\r\n<p>Our company</p>\r\n<h3>Our team</h3>\r\n<p>Our team</p>\r\n<h3>Informations</h3>\r\n<p>Informations</p>', 'about-us'),
(4, 8, 'About us', 'Learn more about us', 'about us, informations', '<h2>About us</h2>\r\n<h3>Our company</h3>\r\n<p>Our company</p>\r\n<h3>Our team</h3>\r\n<p>Our team</p>\r\n<h3>Informations</h3>\r\n<p>Informations</p>', 'about-us'),
(5, 1, 'Products and prices', 'Product range and price level', 'product, range, price, level', '<h2>Product range and price level﻿</h2>\r\n<h3>Product range﻿</h3>\r\n<p>Currently, our product range consists of more than 3,000 grocery items at a price level that matches the major nationwide supermarket chains. The range extends from organic products that comprise more than 10% of the products, to the large series with a Permanent Low Price.﻿</p>\r\n<p><strong>Our desire is to offer you a product range that fully covers</strong> your needs and therefore we would like to hear from you if there are products you cannot find in our range. So send us an e-mail - we would be pleased to try to accommodate your wishes. We have a menu called "dream product" - just click on that, fill in the details, and we will get back to you on what we can do.</p>\r\n<p><br />We know that many people would like Arla products such as yoghurt, buttermilk and other products with a short shelf-life. If you can live with only having 6-8 days to use your product, then we are not afraid of acquiring the product if you so desire. However, there is no right of cancellation when you have given your order.﻿</p>\r\n<h3>Price level﻿</h3>\r\n<p>We try to keep a reasonable price level – but, of course, there are costs connected to transporting your favourite products abroad. These are included in the price and we only include the cost for the service we do not make a profit on, which for us is the biggest challenge. The same applies to the labelling of products in accordance with Spanish legislation. ﻿</p>\r\n<h3>Types of products</h3>\r\n<p>We operate with the majority of brands and we also try to operate with a good price policy.We are introducing more and more Scandinavian and British products into the shop and we are also focusing on other nationalities. </p>\r\n<p>You can see here what we are trying to expand</p>\r\n<p style="padding-left: 30px;"><span style="text-decoration: underline;">Organic products</span></p>\r\n<p style="padding-left: 30px;"><span style="text-decoration: underline;">Permanent Low Price</span></p>\r\n<p>We hope you enjoy discovering what we have to offer on our website and if you are in doubt about anything at all, just come by the shop and we will answer your questions. While you are in the shop you could also enjoy a cup of coffee in our cafeteria, which also offers a broad selection of fast food/take-away, open sandwiches and other delicious things.</p>\r\n<p>We also have freshly baked bread throughout the day.</p>\r\n<p><strong>Your Kwik Save</strong></p>\r\n<p>- Groceries for you when you have time – and plenty of good service.﻿</p>', 'products-and-prices'),
(5, 2, 'Paiement sécurisé', 'Notre offre de paiement sécurisé', 'paiement sécurisé, ssl, visa, mastercard, paypal', '<h2>Paiement sécurisé</h2>\r\n<h3>Notre offre de paiement sécurisé</h3>\r\n<p>Avec SSL</p>\r\n<h3>Utilisation de Visa/Mastercard/Paypal</h3>\r\n<p>A propos de ces services</p>', 'paiement-securise'),
(5, 3, 'Pago seguro', 'Ofrecemos pago seguro', 'pago seguro, ssl, visa, mastercard, paypal', '<h2><span id="result_box"><span style="background-color: #ffffff;" title="Paiement sécurisé">Pago seguro</span></span></h2>\r\n<h3><span id="result_box"><span style="background-color: #ffffff;" title="Notre offre de paiement sécurisé">Ofrecemos pago seguro</span></span></h3>\r\n<p><span id="result_box"><span style="background-color: #ffffff;" title="Avec SSL">SSL</span></span></p>\r\n<h3><span id="result_box"><span style="background-color: #ffffff;" title="Utilisation de Visa/Mastercard/Paypal">Utilice Visa / Mastercard / Paypal</span></span></h3>\r\n<p><span id="result_box"><span style="background-color: #ffffff;" title="A propos de ces services">Acerca de estos servicios</span></span></p>', 'pago-seguro'),
(5, 4, 'Sichere Zahlung', 'Unsere Sicherheits-Zahlungsmethoden', 'Sichere Zahlung, SSL, Visa, MasterCard, PayPal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3>\r\n<p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3>\r\n<p>About this services</p>', 'sichere-zahlung'),
(5, 5, 'Pagamento sicuro', 'Il nostro mezzo di pagamento sicuro', 'pagamento sicuro, ssl, visa, mastercard, paypal', '<h2>Pagamento sicuro</h2>\r\n<h3>Il nostro pagamento sicuro</h3>\r\n<p>Con SSL</p>\r\n<h3>Usando Visa/Mastercard/Paypal</h3>\r\n<p>Cosa sono questi servizi</p>', 'pagamento-sicuro'),
(5, 6, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3>\r\n<p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3>\r\n<p>About this services</p>', 'secure-payment'),
(5, 7, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3>\r\n<p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3>\r\n<p>About this services</p>', 'secure-payment');
INSERT INTO `ps_cms_lang` (`id_cms`, `id_lang`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `link_rewrite`) VALUES
(5, 8, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3>\r\n<p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3>\r\n<p>About this services</p>', 'secure-payment');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_compare_product`
--

DROP TABLE IF EXISTS `ps_compare_product`;
CREATE TABLE IF NOT EXISTS `ps_compare_product` (
  `id_compare_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_compare_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_configuration`
--

DROP TABLE IF EXISTS `ps_configuration`;
CREATE TABLE IF NOT EXISTS `ps_configuration` (
  `id_configuration` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=271 ;

--
-- Volcado de datos para la tabla `ps_configuration`
--

INSERT INTO `ps_configuration` (`id_configuration`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, 'PS_LANG_DEFAULT', '1', '2011-09-05 03:03:32', '2011-09-12 17:31:22'),
(2, 'PS_CURRENCY_DEFAULT', '1', '2011-09-05 03:03:32', '2011-09-05 10:09:13'),
(3, 'PS_COUNTRY_DEFAULT', '6', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(4, 'PS_REWRITING_SETTINGS', '1', '2011-09-05 03:03:32', '2011-11-26 12:24:04'),
(5, 'PS_ORDER_OUT_OF_STOCK', '0', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(6, 'PS_LAST_QTIES', '3', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(7, 'PS_CART_REDIRECT', '1', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(8, 'PS_HELPBOX', '1', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(9, 'PS_CONDITIONS', '1', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(10, 'PS_RECYCLABLE_PACK', '1', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(11, 'PS_GIFT_WRAPPING', '1', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(12, 'PS_GIFT_WRAPPING_PRICE', '0', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(13, 'PS_STOCK_MANAGEMENT', '1', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(14, 'PS_NAVIGATION_PIPE', '>', '2011-09-05 03:03:32', '2011-10-14 12:13:12'),
(15, 'PS_PRODUCTS_PER_PAGE', '15', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(16, 'PS_PURCHASE_MINIMUM', '0', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(17, 'PS_PRODUCTS_ORDER_WAY', '0', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(18, 'PS_PRODUCTS_ORDER_BY', '4', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(19, 'PS_DISPLAY_QTIES', '0', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(20, 'PS_SHIPPING_HANDLING', '2', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(21, 'PS_SHIPPING_FREE_PRICE', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(22, 'PS_SHIPPING_FREE_WEIGHT', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(23, 'PS_SHIPPING_METHOD', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(24, 'PS_TAX', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(25, 'PS_SHOP_ENABLE', '1', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(26, 'PS_NB_DAYS_NEW_PRODUCT', '20', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(27, 'PS_SSL_ENABLED', '0', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(28, 'PS_WEIGHT_UNIT', 'kg', '2011-09-05 03:03:32', '2011-09-05 10:09:07'),
(29, 'PS_BLOCK_CART_AJAX', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(30, 'PS_ORDER_RETURN', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(31, 'PS_ORDER_RETURN_NB_DAYS', '7', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(32, 'PS_MAIL_TYPE', '3', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(33, 'PS_PRODUCT_PICTURE_MAX_SIZE', '131072', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(34, 'PS_PRODUCT_PICTURE_WIDTH', '64', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(35, 'PS_PRODUCT_PICTURE_HEIGHT', '64', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(36, 'PS_INVOICE_PREFIX', 'IN', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(37, 'PS_INVOICE_NUMBER', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(38, 'PS_DELIVERY_PREFIX', 'DE', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(39, 'PS_DELIVERY_NUMBER', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(40, 'PS_INVOICE', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(41, 'PS_PASSWD_TIME_BACK', '360', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(42, 'PS_PASSWD_TIME_FRONT', '360', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(43, 'PS_DISP_UNAVAILABLE_ATTR', '1', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(44, 'PS_VOUCHERS', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(45, 'PS_SEARCH_MINWORDLEN', '3', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(46, 'PS_SEARCH_BLACKLIST', NULL, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(47, 'PS_SEARCH_WEIGHT_PNAME', '6', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(48, 'PS_SEARCH_WEIGHT_REF', '10', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(49, 'PS_SEARCH_WEIGHT_SHORTDESC', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(50, 'PS_SEARCH_WEIGHT_DESC', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(51, 'PS_SEARCH_WEIGHT_CNAME', '3', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(52, 'PS_SEARCH_WEIGHT_MNAME', '3', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(53, 'PS_SEARCH_WEIGHT_TAG', '4', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(54, 'PS_SEARCH_WEIGHT_ATTRIBUTE', '2', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(55, 'PS_SEARCH_WEIGHT_FEATURE', '2', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(56, 'PS_SEARCH_AJAX', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(57, 'PS_TIMEZONE', 'Europe/Madrid', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(58, 'PS_THEME_V11', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(59, 'PRESTASTORE_LIVE', '1', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(60, 'PS_TIN_ACTIVE', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(61, 'PS_SHOW_ALL_MODULES', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(62, 'PS_BACKUP_ALL', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(63, 'PS_1_3_UPDATE_DATE', '2011-09-05 03:03:32', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(64, 'PS_PRICE_ROUND_MODE', '2', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(65, 'PS_1_3_2_UPDATE_DATE', '2011-09-05 03:03:32', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(66, 'PS_CONDITIONS_CMS_ID', '3', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(67, 'TRACKING_DIRECT_TRAFFIC', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(68, 'PS_META_KEYWORDS', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(69, 'PS_DISPLAY_JQZOOM', '0', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(70, 'PS_VOLUME_UNIT', 'L', '2011-09-05 03:03:32', '2011-09-05 10:09:07'),
(71, 'PS_CIPHER_ALGORITHM', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(72, 'PS_ATTRIBUTE_CATEGORY_DISPLAY', '1', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(73, 'PS_CUSTOMER_SERVICE_FILE_UPLOAD', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(74, 'PS_CUSTOMER_SERVICE_SIGNATURE', NULL, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(75, 'PS_BLOCK_BESTSELLERS_DISPLAY', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(76, 'PS_BLOCK_NEWPRODUCTS_DISPLAY', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(77, 'PS_BLOCK_SPECIALS_DISPLAY', '0', '2011-09-05 03:03:32', '2011-09-21 15:42:35'),
(78, 'PS_STOCK_MVT_REASON_DEFAULT', '3', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(79, 'PS_COMPARATOR_MAX_ITEM', '0', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(80, 'PS_ORDER_PROCESS_TYPE', '0', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(81, 'PS_SPECIFIC_PRICE_PRIORITIES', 'id_shop;id_currency;id_country;id_group', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(82, 'PS_TAX_DISPLAY', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(83, 'PS_SMARTY_FORCE_COMPILE', '0', '2011-09-05 03:03:32', '2011-11-26 18:27:21'),
(84, 'PS_DISTANCE_UNIT', 'km', '2011-09-05 03:03:32', '2011-09-05 10:09:07'),
(85, 'PS_STORES_DISPLAY_CMS', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(86, 'PS_STORES_DISPLAY_FOOTER', '1', '2011-09-05 03:03:32', '2011-09-05 19:02:56'),
(87, 'PS_STORES_SIMPLIFIED', '0', '2011-09-05 03:03:32', '2011-09-05 19:02:56'),
(88, 'SHOP_LOGO_WIDTH', '380', '2011-09-05 03:03:32', '2011-10-14 12:13:12'),
(89, 'SHOP_LOGO_HEIGHT', '100', '2011-09-05 03:03:32', '2011-10-14 12:13:12'),
(90, 'EDITORIAL_IMAGE_WIDTH', '530', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(91, 'EDITORIAL_IMAGE_HEIGHT', '228', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(92, 'PS_STATSDATA_CUSTOMER_PAGESVIEWS', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(93, 'PS_STATSDATA_PAGESVIEWS', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(94, 'PS_STATSDATA_PLUGINS', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(95, 'PS_GEOLOCATION_ENABLED', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(96, 'PS_ALLOWED_COUNTRIES', 'AF;ZA;AX;AL;DZ;DE;AD;AO;AI;AQ;AG;AN;SA;AR;AM;AW;AU;AT;AZ;BS;BH;BD;BB;BY;BE;BZ;BJ;BM;BT;BO;BA;BW;BV;BR;BN;BG;BF;MM;BI;KY;KH;CM;CA;CV;CF;CL;CN;CX;CY;CC;CO;KM;CG;CD;CK;KR;KP;CR;CI;HR;CU;DK;DJ;DM;EG;IE;SV;AE;EC;ER;ES;EE;ET;FK;FO;FJ;FI;FR;GA;GM;GE;GS;GH;GI;GR;GD;GL;GP;GU;GT;GG;GN;GQ;GW;GY;GF;HT;HM;HN;HK;HU;IM;MU;VG;VI;IN;ID;IR;IQ;IS;IL;IT;JM;JP;JE;JO;KZ;KE;KG;KI;KW;LA;LS;LV;LB;LR;LY;LI;LT;LU;MO;MK;MG;MY;MW;MV;ML;MT;MP;MA;MH;MQ;MR;YT;MX;FM;MD;MC;MN;ME;MS;MZ;NA;NR;NP;NI;NE;NG;NU;NF;NO;NC;NZ;IO;OM;UG;UZ;PK;PW;PS;PA;PG;PY;NL;PE;PH;PN;PL;PF;PR;PT;QA;DO;CZ;RE;RO;GB;RU;RW;EH;BL;KN;SM;MF;PM;VA;VC;LC;SB;WS;AS;ST;SN;RS;SC;SL;SG;SK;SI;SO;SD;LK;SE;CH;SR;SJ;SZ;SY;TJ;TW;TZ;TD;TF;TH;TL;TG;TK;TO;TT;TN;TM;TC;TR;TV;UA;UY;US;VU;VE;VN;WF;YE;ZM;ZW', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(97, 'PS_GEOLOCATION_BEHAVIOR', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(98, 'PS_LOCALE_LANGUAGE', 'en', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(99, 'PS_LOCALE_COUNTRY', 'ES', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(100, 'PS_ATTACHMENT_MAXIMUM_SIZE', '2', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(101, 'PS_SMARTY_CACHE', '0', '2011-09-05 03:03:32', '2011-11-26 18:27:21'),
(102, 'PS_DIMENSION_UNIT', 'cm', '2011-09-05 03:03:32', '2011-09-05 10:09:07'),
(103, 'PS_FORCE_SMARTY_2', '0', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(104, 'PS_GUEST_CHECKOUT_ENABLED', '0', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(105, 'PS_DISPLAY_SUPPLIERS', '1', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(106, 'PS_CATALOG_MODE', '0', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(107, 'PS_GEOLOCATION_WHITELIST', '209.185.108;209.185.253;209.85.238;209.85.238.11;209.85.238.4;216.239.33.96;216.239.33.97;216.239.33.98;216.239.33.99;216.239.37.98;216.239.37.99;216.239.39.98;216.239.39.99;216.239.41.96;216.239.41.97;216.239.41.98;216.239.41.99;216.239.45.4;216.239.46;216.239.51.96;216.239.51.97;216.239.51.98;216.239.51.99;216.239.53.98;216.239.53.99;216.239.57.96;216.239.57.97;216.239.57.98;216.239.57.99;216.239.59.98;216.239.59.99;216.33.229.163;64.233.173.193;64.233.173.194;64.233.173.195;64.233.173.196;64.233.173.197;64.233.173.198;64.233.173.199;64.233.173.200;64.233.173.201;64.233.173.202;64.233.173.203;64.233.173.204;64.233.173.205;64.233.173.206;64.233.173.207;64.233.173.208;64.233.173.209;64.233.173.210;64.233.173.211;64.233.173.212;64.233.173.213;64.233.173.214;64.233.173.215;64.233.173.216;64.233.173.217;64.233.173.218;64.233.173.219;64.233.173.220;64.233.173.221;64.233.173.222;64.233.173.223;64.233.173.224;64.233.173.225;64.233.173.226;64.233.173.227;64.233.173.228;64.233.173.229;64.233.173.230;64.233.173.231;64.233.173.232;64.233.173.233;64.233.173.234;64.233.173.235;64.233.173.236;64.233.173.237;64.233.173.238;64.233.173.239;64.233.173.240;64.233.173.241;64.233.173.242;64.233.173.243;64.233.173.244;64.233.173.245;64.233.173.246;64.233.173.247;64.233.173.248;64.233.173.249;64.233.173.250;64.233.173.251;64.233.173.252;64.233.173.253;64.233.173.254;64.233.173.255;64.68.80;64.68.81;64.68.82;64.68.83;64.68.84;64.68.85;64.68.86;64.68.87;64.68.88;64.68.89;64.68.90.1;64.68.90.10;64.68.90.11;64.68.90.12;64.68.90.129;64.68.90.13;64.68.90.130;64.68.90.131;64.68.90.132;64.68.90.133;64.68.90.134;64.68.90.135;64.68.90.136;64.68.90.137;64.68.90.138;64.68.90.139;64.68.90.14;64.68.90.140;64.68.90.141;64.68.90.142;64.68.90.143;64.68.90.144;64.68.90.145;64.68.90.146;64.68.90.147;64.68.90.148;64.68.90.149;64.68.90.15;64.68.90.150;64.68.90.151;64.68.90.152;64.68.90.153;64.68.90.154;64.68.90.155;64.68.90.156;64.68.90.157;64.68.90.158;64.68.90.159;64.68.90.16;64.68.90.160;64.68.90.161;64.68.90.162;64.68.90.163;64.68.90.164;64.68.90.165;64.68.90.166;64.68.90.167;64.68.90.168;64.68.90.169;64.68.90.17;64.68.90.170;64.68.90.171;64.68.90.172;64.68.90.173;64.68.90.174;64.68.90.175;64.68.90.176;64.68.90.177;64.68.90.178;64.68.90.179;64.68.90.18;64.68.90.180;64.68.90.181;64.68.90.182;64.68.90.183;64.68.90.184;64.68.90.185;64.68.90.186;64.68.90.187;64.68.90.188;64.68.90.189;64.68.90.19;64.68.90.190;64.68.90.191;64.68.90.192;64.68.90.193;64.68.90.194;64.68.90.195;64.68.90.196;64.68.90.197;64.68.90.198;64.68.90.199;64.68.90.2;64.68.90.20;64.68.90.200;64.68.90.201;64.68.90.202;64.68.90.203;64.68.90.204;64.68.90.205;64.68.90.206;64.68.90.207;64.68.90.208;64.68.90.21;64.68.90.22;64.68.90.23;64.68.90.24;64.68.90.25;64.68.90.26;64.68.90.27;64.68.90.28;64.68.90.29;64.68.90.3;64.68.90.30;64.68.90.31;64.68.90.32;64.68.90.33;64.68.90.34;64.68.90.35;64.68.90.36;64.68.90.37;64.68.90.38;64.68.90.39;64.68.90.4;64.68.90.40;64.68.90.41;64.68.90.42;64.68.90.43;64.68.90.44;64.68.90.45;64.68.90.46;64.68.90.47;64.68.90.48;64.68.90.49;64.68.90.5;64.68.90.50;64.68.90.51;64.68.90.52;64.68.90.53;64.68.90.54;64.68.90.55;64.68.90.56;64.68.90.57;64.68.90.58;64.68.90.59;64.68.90.6;64.68.90.60;64.68.90.61;64.68.90.62;64.68.90.63;64.68.90.64;64.68.90.65;64.68.90.66;64.68.90.67;64.68.90.68;64.68.90.69;64.68.90.7;64.68.90.70;64.68.90.71;64.68.90.72;64.68.90.73;64.68.90.74;64.68.90.75;64.68.90.76;64.68.90.77;64.68.90.78;64.68.90.79;64.68.90.8;64.68.90.80;64.68.90.9;64.68.91;64.68.92;66.249.64;66.249.65;66.249.66;66.249.67;66.249.68;66.249.69;66.249.70;66.249.71;66.249.72;66.249.73;66.249.78;66.249.79;72.14.199;8.6.48', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(108, 'PS_LOGS_BY_EMAIL', '5', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(109, 'PS_COOKIE_CHECKIP', '1', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(110, 'PS_STORES_CENTER_LAT', '36.57953', '2011-09-05 03:03:32', '2011-09-05 19:02:56'),
(111, 'PS_STORES_CENTER_LONG', '-4.56708', '2011-09-05 03:03:32', '2011-09-05 19:02:56'),
(112, 'PS_HOMEPAGE_PHP_SELF', 'index.php', '2011-09-05 03:03:32', '2011-11-26 12:24:04'),
(113, 'PS_USE_ECOTAX', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(114, 'PS_CANONICAL_REDIRECT', '1', '2011-09-05 03:03:32', '2011-11-26 12:24:04'),
(115, 'PS_IMG_UPDATE_TIME', '1318587192', '2011-09-05 03:03:32', '2011-10-14 12:13:12'),
(116, 'PS_BACKUP_DROP_TABLE', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(117, 'PS_OS_CHEQUE', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(118, 'PS_OS_PAYMENT', '2', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(119, 'PS_OS_PREPARATION', '3', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(120, 'PS_OS_SHIPPING', '4', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(121, 'PS_OS_DELIVERED', '5', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(122, 'PS_OS_CANCELED', '6', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(123, 'PS_OS_REFUND', '7', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(124, 'PS_OS_ERROR', '8', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(125, 'PS_OS_OUTOFSTOCK', '9', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(126, 'PS_OS_BANKWIRE', '10', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(127, 'PS_OS_PAYPAL', '11', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(128, 'PS_OS_WS_PAYMENT', '12', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(129, 'PS_LEGACY_IMAGES', '1', '2011-09-05 03:03:32', '2011-10-19 10:52:22'),
(130, 'PS_IMAGE_QUALITY', 'jpg', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(131, 'PS_PNG_QUALITY', '7', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(132, 'PS_JPEG_QUALITY', '90', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(133, 'PS_COOKIE_LIFETIME_FO', '480', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(134, 'PS_COOKIE_LIFETIME_BO', '480', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(135, 'PS_CARRIER_DEFAULT', '2', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(136, 'PS_TAX_ADDRESS_TYPE', 'id_address_delivery', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(137, 'MB_PAY_TO_EMAIL', 'testmerchant@moneybookers.com', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(138, 'MB_SECRET_WORD', 'mbtest', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(139, 'MB_HIDE_LOGIN', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(140, 'MB_ID_LOGO', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(141, 'MB_ID_LOGO_WALLET', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(142, 'MB_PARAMETERS', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(143, 'MB_PARAMETERS_2', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(144, 'MB_DISPLAY_MODE', '0', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(145, 'MB_CANCEL_URL', 'http://www.yoursite.com', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(146, 'MB_LOCAL_METHODS', '2', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(147, 'MB_INTER_METHODS', '5', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(148, 'BANK_WIRE_CURRENCIES', '2,1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(149, 'CHEQUE_CURRENCIES', '2,1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(150, 'PRODUCTS_VIEWED_NBR', '2', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(151, 'BLOCK_CATEG_DHTML', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(152, 'BLOCK_CATEG_MAX_DEPTH', '3', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(153, 'MANUFACTURER_DISPLAY_FORM', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(154, 'MANUFACTURER_DISPLAY_TEXT', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(155, 'MANUFACTURER_DISPLAY_TEXT_NB', '5', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(156, 'NEW_PRODUCTS_NBR', '5', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(157, 'PS_TOKEN_ENABLE', '1', '2011-09-05 03:03:32', '2011-12-13 22:41:06'),
(158, 'PS_STATS_RENDER', 'graphxmlswfcharts', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(159, 'PS_STATS_OLD_CONNECT_AUTO_CLEAN', 'never', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(160, 'PS_STATS_GRID_RENDER', 'gridhtml', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(161, 'BLOCKTAGS_NBR', '10', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(162, 'CHECKUP_DESCRIPTIONS_LT', '100', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(163, 'CHECKUP_DESCRIPTIONS_GT', '400', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(164, 'CHECKUP_IMAGES_LT', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(165, 'CHECKUP_IMAGES_GT', '2', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(166, 'CHECKUP_SALES_LT', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(167, 'CHECKUP_SALES_GT', '2', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(168, 'CHECKUP_STOCK_LT', '1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(169, 'CHECKUP_STOCK_GT', '3', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(170, 'FOOTER_CMS', '0_1|0_2|0_3|0_4|0_5', '2011-09-05 03:03:32', '2011-09-14 12:19:48'),
(171, 'FOOTER_BLOCK_ACTIVATION', NULL, '2011-09-05 03:03:32', '2011-09-14 12:19:48'),
(172, 'FOOTER_POWEREDBY', '0', '2011-09-05 03:03:32', '2011-09-14 12:19:48'),
(173, 'BLOCKADVERT_LINK', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/contact-form.php', '2011-09-05 03:03:32', '2011-10-17 11:05:11'),
(174, 'BLOCKSTORE_IMG', 'our-store-slider.gif', '2011-09-05 03:03:32', '2011-10-17 11:43:09'),
(175, 'PS_VERSION_DB', '1.4.4.1', '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(176, 'PS_BASE_DISTANCE_UNIT', 'm', '2011-09-05 10:09:07', '2011-09-05 10:09:07'),
(177, 'PS_SHOP_DOMAIN', 'juancruzllorens.co.cc', '2011-09-05 03:09:13', '2011-11-26 12:24:04'),
(178, 'PS_SHOP_DOMAIN_SSL', 'juancruzllorens.co.cc', '2011-09-05 03:09:13', '2011-11-26 12:24:04'),
(179, 'PS_INSTALL_VERSION', '1.4.4.1', '2011-09-05 03:09:13', '2011-09-05 03:09:13'),
(180, 'PS_SHOP_NAME', 'YOUR KWIK SAVE', '2011-09-05 03:09:13', '2011-09-05 03:09:13'),
(181, 'PS_SHOP_EMAIL', 'iberasoftsl@gmail.com', '2011-09-05 03:09:13', '2011-09-05 03:09:13'),
(182, 'PS_MAIL_METHOD', '1', '2011-09-05 03:09:13', '2011-09-05 03:09:13'),
(183, 'PS_SHOP_ACTIVITY', '11', '2011-09-05 03:09:13', '2011-09-05 03:09:13'),
(184, 'PS_LAST_VERSION', 'a:4:{s:4:"name";s:13:"1.4.6.2 final";s:3:"num";s:7:"1.4.6.2";s:4:"link";s:57:"http://www.prestashop.com/download/prestashop_1.4.6.2.zip";s:11:"autoupgrade";i:1;}', '2011-09-05 10:13:35', '2011-12-13 22:39:52'),
(185, 'PS_LAST_VERSION_CHECK', '1323812392', '2011-09-05 10:13:35', '2011-12-13 22:39:52'),
(186, 'BLOCKADVERT_IMG_EXT', 'gif', '2011-09-05 10:13:49', '2011-10-17 11:05:11'),
(187, 'PS_HTACCESS_CACHE_CONTROL', '1', '2011-09-05 10:15:51', '2011-09-05 10:15:51'),
(188, 'PS_HTACCESS_DISABLE_MULTIVIEWS', '0', '2011-09-05 10:15:51', '2011-09-05 10:15:51'),
(189, 'PS_HTACCESS_SPECIFIC', NULL, '2011-09-05 10:15:51', '2011-09-05 10:15:51'),
(190, 'PS_MAINTENANCE_IP', '', '2011-09-05 10:25:39', '2011-12-13 22:41:06'),
(191, 'PS_GIFT_WRAPPING_TAX', '0', '2011-09-05 10:25:39', '2011-12-13 22:41:06'),
(192, 'PS_CART_FOLLOWING', '1', '2011-09-05 10:25:39', '2011-12-13 22:41:06'),
(193, 'PS_HIDE_OPTIMIZATION_TIPS', '1', '2011-09-05 10:25:39', '2011-12-13 22:41:06'),
(194, 'TS_TAB1_ENV_API', 'production', '2011-09-05 11:09:56', '2011-09-05 11:09:56'),
(195, 'PS_LOGO', NULL, '2011-09-05 15:15:26', '2011-10-14 12:13:12'),
(196, 'PS_LOGO_MAIL', NULL, '2011-09-05 15:15:26', '2011-10-14 12:13:12'),
(197, 'PS_LOGO_INVOICE', NULL, '2011-09-05 15:15:26', '2011-10-14 12:13:12'),
(198, 'PS_FAVICON', NULL, '2011-09-05 15:15:26', '2011-10-14 12:13:12'),
(199, 'PS_STORES_ICON', NULL, '2011-09-05 15:15:26', '2011-10-14 12:13:12'),
(200, 'CUSTPRIV_MESSAGE', NULL, '2011-09-05 15:33:51', '2011-09-05 15:33:51'),
(201, 'MENU_CATEGORIES_ZERO', '1', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(202, 'MENU_CATEGORIES_NUM', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(203, 'MENU_LEVEL', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(204, 'MENU_WIDTH', '1002', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(205, 'MENU_INDEX', '1000', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(206, 'MENU_HEIGHT', '0.5', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(207, 'MENU_SEARCH', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(208, 'MENU_LANG', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(209, 'MENU_BUTTON', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(210, 'MENU_COMPLETION', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(211, 'MENU_ICONS', '1', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(212, 'MENU_HOOK', 'top', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(213, 'MENU_MENU_COLOR', 'ffffff', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(214, 'MENU_MENU_LIGHT', '200', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(215, 'MENU_ITEM_COLOR', 'ffffff', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(216, 'MENU_ITEM_HOVER_COLOR', 'df000f', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(217, 'MENU_ITEM_SIZE', '13', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(218, 'MENU_TEXT_COLOR', '000039', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(219, 'MENU_TEXT_OVER_COLOR', 'df000f', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(220, 'MENU_TEXT_BOLD', '1', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(221, 'MENU_TEXT_SIZE', '9', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(222, 'MENU_TEXT_VERTICAL', '40', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(223, 'MENU_TEXT_OVER_BOLD', '1', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(224, 'MENU_TEXT_ITALIC', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(225, 'MENU_TEXT_OVER_ITALIC', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(226, 'MENU_TEXT_UNDERLINE', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(227, 'MENU_TEXT_OVER_UNDERLINE', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(228, 'MENU_CACHE_ENABLE', '1', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(229, 'MENU_CACHE_LATEST', '1', '2011-09-05 15:33:51', '2011-09-05 15:33:51'),
(230, 'MENU_CACHE_REFRESH', '120', '2011-09-05 15:33:51', '2011-09-05 15:33:51'),
(231, 'MENU_ALLOW_OPTIONS', '0', '2011-09-05 15:33:51', '2011-09-22 17:08:48'),
(232, 'ddlx_xtreme_footer', 'KDAxMikgMzQ1IDY3OCA5MTA7Y29udGFjdEB0b3dlYm1hc3Rlci5jb20=', '2011-09-05 15:33:51', '2011-11-26 18:28:24'),
(233, 'DOD_EXTRA_TIME_PRODUCT_OOS', '0', '2011-09-05 15:33:51', '2011-09-05 15:33:51'),
(234, 'DOD_EXTRA_TIME_PREPARATION', '1', '2011-09-05 15:33:51', '2011-09-05 15:33:51'),
(235, 'DOD_PREPARATION_SATURDAY', '1', '2011-09-05 15:33:51', '2011-09-05 15:33:51'),
(236, 'DOD_PREPARATION_SUNDAY', '1', '2011-09-05 15:33:51', '2011-09-05 15:33:51'),
(237, 'DOD_DATE_FORMAT', 'l j F Y', '2011-09-05 15:33:51', '2011-09-05 15:33:51'),
(238, 'CROSSSELLING_DISPLAY_PRICE', '0', '2011-09-05 15:33:52', '2011-09-05 15:33:52'),
(239, 'PRODUCTSCATEGORY_DISPLAY_PRICE', '0', '2011-09-05 15:33:52', '2011-09-05 15:33:52'),
(240, 'WATERMARK_TRANSPARENCY', '60', '2011-09-05 15:33:52', '2011-09-05 15:33:52'),
(241, 'WATERMARK_Y_ALIGN', 'bottom', '2011-09-05 15:33:52', '2011-09-05 15:33:52'),
(242, 'WATERMARK_X_ALIGN', 'right', '2011-09-05 15:33:52', '2011-09-05 15:33:52'),
(243, 'LIVEZILLA_URL', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/livezilla/', '2011-09-05 15:33:52', '2011-11-26 18:04:54'),
(244, 'NSletter_id_parent_tab', '2', '2011-09-05 15:43:00', '2011-09-05 15:43:00'),
(245, 'PS_STORES_DISPLAY_SITEMAP', '1', '2011-09-05 19:02:56', '2011-09-05 19:02:56'),
(246, 'UPGRADER_BACKUPDB_FILENAME', NULL, '2011-09-05 19:03:13', '2011-10-22 18:19:44'),
(247, 'UPGRADER_BACKUPFILES_FILENAME', NULL, '2011-09-05 19:03:13', '2011-10-22 18:19:44'),
(248, 'PS_NEED_REBUILD_INDEX', '0', '2011-09-06 15:09:16', '2011-10-19 09:54:03'),
(249, 'BLOCKADVERT_TITLE', 'Discount Card', '2011-09-06 16:43:58', '2011-10-17 11:05:11'),
(250, 'BLOCKADVERT_LINK2', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/catalogs/oct11/en-catalog.html', '2011-09-12 13:25:31', '2011-10-15 13:11:00'),
(251, 'BLOCKADVERT_IMG_EXT2', 'gif', '2011-09-12 13:28:47', '2011-10-15 13:11:00'),
(252, 'BLOCKADVERT_TITLE2', 'Offers Catalog', '2011-09-12 13:28:47', '2011-10-15 13:11:00'),
(253, 'HOME_CAROUSEL_NBR', '20', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(254, 'HOME_CAROUSEL_SORT', '1', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(255, 'HOME_CAROUSEL_DISPLAY_PRICE', '0', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(256, 'HOME_CAROUSEL_DISPLAY_NAME', '1', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(257, 'HOME_CAROUSEL_SKIP_CAT', '1', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(258, 'HOME_CAROUSEL_AUTOPLAY', '1', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(259, 'HOME_CAROUSEL_AUTOPLAY_DURATION', '3', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(260, 'HOME_CAROUSEL_ITEMS_VISIBLE', '5', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(261, 'HOME_CAROUSEL_ITEMS_SCROLL', '3', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(262, 'HOME_CAROUSEL_IMAGE_TYPE', 'small', '2011-09-14 10:42:38', '2011-09-21 12:33:44'),
(263, 'EDITORIAL_IMAGE_DISABLE', '1', '2011-09-21 12:29:49', '2011-09-21 12:29:49'),
(264, 'LIVEZILLA_SCRIPT', '', '2011-09-21 16:19:54', '2011-11-26 18:04:55'),
(265, 'PS_SHOW_TYPE_MODULES_2', 'allModules', '2011-10-02 19:23:19', '2011-10-02 19:23:19'),
(266, 'PS_SHOW_COUNTRY_MODULES_2', '0', '2011-10-02 19:23:19', '2011-10-02 19:23:19'),
(267, 'PS_SHOW_INSTALLED_MODULES_2', 'installed', '2011-10-02 19:23:19', '2011-10-02 19:23:19'),
(268, 'PS_SHOW_ENABLED_MODULES_2', 'enabled', '2011-10-02 19:23:19', '2011-10-02 19:23:19'),
(269, 'PS_IMAGE_GENERATION_METHOD', '0', '2011-10-18 11:02:14', '2011-10-19 10:52:22'),
(270, '__PS_BASE_URI__', '/portfolio/prestashop/yourkwiksave/', '2011-11-26 12:21:48', '2011-11-26 12:24:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_configuration_lang`
--

DROP TABLE IF EXISTS `ps_configuration_lang`;
CREATE TABLE IF NOT EXISTS `ps_configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_configuration_lang`
--

INSERT INTO `ps_configuration_lang` (`id_configuration`, `id_lang`, `value`, `date_upd`) VALUES
(36, 1, 'IN', '2011-09-05 03:03:32'),
(36, 2, 'FA', '2011-09-05 03:03:32'),
(36, 3, 'CU', '2011-09-05 03:03:32'),
(36, 4, 'FA', '2011-09-05 03:03:32'),
(36, 5, 'FA', '2011-09-05 03:03:32'),
(38, 1, 'DE', '2011-09-05 03:03:32'),
(38, 2, 'LI', '2011-09-05 03:03:32'),
(38, 3, 'EN', '2011-09-05 03:03:32'),
(38, 4, 'LI', '2011-09-05 03:03:32'),
(38, 5, 'BC', '2011-09-05 03:03:32'),
(46, 1, 'a|the|of|on|in|and|to', '2011-09-05 03:03:32'),
(46, 2, 'le|les|de|et|en|des|les|une', '2011-09-05 03:03:32'),
(46, 3, 'de|los|las|lo|la|en|de|y|el|a', '2011-09-05 03:03:32'),
(46, 4, NULL, '2011-09-05 03:03:32'),
(46, 5, NULL, '2011-09-05 03:03:32'),
(68, 1, '0', '2011-09-05 03:03:32'),
(68, 2, '0', '2011-09-05 03:03:32'),
(68, 3, '0', '2011-09-05 03:03:32'),
(68, 4, '0', '2011-09-05 03:03:32'),
(68, 5, '0', '2011-09-05 03:03:32'),
(74, 1, 'Dear Customer,\r\n\r\nRegards,\r\nCustomer service', '2011-09-05 03:03:32'),
(74, 2, 'Cher client,\r\n\r\nCordialement,\r\nLe service client', '2011-09-05 03:03:32'),
(74, 3, 'Estimado cliente,\r\n\r\nUn cordial saludo,\r\nAtención al cliente', '2011-09-05 03:03:32'),
(74, 4, 'Lieber Kunde,\r\n\r\nMit freundlichen Grüßen,\r\nIhr Kundenservice', '2011-09-05 03:03:32'),
(74, 5, 'Gentile Cliente,\r\n\r\nCordiali saluti,\r\nServizio Clienti', '2011-09-05 03:03:32'),
(229, 1, '1323856146', '2011-12-14 03:49:06'),
(229, 3, '0', '2011-10-05 07:59:58'),
(229, 4, '0', '2011-10-05 07:59:58'),
(229, 8, '1323850709', '2011-12-14 02:18:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_connections`
--

DROP TABLE IF EXISTS `ps_connections`;
CREATE TABLE IF NOT EXISTS `ps_connections` (
  `id_connections` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=636 ;

--
-- Volcado de datos para la tabla `ps_connections`
--

INSERT INTO `ps_connections` (`id_connections`, `id_guest`, `id_page`, `ip_address`, `date_add`, `http_referer`) VALUES
(489, 211, 140, 1407625317, '2011-11-26 12:12:58', ''),
(490, 212, 140, 1407625317, '2011-11-26 12:19:18', ''),
(491, 211, 1, 1407625317, '2011-11-26 18:19:17', ''),
(492, 213, 1, 1407625317, '2011-12-06 10:27:56', ''),
(493, 213, 1, 1407625317, '2011-12-06 13:00:13', ''),
(494, 214, 1, 1407625317, '2011-12-06 13:06:30', ''),
(495, 215, 1, 1407625226, '2011-12-13 22:00:29', ''),
(496, 216, 1, -727285633, '2011-12-13 22:45:46', ''),
(497, 217, 1, 1407625226, '2011-12-13 23:27:28', ''),
(498, 218, 1, 1407625226, '2011-12-14 00:36:56', ''),
(499, 219, 3, 1407625226, '2011-12-14 00:37:17', ''),
(500, 220, 3, 1407625226, '2011-12-14 00:37:17', ''),
(501, 221, 3, 1407625226, '2011-12-14 00:37:24', ''),
(502, 222, 3, 1407625226, '2011-12-14 00:37:24', ''),
(503, 223, 3, 1407625226, '2011-12-14 00:37:34', ''),
(504, 224, 1, 1407625226, '2011-12-14 00:38:36', ''),
(505, 225, 130, 1407625226, '2011-12-14 00:38:41', ''),
(506, 226, 135, 1407625226, '2011-12-14 00:38:41', ''),
(507, 227, 108, 1407625226, '2011-12-14 00:38:41', ''),
(508, 228, 117, 1407625226, '2011-12-14 00:38:41', ''),
(509, 230, 1, 1407625226, '2011-12-14 00:38:41', ''),
(510, 231, 107, 1407625226, '2011-12-14 00:38:41', ''),
(511, 229, 1, 1407625226, '2011-12-14 00:38:41', ''),
(512, 232, 1, 1407625226, '2011-12-14 00:38:41', ''),
(513, 233, 129, 1407625226, '2011-12-14 00:38:42', ''),
(514, 234, 112, 1407625226, '2011-12-14 00:38:42', ''),
(515, 235, 116, 1407625226, '2011-12-14 00:38:45', ''),
(516, 236, 128, 1407625226, '2011-12-14 00:38:45', ''),
(517, 237, 125, 1407625226, '2011-12-14 00:38:46', ''),
(518, 238, 106, 1407625226, '2011-12-14 00:38:46', ''),
(519, 239, 68, 1407625226, '2011-12-14 00:38:46', ''),
(520, 240, 123, 1407625226, '2011-12-14 00:38:46', ''),
(521, 241, 119, 1407625226, '2011-12-14 00:38:46', ''),
(522, 243, 127, 1407625226, '2011-12-14 00:38:46', ''),
(523, 242, 132, 1407625226, '2011-12-14 00:38:46', ''),
(524, 244, 100, 1407625226, '2011-12-14 00:38:46', ''),
(525, 245, 20, 1407625226, '2011-12-14 00:38:48', ''),
(526, 246, 23, 1407625226, '2011-12-14 00:38:50', ''),
(527, 247, 47, 1407625226, '2011-12-14 00:38:51', ''),
(528, 248, 76, 1407625226, '2011-12-14 00:38:51', ''),
(529, 249, 34, 1407625226, '2011-12-14 00:38:51', ''),
(530, 250, 28, 1407625226, '2011-12-14 00:38:51', ''),
(531, 251, 33, 1407625226, '2011-12-14 00:38:51', ''),
(532, 252, 21, 1407625226, '2011-12-14 00:38:51', ''),
(533, 253, 15, 1407625226, '2011-12-14 00:38:51', ''),
(534, 254, 85, 1407625226, '2011-12-14 00:38:51', ''),
(535, 255, 70, 1407625226, '2011-12-14 00:38:52', ''),
(536, 256, 71, 1407625226, '2011-12-14 00:38:54', ''),
(537, 257, 46, 1407625226, '2011-12-14 00:38:54', ''),
(538, 258, 42, 1407625226, '2011-12-14 00:38:55', ''),
(539, 259, 32, 1407625226, '2011-12-14 00:38:55', ''),
(540, 260, 48, 1407625226, '2011-12-14 00:38:55', ''),
(541, 261, 52, 1407625226, '2011-12-14 00:38:55', ''),
(542, 262, 40, 1407625226, '2011-12-14 00:38:55', ''),
(543, 263, 6, 1407625226, '2011-12-14 00:38:55', ''),
(544, 264, 41, 1407625226, '2011-12-14 00:38:56', ''),
(545, 265, 11, 1407625226, '2011-12-14 00:38:56', ''),
(546, 266, 38, 1407625226, '2011-12-14 00:38:57', ''),
(547, 267, 30, 1407625226, '2011-12-14 00:38:57', ''),
(548, 268, 63, 1407625226, '2011-12-14 00:38:58', ''),
(549, 269, 31, 1407625226, '2011-12-14 00:38:59', ''),
(550, 270, 81, 1407625226, '2011-12-14 00:38:59', ''),
(551, 271, 69, 1407625226, '2011-12-14 00:38:59', ''),
(552, 272, 83, 1407625226, '2011-12-14 00:38:59', ''),
(553, 273, 2, 1407625226, '2011-12-14 00:39:00', ''),
(554, 274, 78, 1407625226, '2011-12-14 00:39:00', ''),
(555, 275, 72, 1407625226, '2011-12-14 00:39:00', ''),
(556, 276, 36, 1407625226, '2011-12-14 00:39:00', ''),
(557, 277, 56, 1407625226, '2011-12-14 00:39:00', ''),
(558, 278, 60, 1407625226, '2011-12-14 00:39:03', ''),
(559, 279, 64, 1407625226, '2011-12-14 00:39:03', ''),
(560, 280, 55, 1407625226, '2011-12-14 00:39:03', ''),
(561, 281, 84, 1407625226, '2011-12-14 00:39:03', ''),
(562, 282, 80, 1407625226, '2011-12-14 00:39:04', ''),
(563, 283, 67, 1407625226, '2011-12-14 00:39:04', ''),
(564, 284, 5, 1407625226, '2011-12-14 00:39:04', ''),
(565, 285, 79, 1407625226, '2011-12-14 00:39:04', ''),
(566, 286, 35, 1407625226, '2011-12-14 00:39:04', ''),
(567, 287, 74, 1407625226, '2011-12-14 00:39:04', ''),
(568, 288, 82, 1407625226, '2011-12-14 00:39:06', ''),
(569, 289, 19, 1407625226, '2011-12-14 00:39:08', ''),
(570, 290, 18, 1407625226, '2011-12-14 00:39:08', ''),
(571, 291, 58, 1407625226, '2011-12-14 00:39:08', ''),
(572, 292, 37, 1407625226, '2011-12-14 00:39:08', ''),
(573, 293, 54, 1407625226, '2011-12-14 00:39:08', ''),
(574, 294, 29, 1407625226, '2011-12-14 00:39:08', ''),
(575, 296, 10, 1407625226, '2011-12-14 00:39:08', ''),
(576, 295, 73, 1407625226, '2011-12-14 00:39:08', ''),
(577, 297, 62, 1407625226, '2011-12-14 00:39:08', ''),
(578, 298, 57, 1407625226, '2011-12-14 00:39:09', ''),
(579, 299, 51, 1407625226, '2011-12-14 00:39:13', ''),
(580, 300, 96, 1407625226, '2011-12-14 00:39:13', ''),
(581, 301, 45, 1407625226, '2011-12-14 00:39:13', ''),
(582, 305, 77, 1407625226, '2011-12-14 00:39:13', ''),
(583, 302, 92, 1407625226, '2011-12-14 00:39:13', ''),
(584, 304, 44, 1407625226, '2011-12-14 00:39:13', ''),
(585, 303, 59, 1407625226, '2011-12-14 00:39:13', ''),
(586, 307, 66, 1407625226, '2011-12-14 00:39:13', ''),
(587, 306, 75, 1407625226, '2011-12-14 00:39:13', ''),
(588, 308, 98, 1407625226, '2011-12-14 00:39:13', ''),
(589, 309, 99, 1407625226, '2011-12-14 00:39:18', ''),
(590, 310, 95, 1407625226, '2011-12-14 00:39:18', ''),
(591, 311, 94, 1407625226, '2011-12-14 00:39:18', ''),
(592, 312, 97, 1407625226, '2011-12-14 00:39:18', ''),
(593, 313, 93, 1407625226, '2011-12-14 00:39:18', ''),
(594, 315, 118, 1407625226, '2011-12-14 00:39:18', ''),
(595, 314, 134, 1407625226, '2011-12-14 00:39:18', ''),
(596, 316, 49, 1407625226, '2011-12-14 00:39:18', ''),
(597, 318, 126, 1407625226, '2011-12-14 00:39:18', ''),
(598, 317, 113, 1407625226, '2011-12-14 00:39:18', ''),
(599, 319, 121, 1407625226, '2011-12-14 00:39:21', ''),
(600, 320, 131, 1407625226, '2011-12-14 00:39:22', ''),
(601, 321, 104, 1407625226, '2011-12-14 00:39:22', ''),
(602, 322, 110, 1407625226, '2011-12-14 00:39:23', ''),
(603, 323, 122, 1407625226, '2011-12-14 00:39:23', ''),
(604, 324, 124, 1407625226, '2011-12-14 00:39:23', ''),
(605, 325, 105, 1407625226, '2011-12-14 00:39:23', ''),
(606, 326, 115, 1407625226, '2011-12-14 00:39:23', ''),
(607, 328, 111, 1407625226, '2011-12-14 00:39:23', ''),
(608, 327, 7, 1407625226, '2011-12-14 00:39:23', ''),
(609, 329, 120, 1407625226, '2011-12-14 00:39:24', ''),
(610, 330, 114, 1407625226, '2011-12-14 00:39:26', ''),
(611, 331, 136, 1407625226, '2011-12-14 00:39:26', ''),
(612, 332, 103, 1407625226, '2011-12-14 00:39:27', ''),
(613, 333, 138, 1407625226, '2011-12-14 00:39:27', ''),
(614, 334, 109, 1407625226, '2011-12-14 00:39:27', ''),
(615, 335, 14, 1407625226, '2011-12-14 00:39:27', ''),
(616, 336, 133, 1407625226, '2011-12-14 00:39:27', ''),
(617, 337, 61, 1407625226, '2011-12-14 00:39:28', ''),
(618, 338, 3, 1407625226, '2011-12-14 00:39:29', ''),
(619, 339, 88, 1407625226, '2011-12-14 00:39:30', ''),
(620, 340, 22, 1407625226, '2011-12-14 00:39:31', ''),
(621, 341, 24, 1407625226, '2011-12-14 00:39:31', ''),
(622, 342, 4, 1407625226, '2011-12-14 00:39:31', ''),
(623, 343, 3, 1407625226, '2011-12-14 00:40:13', ''),
(624, 344, 3, 1407625226, '2011-12-14 00:40:13', ''),
(625, 345, 3, 1407625226, '2011-12-14 00:40:15', ''),
(626, 346, 3, 1407625226, '2011-12-14 00:40:15', ''),
(627, 347, 3, 1407625226, '2011-12-14 00:40:15', ''),
(628, 348, 3, 1407625226, '2011-12-14 00:40:26', ''),
(629, 349, 3, 1407625226, '2011-12-14 00:40:26', ''),
(630, 350, 3, 1407625226, '2011-12-14 00:40:27', ''),
(631, 351, 3, 1407625226, '2011-12-14 00:40:27', ''),
(632, 352, 3, 1407625226, '2011-12-14 00:40:27', ''),
(633, 353, 3, 1407625226, '2011-12-14 00:40:27', ''),
(634, 354, 3, 1407625226, '2011-12-14 00:40:30', ''),
(635, 355, 1, 1407625226, '2011-12-14 10:49:07', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_connections_page`
--

DROP TABLE IF EXISTS `ps_connections_page`;
CREATE TABLE IF NOT EXISTS `ps_connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_connections_source`
--

DROP TABLE IF EXISTS `ps_connections_source`;
CREATE TABLE IF NOT EXISTS `ps_connections_source` (
  `id_connections_source` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `ps_connections_source`
--

INSERT INTO `ps_connections_source` (`id_connections_source`, `id_connections`, `http_referer`, `request_uri`, `keywords`, `date_add`) VALUES
(12, 492, 'http://juancruzllorens.co.cc/portfolio/prestashop/', 'juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '', '2011-12-06 10:27:56'),
(13, 490, 'http://juancruzllorens.co.cc/portfolio/prestashop/', 'juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '', '2011-12-10 14:49:17'),
(14, 495, 'http://juancruzllorens.co.cc/portfolio/prestashop/', 'juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '', '2011-12-13 22:00:29'),
(15, 497, 'http://juancruzllorens.co.cc/portfolio/prestashop/', 'juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '', '2011-12-13 23:27:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_contact`
--

DROP TABLE IF EXISTS `ps_contact`;
CREATE TABLE IF NOT EXISTS `ps_contact` (
  `id_contact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `ps_contact`
--

INSERT INTO `ps_contact` (`id_contact`, `email`, `customer_service`, `position`) VALUES
(1, 'iberasoftsl@gmail.com', 1, 0),
(2, 'iberasoftsl@gmail.com', 1, 0),
(3, 'iberasoftsl@gmail.com', 1, 0),
(4, 'iberasoftsl@gmail.com', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_contact_lang`
--

DROP TABLE IF EXISTS `ps_contact_lang`;
CREATE TABLE IF NOT EXISTS `ps_contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  UNIQUE KEY `contact_lang_index` (`id_contact`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_contact_lang`
--

INSERT INTO `ps_contact_lang` (`id_contact`, `id_lang`, `name`, `description`) VALUES
(1, 1, 'Webmaster', 'If you have a technical problem with the website.'),
(1, 2, 'Webmaster', 'Si un problème technique survient sur le site'),
(1, 3, 'Webmaster', 'Si se produce un problema técnico en el sitio'),
(1, 4, 'Webmaster', 'Falls ein technisches Problem auf der Webseite auftritt'),
(1, 5, 'Webmaster', 'Se nel sito interviene un problema tecnico'),
(1, 6, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 7, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 8, 'Webmaster', 'If a technical problem occurs on this website'),
(2, 1, 'Customer service', 'For questions about an order or our products.'),
(2, 2, 'Service client', 'Pour toute question ou réclamation sur une commande'),
(2, 3, 'Service client', 'Para cualquier pregunta o queja acerca de un pedido'),
(2, 4, 'Kundenservice', 'Bei Fragen oder Reklamationen zu einer Bestellung'),
(2, 5, 'Servizio clienti', 'Per qualsiasi domanda o reclamo riguardo ad un ordine'),
(2, 6, 'Customer service', 'For any question about a product, an order'),
(2, 7, 'Customer service', 'For any question about a product, an order'),
(2, 8, 'Customer service', 'For any question about a product, an order'),
(3, 1, 'Apply for a Discount Card', 'Please add your name and address on Message field.'),
(3, 2, 'Apply a Discount Card', NULL),
(3, 3, 'Apply a Discount Card', NULL),
(3, 4, 'Apply a Discount Card', NULL),
(3, 5, 'Apply a Discount Card', NULL),
(3, 6, 'Apply a Discount Card', NULL),
(3, 7, 'Apply a Discount Card', NULL),
(3, 8, 'Apply a Discount Card', NULL),
(4, 1, 'Apply for a Pensioners Card', 'Please attach a copy of your pensioner paper on Attach File field.\r\n'),
(4, 2, 'Apply for a card for pensioners', NULL),
(4, 3, 'Apply for a card for pensioners', NULL),
(4, 4, 'Apply for a card for pensioners', NULL),
(4, 5, 'Apply for a card for pensioners', NULL),
(4, 6, 'Apply for a card for pensioners', NULL),
(4, 7, 'Apply for a card for pensioners', NULL),
(4, 8, 'Apply for a card for pensioners', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_country`
--

DROP TABLE IF EXISTS `ps_country`;
CREATE TABLE IF NOT EXISTS `ps_country` (
  `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Volcado de datos para la tabla `ps_country`
--

INSERT INTO `ps_country` (`id_country`, `id_zone`, `id_currency`, `iso_code`, `call_prefix`, `active`, `contains_states`, `need_identification_number`, `need_zip_code`, `zip_code_format`, `display_tax_label`) VALUES
(1, 1, 0, 'DE', 49, 1, 0, 0, 1, 'NNNNN', 1),
(2, 1, 0, 'AT', 43, 1, 0, 0, 1, 'NNNN', 1),
(3, 1, 0, 'BE', 32, 1, 0, 0, 1, 'NNNN', 1),
(4, 2, 0, 'CA', 1, 1, 1, 0, 1, 'LNL NLN', 0),
(5, 3, 0, 'CN', 86, 1, 0, 0, 1, 'NNNNNN', 1),
(6, 1, 0, 'ES', 34, 1, 0, 1, 1, 'NNNNN', 1),
(7, 1, 0, 'FI', 358, 1, 0, 0, 1, 'NNNNN', 1),
(8, 1, 0, 'FR', 33, 1, 0, 0, 1, 'NNNNN', 1),
(9, 1, 0, 'GR', 30, 1, 0, 0, 1, 'NNNNN', 1),
(10, 1, 0, 'IT', 39, 1, 1, 0, 1, 'NNNNN', 1),
(11, 3, 0, 'JP', 81, 1, 0, 0, 1, 'NNN-NNNN', 1),
(12, 1, 0, 'LU', 352, 1, 0, 0, 1, 'NNNN', 1),
(13, 1, 0, 'NL', 31, 1, 0, 0, 1, 'NNNN LL', 1),
(14, 1, 0, 'PL', 48, 1, 0, 0, 1, 'NN-NNN', 1),
(15, 1, 0, 'PT', 351, 1, 0, 0, 1, 'NNNN NNN', 1),
(16, 1, 0, 'CZ', 420, 1, 0, 0, 1, 'NNN NN', 1),
(17, 1, 0, 'GB', 44, 1, 0, 0, 1, '', 1),
(18, 1, 0, 'SE', 46, 1, 0, 0, 1, 'NNN NN', 1),
(19, 7, 0, 'CH', 41, 1, 0, 0, 1, 'NNNN', 1),
(20, 1, 0, 'DK', 45, 1, 0, 0, 1, 'NNNN', 1),
(21, 2, 0, 'US', 1, 1, 1, 0, 1, 'NNNNN', 1),
(22, 3, 0, 'HK', 852, 1, 0, 0, 0, '', 1),
(23, 1, 0, 'NO', 47, 1, 0, 0, 1, 'NNNN', 1),
(24, 5, 0, 'AU', 61, 1, 0, 0, 1, 'NNNN', 1),
(25, 3, 0, 'SG', 65, 1, 0, 0, 1, 'NNNNNN', 1),
(26, 1, 0, 'IE', 353, 1, 0, 0, 1, '', 1),
(27, 5, 0, 'NZ', 64, 1, 0, 0, 1, 'NNNN', 1),
(28, 3, 0, 'KR', 82, 1, 0, 0, 1, 'NNN-NNN', 1),
(29, 3, 0, 'IL', 972, 1, 0, 0, 1, 'NNNNN', 1),
(30, 4, 0, 'ZA', 27, 1, 0, 0, 1, 'NNNN', 1),
(31, 4, 0, 'NG', 234, 1, 0, 0, 1, '', 1),
(32, 4, 0, 'CI', 225, 1, 0, 0, 1, '', 1),
(33, 4, 0, 'TG', 228, 1, 0, 0, 1, '', 1),
(34, 6, 0, 'BO', 591, 1, 0, 0, 1, '', 1),
(35, 4, 0, 'MU', 230, 1, 0, 0, 1, '', 1),
(36, 1, 0, 'RO', 40, 1, 0, 0, 1, 'NNNNNN', 1),
(37, 1, 0, 'SK', 421, 1, 0, 0, 1, 'NNN NN', 1),
(38, 4, 0, 'DZ', 213, 1, 0, 0, 1, 'NNNNN', 1),
(39, 2, 0, 'AS', 0, 1, 0, 0, 1, '', 1),
(40, 7, 0, 'AD', 376, 1, 0, 0, 1, 'CNNN', 1),
(41, 4, 0, 'AO', 244, 1, 0, 0, 0, '', 1),
(42, 8, 0, 'AI', 0, 1, 0, 0, 1, '', 1),
(43, 2, 0, 'AG', 0, 1, 0, 0, 1, '', 1),
(44, 6, 0, 'AR', 54, 1, 1, 0, 1, 'LNNNN', 1),
(45, 3, 0, 'AM', 374, 1, 0, 0, 1, 'NNNN', 1),
(46, 8, 0, 'AW', 297, 1, 0, 0, 1, '', 1),
(47, 3, 0, 'AZ', 994, 1, 0, 0, 1, 'CNNNN', 1),
(48, 2, 0, 'BS', 0, 1, 0, 0, 1, '', 1),
(49, 3, 0, 'BH', 973, 1, 0, 0, 1, '', 1),
(50, 3, 0, 'BD', 880, 1, 0, 0, 1, 'NNNN', 1),
(51, 2, 0, 'BB', 0, 1, 0, 0, 1, 'CNNNNN', 1),
(52, 7, 0, 'BY', 0, 1, 0, 0, 1, 'NNNNNN', 1),
(53, 8, 0, 'BZ', 501, 1, 0, 0, 0, '', 1),
(54, 4, 0, 'BJ', 229, 1, 0, 0, 0, '', 1),
(55, 2, 0, 'BM', 0, 1, 0, 0, 1, '', 1),
(56, 3, 0, 'BT', 975, 1, 0, 0, 1, '', 1),
(57, 4, 0, 'BW', 267, 1, 0, 0, 1, '', 1),
(58, 6, 0, 'BR', 55, 1, 0, 0, 1, 'NNNNN-NNN', 1),
(59, 3, 0, 'BN', 673, 1, 0, 0, 1, 'LLNNNN', 1),
(60, 4, 0, 'BF', 226, 1, 0, 0, 1, '', 1),
(61, 3, 0, 'MM', 95, 1, 0, 0, 1, '', 1),
(62, 4, 0, 'BI', 257, 1, 0, 0, 1, '', 1),
(63, 3, 0, 'KH', 855, 1, 0, 0, 1, 'NNNNN', 1),
(64, 4, 0, 'CM', 237, 1, 0, 0, 1, '', 1),
(65, 4, 0, 'CV', 238, 1, 0, 0, 1, 'NNNN', 1),
(66, 4, 0, 'CF', 236, 1, 0, 0, 1, '', 1),
(67, 4, 0, 'TD', 235, 1, 0, 0, 1, '', 1),
(68, 6, 0, 'CL', 56, 1, 0, 0, 1, 'NNN-NNNN', 1),
(69, 6, 0, 'CO', 57, 1, 0, 0, 1, 'NNNNNN', 1),
(70, 4, 0, 'KM', 269, 1, 0, 0, 1, '', 1),
(71, 4, 0, 'CD', 242, 1, 0, 0, 1, '', 1),
(72, 4, 0, 'CG', 243, 1, 0, 0, 1, '', 1),
(73, 8, 0, 'CR', 506, 1, 0, 0, 1, 'NNNNN', 1),
(74, 7, 0, 'HR', 385, 1, 0, 0, 1, 'NNNNN', 1),
(75, 8, 0, 'CU', 53, 1, 0, 0, 1, '', 1),
(76, 1, 0, 'CY', 357, 1, 0, 0, 1, 'NNNN', 1),
(77, 4, 0, 'DJ', 253, 1, 0, 0, 1, '', 1),
(78, 8, 0, 'DM', 0, 1, 0, 0, 1, '', 1),
(79, 8, 0, 'DO', 0, 1, 0, 0, 1, '', 1),
(80, 3, 0, 'TL', 670, 1, 0, 0, 1, '', 1),
(81, 6, 0, 'EC', 593, 1, 0, 0, 1, 'CNNNNNN', 1),
(82, 4, 0, 'EG', 20, 1, 0, 0, 0, '', 1),
(83, 8, 0, 'SV', 503, 1, 0, 0, 1, '', 1),
(84, 4, 0, 'GQ', 240, 1, 0, 0, 1, '', 1),
(85, 4, 0, 'ER', 291, 1, 0, 0, 1, '', 1),
(86, 1, 0, 'EE', 372, 1, 0, 0, 1, 'NNNNN', 1),
(87, 4, 0, 'ET', 251, 1, 0, 0, 1, '', 1),
(88, 8, 0, 'FK', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(89, 7, 0, 'FO', 298, 1, 0, 0, 1, '', 1),
(90, 5, 0, 'FJ', 679, 1, 0, 0, 1, '', 1),
(91, 4, 0, 'GA', 241, 1, 0, 0, 1, '', 1),
(92, 4, 0, 'GM', 220, 1, 0, 0, 1, '', 1),
(93, 3, 0, 'GE', 995, 1, 0, 0, 1, 'NNNN', 1),
(94, 4, 0, 'GH', 233, 1, 0, 0, 1, '', 1),
(95, 8, 0, 'GD', 0, 1, 0, 0, 1, '', 1),
(96, 7, 0, 'GL', 299, 1, 0, 0, 1, '', 1),
(97, 7, 0, 'GI', 350, 1, 0, 0, 1, '', 1),
(98, 8, 0, 'GP', 590, 1, 0, 0, 1, '', 1),
(99, 8, 0, 'GU', 0, 1, 0, 0, 1, '', 1),
(100, 8, 0, 'GT', 502, 1, 0, 0, 1, '', 1),
(101, 7, 0, 'GG', 0, 1, 0, 0, 1, 'LLN NLL', 1),
(102, 4, 0, 'GN', 224, 1, 0, 0, 1, '', 1),
(103, 4, 0, 'GW', 245, 1, 0, 0, 1, '', 1),
(104, 6, 0, 'GY', 592, 1, 0, 0, 1, '', 1),
(105, 8, 0, 'HT', 509, 1, 0, 0, 1, '', 1),
(106, 5, 0, 'HM', 0, 1, 0, 0, 1, '', 1),
(107, 7, 0, 'VA', 379, 1, 0, 0, 1, 'NNNNN', 1),
(108, 8, 0, 'HN', 504, 1, 0, 0, 1, '', 1),
(109, 7, 0, 'IS', 354, 1, 0, 0, 1, 'NNN', 1),
(110, 3, 0, 'IN', 91, 1, 0, 0, 1, 'NNN NNN', 1),
(111, 3, 0, 'ID', 62, 1, 0, 0, 1, 'NNNNN', 1),
(112, 3, 0, 'IR', 98, 1, 0, 0, 1, 'NNNNN-NNNNN', 1),
(113, 3, 0, 'IQ', 964, 1, 0, 0, 1, 'NNNNN', 1),
(114, 7, 0, 'IM', 0, 1, 0, 0, 1, 'CN NLL', 1),
(115, 8, 0, 'JM', 0, 1, 0, 0, 1, '', 1),
(116, 7, 0, 'JE', 0, 1, 0, 0, 1, 'CN NLL', 1),
(117, 3, 0, 'JO', 962, 1, 0, 0, 1, '', 1),
(118, 3, 0, 'KZ', 7, 1, 0, 0, 1, 'NNNNNN', 1),
(119, 4, 0, 'KE', 254, 1, 0, 0, 1, '', 1),
(120, 7, 0, 'KI', 686, 1, 0, 0, 1, '', 1),
(121, 3, 0, 'KP', 850, 1, 0, 0, 1, '', 1),
(122, 3, 0, 'KW', 965, 1, 0, 0, 1, '', 1),
(123, 3, 0, 'KG', 996, 1, 0, 0, 1, '', 1),
(124, 3, 0, 'LA', 856, 1, 0, 0, 1, '', 1),
(125, 1, 0, 'LV', 371, 1, 0, 0, 1, 'C-NNNN', 1),
(126, 3, 0, 'LB', 961, 1, 0, 0, 1, '', 1),
(127, 4, 0, 'LS', 266, 1, 0, 0, 1, '', 1),
(128, 4, 0, 'LR', 231, 1, 0, 0, 1, '', 1),
(129, 4, 0, 'LY', 218, 1, 0, 0, 1, '', 1),
(130, 1, 0, 'LI', 423, 1, 0, 0, 1, 'NNNN', 1),
(131, 1, 0, 'LT', 370, 1, 0, 0, 1, 'NNNNN', 1),
(132, 3, 0, 'MO', 853, 1, 0, 0, 0, '', 1),
(133, 7, 0, 'MK', 389, 1, 0, 0, 1, '', 1),
(134, 4, 0, 'MG', 261, 1, 0, 0, 1, '', 1),
(135, 4, 0, 'MW', 265, 1, 0, 0, 1, '', 1),
(136, 3, 0, 'MY', 60, 1, 0, 0, 1, 'NNNNN', 1),
(137, 3, 0, 'MV', 960, 1, 0, 0, 1, '', 1),
(138, 4, 0, 'ML', 223, 1, 0, 0, 1, '', 1),
(139, 1, 0, 'MT', 356, 1, 0, 0, 1, 'LLL NNNN', 1),
(140, 5, 0, 'MH', 692, 1, 0, 0, 1, '', 1),
(141, 8, 0, 'MQ', 596, 1, 0, 0, 1, '', 1),
(142, 4, 0, 'MR', 222, 1, 0, 0, 1, '', 1),
(143, 1, 0, 'HU', 36, 1, 0, 0, 1, 'NNNN', 1),
(144, 4, 0, 'YT', 262, 1, 0, 0, 1, '', 1),
(145, 2, 0, 'MX', 52, 1, 1, 1, 1, 'NNNNN', 1),
(146, 5, 0, 'FM', 691, 1, 0, 0, 1, '', 1),
(147, 7, 0, 'MD', 373, 1, 0, 0, 1, 'C-NNNN', 1),
(148, 7, 0, 'MC', 377, 1, 0, 0, 1, '980NN', 1),
(149, 3, 0, 'MN', 976, 1, 0, 0, 1, '', 1),
(150, 7, 0, 'ME', 382, 1, 0, 0, 1, 'NNNNN', 1),
(151, 8, 0, 'MS', 0, 1, 0, 0, 1, '', 1),
(152, 4, 0, 'MA', 212, 1, 0, 0, 1, 'NNNNN', 1),
(153, 4, 0, 'MZ', 258, 1, 0, 0, 1, '', 1),
(154, 4, 0, 'NA', 264, 1, 0, 0, 1, '', 1),
(155, 5, 0, 'NR', 674, 1, 0, 0, 1, '', 1),
(156, 3, 0, 'NP', 977, 1, 0, 0, 1, '', 1),
(157, 8, 0, 'AN', 599, 1, 0, 0, 1, '', 1),
(158, 5, 0, 'NC', 687, 1, 0, 0, 1, '', 1),
(159, 8, 0, 'NI', 505, 1, 0, 0, 1, 'NNNNNN', 1),
(160, 4, 0, 'NE', 227, 1, 0, 0, 1, '', 1),
(161, 5, 0, 'NU', 683, 1, 0, 0, 1, '', 1),
(162, 5, 0, 'NF', 0, 1, 0, 0, 1, '', 1),
(163, 5, 0, 'MP', 0, 1, 0, 0, 1, '', 1),
(164, 3, 0, 'OM', 968, 1, 0, 0, 1, '', 1),
(165, 3, 0, 'PK', 92, 1, 0, 0, 1, '', 1),
(166, 5, 0, 'PW', 680, 1, 0, 0, 1, '', 1),
(167, 3, 0, 'PS', 0, 1, 0, 0, 1, '', 1),
(168, 8, 0, 'PA', 507, 1, 0, 0, 1, 'NNNNNN', 1),
(169, 5, 0, 'PG', 675, 1, 0, 0, 1, '', 1),
(170, 6, 0, 'PY', 595, 1, 0, 0, 1, '', 1),
(171, 6, 0, 'PE', 51, 1, 0, 0, 1, '', 1),
(172, 3, 0, 'PH', 63, 1, 0, 0, 1, 'NNNN', 1),
(173, 5, 0, 'PN', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(174, 8, 0, 'PR', 0, 1, 0, 0, 1, 'NNNNN', 1),
(175, 3, 0, 'QA', 974, 1, 0, 0, 1, '', 1),
(176, 4, 0, 'RE', 262, 1, 0, 0, 1, '', 1),
(177, 7, 0, 'RU', 7, 1, 0, 0, 1, 'NNNNNN', 1),
(178, 4, 0, 'RW', 250, 1, 0, 0, 1, '', 1),
(179, 8, 0, 'BL', 0, 1, 0, 0, 1, '', 1),
(180, 8, 0, 'KN', 0, 1, 0, 0, 1, '', 1),
(181, 8, 0, 'LC', 0, 1, 0, 0, 1, '', 1),
(182, 8, 0, 'MF', 0, 1, 0, 0, 1, '', 1),
(183, 8, 0, 'PM', 508, 1, 0, 0, 1, '', 1),
(184, 8, 0, 'VC', 0, 1, 0, 0, 1, '', 1),
(185, 5, 0, 'WS', 685, 1, 0, 0, 1, '', 1),
(186, 7, 0, 'SM', 378, 1, 0, 0, 1, 'NNNNN', 1),
(187, 4, 0, 'ST', 239, 1, 0, 0, 1, '', 1),
(188, 3, 0, 'SA', 966, 1, 0, 0, 1, '', 1),
(189, 4, 0, 'SN', 221, 1, 0, 0, 1, '', 1),
(190, 7, 0, 'RS', 381, 1, 0, 0, 1, 'NNNNN', 1),
(191, 4, 0, 'SC', 248, 1, 0, 0, 1, '', 1),
(192, 4, 0, 'SL', 232, 1, 0, 0, 1, '', 1),
(193, 1, 0, 'SI', 386, 1, 0, 0, 1, 'C-NNNN', 1),
(194, 5, 0, 'SB', 677, 1, 0, 0, 1, '', 1),
(195, 4, 0, 'SO', 252, 1, 0, 0, 1, '', 1),
(196, 8, 0, 'GS', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(197, 3, 0, 'LK', 94, 1, 0, 0, 1, 'NNNNN', 1),
(198, 4, 0, 'SD', 249, 1, 0, 0, 1, '', 1),
(199, 8, 0, 'SR', 597, 1, 0, 0, 1, '', 1),
(200, 7, 0, 'SJ', 0, 1, 0, 0, 1, '', 1),
(201, 4, 0, 'SZ', 268, 1, 0, 0, 1, '', 1),
(202, 3, 0, 'SY', 963, 1, 0, 0, 1, '', 1),
(203, 3, 0, 'TW', 886, 1, 0, 0, 1, 'NNNNN', 1),
(204, 3, 0, 'TJ', 992, 1, 0, 0, 1, '', 1),
(205, 4, 0, 'TZ', 255, 1, 0, 0, 1, '', 1),
(206, 3, 0, 'TH', 66, 1, 0, 0, 1, 'NNNNN', 1),
(207, 5, 0, 'TK', 690, 1, 0, 0, 1, '', 1),
(208, 5, 0, 'TO', 676, 1, 0, 0, 1, '', 1),
(209, 6, 0, 'TT', 0, 1, 0, 0, 1, '', 1),
(210, 4, 0, 'TN', 216, 1, 0, 0, 1, '', 1),
(211, 7, 0, 'TR', 90, 1, 0, 0, 1, 'NNNNN', 1),
(212, 3, 0, 'TM', 993, 1, 0, 0, 1, '', 1),
(213, 8, 0, 'TC', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(214, 5, 0, 'TV', 688, 1, 0, 0, 1, '', 1),
(215, 4, 0, 'UG', 256, 1, 0, 0, 1, '', 1),
(216, 1, 0, 'UA', 380, 1, 0, 0, 1, 'NNNNN', 1),
(217, 3, 0, 'AE', 971, 1, 0, 0, 1, '', 1),
(218, 6, 0, 'UY', 598, 1, 0, 0, 1, '', 1),
(219, 3, 0, 'UZ', 998, 1, 0, 0, 1, '', 1),
(220, 5, 0, 'VU', 678, 1, 0, 0, 1, '', 1),
(221, 6, 0, 'VE', 58, 1, 0, 0, 1, '', 1),
(222, 3, 0, 'VN', 84, 1, 0, 0, 1, 'NNNNNN', 1),
(223, 2, 0, 'VG', 0, 1, 0, 0, 1, 'CNNNN', 1),
(224, 2, 0, 'VI', 0, 1, 0, 0, 1, '', 1),
(225, 5, 0, 'WF', 681, 1, 0, 0, 1, '', 1),
(226, 4, 0, 'EH', 0, 1, 0, 0, 1, '', 1),
(227, 3, 0, 'YE', 967, 1, 0, 0, 1, '', 1),
(228, 4, 0, 'ZM', 260, 1, 0, 0, 1, '', 1),
(229, 4, 0, 'ZW', 263, 1, 0, 0, 1, '', 1),
(230, 7, 0, 'AL', 355, 1, 0, 0, 1, 'NNNN', 1),
(231, 3, 0, 'AF', 93, 1, 0, 0, 0, '', 1),
(232, 5, 0, 'AQ', 0, 1, 0, 0, 1, '', 1),
(233, 1, 0, 'BA', 387, 1, 0, 0, 1, '', 1),
(234, 5, 0, 'BV', 0, 1, 0, 0, 1, '', 1),
(235, 5, 0, 'IO', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(236, 1, 0, 'BG', 359, 1, 0, 0, 1, 'NNNN', 1),
(237, 8, 0, 'KY', 0, 1, 0, 0, 1, '', 1),
(238, 3, 0, 'CX', 0, 1, 0, 0, 1, '', 1),
(239, 3, 0, 'CC', 0, 1, 0, 0, 1, '', 1),
(240, 5, 0, 'CK', 682, 1, 0, 0, 1, '', 1),
(241, 6, 0, 'GF', 594, 1, 0, 0, 1, '', 1),
(242, 5, 0, 'PF', 689, 1, 0, 0, 1, '', 1),
(243, 5, 0, 'TF', 0, 1, 0, 0, 1, '', 1),
(244, 7, 0, 'AX', 0, 1, 0, 0, 1, 'NNNNN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_country_lang`
--

DROP TABLE IF EXISTS `ps_country_lang`;
CREATE TABLE IF NOT EXISTS `ps_country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `country_lang_index` (`id_country`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_country_lang`
--

INSERT INTO `ps_country_lang` (`id_country`, `id_lang`, `name`) VALUES
(1, 1, 'Germany'),
(1, 2, 'Allemagne'),
(1, 3, 'Alemania'),
(1, 4, 'Germany'),
(1, 5, 'Germany'),
(1, 6, 'Germany'),
(1, 7, 'Germany'),
(1, 8, 'Germany'),
(2, 1, 'Austria'),
(2, 2, 'Autriche'),
(2, 3, 'Austria'),
(2, 4, 'Austria'),
(2, 5, 'Austria'),
(2, 6, 'Austria'),
(2, 7, 'Austria'),
(2, 8, 'Austria'),
(3, 1, 'Belgium'),
(3, 2, 'Belgique'),
(3, 3, 'Bélgica'),
(3, 4, 'Belgium'),
(3, 5, 'Belgium'),
(3, 6, 'Belgium'),
(3, 7, 'Belgium'),
(3, 8, 'Belgium'),
(4, 1, 'Canada'),
(4, 2, 'Canada'),
(4, 3, 'Canadá'),
(4, 4, 'Canada'),
(4, 5, 'Canada'),
(4, 6, 'Canada'),
(4, 7, 'Canada'),
(4, 8, 'Canada'),
(5, 1, 'China'),
(5, 2, 'Chine'),
(5, 3, 'Porcelana'),
(5, 4, 'China'),
(5, 5, 'China'),
(5, 6, 'China'),
(5, 7, 'China'),
(5, 8, 'China'),
(6, 1, 'Spain'),
(6, 2, 'Espagne'),
(6, 3, 'España'),
(6, 4, 'Spain'),
(6, 5, 'Spain'),
(6, 6, 'Spain'),
(6, 7, 'Spain'),
(6, 8, 'Spain'),
(7, 1, 'Finland'),
(7, 2, 'Finlande'),
(7, 3, 'Finlandia'),
(7, 4, 'Finland'),
(7, 5, 'Finland'),
(7, 6, 'Finland'),
(7, 7, 'Finland'),
(7, 8, 'Finland'),
(8, 1, 'France'),
(8, 2, 'France'),
(8, 3, 'Francia'),
(8, 4, 'France'),
(8, 5, 'France'),
(8, 6, 'France'),
(8, 7, 'France'),
(8, 8, 'France'),
(9, 1, 'Greece'),
(9, 2, 'Grèce'),
(9, 3, 'Grecia'),
(9, 4, 'Greece'),
(9, 5, 'Greece'),
(9, 6, 'Greece'),
(9, 7, 'Greece'),
(9, 8, 'Greece'),
(10, 1, 'Italy'),
(10, 2, 'Italie'),
(10, 3, 'Italia'),
(10, 4, 'Italy'),
(10, 5, 'Italy'),
(10, 6, 'Italy'),
(10, 7, 'Italy'),
(10, 8, 'Italy'),
(11, 1, 'Japan'),
(11, 2, 'Japon'),
(11, 3, 'Japón'),
(11, 4, 'Japan'),
(11, 5, 'Japan'),
(11, 6, 'Japan'),
(11, 7, 'Japan'),
(11, 8, 'Japan'),
(12, 1, 'Luxemburg'),
(12, 2, 'Luxembourg'),
(12, 3, 'Luxemburgo'),
(12, 4, 'Luxemburg'),
(12, 5, 'Luxemburg'),
(12, 6, 'Luxemburg'),
(12, 7, 'Luxemburg'),
(12, 8, 'Luxemburg'),
(13, 1, 'Netherlands'),
(13, 2, 'Pays-bas'),
(13, 3, 'Países Bajos'),
(13, 4, 'Netherlands'),
(13, 5, 'Netherlands'),
(13, 6, 'Netherlands'),
(13, 7, 'Netherlands'),
(13, 8, 'Netherlands'),
(14, 1, 'Poland'),
(14, 2, 'Pologne'),
(14, 3, 'Polonia'),
(14, 4, 'Poland'),
(14, 5, 'Poland'),
(14, 6, 'Poland'),
(14, 7, 'Poland'),
(14, 8, 'Poland'),
(15, 1, 'Portugal'),
(15, 2, 'Portugal'),
(15, 3, 'Portugal'),
(15, 4, 'Portugal'),
(15, 5, 'Portugal'),
(15, 6, 'Portugal'),
(15, 7, 'Portugal'),
(15, 8, 'Portugal'),
(16, 1, 'Czech Republic'),
(16, 2, 'République Tchèque'),
(16, 3, 'República Checa'),
(16, 4, 'Czech Republic'),
(16, 5, 'Czech Republic'),
(16, 6, 'Czech Republic'),
(16, 7, 'Czech Republic'),
(16, 8, 'Czech Republic'),
(17, 1, 'United Kingdom'),
(17, 2, 'Royaume-Uni'),
(17, 3, 'Reino Unido'),
(17, 4, 'United Kingdom'),
(17, 5, 'United Kingdom'),
(17, 6, 'United Kingdom'),
(17, 7, 'United Kingdom'),
(17, 8, 'United Kingdom'),
(18, 1, 'Sweden'),
(18, 2, 'Suède'),
(18, 3, 'Suecia'),
(18, 4, 'Sweden'),
(18, 5, 'Sweden'),
(18, 6, 'Sweden'),
(18, 7, 'Sweden'),
(18, 8, 'Sweden'),
(19, 1, 'Switzerland'),
(19, 2, 'Suisse'),
(19, 3, 'Suiza'),
(19, 4, 'Switzerland'),
(19, 5, 'Switzerland'),
(19, 6, 'Switzerland'),
(19, 7, 'Switzerland'),
(19, 8, 'Switzerland'),
(20, 1, 'Denmark'),
(20, 2, 'Danemark'),
(20, 3, 'Dinamarca'),
(20, 4, 'Denmark'),
(20, 5, 'Denmark'),
(20, 6, 'Denmark'),
(20, 7, 'Denmark'),
(20, 8, 'Denmark'),
(21, 1, 'United States'),
(21, 2, 'États-Unis'),
(21, 3, 'EE.UU.'),
(21, 4, 'United States'),
(21, 5, 'United States'),
(21, 6, 'United States'),
(21, 7, 'United States'),
(21, 8, 'United States'),
(22, 1, 'HongKong'),
(22, 2, 'Hong-Kong'),
(22, 3, 'Hong Kong'),
(22, 4, 'HongKong'),
(22, 5, 'HongKong'),
(22, 6, 'HongKong'),
(22, 7, 'HongKong'),
(22, 8, 'HongKong'),
(23, 1, 'Norway'),
(23, 2, 'Norvège'),
(23, 3, 'Noruega'),
(23, 4, 'Norway'),
(23, 5, 'Norway'),
(23, 6, 'Norway'),
(23, 7, 'Norway'),
(23, 8, 'Norway'),
(24, 1, 'Australia'),
(24, 2, 'Australie'),
(24, 3, 'Australia'),
(24, 4, 'Australia'),
(24, 5, 'Australia'),
(24, 6, 'Australia'),
(24, 7, 'Australia'),
(24, 8, 'Australia'),
(25, 1, 'Singapore'),
(25, 2, 'Singapour'),
(25, 3, 'Singapur'),
(25, 4, 'Singapore'),
(25, 5, 'Singapore'),
(25, 6, 'Singapore'),
(25, 7, 'Singapore'),
(25, 8, 'Singapore'),
(26, 1, 'Ireland'),
(26, 2, 'Eire'),
(26, 3, 'Irlanda'),
(26, 4, 'Ireland'),
(26, 5, 'Ireland'),
(26, 6, 'Ireland'),
(26, 7, 'Ireland'),
(26, 8, 'Ireland'),
(27, 1, 'New Zealand'),
(27, 2, 'Nouvelle-Zélande'),
(27, 3, 'Nueva Zelanda'),
(27, 4, 'New Zealand'),
(27, 5, 'New Zealand'),
(27, 6, 'New Zealand'),
(27, 7, 'New Zealand'),
(27, 8, 'New Zealand'),
(28, 1, 'South Korea'),
(28, 2, 'Corée du Sud'),
(28, 3, 'Corea del Sur'),
(28, 4, 'South Korea'),
(28, 5, 'South Korea'),
(28, 6, 'South Korea'),
(28, 7, 'South Korea'),
(28, 8, 'South Korea'),
(29, 1, 'Israel'),
(29, 2, 'Israël'),
(29, 3, 'Israel'),
(29, 4, 'Israel'),
(29, 5, 'Israel'),
(29, 6, 'Israel'),
(29, 7, 'Israel'),
(29, 8, 'Israel'),
(30, 1, 'South Africa'),
(30, 2, 'Afrique du Sud'),
(30, 3, 'Sudáfrica'),
(30, 4, 'South Africa'),
(30, 5, 'South Africa'),
(30, 6, 'South Africa'),
(30, 7, 'South Africa'),
(30, 8, 'South Africa'),
(31, 1, 'Nigeria'),
(31, 2, 'Nigeria'),
(31, 3, 'Nigeria'),
(31, 4, 'Nigeria'),
(31, 5, 'Nigeria'),
(31, 6, 'Nigeria'),
(31, 7, 'Nigeria'),
(31, 8, 'Nigeria'),
(32, 1, 'Ivory Coast'),
(32, 2, 'Côte d''Ivoire'),
(32, 3, 'Costa de Marfil'),
(32, 4, 'Ivory Coast'),
(32, 5, 'Ivory Coast'),
(32, 6, 'Ivory Coast'),
(32, 7, 'Ivory Coast'),
(32, 8, 'Ivory Coast'),
(33, 1, 'Togo'),
(33, 2, 'Togo'),
(33, 3, 'Togo'),
(33, 4, 'Togo'),
(33, 5, 'Togo'),
(33, 6, 'Togo'),
(33, 7, 'Togo'),
(33, 8, 'Togo'),
(34, 1, 'Bolivia'),
(34, 2, 'Bolivie'),
(34, 3, 'Bolivia'),
(34, 4, 'Bolivia'),
(34, 5, 'Bolivia'),
(34, 6, 'Bolivia'),
(34, 7, 'Bolivia'),
(34, 8, 'Bolivia'),
(35, 1, 'Mauritius'),
(35, 2, 'Ile Maurice'),
(35, 3, 'Mauricio'),
(35, 4, 'Mauritius'),
(35, 5, 'Mauritius'),
(35, 6, 'Mauritius'),
(35, 7, 'Mauritius'),
(35, 8, 'Mauritius'),
(36, 1, 'Romania'),
(36, 2, 'Roumanie'),
(36, 3, 'Rumania'),
(36, 4, 'Romania'),
(36, 5, 'Romania'),
(36, 6, 'Romania'),
(36, 7, 'Romania'),
(36, 8, 'Romania'),
(37, 1, 'Slovakia'),
(37, 2, 'Slovaquie'),
(37, 3, 'Eslovaquia'),
(37, 4, 'Slovakia'),
(37, 5, 'Slovakia'),
(37, 6, 'Slovakia'),
(37, 7, 'Slovakia'),
(37, 8, 'Slovakia'),
(38, 1, 'Algeria'),
(38, 2, 'Algérie'),
(38, 3, 'Argelia'),
(38, 4, 'Algeria'),
(38, 5, 'Algeria'),
(38, 6, 'Algeria'),
(38, 7, 'Algeria'),
(38, 8, 'Algeria'),
(39, 1, 'American Samoa'),
(39, 2, 'Samoa Américaines'),
(39, 3, 'Samoa Americana'),
(39, 4, 'American Samoa'),
(39, 5, 'American Samoa'),
(39, 6, 'American Samoa'),
(39, 7, 'American Samoa'),
(39, 8, 'American Samoa'),
(40, 1, 'Andorra'),
(40, 2, 'Andorre'),
(40, 3, 'Andorra'),
(40, 4, 'Andorra'),
(40, 5, 'Andorra'),
(40, 6, 'Andorra'),
(40, 7, 'Andorra'),
(40, 8, 'Andorra'),
(41, 1, 'Angola'),
(41, 2, 'Angola'),
(41, 3, 'Angola'),
(41, 4, 'Angola'),
(41, 5, 'Angola'),
(41, 6, 'Angola'),
(41, 7, 'Angola'),
(41, 8, 'Angola'),
(42, 1, 'Anguilla'),
(42, 2, 'Anguilla'),
(42, 3, 'Anguila'),
(42, 4, 'Anguilla'),
(42, 5, 'Anguilla'),
(42, 6, 'Anguilla'),
(42, 7, 'Anguilla'),
(42, 8, 'Anguilla'),
(43, 1, 'Antigua and Barbuda'),
(43, 2, 'Antigua et Barbuda'),
(43, 3, 'Antigua y Barbuda'),
(43, 4, 'Antigua and Barbuda'),
(43, 5, 'Antigua and Barbuda'),
(43, 6, 'Antigua and Barbuda'),
(43, 7, 'Antigua and Barbuda'),
(43, 8, 'Antigua and Barbuda'),
(44, 1, 'Argentina'),
(44, 2, 'Argentine'),
(44, 3, 'Argentina'),
(44, 4, 'Argentina'),
(44, 5, 'Argentina'),
(44, 6, 'Argentina'),
(44, 7, 'Argentina'),
(44, 8, 'Argentina'),
(45, 1, 'Armenia'),
(45, 2, 'Arménie'),
(45, 3, 'Armenia'),
(45, 4, 'Armenia'),
(45, 5, 'Armenia'),
(45, 6, 'Armenia'),
(45, 7, 'Armenia'),
(45, 8, 'Armenia'),
(46, 1, 'Aruba'),
(46, 2, 'Aruba'),
(46, 3, 'Aruba'),
(46, 4, 'Aruba'),
(46, 5, 'Aruba'),
(46, 6, 'Aruba'),
(46, 7, 'Aruba'),
(46, 8, 'Aruba'),
(47, 1, 'Azerbaijan'),
(47, 2, 'Azerbaïdjan'),
(47, 3, 'Azerbaiyán'),
(47, 4, 'Azerbaijan'),
(47, 5, 'Azerbaijan'),
(47, 6, 'Azerbaijan'),
(47, 7, 'Azerbaijan'),
(47, 8, 'Azerbaijan'),
(48, 1, 'Bahamas'),
(48, 2, 'Bahamas'),
(48, 3, 'Bahamas'),
(48, 4, 'Bahamas'),
(48, 5, 'Bahamas'),
(48, 6, 'Bahamas'),
(48, 7, 'Bahamas'),
(48, 8, 'Bahamas'),
(49, 1, 'Bahrain'),
(49, 2, 'Bahreïn'),
(49, 3, 'Bahrein'),
(49, 4, 'Bahrain'),
(49, 5, 'Bahrain'),
(49, 6, 'Bahrain'),
(49, 7, 'Bahrain'),
(49, 8, 'Bahrain'),
(50, 1, 'Bangladesh'),
(50, 2, 'Bangladesh'),
(50, 3, 'Bangladesh'),
(50, 4, 'Bangladesh'),
(50, 5, 'Bangladesh'),
(50, 6, 'Bangladesh'),
(50, 7, 'Bangladesh'),
(50, 8, 'Bangladesh'),
(51, 1, 'Barbados'),
(51, 2, 'Barbade'),
(51, 3, 'Barbados'),
(51, 4, 'Barbados'),
(51, 5, 'Barbados'),
(51, 6, 'Barbados'),
(51, 7, 'Barbados'),
(51, 8, 'Barbados'),
(52, 1, 'Belarus'),
(52, 2, 'Bélarus'),
(52, 3, 'Belarús'),
(52, 4, 'Belarus'),
(52, 5, 'Belarus'),
(52, 6, 'Belarus'),
(52, 7, 'Belarus'),
(52, 8, 'Belarus'),
(53, 1, 'Belize'),
(53, 2, 'Belize'),
(53, 3, 'Belice'),
(53, 4, 'Belize'),
(53, 5, 'Belize'),
(53, 6, 'Belize'),
(53, 7, 'Belize'),
(53, 8, 'Belize'),
(54, 1, 'Benin'),
(54, 2, 'Bénin'),
(54, 3, 'Benin'),
(54, 4, 'Benin'),
(54, 5, 'Benin'),
(54, 6, 'Benin'),
(54, 7, 'Benin'),
(54, 8, 'Benin'),
(55, 1, 'Bermuda'),
(55, 2, 'Bermudes'),
(55, 3, 'Bermudas'),
(55, 4, 'Bermuda'),
(55, 5, 'Bermuda'),
(55, 6, 'Bermuda'),
(55, 7, 'Bermuda'),
(55, 8, 'Bermuda'),
(56, 1, 'Bhutan'),
(56, 2, 'Bhoutan'),
(56, 3, 'Bhután'),
(56, 4, 'Bhutan'),
(56, 5, 'Bhutan'),
(56, 6, 'Bhutan'),
(56, 7, 'Bhutan'),
(56, 8, 'Bhutan'),
(57, 1, 'Botswana'),
(57, 2, 'Botswana'),
(57, 3, 'Botswana'),
(57, 4, 'Botswana'),
(57, 5, 'Botswana'),
(57, 6, 'Botswana'),
(57, 7, 'Botswana'),
(57, 8, 'Botswana'),
(58, 1, 'Brazil'),
(58, 2, 'Brésil'),
(58, 3, 'Brasil'),
(58, 4, 'Brazil'),
(58, 5, 'Brazil'),
(58, 6, 'Brazil'),
(58, 7, 'Brazil'),
(58, 8, 'Brazil'),
(59, 1, 'Brunei'),
(59, 2, 'Brunéi Darussalam'),
(59, 3, 'Brunei'),
(59, 4, 'Brunei'),
(59, 5, 'Brunei'),
(59, 6, 'Brunei'),
(59, 7, 'Brunei'),
(59, 8, 'Brunei'),
(60, 1, 'Burkina Faso'),
(60, 2, 'Burkina Faso'),
(60, 3, 'Burkina Faso'),
(60, 4, 'Burkina Faso'),
(60, 5, 'Burkina Faso'),
(60, 6, 'Burkina Faso'),
(60, 7, 'Burkina Faso'),
(60, 8, 'Burkina Faso'),
(61, 1, 'Burma (Myanmar)'),
(61, 2, 'Burma (Myanmar)'),
(61, 3, 'Birmania (Myanmar)'),
(61, 4, 'Burma (Myanmar)'),
(61, 5, 'Burma (Myanmar)'),
(61, 6, 'Burma (Myanmar)'),
(61, 7, 'Burma (Myanmar)'),
(61, 8, 'Burma (Myanmar)'),
(62, 1, 'Burundi'),
(62, 2, 'Burundi'),
(62, 3, 'Burundi'),
(62, 4, 'Burundi'),
(62, 5, 'Burundi'),
(62, 6, 'Burundi'),
(62, 7, 'Burundi'),
(62, 8, 'Burundi'),
(63, 1, 'Cambodia'),
(63, 2, 'Cambodge'),
(63, 3, 'Camboya'),
(63, 4, 'Cambodia'),
(63, 5, 'Cambodia'),
(63, 6, 'Cambodia'),
(63, 7, 'Cambodia'),
(63, 8, 'Cambodia'),
(64, 1, 'Cameroon'),
(64, 2, 'Cameroun'),
(64, 3, 'Camerún'),
(64, 4, 'Cameroon'),
(64, 5, 'Cameroon'),
(64, 6, 'Cameroon'),
(64, 7, 'Cameroon'),
(64, 8, 'Cameroon'),
(65, 1, 'Cape Verde'),
(65, 2, 'Cap-Vert'),
(65, 3, 'Cabo Verde'),
(65, 4, 'Cape Verde'),
(65, 5, 'Cape Verde'),
(65, 6, 'Cape Verde'),
(65, 7, 'Cape Verde'),
(65, 8, 'Cape Verde'),
(66, 1, 'Central African Republic'),
(66, 2, 'Centrafricaine, République'),
(66, 3, 'República Centroafricana'),
(66, 4, 'Central African Republic'),
(66, 5, 'Central African Republic'),
(66, 6, 'Central African Republic'),
(66, 7, 'Central African Republic'),
(66, 8, 'Central African Republic'),
(67, 1, 'Chad'),
(67, 2, 'Tchad'),
(67, 3, 'Chad'),
(67, 4, 'Chad'),
(67, 5, 'Chad'),
(67, 6, 'Chad'),
(67, 7, 'Chad'),
(67, 8, 'Chad'),
(68, 1, 'Chile'),
(68, 2, 'Chili'),
(68, 3, 'Chile'),
(68, 4, 'Chile'),
(68, 5, 'Chile'),
(68, 6, 'Chile'),
(68, 7, 'Chile'),
(68, 8, 'Chile'),
(69, 1, 'Colombia'),
(69, 2, 'Colombie'),
(69, 3, 'Colombia'),
(69, 4, 'Colombia'),
(69, 5, 'Colombia'),
(69, 6, 'Colombia'),
(69, 7, 'Colombia'),
(69, 8, 'Colombia'),
(70, 1, 'Comoros'),
(70, 2, 'Comores'),
(70, 3, 'Comoras'),
(70, 4, 'Comoros'),
(70, 5, 'Comoros'),
(70, 6, 'Comoros'),
(70, 7, 'Comoros'),
(70, 8, 'Comoros'),
(71, 1, 'Congo, Dem. Republic'),
(71, 2, 'Congo, Rép. Dém.'),
(71, 3, 'Congo, Rep. Dem.'),
(71, 4, 'Congo, Dem. Republic'),
(71, 5, 'Congo, Dem. Republic'),
(71, 6, 'Congo, Dem. Republic'),
(71, 7, 'Congo, Dem. Republic'),
(71, 8, 'Congo, Dem. Republic'),
(72, 1, 'Congo, Republic'),
(72, 2, 'Congo, Rép.'),
(72, 3, 'Congo, República'),
(72, 4, 'Congo, Republic'),
(72, 5, 'Congo, Republic'),
(72, 6, 'Congo, Republic'),
(72, 7, 'Congo, Republic'),
(72, 8, 'Congo, Republic'),
(73, 1, 'Costa Rica'),
(73, 2, 'Costa Rica'),
(73, 3, 'Costa Rica'),
(73, 4, 'Costa Rica'),
(73, 5, 'Costa Rica'),
(73, 6, 'Costa Rica'),
(73, 7, 'Costa Rica'),
(73, 8, 'Costa Rica'),
(74, 1, 'Croatia'),
(74, 2, 'Croatie'),
(74, 3, 'Croacia'),
(74, 4, 'Croatia'),
(74, 5, 'Croatia'),
(74, 6, 'Croatia'),
(74, 7, 'Croatia'),
(74, 8, 'Croatia'),
(75, 1, 'Cuba'),
(75, 2, 'Cuba'),
(75, 3, 'Cuba'),
(75, 4, 'Cuba'),
(75, 5, 'Cuba'),
(75, 6, 'Cuba'),
(75, 7, 'Cuba'),
(75, 8, 'Cuba'),
(76, 1, 'Cyprus'),
(76, 2, 'Chypre'),
(76, 3, 'Chipre'),
(76, 4, 'Cyprus'),
(76, 5, 'Cyprus'),
(76, 6, 'Cyprus'),
(76, 7, 'Cyprus'),
(76, 8, 'Cyprus'),
(77, 1, 'Djibouti'),
(77, 2, 'Djibouti'),
(77, 3, 'Djibouti'),
(77, 4, 'Djibouti'),
(77, 5, 'Djibouti'),
(77, 6, 'Djibouti'),
(77, 7, 'Djibouti'),
(77, 8, 'Djibouti'),
(78, 1, 'Dominica'),
(78, 2, 'Dominica'),
(78, 3, 'Dominica'),
(78, 4, 'Dominica'),
(78, 5, 'Dominica'),
(78, 6, 'Dominica'),
(78, 7, 'Dominica'),
(78, 8, 'Dominica'),
(79, 1, 'Dominican Republic'),
(79, 2, 'République Dominicaine'),
(79, 3, 'República Dominicana'),
(79, 4, 'Dominican Republic'),
(79, 5, 'Dominican Republic'),
(79, 6, 'Dominican Republic'),
(79, 7, 'Dominican Republic'),
(79, 8, 'Dominican Republic'),
(80, 1, 'East Timor'),
(80, 2, 'Timor oriental'),
(80, 3, 'Timor Oriental'),
(80, 4, 'East Timor'),
(80, 5, 'East Timor'),
(80, 6, 'East Timor'),
(80, 7, 'East Timor'),
(80, 8, 'East Timor'),
(81, 1, 'Ecuador'),
(81, 2, 'Équateur'),
(81, 3, 'Ecuador'),
(81, 4, 'Ecuador'),
(81, 5, 'Ecuador'),
(81, 6, 'Ecuador'),
(81, 7, 'Ecuador'),
(81, 8, 'Ecuador'),
(82, 1, 'Egypt'),
(82, 2, 'Égypte'),
(82, 3, 'Egipto'),
(82, 4, 'Egypt'),
(82, 5, 'Egypt'),
(82, 6, 'Egypt'),
(82, 7, 'Egypt'),
(82, 8, 'Egypt'),
(83, 1, 'El Salvador'),
(83, 2, 'El Salvador'),
(83, 3, 'El Salvador'),
(83, 4, 'El Salvador'),
(83, 5, 'El Salvador'),
(83, 6, 'El Salvador'),
(83, 7, 'El Salvador'),
(83, 8, 'El Salvador'),
(84, 1, 'Equatorial Guinea'),
(84, 2, 'Guinée Équatoriale'),
(84, 3, 'Guinea Ecuatorial'),
(84, 4, 'Equatorial Guinea'),
(84, 5, 'Equatorial Guinea'),
(84, 6, 'Equatorial Guinea'),
(84, 7, 'Equatorial Guinea'),
(84, 8, 'Equatorial Guinea'),
(85, 1, 'Eritrea'),
(85, 2, 'Érythrée'),
(85, 3, 'Eritrea'),
(85, 4, 'Eritrea'),
(85, 5, 'Eritrea'),
(85, 6, 'Eritrea'),
(85, 7, 'Eritrea'),
(85, 8, 'Eritrea'),
(86, 1, 'Estonia'),
(86, 2, 'Estonie'),
(86, 3, 'Estonia'),
(86, 4, 'Estonia'),
(86, 5, 'Estonia'),
(86, 6, 'Estonia'),
(86, 7, 'Estonia'),
(86, 8, 'Estonia'),
(87, 1, 'Ethiopia'),
(87, 2, 'Éthiopie'),
(87, 3, 'Etiopía'),
(87, 4, 'Ethiopia'),
(87, 5, 'Ethiopia'),
(87, 6, 'Ethiopia'),
(87, 7, 'Ethiopia'),
(87, 8, 'Ethiopia'),
(88, 1, 'Falkland Islands'),
(88, 2, 'Falkland, Îles'),
(88, 3, 'Islas Malvinas'),
(88, 4, 'Falkland Islands'),
(88, 5, 'Falkland Islands'),
(88, 6, 'Falkland Islands'),
(88, 7, 'Falkland Islands'),
(88, 8, 'Falkland Islands'),
(89, 1, 'Faroe Islands'),
(89, 2, 'Féroé, Îles'),
(89, 3, 'Islas Feroe'),
(89, 4, 'Faroe Islands'),
(89, 5, 'Faroe Islands'),
(89, 6, 'Faroe Islands'),
(89, 7, 'Faroe Islands'),
(89, 8, 'Faroe Islands'),
(90, 1, 'Fiji'),
(90, 2, 'Fidji'),
(90, 3, 'Fiji'),
(90, 4, 'Fiji'),
(90, 5, 'Fiji'),
(90, 6, 'Fiji'),
(90, 7, 'Fiji'),
(90, 8, 'Fiji'),
(91, 1, 'Gabon'),
(91, 2, 'Gabon'),
(91, 3, 'Gabón'),
(91, 4, 'Gabon'),
(91, 5, 'Gabon'),
(91, 6, 'Gabon'),
(91, 7, 'Gabon'),
(91, 8, 'Gabon'),
(92, 1, 'Gambia'),
(92, 2, 'Gambie'),
(92, 3, 'Gambia'),
(92, 4, 'Gambia'),
(92, 5, 'Gambia'),
(92, 6, 'Gambia'),
(92, 7, 'Gambia'),
(92, 8, 'Gambia'),
(93, 1, 'Georgia'),
(93, 2, 'Géorgie'),
(93, 3, 'Georgia'),
(93, 4, 'Georgia'),
(93, 5, 'Georgia'),
(93, 6, 'Georgia'),
(93, 7, 'Georgia'),
(93, 8, 'Georgia'),
(94, 1, 'Ghana'),
(94, 2, 'Ghana'),
(94, 3, 'Ghana'),
(94, 4, 'Ghana'),
(94, 5, 'Ghana'),
(94, 6, 'Ghana'),
(94, 7, 'Ghana'),
(94, 8, 'Ghana'),
(95, 1, 'Grenada'),
(95, 2, 'Grenade'),
(95, 3, 'Granada'),
(95, 4, 'Grenada'),
(95, 5, 'Grenada'),
(95, 6, 'Grenada'),
(95, 7, 'Grenada'),
(95, 8, 'Grenada'),
(96, 1, 'Greenland'),
(96, 2, 'Groenland'),
(96, 3, 'Groenlandia'),
(96, 4, 'Greenland'),
(96, 5, 'Greenland'),
(96, 6, 'Greenland'),
(96, 7, 'Greenland'),
(96, 8, 'Greenland'),
(97, 1, 'Gibraltar'),
(97, 2, 'Gibraltar'),
(97, 3, 'Gibraltar'),
(97, 4, 'Gibraltar'),
(97, 5, 'Gibraltar'),
(97, 6, 'Gibraltar'),
(97, 7, 'Gibraltar'),
(97, 8, 'Gibraltar'),
(98, 1, 'Guadeloupe'),
(98, 2, 'Guadeloupe'),
(98, 3, 'Guadalupe'),
(98, 4, 'Guadeloupe'),
(98, 5, 'Guadeloupe'),
(98, 6, 'Guadeloupe'),
(98, 7, 'Guadeloupe'),
(98, 8, 'Guadeloupe'),
(99, 1, 'Guam'),
(99, 2, 'Guam'),
(99, 3, 'Guam'),
(99, 4, 'Guam'),
(99, 5, 'Guam'),
(99, 6, 'Guam'),
(99, 7, 'Guam'),
(99, 8, 'Guam'),
(100, 1, 'Guatemala'),
(100, 2, 'Guatemala'),
(100, 3, 'Guatemala'),
(100, 4, 'Guatemala'),
(100, 5, 'Guatemala'),
(100, 6, 'Guatemala'),
(100, 7, 'Guatemala'),
(100, 8, 'Guatemala'),
(101, 1, 'Guernsey'),
(101, 2, 'Guernesey'),
(101, 3, 'Guernsey'),
(101, 4, 'Guernsey'),
(101, 5, 'Guernsey'),
(101, 6, 'Guernsey'),
(101, 7, 'Guernsey'),
(101, 8, 'Guernsey'),
(102, 1, 'Guinea'),
(102, 2, 'Guinée'),
(102, 3, 'Guinea'),
(102, 4, 'Guinea'),
(102, 5, 'Guinea'),
(102, 6, 'Guinea'),
(102, 7, 'Guinea'),
(102, 8, 'Guinea'),
(103, 1, 'Guinea-Bissau'),
(103, 2, 'Guinée-Bissau'),
(103, 3, 'Guinea-Bissau'),
(103, 4, 'Guinea-Bissau'),
(103, 5, 'Guinea-Bissau'),
(103, 6, 'Guinea-Bissau'),
(103, 7, 'Guinea-Bissau'),
(103, 8, 'Guinea-Bissau'),
(104, 1, 'Guyana'),
(104, 2, 'Guyana'),
(104, 3, 'Guyana'),
(104, 4, 'Guyana'),
(104, 5, 'Guyana'),
(104, 6, 'Guyana'),
(104, 7, 'Guyana'),
(104, 8, 'Guyana'),
(105, 1, 'Haiti'),
(105, 2, 'Haîti'),
(105, 3, 'Haití'),
(105, 4, 'Haiti'),
(105, 5, 'Haiti'),
(105, 6, 'Haiti'),
(105, 7, 'Haiti'),
(105, 8, 'Haiti'),
(106, 1, 'Heard Island and McDonald Islands'),
(106, 2, 'Heard, Île et Mcdonald, Îles'),
(106, 3, 'Islas Heard y McDonald Islas'),
(106, 4, 'Heard Island and McDonald Islands'),
(106, 5, 'Heard Island and McDonald Islands'),
(106, 6, 'Heard Island and McDonald Islands'),
(106, 7, 'Heard Island and McDonald Islands'),
(106, 8, 'Heard Island and McDonald Islands'),
(107, 1, 'Vatican City State'),
(107, 2, 'Saint-Siege (État de la Cité du Vatican)'),
(107, 3, 'Ciudad del Vaticano'),
(107, 4, 'Vatican City State'),
(107, 5, 'Vatican City State'),
(107, 6, 'Vatican City State'),
(107, 7, 'Vatican City State'),
(107, 8, 'Vatican City State'),
(108, 1, 'Honduras'),
(108, 2, 'Honduras'),
(108, 3, 'Honduras'),
(108, 4, 'Honduras'),
(108, 5, 'Honduras'),
(108, 6, 'Honduras'),
(108, 7, 'Honduras'),
(108, 8, 'Honduras'),
(109, 1, 'Iceland'),
(109, 2, 'Islande'),
(109, 3, 'Islandia'),
(109, 4, 'Iceland'),
(109, 5, 'Iceland'),
(109, 6, 'Iceland'),
(109, 7, 'Iceland'),
(109, 8, 'Iceland'),
(110, 1, 'India'),
(110, 2, 'Inde'),
(110, 3, 'India'),
(110, 4, 'India'),
(110, 5, 'India'),
(110, 6, 'India'),
(110, 7, 'India'),
(110, 8, 'India'),
(111, 1, 'Indonesia'),
(111, 2, 'Indonésie'),
(111, 3, 'Indonesia'),
(111, 4, 'Indonesia'),
(111, 5, 'Indonesia'),
(111, 6, 'Indonesia'),
(111, 7, 'Indonesia'),
(111, 8, 'Indonesia'),
(112, 1, 'Iran'),
(112, 2, 'Iran'),
(112, 3, 'Irán'),
(112, 4, 'Iran'),
(112, 5, 'Iran'),
(112, 6, 'Iran'),
(112, 7, 'Iran'),
(112, 8, 'Iran'),
(113, 1, 'Iraq'),
(113, 2, 'Iraq'),
(113, 3, 'Iraq'),
(113, 4, 'Iraq'),
(113, 5, 'Iraq'),
(113, 6, 'Iraq'),
(113, 7, 'Iraq'),
(113, 8, 'Iraq'),
(114, 1, 'Man Island'),
(114, 2, 'Man, Île de'),
(114, 3, 'Man, Isla'),
(114, 4, 'Man Island'),
(114, 5, 'Man Island'),
(114, 6, 'Man Island'),
(114, 7, 'Man Island'),
(114, 8, 'Man Island'),
(115, 1, 'Jamaica'),
(115, 2, 'Jamaique'),
(115, 3, 'Jamaica'),
(115, 4, 'Jamaica'),
(115, 5, 'Jamaica'),
(115, 6, 'Jamaica'),
(115, 7, 'Jamaica'),
(115, 8, 'Jamaica'),
(116, 1, 'Jersey'),
(116, 2, 'Jersey'),
(116, 3, 'Jersey'),
(116, 4, 'Jersey'),
(116, 5, 'Jersey'),
(116, 6, 'Jersey'),
(116, 7, 'Jersey'),
(116, 8, 'Jersey'),
(117, 1, 'Jordan'),
(117, 2, 'Jordanie'),
(117, 3, 'Jordania'),
(117, 4, 'Jordan'),
(117, 5, 'Jordan'),
(117, 6, 'Jordan'),
(117, 7, 'Jordan'),
(117, 8, 'Jordan'),
(118, 1, 'Kazakhstan'),
(118, 2, 'Kazakhstan'),
(118, 3, 'Kazajstán'),
(118, 4, 'Kazakhstan'),
(118, 5, 'Kazakhstan'),
(118, 6, 'Kazakhstan'),
(118, 7, 'Kazakhstan'),
(118, 8, 'Kazakhstan'),
(119, 1, 'Kenya'),
(119, 2, 'Kenya'),
(119, 3, 'Kenya'),
(119, 4, 'Kenya'),
(119, 5, 'Kenya'),
(119, 6, 'Kenya'),
(119, 7, 'Kenya'),
(119, 8, 'Kenya'),
(120, 1, 'Kiribati'),
(120, 2, 'Kiribati'),
(120, 3, 'Kiribati'),
(120, 4, 'Kiribati'),
(120, 5, 'Kiribati'),
(120, 6, 'Kiribati'),
(120, 7, 'Kiribati'),
(120, 8, 'Kiribati'),
(121, 1, 'Korea, Dem. Republic of'),
(121, 2, 'Corée, Rép. Populaire Dém. de'),
(121, 3, 'KOREA, DEM. República de'),
(121, 4, 'Korea, Dem. Republic of'),
(121, 5, 'Korea, Dem. Republic of'),
(121, 6, 'Korea, Dem. Republic of'),
(121, 7, 'Korea, Dem. Republic of'),
(121, 8, 'Korea, Dem. Republic of'),
(122, 1, 'Kuwait'),
(122, 2, 'Koweït'),
(122, 3, 'Kuwait'),
(122, 4, 'Kuwait'),
(122, 5, 'Kuwait'),
(122, 6, 'Kuwait'),
(122, 7, 'Kuwait'),
(122, 8, 'Kuwait'),
(123, 1, 'Kyrgyzstan'),
(123, 2, 'Kirghizistan'),
(123, 3, 'Kirguistán'),
(123, 4, 'Kyrgyzstan'),
(123, 5, 'Kyrgyzstan'),
(123, 6, 'Kyrgyzstan'),
(123, 7, 'Kyrgyzstan'),
(123, 8, 'Kyrgyzstan'),
(124, 1, 'Laos'),
(124, 2, 'Laos'),
(124, 3, 'Laos'),
(124, 4, 'Laos'),
(124, 5, 'Laos'),
(124, 6, 'Laos'),
(124, 7, 'Laos'),
(124, 8, 'Laos'),
(125, 1, 'Latvia'),
(125, 2, 'Lettonie'),
(125, 3, 'Letonia'),
(125, 4, 'Latvia'),
(125, 5, 'Latvia'),
(125, 6, 'Latvia'),
(125, 7, 'Latvia'),
(125, 8, 'Latvia'),
(126, 1, 'Lebanon'),
(126, 2, 'Liban'),
(126, 3, 'Líbano'),
(126, 4, 'Lebanon'),
(126, 5, 'Lebanon'),
(126, 6, 'Lebanon'),
(126, 7, 'Lebanon'),
(126, 8, 'Lebanon'),
(127, 1, 'Lesotho'),
(127, 2, 'Lesotho'),
(127, 3, 'Lesotho'),
(127, 4, 'Lesotho'),
(127, 5, 'Lesotho'),
(127, 6, 'Lesotho'),
(127, 7, 'Lesotho'),
(127, 8, 'Lesotho'),
(128, 1, 'Liberia'),
(128, 2, 'Libéria'),
(128, 3, 'Liberia'),
(128, 4, 'Liberia'),
(128, 5, 'Liberia'),
(128, 6, 'Liberia'),
(128, 7, 'Liberia'),
(128, 8, 'Liberia'),
(129, 1, 'Libya'),
(129, 2, 'Libyenne, Jamahiriya Arabe'),
(129, 3, 'Libia'),
(129, 4, 'Libya'),
(129, 5, 'Libya'),
(129, 6, 'Libya'),
(129, 7, 'Libya'),
(129, 8, 'Libya'),
(130, 1, 'Liechtenstein'),
(130, 2, 'Liechtenstein'),
(130, 3, 'Liechtenstein'),
(130, 4, 'Liechtenstein'),
(130, 5, 'Liechtenstein'),
(130, 6, 'Liechtenstein'),
(130, 7, 'Liechtenstein'),
(130, 8, 'Liechtenstein'),
(131, 1, 'Lithuania'),
(131, 2, 'Lituanie'),
(131, 3, 'Lituania'),
(131, 4, 'Lithuania'),
(131, 5, 'Lithuania'),
(131, 6, 'Lithuania'),
(131, 7, 'Lithuania'),
(131, 8, 'Lithuania'),
(132, 1, 'Macau'),
(132, 2, 'Macao'),
(132, 3, 'Macao'),
(132, 4, 'Macau'),
(132, 5, 'Macau'),
(132, 6, 'Macau'),
(132, 7, 'Macau'),
(132, 8, 'Macau'),
(133, 1, 'Macedonia'),
(133, 2, 'Macédoine'),
(133, 3, 'Macedonia'),
(133, 4, 'Macedonia'),
(133, 5, 'Macedonia'),
(133, 6, 'Macedonia'),
(133, 7, 'Macedonia'),
(133, 8, 'Macedonia'),
(134, 1, 'Madagascar'),
(134, 2, 'Madagascar'),
(134, 3, 'Madagascar'),
(134, 4, 'Madagascar'),
(134, 5, 'Madagascar'),
(134, 6, 'Madagascar'),
(134, 7, 'Madagascar'),
(134, 8, 'Madagascar'),
(135, 1, 'Malawi'),
(135, 2, 'Malawi'),
(135, 3, 'Malawi'),
(135, 4, 'Malawi'),
(135, 5, 'Malawi'),
(135, 6, 'Malawi'),
(135, 7, 'Malawi'),
(135, 8, 'Malawi'),
(136, 1, 'Malaysia'),
(136, 2, 'Malaisie'),
(136, 3, 'Malasia'),
(136, 4, 'Malaysia'),
(136, 5, 'Malaysia'),
(136, 6, 'Malaysia'),
(136, 7, 'Malaysia'),
(136, 8, 'Malaysia'),
(137, 1, 'Maldives'),
(137, 2, 'Maldives'),
(137, 3, 'Maldivas'),
(137, 4, 'Maldives'),
(137, 5, 'Maldives'),
(137, 6, 'Maldives'),
(137, 7, 'Maldives'),
(137, 8, 'Maldives'),
(138, 1, 'Mali'),
(138, 2, 'Mali'),
(138, 3, 'Malí'),
(138, 4, 'Mali'),
(138, 5, 'Mali'),
(138, 6, 'Mali'),
(138, 7, 'Mali'),
(138, 8, 'Mali'),
(139, 1, 'Malta'),
(139, 2, 'Malte'),
(139, 3, 'Malta'),
(139, 4, 'Malta'),
(139, 5, 'Malta'),
(139, 6, 'Malta'),
(139, 7, 'Malta'),
(139, 8, 'Malta'),
(140, 1, 'Marshall Islands'),
(140, 2, 'Marshall, Îles'),
(140, 3, 'Marshall, Islas'),
(140, 4, 'Marshall Islands'),
(140, 5, 'Marshall Islands'),
(140, 6, 'Marshall Islands'),
(140, 7, 'Marshall Islands'),
(140, 8, 'Marshall Islands'),
(141, 1, 'Martinique'),
(141, 2, 'Martinique'),
(141, 3, 'Martinica'),
(141, 4, 'Martinique'),
(141, 5, 'Martinique'),
(141, 6, 'Martinique'),
(141, 7, 'Martinique'),
(141, 8, 'Martinique'),
(142, 1, 'Mauritania'),
(142, 2, 'Mauritanie'),
(142, 3, 'Mauritania'),
(142, 4, 'Mauritania'),
(142, 5, 'Mauritania'),
(142, 6, 'Mauritania'),
(142, 7, 'Mauritania'),
(142, 8, 'Mauritania'),
(143, 1, 'Hungary'),
(143, 2, 'Hongrie'),
(143, 3, 'Hungría'),
(143, 4, 'Hungary'),
(143, 5, 'Hungary'),
(143, 6, 'Hungary'),
(143, 7, 'Hungary'),
(143, 8, 'Hungary'),
(144, 1, 'Mayotte'),
(144, 2, 'Mayotte'),
(144, 3, 'Mayotte'),
(144, 4, 'Mayotte'),
(144, 5, 'Mayotte'),
(144, 6, 'Mayotte'),
(144, 7, 'Mayotte'),
(144, 8, 'Mayotte'),
(145, 1, 'Mexico'),
(145, 2, 'Mexique'),
(145, 3, 'México'),
(145, 4, 'Mexico'),
(145, 5, 'Mexico'),
(145, 6, 'Mexico'),
(145, 7, 'Mexico'),
(145, 8, 'Mexico'),
(146, 1, 'Micronesia'),
(146, 2, 'Micronésie'),
(146, 3, 'Micronesia'),
(146, 4, 'Micronesia'),
(146, 5, 'Micronesia'),
(146, 6, 'Micronesia'),
(146, 7, 'Micronesia'),
(146, 8, 'Micronesia'),
(147, 1, 'Moldova'),
(147, 2, 'Moldova'),
(147, 3, 'Moldavia'),
(147, 4, 'Moldova'),
(147, 5, 'Moldova'),
(147, 6, 'Moldova'),
(147, 7, 'Moldova'),
(147, 8, 'Moldova'),
(148, 1, 'Monaco'),
(148, 2, 'Monaco'),
(148, 3, 'Mónaco'),
(148, 4, 'Monaco'),
(148, 5, 'Monaco'),
(148, 6, 'Monaco'),
(148, 7, 'Monaco'),
(148, 8, 'Monaco'),
(149, 1, 'Mongolia'),
(149, 2, 'Mongolie'),
(149, 3, 'Mongolia'),
(149, 4, 'Mongolia'),
(149, 5, 'Mongolia'),
(149, 6, 'Mongolia'),
(149, 7, 'Mongolia'),
(149, 8, 'Mongolia'),
(150, 1, 'Montenegro'),
(150, 2, 'Monténégro'),
(150, 3, 'Montenegro'),
(150, 4, 'Montenegro'),
(150, 5, 'Montenegro'),
(150, 6, 'Montenegro'),
(150, 7, 'Montenegro'),
(150, 8, 'Montenegro'),
(151, 1, 'Montserrat'),
(151, 2, 'Montserrat'),
(151, 3, 'Montserrat'),
(151, 4, 'Montserrat'),
(151, 5, 'Montserrat'),
(151, 6, 'Montserrat'),
(151, 7, 'Montserrat'),
(151, 8, 'Montserrat'),
(152, 1, 'Morocco'),
(152, 2, 'Maroc'),
(152, 3, 'Marruecos'),
(152, 4, 'Morocco'),
(152, 5, 'Morocco'),
(152, 6, 'Morocco'),
(152, 7, 'Morocco'),
(152, 8, 'Morocco'),
(153, 1, 'Mozambique'),
(153, 2, 'Mozambique'),
(153, 3, 'Mozambique'),
(153, 4, 'Mozambique'),
(153, 5, 'Mozambique'),
(153, 6, 'Mozambique'),
(153, 7, 'Mozambique'),
(153, 8, 'Mozambique'),
(154, 1, 'Namibia'),
(154, 2, 'Namibie'),
(154, 3, 'Namibia'),
(154, 4, 'Namibia'),
(154, 5, 'Namibia'),
(154, 6, 'Namibia'),
(154, 7, 'Namibia'),
(154, 8, 'Namibia'),
(155, 1, 'Nauru'),
(155, 2, 'Nauru'),
(155, 3, 'Nauru'),
(155, 4, 'Nauru'),
(155, 5, 'Nauru'),
(155, 6, 'Nauru'),
(155, 7, 'Nauru'),
(155, 8, 'Nauru'),
(156, 1, 'Nepal'),
(156, 2, 'Népal'),
(156, 3, 'Nepal'),
(156, 4, 'Nepal'),
(156, 5, 'Nepal'),
(156, 6, 'Nepal'),
(156, 7, 'Nepal'),
(156, 8, 'Nepal'),
(157, 1, 'Netherlands Antilles'),
(157, 2, 'Antilles Néerlandaises'),
(157, 3, 'Antillas Neerlandesas'),
(157, 4, 'Netherlands Antilles'),
(157, 5, 'Netherlands Antilles'),
(157, 6, 'Netherlands Antilles'),
(157, 7, 'Netherlands Antilles'),
(157, 8, 'Netherlands Antilles'),
(158, 1, 'New Caledonia'),
(158, 2, 'Nouvelle-Calédonie'),
(158, 3, 'Nueva Caledonia'),
(158, 4, 'New Caledonia'),
(158, 5, 'New Caledonia'),
(158, 6, 'New Caledonia'),
(158, 7, 'New Caledonia'),
(158, 8, 'New Caledonia'),
(159, 1, 'Nicaragua'),
(159, 2, 'Nicaragua'),
(159, 3, 'Nicaragua'),
(159, 4, 'Nicaragua'),
(159, 5, 'Nicaragua'),
(159, 6, 'Nicaragua'),
(159, 7, 'Nicaragua'),
(159, 8, 'Nicaragua'),
(160, 1, 'Niger'),
(160, 2, 'Niger'),
(160, 3, 'Níger'),
(160, 4, 'Niger'),
(160, 5, 'Niger'),
(160, 6, 'Niger'),
(160, 7, 'Niger'),
(160, 8, 'Niger'),
(161, 1, 'Niue'),
(161, 2, 'Niué'),
(161, 3, 'Niue'),
(161, 4, 'Niue'),
(161, 5, 'Niue'),
(161, 6, 'Niue'),
(161, 7, 'Niue'),
(161, 8, 'Niue'),
(162, 1, 'Norfolk Island'),
(162, 2, 'Norfolk, Île'),
(162, 3, 'Norfolk Island'),
(162, 4, 'Norfolk Island'),
(162, 5, 'Norfolk Island'),
(162, 6, 'Norfolk Island'),
(162, 7, 'Norfolk Island'),
(162, 8, 'Norfolk Island'),
(163, 1, 'Northern Mariana Islands'),
(163, 2, 'Mariannes du Nord, Îles'),
(163, 3, 'Islas Marianas del Norte'),
(163, 4, 'Northern Mariana Islands'),
(163, 5, 'Northern Mariana Islands'),
(163, 6, 'Northern Mariana Islands'),
(163, 7, 'Northern Mariana Islands'),
(163, 8, 'Northern Mariana Islands'),
(164, 1, 'Oman'),
(164, 2, 'Oman'),
(164, 3, 'Omán'),
(164, 4, 'Oman'),
(164, 5, 'Oman'),
(164, 6, 'Oman'),
(164, 7, 'Oman'),
(164, 8, 'Oman'),
(165, 1, 'Pakistan'),
(165, 2, 'Pakistan'),
(165, 3, 'Pakistán'),
(165, 4, 'Pakistan'),
(165, 5, 'Pakistan'),
(165, 6, 'Pakistan'),
(165, 7, 'Pakistan'),
(165, 8, 'Pakistan'),
(166, 1, 'Palau'),
(166, 2, 'Palaos'),
(166, 3, 'Palau'),
(166, 4, 'Palau'),
(166, 5, 'Palau'),
(166, 6, 'Palau'),
(166, 7, 'Palau'),
(166, 8, 'Palau'),
(167, 1, 'Palestinian Territories'),
(167, 2, 'Palestinien Occupé, Territoire'),
(167, 3, 'Territorios Palestinos'),
(167, 4, 'Palestinian Territories'),
(167, 5, 'Palestinian Territories'),
(167, 6, 'Palestinian Territories'),
(167, 7, 'Palestinian Territories'),
(167, 8, 'Palestinian Territories'),
(168, 1, 'Panama'),
(168, 2, 'Panama'),
(168, 3, 'Panamá'),
(168, 4, 'Panama'),
(168, 5, 'Panama'),
(168, 6, 'Panama'),
(168, 7, 'Panama'),
(168, 8, 'Panama'),
(169, 1, 'Papua New Guinea'),
(169, 2, 'Papouasie-Nouvelle-Guinée'),
(169, 3, 'Papua Nueva Guinea'),
(169, 4, 'Papua New Guinea'),
(169, 5, 'Papua New Guinea'),
(169, 6, 'Papua New Guinea'),
(169, 7, 'Papua New Guinea'),
(169, 8, 'Papua New Guinea'),
(170, 1, 'Paraguay'),
(170, 2, 'Paraguay'),
(170, 3, 'Paraguay'),
(170, 4, 'Paraguay'),
(170, 5, 'Paraguay'),
(170, 6, 'Paraguay'),
(170, 7, 'Paraguay'),
(170, 8, 'Paraguay'),
(171, 1, 'Peru'),
(171, 2, 'Pérou'),
(171, 3, 'Perú'),
(171, 4, 'Peru'),
(171, 5, 'Peru'),
(171, 6, 'Peru'),
(171, 7, 'Peru'),
(171, 8, 'Peru'),
(172, 1, 'Philippines'),
(172, 2, 'Philippines'),
(172, 3, 'Filipinas'),
(172, 4, 'Philippines'),
(172, 5, 'Philippines'),
(172, 6, 'Philippines'),
(172, 7, 'Philippines'),
(172, 8, 'Philippines'),
(173, 1, 'Pitcairn'),
(173, 2, 'Pitcairn'),
(173, 3, 'Pitcairn'),
(173, 4, 'Pitcairn'),
(173, 5, 'Pitcairn'),
(173, 6, 'Pitcairn'),
(173, 7, 'Pitcairn'),
(173, 8, 'Pitcairn'),
(174, 1, 'Puerto Rico'),
(174, 2, 'Porto Rico'),
(174, 3, 'Puerto Rico'),
(174, 4, 'Puerto Rico'),
(174, 5, 'Puerto Rico'),
(174, 6, 'Puerto Rico'),
(174, 7, 'Puerto Rico'),
(174, 8, 'Puerto Rico'),
(175, 1, 'Qatar'),
(175, 2, 'Qatar'),
(175, 3, 'Qatar'),
(175, 4, 'Qatar'),
(175, 5, 'Qatar'),
(175, 6, 'Qatar'),
(175, 7, 'Qatar'),
(175, 8, 'Qatar'),
(176, 1, 'Reunion Island'),
(176, 2, 'Réunion, Île de la'),
(176, 3, 'Reunión, Isla de la'),
(176, 4, 'Reunion Island'),
(176, 5, 'Reunion Island'),
(176, 6, 'Reunion Island'),
(176, 7, 'Reunion Island'),
(176, 8, 'Reunion Island'),
(177, 1, 'Russian Federation'),
(177, 2, 'Russie, Fédération de'),
(177, 3, 'Rusia, Federación de'),
(177, 4, 'Russian Federation'),
(177, 5, 'Russian Federation'),
(177, 6, 'Russian Federation'),
(177, 7, 'Russian Federation'),
(177, 8, 'Russian Federation'),
(178, 1, 'Rwanda'),
(178, 2, 'Rwanda'),
(178, 3, 'Rwanda'),
(178, 4, 'Rwanda'),
(178, 5, 'Rwanda'),
(178, 6, 'Rwanda'),
(178, 7, 'Rwanda'),
(178, 8, 'Rwanda'),
(179, 1, 'Saint Barthelemy'),
(179, 2, 'Saint-Barthélemy'),
(179, 3, 'San Bartolomé'),
(179, 4, 'Saint Barthelemy'),
(179, 5, 'Saint Barthelemy'),
(179, 6, 'Saint Barthelemy'),
(179, 7, 'Saint Barthelemy'),
(179, 8, 'Saint Barthelemy'),
(180, 1, 'Saint Kitts and Nevis'),
(180, 2, 'Saint-Kitts-et-Nevis'),
(180, 3, 'Saint Kitts y Nevis'),
(180, 4, 'Saint Kitts and Nevis'),
(180, 5, 'Saint Kitts and Nevis'),
(180, 6, 'Saint Kitts and Nevis'),
(180, 7, 'Saint Kitts and Nevis'),
(180, 8, 'Saint Kitts and Nevis'),
(181, 1, 'Saint Lucia'),
(181, 2, 'Sainte-Lucie'),
(181, 3, 'Santa Lucía'),
(181, 4, 'Saint Lucia'),
(181, 5, 'Saint Lucia'),
(181, 6, 'Saint Lucia'),
(181, 7, 'Saint Lucia'),
(181, 8, 'Saint Lucia'),
(182, 1, 'Saint Martin'),
(182, 2, 'Saint-Martin'),
(182, 3, 'Saint Martin'),
(182, 4, 'Saint Martin'),
(182, 5, 'Saint Martin'),
(182, 6, 'Saint Martin'),
(182, 7, 'Saint Martin'),
(182, 8, 'Saint Martin'),
(183, 1, 'Saint Pierre and Miquelon'),
(183, 2, 'Saint-Pierre-et-Miquelon'),
(183, 3, 'San Pedro y Miquelón'),
(183, 4, 'Saint Pierre and Miquelon'),
(183, 5, 'Saint Pierre and Miquelon'),
(183, 6, 'Saint Pierre and Miquelon'),
(183, 7, 'Saint Pierre and Miquelon'),
(183, 8, 'Saint Pierre and Miquelon'),
(184, 1, 'Saint Vincent and the Grenadines'),
(184, 2, 'Saint-Vincent-et-Les Grenadines'),
(184, 3, 'San Vicente y las Granadinas'),
(184, 4, 'Saint Vincent and the Grenadines'),
(184, 5, 'Saint Vincent and the Grenadines'),
(184, 6, 'Saint Vincent and the Grenadines'),
(184, 7, 'Saint Vincent and the Grenadines'),
(184, 8, 'Saint Vincent and the Grenadines'),
(185, 1, 'Samoa'),
(185, 2, 'Samoa'),
(185, 3, 'Samoa'),
(185, 4, 'Samoa'),
(185, 5, 'Samoa'),
(185, 6, 'Samoa'),
(185, 7, 'Samoa'),
(185, 8, 'Samoa'),
(186, 1, 'San Marino'),
(186, 2, 'Saint-Marin'),
(186, 3, 'San Marino'),
(186, 4, 'San Marino'),
(186, 5, 'San Marino'),
(186, 6, 'San Marino'),
(186, 7, 'San Marino'),
(186, 8, 'San Marino'),
(187, 1, 'São Tomé and Príncipe'),
(187, 2, 'Sao Tomé-et-Principe'),
(187, 3, 'Santo Tomé y Príncipe'),
(187, 4, 'São Tomé and Príncipe'),
(187, 5, 'São Tomé and Príncipe'),
(187, 6, 'São Tomé and Príncipe'),
(187, 7, 'São Tomé and Príncipe'),
(187, 8, 'São Tomé and Príncipe'),
(188, 1, 'Saudi Arabia'),
(188, 2, 'Arabie Saoudite'),
(188, 3, 'Arabia Saudita'),
(188, 4, 'Saudi Arabia'),
(188, 5, 'Saudi Arabia'),
(188, 6, 'Saudi Arabia'),
(188, 7, 'Saudi Arabia'),
(188, 8, 'Saudi Arabia'),
(189, 1, 'Senegal'),
(189, 2, 'Sénégal'),
(189, 3, 'Senegal'),
(189, 4, 'Senegal'),
(189, 5, 'Senegal'),
(189, 6, 'Senegal'),
(189, 7, 'Senegal'),
(189, 8, 'Senegal'),
(190, 1, 'Serbia'),
(190, 2, 'Serbie'),
(190, 3, 'Serbia'),
(190, 4, 'Serbia'),
(190, 5, 'Serbia'),
(190, 6, 'Serbia'),
(190, 7, 'Serbia'),
(190, 8, 'Serbia'),
(191, 1, 'Seychelles'),
(191, 2, 'Seychelles'),
(191, 3, 'Seychelles'),
(191, 4, 'Seychelles'),
(191, 5, 'Seychelles'),
(191, 6, 'Seychelles'),
(191, 7, 'Seychelles'),
(191, 8, 'Seychelles'),
(192, 1, 'Sierra Leone'),
(192, 2, 'Sierra Leone'),
(192, 3, 'Sierra Leona'),
(192, 4, 'Sierra Leone'),
(192, 5, 'Sierra Leone'),
(192, 6, 'Sierra Leone'),
(192, 7, 'Sierra Leone'),
(192, 8, 'Sierra Leone'),
(193, 1, 'Slovenia'),
(193, 2, 'Slovénie'),
(193, 3, 'Eslovenia'),
(193, 4, 'Slovenia'),
(193, 5, 'Slovenia'),
(193, 6, 'Slovenia'),
(193, 7, 'Slovenia'),
(193, 8, 'Slovenia'),
(194, 1, 'Solomon Islands'),
(194, 2, 'Salomon, Îles'),
(194, 3, 'Salomón, Islas'),
(194, 4, 'Solomon Islands'),
(194, 5, 'Solomon Islands'),
(194, 6, 'Solomon Islands'),
(194, 7, 'Solomon Islands'),
(194, 8, 'Solomon Islands'),
(195, 1, 'Somalia'),
(195, 2, 'Somalie'),
(195, 3, 'Somalia'),
(195, 4, 'Somalia'),
(195, 5, 'Somalia'),
(195, 6, 'Somalia'),
(195, 7, 'Somalia'),
(195, 8, 'Somalia'),
(196, 1, 'South Georgia and the South Sandwich Islands'),
(196, 2, 'Géorgie du Sud et les Îles Sandwich du Sud'),
(196, 3, 'Georgia del Sur e Islas Sandwich del Sur'),
(196, 4, 'South Georgia and the South Sandwich Islands'),
(196, 5, 'South Georgia and the South Sandwich Islands'),
(196, 6, 'South Georgia and the South Sandwich Islands'),
(196, 7, 'South Georgia and the South Sandwich Islands'),
(196, 8, 'South Georgia and the South Sandwich Islands'),
(197, 1, 'Sri Lanka'),
(197, 2, 'Sri Lanka'),
(197, 3, 'Sri Lanka'),
(197, 4, 'Sri Lanka'),
(197, 5, 'Sri Lanka'),
(197, 6, 'Sri Lanka'),
(197, 7, 'Sri Lanka'),
(197, 8, 'Sri Lanka'),
(198, 1, 'Sudan'),
(198, 2, 'Soudan'),
(198, 3, 'Sudán'),
(198, 4, 'Sudan'),
(198, 5, 'Sudan'),
(198, 6, 'Sudan'),
(198, 7, 'Sudan'),
(198, 8, 'Sudan'),
(199, 1, 'Suriname'),
(199, 2, 'Suriname'),
(199, 3, 'Suriname'),
(199, 4, 'Suriname'),
(199, 5, 'Suriname'),
(199, 6, 'Suriname'),
(199, 7, 'Suriname'),
(199, 8, 'Suriname'),
(200, 1, 'Svalbard and Jan Mayen'),
(200, 2, 'Svalbard et Île Jan Mayen'),
(200, 3, 'Svalbard y Jan Mayen'),
(200, 4, 'Svalbard and Jan Mayen'),
(200, 5, 'Svalbard and Jan Mayen'),
(200, 6, 'Svalbard and Jan Mayen'),
(200, 7, 'Svalbard and Jan Mayen'),
(200, 8, 'Svalbard and Jan Mayen'),
(201, 1, 'Swaziland'),
(201, 2, 'Swaziland'),
(201, 3, 'Swazilandia'),
(201, 4, 'Swaziland'),
(201, 5, 'Swaziland'),
(201, 6, 'Swaziland'),
(201, 7, 'Swaziland'),
(201, 8, 'Swaziland'),
(202, 1, 'Syria'),
(202, 2, 'Syrienne'),
(202, 3, 'Siria'),
(202, 4, 'Syria'),
(202, 5, 'Syria'),
(202, 6, 'Syria'),
(202, 7, 'Syria'),
(202, 8, 'Syria'),
(203, 1, 'Taiwan'),
(203, 2, 'Taïwan'),
(203, 3, 'Taiwán'),
(203, 4, 'Taiwan'),
(203, 5, 'Taiwan'),
(203, 6, 'Taiwan'),
(203, 7, 'Taiwan'),
(203, 8, 'Taiwan'),
(204, 1, 'Tajikistan'),
(204, 2, 'Tadjikistan'),
(204, 3, 'Tayikistán'),
(204, 4, 'Tajikistan'),
(204, 5, 'Tajikistan'),
(204, 6, 'Tajikistan'),
(204, 7, 'Tajikistan'),
(204, 8, 'Tajikistan'),
(205, 1, 'Tanzania'),
(205, 2, 'Tanzanie'),
(205, 3, 'Tanzania'),
(205, 4, 'Tanzania'),
(205, 5, 'Tanzania'),
(205, 6, 'Tanzania'),
(205, 7, 'Tanzania'),
(205, 8, 'Tanzania'),
(206, 1, 'Thailand'),
(206, 2, 'Thaïlande'),
(206, 3, 'Tailandia'),
(206, 4, 'Thailand'),
(206, 5, 'Thailand'),
(206, 6, 'Thailand'),
(206, 7, 'Thailand'),
(206, 8, 'Thailand'),
(207, 1, 'Tokelau'),
(207, 2, 'Tokelau'),
(207, 3, 'Tokelau'),
(207, 4, 'Tokelau'),
(207, 5, 'Tokelau'),
(207, 6, 'Tokelau'),
(207, 7, 'Tokelau'),
(207, 8, 'Tokelau'),
(208, 1, 'Tonga'),
(208, 2, 'Tonga'),
(208, 3, 'Tonga'),
(208, 4, 'Tonga'),
(208, 5, 'Tonga'),
(208, 6, 'Tonga'),
(208, 7, 'Tonga'),
(208, 8, 'Tonga'),
(209, 1, 'Trinidad and Tobago'),
(209, 2, 'Trinité-et-Tobago'),
(209, 3, 'Trinidad y Tobago'),
(209, 4, 'Trinidad and Tobago'),
(209, 5, 'Trinidad and Tobago'),
(209, 6, 'Trinidad and Tobago'),
(209, 7, 'Trinidad and Tobago'),
(209, 8, 'Trinidad and Tobago'),
(210, 1, 'Tunisia'),
(210, 2, 'Tunisie'),
(210, 3, 'Túnez'),
(210, 4, 'Tunisia'),
(210, 5, 'Tunisia'),
(210, 6, 'Tunisia'),
(210, 7, 'Tunisia'),
(210, 8, 'Tunisia'),
(211, 1, 'Turkey'),
(211, 2, 'Turquie'),
(211, 3, 'Turquía'),
(211, 4, 'Turkey'),
(211, 5, 'Turkey'),
(211, 6, 'Turkey'),
(211, 7, 'Turkey'),
(211, 8, 'Turkey'),
(212, 1, 'Turkmenistan'),
(212, 2, 'Turkménistan'),
(212, 3, 'Turkmenistán'),
(212, 4, 'Turkmenistan'),
(212, 5, 'Turkmenistan'),
(212, 6, 'Turkmenistan'),
(212, 7, 'Turkmenistan'),
(212, 8, 'Turkmenistan'),
(213, 1, 'Turks and Caicos Islands'),
(213, 2, 'Turks et Caiques, Îles'),
(213, 3, 'Islas Turcas y Caicos'),
(213, 4, 'Turks and Caicos Islands'),
(213, 5, 'Turks and Caicos Islands'),
(213, 6, 'Turks and Caicos Islands'),
(213, 7, 'Turks and Caicos Islands'),
(213, 8, 'Turks and Caicos Islands'),
(214, 1, 'Tuvalu'),
(214, 2, 'Tuvalu'),
(214, 3, 'Tuvalu'),
(214, 4, 'Tuvalu'),
(214, 5, 'Tuvalu'),
(214, 6, 'Tuvalu'),
(214, 7, 'Tuvalu'),
(214, 8, 'Tuvalu'),
(215, 1, 'Uganda'),
(215, 2, 'Ouganda'),
(215, 3, 'Uganda'),
(215, 4, 'Uganda'),
(215, 5, 'Uganda'),
(215, 6, 'Uganda'),
(215, 7, 'Uganda'),
(215, 8, 'Uganda'),
(216, 1, 'Ukraine'),
(216, 2, 'Ukraine'),
(216, 3, 'Ucrania'),
(216, 4, 'Ukraine'),
(216, 5, 'Ukraine'),
(216, 6, 'Ukraine'),
(216, 7, 'Ukraine'),
(216, 8, 'Ukraine'),
(217, 1, 'United Arab Emirates'),
(217, 2, 'Émirats Arabes Unis'),
(217, 3, 'Emiratos Árabes Unidos'),
(217, 4, 'United Arab Emirates'),
(217, 5, 'United Arab Emirates'),
(217, 6, 'United Arab Emirates'),
(217, 7, 'United Arab Emirates'),
(217, 8, 'United Arab Emirates'),
(218, 1, 'Uruguay'),
(218, 2, 'Uruguay'),
(218, 3, 'Uruguay'),
(218, 4, 'Uruguay'),
(218, 5, 'Uruguay'),
(218, 6, 'Uruguay'),
(218, 7, 'Uruguay'),
(218, 8, 'Uruguay'),
(219, 1, 'Uzbekistan'),
(219, 2, 'Ouzbékistan'),
(219, 3, 'Uzbekistán'),
(219, 4, 'Uzbekistan'),
(219, 5, 'Uzbekistan'),
(219, 6, 'Uzbekistan'),
(219, 7, 'Uzbekistan'),
(219, 8, 'Uzbekistan'),
(220, 1, 'Vanuatu'),
(220, 2, 'Vanuatu'),
(220, 3, 'Vanuatu'),
(220, 4, 'Vanuatu'),
(220, 5, 'Vanuatu'),
(220, 6, 'Vanuatu'),
(220, 7, 'Vanuatu'),
(220, 8, 'Vanuatu'),
(221, 1, 'Venezuela'),
(221, 2, 'Venezuela'),
(221, 3, 'Venezuela'),
(221, 4, 'Venezuela'),
(221, 5, 'Venezuela'),
(221, 6, 'Venezuela'),
(221, 7, 'Venezuela'),
(221, 8, 'Venezuela'),
(222, 1, 'Vietnam'),
(222, 2, 'Vietnam'),
(222, 3, 'Vietnam'),
(222, 4, 'Vietnam'),
(222, 5, 'Vietnam'),
(222, 6, 'Vietnam'),
(222, 7, 'Vietnam'),
(222, 8, 'Vietnam'),
(223, 1, 'Virgin Islands (British)'),
(223, 2, 'Îles Vierges Britanniques'),
(223, 3, 'Islas Vírgenes (Británicas)'),
(223, 4, 'Virgin Islands (British)'),
(223, 5, 'Virgin Islands (British)'),
(223, 6, 'Virgin Islands (British)'),
(223, 7, 'Virgin Islands (British)'),
(223, 8, 'Virgin Islands (British)'),
(224, 1, 'Virgin Islands (U.S.)'),
(224, 2, 'Îles Vierges des États-Unis'),
(224, 3, 'Islas Vírgenes (EE.UU.)'),
(224, 4, 'Virgin Islands (U.S.)'),
(224, 5, 'Virgin Islands (U.S.)'),
(224, 6, 'Virgin Islands (U.S.)'),
(224, 7, 'Virgin Islands (U.S.)'),
(224, 8, 'Virgin Islands (U.S.)'),
(225, 1, 'Wallis and Futuna'),
(225, 2, 'Wallis et Futuna'),
(225, 3, 'Wallis y Futuna'),
(225, 4, 'Wallis and Futuna'),
(225, 5, 'Wallis and Futuna'),
(225, 6, 'Wallis and Futuna'),
(225, 7, 'Wallis and Futuna'),
(225, 8, 'Wallis and Futuna'),
(226, 1, 'Western Sahara'),
(226, 2, 'Sahara Occidental'),
(226, 3, 'Sáhara Occidental'),
(226, 4, 'Western Sahara'),
(226, 5, 'Western Sahara'),
(226, 6, 'Western Sahara'),
(226, 7, 'Western Sahara'),
(226, 8, 'Western Sahara'),
(227, 1, 'Yemen'),
(227, 2, 'Yémen'),
(227, 3, 'Yemen'),
(227, 4, 'Yemen'),
(227, 5, 'Yemen'),
(227, 6, 'Yemen'),
(227, 7, 'Yemen'),
(227, 8, 'Yemen'),
(228, 1, 'Zambia'),
(228, 2, 'Zambie'),
(228, 3, 'Zambia'),
(228, 4, 'Zambia'),
(228, 5, 'Zambia'),
(228, 6, 'Zambia'),
(228, 7, 'Zambia'),
(228, 8, 'Zambia'),
(229, 1, 'Zimbabwe'),
(229, 2, 'Zimbabwe'),
(229, 3, 'Zimbabwe'),
(229, 4, 'Zimbabwe'),
(229, 5, 'Zimbabwe'),
(229, 6, 'Zimbabwe'),
(229, 7, 'Zimbabwe'),
(229, 8, 'Zimbabwe'),
(230, 1, 'Albania'),
(230, 2, 'Albanie'),
(230, 3, 'Albania'),
(230, 4, 'Albania'),
(230, 5, 'Albania'),
(230, 6, 'Albania'),
(230, 7, 'Albania'),
(230, 8, 'Albania'),
(231, 1, 'Afghanistan'),
(231, 2, 'Afghanistan'),
(231, 3, 'Afganistán'),
(231, 4, 'Afghanistan'),
(231, 5, 'Afghanistan'),
(231, 6, 'Afghanistan'),
(231, 7, 'Afghanistan'),
(231, 8, 'Afghanistan'),
(232, 1, 'Antarctica'),
(232, 2, 'Antarctique'),
(232, 3, 'Antártida'),
(232, 4, 'Antarctica'),
(232, 5, 'Antarctica'),
(232, 6, 'Antarctica'),
(232, 7, 'Antarctica'),
(232, 8, 'Antarctica'),
(233, 1, 'Bosnia and Herzegovina'),
(233, 2, 'Bosnie-Herzégovine'),
(233, 3, 'Bosnia y Herzegovina'),
(233, 4, 'Bosnia and Herzegovina'),
(233, 5, 'Bosnia and Herzegovina'),
(233, 6, 'Bosnia and Herzegovina'),
(233, 7, 'Bosnia and Herzegovina'),
(233, 8, 'Bosnia and Herzegovina'),
(234, 1, 'Bouvet Island'),
(234, 2, 'Bouvet, Île'),
(234, 3, 'Isla Bouvet'),
(234, 4, 'Bouvet Island'),
(234, 5, 'Bouvet Island'),
(234, 6, 'Bouvet Island'),
(234, 7, 'Bouvet Island'),
(234, 8, 'Bouvet Island'),
(235, 1, 'British Indian Ocean Territory'),
(235, 2, 'Océan Indien, Territoire Britannique de L'''),
(235, 3, 'British Indian Ocean Territory'),
(235, 4, 'British Indian Ocean Territory'),
(235, 5, 'British Indian Ocean Territory'),
(235, 6, 'British Indian Ocean Territory'),
(235, 7, 'British Indian Ocean Territory'),
(235, 8, 'British Indian Ocean Territory'),
(236, 1, 'Bulgaria'),
(236, 2, 'Bulgarie'),
(236, 3, 'Bulgaria'),
(236, 4, 'Bulgaria'),
(236, 5, 'Bulgaria'),
(236, 6, 'Bulgaria'),
(236, 7, 'Bulgaria'),
(236, 8, 'Bulgaria'),
(237, 1, 'Cayman Islands'),
(237, 2, 'Caïmans, Îles'),
(237, 3, 'Caimán, Islas'),
(237, 4, 'Cayman Islands'),
(237, 5, 'Cayman Islands'),
(237, 6, 'Cayman Islands'),
(237, 7, 'Cayman Islands'),
(237, 8, 'Cayman Islands'),
(238, 1, 'Christmas Island'),
(238, 2, 'Christmas, Île'),
(238, 3, 'Navidad, Isla de'),
(238, 4, 'Christmas Island'),
(238, 5, 'Christmas Island'),
(238, 6, 'Christmas Island'),
(238, 7, 'Christmas Island'),
(238, 8, 'Christmas Island'),
(239, 1, 'Cocos (Keeling) Islands'),
(239, 2, 'Cocos (Keeling), Îles'),
(239, 3, 'Cocos (Keeling), Islas'),
(239, 4, 'Cocos (Keeling) Islands'),
(239, 5, 'Cocos (Keeling) Islands'),
(239, 6, 'Cocos (Keeling) Islands'),
(239, 7, 'Cocos (Keeling) Islands'),
(239, 8, 'Cocos (Keeling) Islands'),
(240, 1, 'Cook Islands'),
(240, 2, 'Cook, Îles'),
(240, 3, 'Cook, Islas'),
(240, 4, 'Cook Islands'),
(240, 5, 'Cook Islands'),
(240, 6, 'Cook Islands'),
(240, 7, 'Cook Islands'),
(240, 8, 'Cook Islands'),
(241, 1, 'French Guiana'),
(241, 2, 'Guyane Française'),
(241, 3, 'Francés Guayana'),
(241, 4, 'French Guiana'),
(241, 5, 'French Guiana'),
(241, 6, 'French Guiana'),
(241, 7, 'French Guiana'),
(241, 8, 'French Guiana'),
(242, 1, 'French Polynesia'),
(242, 2, 'Polynésie Française'),
(242, 3, 'Polinesia francés'),
(242, 4, 'French Polynesia'),
(242, 5, 'French Polynesia'),
(242, 6, 'French Polynesia'),
(242, 7, 'French Polynesia'),
(242, 8, 'French Polynesia'),
(243, 1, 'French Southern Territories'),
(243, 2, 'Terres Australes Françaises'),
(243, 3, 'Territorios del sur francés'),
(243, 4, 'French Southern Territories'),
(243, 5, 'French Southern Territories'),
(243, 6, 'French Southern Territories'),
(243, 7, 'French Southern Territories'),
(243, 8, 'French Southern Territories'),
(244, 1, 'Åland Islands'),
(244, 2, 'Åland, Îles'),
(244, 3, 'Islas Åland'),
(244, 4, 'Åland Islands'),
(244, 5, 'Åland Islands'),
(244, 6, 'Åland Islands'),
(244, 7, 'Åland Islands'),
(244, 8, 'Åland Islands');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_county`
--

DROP TABLE IF EXISTS `ps_county`;
CREATE TABLE IF NOT EXISTS `ps_county` (
  `id_county` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `id_state` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_county`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_county_zip_code`
--

DROP TABLE IF EXISTS `ps_county_zip_code`;
CREATE TABLE IF NOT EXISTS `ps_county_zip_code` (
  `id_county` int(11) NOT NULL,
  `from_zip_code` int(11) NOT NULL,
  `to_zip_code` int(11) NOT NULL,
  PRIMARY KEY (`id_county`,`from_zip_code`,`to_zip_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_currency`
--

DROP TABLE IF EXISTS `ps_currency`;
CREATE TABLE IF NOT EXISTS `ps_currency` (
  `id_currency` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `iso_code_num` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_currency`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ps_currency`
--

INSERT INTO `ps_currency` (`id_currency`, `name`, `iso_code`, `iso_code_num`, `sign`, `blank`, `format`, `decimals`, `conversion_rate`, `deleted`, `active`) VALUES
(1, 'Euro', 'EUR', '978', '€', 1, 2, 1, 1.000000, 0, 1),
(2, 'Dollar', 'USD', '840', '$', 0, 1, 1, 1.440200, 0, 1),
(3, 'Pound', 'GBP', '826', '£', 0, 1, 1, 0.883650, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_customer`
--

DROP TABLE IF EXISTS `ps_customer`;
CREATE TABLE IF NOT EXISTS `ps_customer` (
  `id_customer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL DEFAULT '1',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer`),
  KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_customer`
--

INSERT INTO `ps_customer` (`id_customer`, `id_gender`, `id_default_group`, `firstname`, `lastname`, `email`, `passwd`, `last_passwd_gen`, `birthday`, `newsletter`, `ip_registration_newsletter`, `newsletter_date_add`, `optin`, `secure_key`, `note`, `active`, `is_guest`, `deleted`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 'John', 'DOE', 'pub@prestashop.com', '5609db4f6e5781c108c0fdbe48dea79d', '2011-09-05 08:03:32', '1970-01-15', 1, NULL, NULL, 1, '47ce86627c1f3c792a80773c5d2deaf8', NULL, 1, 0, 0, '2011-09-05 03:03:32', '2011-09-05 03:03:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_customer_group`
--

DROP TABLE IF EXISTS `ps_customer_group`;
CREATE TABLE IF NOT EXISTS `ps_customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_customer_group`
--

INSERT INTO `ps_customer_group` (`id_customer`, `id_group`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_customer_message`
--

DROP TABLE IF EXISTS `ps_customer_message`;
CREATE TABLE IF NOT EXISTS `ps_customer_message` (
  `id_customer_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer_thread` int(11) DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `message` text NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` int(11) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_customer_message`),
  KEY `id_customer_thread` (`id_customer_thread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_customer_thread`
--

DROP TABLE IF EXISTS `ps_customer_thread`;
CREATE TABLE IF NOT EXISTS `ps_customer_thread` (
  `id_customer_thread` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `id_contact` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned DEFAULT NULL,
  `id_product` int(10) unsigned DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(128) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer_thread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_customization`
--

DROP TABLE IF EXISTS `ps_customization`;
CREATE TABLE IF NOT EXISTS `ps_customization` (
  `id_customization` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_customization_field`
--

DROP TABLE IF EXISTS `ps_customization_field`;
CREATE TABLE IF NOT EXISTS `ps_customization_field` (
  `id_customization_field` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_customization_field_lang`
--

DROP TABLE IF EXISTS `ps_customization_field_lang`;
CREATE TABLE IF NOT EXISTS `ps_customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_customized_data`
--

DROP TABLE IF EXISTS `ps_customized_data`;
CREATE TABLE IF NOT EXISTS `ps_customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_dateofdelivery_carrier_rule`
--

DROP TABLE IF EXISTS `ps_dateofdelivery_carrier_rule`;
CREATE TABLE IF NOT EXISTS `ps_dateofdelivery_carrier_rule` (
  `id_carrier_rule` int(11) NOT NULL AUTO_INCREMENT,
  `id_carrier` int(11) NOT NULL,
  `minimal_time` int(11) NOT NULL,
  `maximal_time` int(11) NOT NULL,
  `delivery_saturday` tinyint(1) NOT NULL,
  `delivery_sunday` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_carrier_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_date_range`
--

DROP TABLE IF EXISTS `ps_date_range`;
CREATE TABLE IF NOT EXISTS `ps_date_range` (
  `id_date_range` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_delivery`
--

DROP TABLE IF EXISTS `ps_delivery`;
CREATE TABLE IF NOT EXISTS `ps_delivery` (
  `id_delivery` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned DEFAULT NULL,
  `id_range_weight` int(10) unsigned DEFAULT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ps_delivery`
--

INSERT INTO `ps_delivery` (`id_delivery`, `id_carrier`, `id_range_price`, `id_range_weight`, `id_zone`, `price`) VALUES
(1, 2, NULL, 1, 1, 5.00),
(2, 2, NULL, 1, 2, 5.00),
(4, 2, 1, NULL, 1, 5.00),
(5, 2, 1, NULL, 2, 5.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_discount`
--

DROP TABLE IF EXISTS `ps_discount`;
CREATE TABLE IF NOT EXISTS `ps_discount` (
  `id_discount` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_discount_type` int(10) unsigned NOT NULL,
  `behavior_not_exhausted` tinyint(3) DEFAULT '1',
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL DEFAULT '0',
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) unsigned NOT NULL DEFAULT '1',
  `cumulable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cumulable_reduction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `minimal` decimal(17,2) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cart_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_discount`),
  KEY `discount_name` (`name`),
  KEY `discount_customer` (`id_customer`),
  KEY `id_discount_type` (`id_discount_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_discount_category`
--

DROP TABLE IF EXISTS `ps_discount_category`;
CREATE TABLE IF NOT EXISTS `ps_discount_category` (
  `id_category` int(11) unsigned NOT NULL,
  `id_discount` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_discount`),
  KEY `discount` (`id_discount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_discount_lang`
--

DROP TABLE IF EXISTS `ps_discount_lang`;
CREATE TABLE IF NOT EXISTS `ps_discount_lang` (
  `id_discount` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  PRIMARY KEY (`id_discount`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_discount_type`
--

DROP TABLE IF EXISTS `ps_discount_type`;
CREATE TABLE IF NOT EXISTS `ps_discount_type` (
  `id_discount_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_discount_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ps_discount_type`
--

INSERT INTO `ps_discount_type` (`id_discount_type`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_discount_type_lang`
--

DROP TABLE IF EXISTS `ps_discount_type_lang`;
CREATE TABLE IF NOT EXISTS `ps_discount_type_lang` (
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_discount_type`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_discount_type_lang`
--

INSERT INTO `ps_discount_type_lang` (`id_discount_type`, `id_lang`, `name`) VALUES
(1, 1, 'Discount on order (%)'),
(1, 2, 'Réduction sur la commande (%)'),
(1, 3, 'Descuento orden (%)'),
(1, 4, 'Preisnachlass auf die Bestellung (%)'),
(1, 5, 'Sconto sull’ordine (%)'),
(1, 6, 'Discount on order (%)'),
(1, 7, 'Discount on order (%)'),
(1, 8, 'Discount on order (%)'),
(2, 1, 'Discount on order (amount)'),
(2, 2, 'Réduction sur la commande (montant)'),
(2, 3, 'Descuento (el orden de cantidad)'),
(2, 4, 'Preisnachlass auf die Bestellung (Betrag)'),
(2, 5, 'Sconto sull’ordine (importo)'),
(2, 6, 'Discount on order (amount)'),
(2, 7, 'Discount on order (amount)'),
(2, 8, 'Discount on order (amount)'),
(3, 1, 'Free shipping'),
(3, 2, 'Frais de port gratuits'),
(3, 3, 'Gastos de envío gratis'),
(3, 4, 'Versandkosten gratis'),
(3, 5, 'Spese di porto gratuite'),
(3, 6, 'Free shipping'),
(3, 7, 'Free shipping'),
(3, 8, 'Free shipping');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_editorial`
--

DROP TABLE IF EXISTS `ps_editorial`;
CREATE TABLE IF NOT EXISTS `ps_editorial` (
  `id_editorial` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body_home_logo_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id_editorial`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_editorial`
--

INSERT INTO `ps_editorial` (`id_editorial`, `body_home_logo_link`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_editorial_lang`
--

DROP TABLE IF EXISTS `ps_editorial_lang`;
CREATE TABLE IF NOT EXISTS `ps_editorial_lang` (
  `id_editorial` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `body_title` varchar(255) NOT NULL,
  `body_subheading` varchar(255) NOT NULL,
  `body_paragraph` text NOT NULL,
  `body_logo_subheading` varchar(255) NOT NULL,
  PRIMARY KEY (`id_editorial`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_editorial_lang`
--

INSERT INTO `ps_editorial_lang` (`id_editorial`, `id_lang`, `body_title`, `body_subheading`, `body_paragraph`, `body_logo_subheading`) VALUES
(1, 1, 'Welcome to YOURKWIKSAVE!!', 'Do your shopping when it suits you – yes, it’s true', '<p><strong>Yourkwiksave.com</strong> gives you this possibility. Set yourself up as a customer directly on our website, log in with your username and password, and you will be ready to start shopping...</p>\r\n<p>You can shop with us and have your items delivered when it suits you. Please see our delivery plan.</p>\r\n<p>We help you save time on your daily shopping - just go online, place your order and we manage the rest for you.</p>\r\n<p>Of course, we would also like to see you in the supermarket – so you have both options. We just do what we can to make things flexible for you.</p>\r\n<p>We are pleased to be able to offer both solutions because our customers feel secure about their purchases. We are also a shop you can physically visit - get your shopping done and drink a cup of coffee in our cafeteria, use our wifi internet – we give you many options.</p>\r\n<p>In other words – you are the one who decides!</p>\r\n<p><br /><em>Brian Hald</em></p>\r\n<p><em>Managing Director﻿</em></p>\r\n<p> </p>\r\n<h3>Delivery</h3>\r\n<p>See when we will be delivering in your area.</p>\r\n<p>Minimum order 50€.</p>\r\n<p>Delivery charge 5€. For purchases of more than 75€, free delivery.</p>\r\n<p>Order online</p>\r\n<p>Delivery within 2 days for standard groceries.</p>\r\n<p>For imported products with short shelf-life, see the info on the product.</p>\r\n<p> </p>\r\n<p><strong>We deliver in the following Periods</strong>:</p>\r\n<p><em><strong>Every day</strong></em>: Benalmadena, Torremolinos, Fuengirola</p>\r\n<p><em><strong>Wednesdays &amp; Fridays</strong></em>: La cala, Calahonda, Marbella, Riveria, San Pedro</p>\r\n<p><em><strong>Thursdays</strong></em>: Coin, Alhaurin El grande, Alhaurin Del La Torre</p>\r\n<p> </p>\r\n<p>We deliver in the period 9 a.m. – 8 p.m. Orders must be submitted 2 days before otherwise the next delivery day is applicable. All customers receive confirmation on which day delivery will take place.﻿</p>\r\n<p><em><br /></em></p>', ''),
(1, 2, 'Lorem ipsum dolor sit amet', 'Excepteur sint occaecat cupidatat non proident', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 'Lorem ipsum presta shop amet'),
(1, 3, 'Lorem ipsum dolor sit amet', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 'Excepteur sint prestashop cupidatat non proident'),
(1, 4, 'Lorem ipsum dolor sit amet', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 'Excepteur sint prestashop cupidatat non proident'),
(1, 5, 'Lorem ipsum dolor sit amet', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 'Excepteur sint prestashop cupidatat non proident'),
(1, 6, 'Lorem ipsum dolor sit amet', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 'Excepteur sint prestashop cupidatat non proident'),
(1, 7, 'Lorem ipsum dolor sit amet', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 'Excepteur sint prestashop cupidatat non proident'),
(1, 8, 'Lorem ipsum dolor sit amet', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 'Excepteur sint prestashop cupidatat non proident');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_employee`
--

DROP TABLE IF EXISTS `ps_employee`;
CREATE TABLE IF NOT EXISTS `ps_employee` (
  `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `bo_uimode` enum('hover','click') DEFAULT 'click',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ps_employee`
--

INSERT INTO `ps_employee` (`id_employee`, `id_profile`, `id_lang`, `lastname`, `firstname`, `email`, `passwd`, `last_passwd_gen`, `stats_date_from`, `stats_date_to`, `bo_color`, `bo_theme`, `bo_uimode`, `active`) VALUES
(1, 4, 1, 'Hald', 'Brian', 'info@yourkwiksave.com', 'b62a4704ed71c5eddaccb439a566791c', '2011-09-05 09:09:13', '2011-01-01', '2011-12-31', NULL, 'oldschool', 'click', 0),
(2, 1, 1, 'Llorens', 'Juan', 'juancruzllorens@gmail.com', '0c43c59fc39ad640a6b50c9d093982ea', '2011-09-13 12:06:25', '2011-09-13', '2011-09-13', NULL, 'oldschool', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_feature`
--

DROP TABLE IF EXISTS `ps_feature`;
CREATE TABLE IF NOT EXISTS `ps_feature` (
  `id_feature` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `ps_feature`
--

INSERT INTO `ps_feature` (`id_feature`) VALUES
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_feature_lang`
--

DROP TABLE IF EXISTS `ps_feature_lang`;
CREATE TABLE IF NOT EXISTS `ps_feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_feature_lang`
--

INSERT INTO `ps_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
(4, 1, 'Weight'),
(4, 2, 'Poids'),
(4, 3, 'Peso'),
(4, 4, 'Gewicht'),
(4, 5, 'Peso'),
(4, 6, 'Weight'),
(4, 7, 'Weight'),
(4, 8, 'Weight');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_feature_product`
--

DROP TABLE IF EXISTS `ps_feature_product`;
CREATE TABLE IF NOT EXISTS `ps_feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_feature_value`
--

DROP TABLE IF EXISTS `ps_feature_value`;
CREATE TABLE IF NOT EXISTS `ps_feature_value` (
  `id_feature_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_feature_value_lang`
--

DROP TABLE IF EXISTS `ps_feature_value_lang`;
CREATE TABLE IF NOT EXISTS `ps_feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_group`
--

DROP TABLE IF EXISTS `ps_group`;
CREATE TABLE IF NOT EXISTS `ps_group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_group`
--

INSERT INTO `ps_group` (`id_group`, `reduction`, `price_display_method`, `date_add`, `date_upd`) VALUES
(1, 0.00, 0, '2011-09-05 03:03:32', '2011-09-05 03:03:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_group_lang`
--

DROP TABLE IF EXISTS `ps_group_lang`;
CREATE TABLE IF NOT EXISTS `ps_group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  UNIQUE KEY `attribute_lang_index` (`id_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_group_lang`
--

INSERT INTO `ps_group_lang` (`id_group`, `id_lang`, `name`) VALUES
(1, 1, 'Default'),
(1, 2, 'Défaut'),
(1, 3, 'Predeterminado'),
(1, 4, 'Default'),
(1, 5, 'Default'),
(1, 6, 'Default'),
(1, 7, 'Default'),
(1, 8, 'Default');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_group_reduction`
--

DROP TABLE IF EXISTS `ps_group_reduction`;
CREATE TABLE IF NOT EXISTS `ps_group_reduction` (
  `id_group_reduction` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_group_reduction`),
  UNIQUE KEY `id_group` (`id_group`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_guest`
--

DROP TABLE IF EXISTS `ps_guest`;
CREATE TABLE IF NOT EXISTS `ps_guest` (
  `id_guest` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int(10) unsigned DEFAULT NULL,
  `id_web_browser` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) unsigned DEFAULT NULL,
  `screen_resolution_y` smallint(5) unsigned DEFAULT NULL,
  `screen_color` tinyint(3) unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=356 ;

--
-- Volcado de datos para la tabla `ps_guest`
--

INSERT INTO `ps_guest` (`id_guest`, `id_operating_system`, `id_web_browser`, `id_customer`, `javascript`, `screen_resolution_x`, `screen_resolution_y`, `screen_color`, `sun_java`, `adobe_flash`, `adobe_director`, `apple_quicktime`, `real_player`, `windows_media`, `accept_language`) VALUES
(211, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'es'),
(212, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'es'),
(213, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'es'),
(214, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'es'),
(215, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'es-es'),
(216, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'es-es'),
(217, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'es'),
(218, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(219, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(220, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(221, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(222, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(223, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(224, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(225, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(226, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(227, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(228, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(229, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(230, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(231, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(232, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(233, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(234, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(235, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(236, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(237, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(238, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(239, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(240, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(241, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(242, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(243, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(244, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(245, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(246, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(247, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(248, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(249, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(250, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(251, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(252, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(253, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(254, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(255, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(256, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(257, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(258, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(259, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(260, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(261, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(262, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(263, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(264, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(265, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(266, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(267, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(268, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(269, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(270, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(271, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(272, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(273, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(274, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(275, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(276, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(277, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(278, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(279, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(280, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(281, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(282, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(283, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(284, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(285, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(286, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(287, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(288, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(289, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(290, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(291, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(292, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(293, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(294, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(295, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(296, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(297, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(298, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(299, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(300, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(301, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(302, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(303, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(304, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(305, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(306, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(307, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(308, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(309, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(310, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(311, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(312, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(313, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(314, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(315, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(316, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(317, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(318, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(319, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(320, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(321, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(322, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(323, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(324, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(325, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(326, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(327, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(328, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(329, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(330, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(331, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(332, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(333, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(334, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(335, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(336, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(337, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(338, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(339, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(340, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(341, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(342, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(343, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(344, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(345, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(346, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(347, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(348, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(349, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(350, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(351, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(352, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(353, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(354, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(355, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_help_access`
--

DROP TABLE IF EXISTS `ps_help_access`;
CREATE TABLE IF NOT EXISTS `ps_help_access` (
  `id_help_access` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(45) NOT NULL,
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_help_access`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_hook`
--

DROP TABLE IF EXISTS `ps_hook`;
CREATE TABLE IF NOT EXISTS `ps_hook` (
  `id_hook` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `live_edit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Volcado de datos para la tabla `ps_hook`
--

INSERT INTO `ps_hook` (`id_hook`, `name`, `title`, `description`, `position`, `live_edit`) VALUES
(1, 'payment', 'Payment', NULL, 1, 1),
(2, 'newOrder', 'New orders', NULL, 0, 0),
(3, 'paymentConfirm', 'Payment confirmation', NULL, 0, 0),
(4, 'paymentReturn', 'Payment return', NULL, 0, 0),
(5, 'updateQuantity', 'Quantity update', 'Quantity is updated only when the customer effectively <b>place</b> his order.', 0, 0),
(6, 'rightColumn', 'Right column blocks', NULL, 1, 1),
(7, 'leftColumn', 'Left column blocks', NULL, 1, 1),
(8, 'home', 'Homepage content', NULL, 1, 1),
(9, 'header', 'Header of pages', 'A hook which allow you to do things in the header of each pages', 1, 0),
(10, 'cart', 'Cart creation and update', NULL, 0, 0),
(11, 'authentication', 'Successful customer authentication', NULL, 0, 0),
(12, 'addproduct', 'Product creation', NULL, 0, 0),
(13, 'updateproduct', 'Product Update', NULL, 0, 0),
(14, 'top', 'Top of pages', 'A hook which allow you to do things a the top of each pages.', 1, 0),
(15, 'extraRight', 'Extra actions on the product page (right column).', NULL, 0, 0),
(16, 'deleteproduct', 'Product deletion', 'This hook is called when a product is deleted', 0, 0),
(17, 'productfooter', 'Product footer', 'Add new blocks under the product description', 1, 1),
(18, 'invoice', 'Invoice', 'Add blocks to invoice (order)', 1, 0),
(19, 'updateOrderStatus', 'Order''s status update event', 'Launch modules when the order''s status of an order change.', 0, 0),
(20, 'adminOrder', 'Display in Back-Office, tab AdminOrder', 'Launch modules when the tab AdminOrder is displayed on back-office.', 0, 0),
(21, 'footer', 'Footer', 'Add block in footer', 1, 0),
(22, 'PDFInvoice', 'PDF Invoice', 'Allow the display of extra informations into the PDF invoice', 0, 0),
(23, 'adminCustomers', 'Display in Back-Office, tab AdminCustomers', 'Launch modules when the tab AdminCustomers is displayed on back-office.', 0, 0),
(24, 'orderConfirmation', 'Order confirmation page', 'Called on order confirmation page', 0, 0),
(25, 'createAccount', 'Successful customer create account', 'Called when new customer create account successfuled', 0, 0),
(26, 'customerAccount', 'Customer account page display in front office', 'Display on page account of the customer', 1, 0),
(27, 'orderSlip', 'Called when a order slip is created', 'Called when a quantity of one product change in an order.', 0, 0),
(28, 'productTab', 'Tabs on product page', 'Called on order product page tabs', 0, 0),
(29, 'productTabContent', 'Content of tabs on product page', 'Called on order product page tabs', 0, 0),
(30, 'shoppingCart', 'Shopping cart footer', 'Display some specific informations on the shopping cart page', 0, 0),
(31, 'createAccountForm', 'Customer account creation form', 'Display some information on the form to create a customer account', 1, 0),
(32, 'AdminStatsModules', 'Stats - Modules', NULL, 1, 0),
(33, 'GraphEngine', 'Graph Engines', NULL, 0, 0),
(34, 'orderReturn', 'Product returned', NULL, 0, 0),
(35, 'productActions', 'Product actions', 'Put new action buttons on product page', 1, 0),
(36, 'backOfficeHome', 'Administration panel homepage', NULL, 1, 0),
(37, 'GridEngine', 'Grid Engines', NULL, 0, 0),
(38, 'watermark', 'Watermark', NULL, 0, 0),
(39, 'cancelProduct', 'Product cancelled', 'This hook is called when you cancel a product in an order', 0, 0),
(40, 'extraLeft', 'Extra actions on the product page (left column).', NULL, 0, 0),
(41, 'productOutOfStock', 'Product out of stock', 'Make action while product is out of stock', 1, 0),
(42, 'updateProductAttribute', 'Product attribute update', NULL, 0, 0),
(43, 'extraCarrier', 'Extra carrier (module mode)', NULL, 0, 0),
(44, 'shoppingCartExtra', 'Shopping cart extra button', 'Display some specific informations', 1, 0),
(45, 'search', 'Search', NULL, 0, 0),
(46, 'backBeforePayment', 'Redirect in order process', 'Redirect user to the module instead of displaying payment modules', 0, 0),
(47, 'updateCarrier', 'Carrier Update', 'This hook is called when a carrier is updated', 0, 0),
(48, 'postUpdateOrderStatus', 'Post update of order status', NULL, 0, 0),
(49, 'createAccountTop', 'Block above the form for create an account', NULL, 1, 0),
(50, 'backOfficeHeader', 'Administration panel header', NULL, 0, 0),
(51, 'backOfficeTop', 'Administration panel hover the tabs', NULL, 1, 0),
(52, 'backOfficeFooter', 'Administration panel footer', NULL, 1, 0),
(53, 'deleteProductAttribute', 'Product Attribute Deletion', NULL, 0, 0),
(54, 'processCarrier', 'Carrier Process', NULL, 0, 0),
(55, 'orderDetail', 'Order Detail', 'To set the follow-up in smarty when order detail is called', 0, 0),
(56, 'beforeCarrier', 'Before carrier list', 'This hook is display before the carrier list on Front office', 1, 0),
(57, 'orderDetailDisplayed', 'Order detail displayed', 'Displayed on order detail on front office', 1, 0),
(58, 'paymentCCAdded', 'Payment CC added', 'Payment CC added', 0, 0),
(59, 'extraProductComparison', 'Extra Product Comparison', 'Extra Product Comparison', 0, 0),
(60, 'categoryAddition', 'Category creation', NULL, 0, 0),
(61, 'categoryUpdate', 'Category modification', NULL, 0, 0),
(62, 'categoryDeletion', 'Category removal', NULL, 0, 0),
(63, 'beforeAuthentication', 'Before Authentication', 'Before authentication', 0, 0),
(64, 'paymentTop', 'Top of payment page', 'Top of payment page', 0, 0),
(65, 'afterCreateHtaccess', 'After htaccess creation', 'After htaccess creation', 0, 0),
(66, 'afterSaveAdminMeta', 'After save configuration in AdminMeta', 'After save configuration in AdminMeta', 0, 0),
(67, 'myAccountBlock', 'My account block', 'Display extra informations inside the "my account" block', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_hook_module`
--

DROP TABLE IF EXISTS `ps_hook_module`;
CREATE TABLE IF NOT EXISTS `ps_hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_hook_module`
--

INSERT INTO `ps_hook_module` (`id_module`, `id_hook`, `position`) VALUES
(1, 8, 2),
(3, 1, 1),
(3, 4, 1),
(4, 1, 3),
(4, 4, 3),
(5, 8, 3),
(6, 1, 2),
(6, 4, 2),
(8, 2, 1),
(8, 9, 8),
(8, 19, 1),
(9, 6, 1),
(9, 9, 3),
(10, 7, 2),
(10, 9, 6),
(10, 60, 1),
(10, 61, 1),
(10, 62, 1),
(10, 66, 1),
(11, 9, 11),
(11, 14, 1),
(12, 9, 13),
(12, 21, 4),
(13, 9, 10),
(13, 14, 3),
(14, 7, 3),
(14, 9, 12),
(15, 7, 1),
(15, 9, 5),
(16, 9, 7),
(17, 9, 2),
(18, 9, 4),
(18, 14, 4),
(19, 14, 2),
(20, 6, 5),
(22, 9, 9),
(22, 14, 5),
(24, 6, 2),
(24, 9, 1),
(25, 11, 1),
(25, 21, 2),
(25, 25, 1),
(26, 32, 1),
(27, 32, 2),
(28, 32, 3),
(30, 32, 4),
(31, 32, 5),
(32, 32, 6),
(33, 32, 7),
(34, 33, 1),
(35, 33, 2),
(36, 33, 3),
(37, 33, 4),
(39, 37, 1),
(40, 32, 8),
(41, 20, 2),
(41, 32, 9),
(42, 14, 6),
(42, 32, 10),
(43, 14, 7),
(43, 32, 11),
(44, 32, 12),
(45, 32, 13),
(46, 32, 15),
(47, 32, 14),
(48, 32, 16),
(49, 32, 17),
(50, 32, 18),
(51, 32, 19),
(51, 45, 1),
(52, 32, 20),
(53, 32, 21),
(54, 6, 4),
(55, 32, 22),
(58, 31, 1),
(60, 9, 20),
(60, 14, 9),
(61, 21, 1),
(62, 56, 1),
(63, 9, 14),
(63, 30, 1),
(64, 7, 4),
(64, 9, 16),
(65, 40, 1),
(66, 9, 15),
(66, 17, 1),
(67, 9, 17),
(67, 17, 2),
(68, 38, 1),
(69, 6, 6),
(70, 7, 5),
(71, 6, 3),
(72, 8, 1),
(72, 9, 18),
(73, 9, 19),
(73, 14, 8),
(74, 21, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_hook_module_exceptions`
--

DROP TABLE IF EXISTS `ps_hook_module_exceptions`;
CREATE TABLE IF NOT EXISTS `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_image`
--

DROP TABLE IF EXISTS `ps_image`;
CREATE TABLE IF NOT EXISTS `ps_image` (
  `id_image` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `position` smallint(2) unsigned NOT NULL DEFAULT '0',
  `cover` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `product_position` (`id_product`,`position`),
  KEY `image_product` (`id_product`),
  KEY `id_product_cover` (`id_product`,`cover`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Volcado de datos para la tabla `ps_image`
--

INSERT INTO `ps_image` (`id_image`, `id_product`, `position`, `cover`) VALUES
(55, 10, 1, 1),
(56, 13, 1, 1),
(57, 14, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_image_lang`
--

DROP TABLE IF EXISTS `ps_image_lang`;
CREATE TABLE IF NOT EXISTS `ps_image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  UNIQUE KEY `image_lang_index` (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_image_lang`
--

INSERT INTO `ps_image_lang` (`id_image`, `id_lang`, `legend`) VALUES
(10, 1, 'luxury-cover-for-ipod-video'),
(10, 2, 'housse-luxe-pour-ipod-video'),
(10, 3, 'luxury-cover-for-ipod-video'),
(10, 4, 'luxury-cover-for-ipod-video'),
(10, 5, 'luxury-cover-for-ipod-video'),
(11, 1, 'cover'),
(11, 2, 'housse'),
(11, 3, 'cubrir'),
(11, 4, 'cover'),
(11, 5, 'cover'),
(12, 1, 'myglove-ipod-nano'),
(12, 2, 'myglove-ipod-nano'),
(12, 3, 'myglove-ipod-nano'),
(12, 4, 'myglove-ipod-nano'),
(12, 5, 'myglove-ipod-nano'),
(13, 1, 'myglove-ipod-nano'),
(13, 2, 'myglove-ipod-nano'),
(13, 3, 'myglove-ipod-nano'),
(13, 4, 'myglove-ipod-nano'),
(13, 5, 'myglove-ipod-nano'),
(14, 1, 'myglove-ipod-nano'),
(14, 2, 'myglove-ipod-nano'),
(14, 3, 'myglove-ipod-nano'),
(14, 4, 'myglove-ipod-nano'),
(14, 5, 'myglove-ipod-nano'),
(55, 1, 'Danish Bacon'),
(55, 2, 'Danish Bacon'),
(55, 3, 'Danish Bacon'),
(55, 4, 'Danish Bacon'),
(55, 5, 'Danish Bacon'),
(55, 6, 'Danish Bacon'),
(55, 7, 'Danish Bacon'),
(55, 8, 'Danish Bacon'),
(56, 1, 'Baugette Normal'),
(56, 2, 'Baugette Normal'),
(56, 3, 'Baugette Normal'),
(56, 4, 'Baugette Normal'),
(56, 5, 'Baugette Normal'),
(56, 6, 'Baugette Normal'),
(56, 7, 'Baugette Normal'),
(56, 8, 'Baugette Normal'),
(57, 1, 'Bagutte Rustic'),
(57, 2, 'Bagutte Rustic'),
(57, 3, 'Bagutte Rustic'),
(57, 4, 'Bagutte Rustic'),
(57, 5, 'Bagutte Rustic'),
(57, 6, 'Bagutte Rustic'),
(57, 7, 'Bagutte Rustic'),
(57, 8, 'Bagutte Rustic');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_image_type`
--

DROP TABLE IF EXISTS `ps_image_type`;
CREATE TABLE IF NOT EXISTS `ps_image_type` (
  `id_image_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `ps_image_type`
--

INSERT INTO `ps_image_type` (`id_image_type`, `name`, `width`, `height`, `products`, `categories`, `manufacturers`, `suppliers`, `scenes`, `stores`) VALUES
(1, 'small', 45, 45, 1, 1, 1, 1, 0, 0),
(2, 'medium', 80, 80, 1, 1, 1, 1, 0, 1),
(3, 'large', 300, 300, 1, 1, 1, 1, 0, 0),
(4, 'thickbox', 600, 600, 1, 0, 0, 0, 0, 0),
(5, 'category', 500, 150, 0, 1, 0, 0, 0, 0),
(6, 'home', 129, 129, 1, 0, 0, 0, 0, 0),
(7, 'large_scene', 556, 200, 0, 0, 0, 0, 1, 0),
(8, 'thumb_scene', 161, 58, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_import_match`
--

DROP TABLE IF EXISTS `ps_import_match`;
CREATE TABLE IF NOT EXISTS `ps_import_match` (
  `id_import_match` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int(2) NOT NULL,
  PRIMARY KEY (`id_import_match`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_lang`
--

DROP TABLE IF EXISTS `ps_lang`;
CREATE TABLE IF NOT EXISTS `ps_lang` (
  `id_lang` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  `language_code` char(5) NOT NULL,
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `ps_lang`
--

INSERT INTO `ps_lang` (`id_lang`, `name`, `active`, `iso_code`, `language_code`, `is_rtl`) VALUES
(1, 'English (English)', 1, 'en', 'en-us', 0),
(2, 'Français (French)', 0, 'fr', 'fr', 0),
(3, 'Español (Spanish)', 0, 'es', 'es', 0),
(4, 'Deutsch (German)', 0, 'de', 'de', 0),
(5, 'Italiano (Italian)', 0, 'it', 'it', 0),
(6, 'Catalan', 0, 'ca', 'ca', 0),
(7, 'Galician', 0, 'gl', 'gl', 0),
(8, 'Danish', 1, 'da', 'da', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_log`
--

DROP TABLE IF EXISTS `ps_log`;
CREATE TABLE IF NOT EXISTS `ps_log` (
  `id_log` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(1) NOT NULL,
  `error_code` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_manufacturer`
--

DROP TABLE IF EXISTS `ps_manufacturer`;
CREATE TABLE IF NOT EXISTS `ps_manufacturer` (
  `id_manufacturer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ps_manufacturer`
--

INSERT INTO `ps_manufacturer` (`id_manufacturer`, `name`, `date_add`, `date_upd`, `active`) VALUES
(3, 'Your Kwik Save', '2011-09-06 15:58:07', '2011-09-06 15:58:07', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_manufacturer_lang`
--

DROP TABLE IF EXISTS `ps_manufacturer_lang`;
CREATE TABLE IF NOT EXISTS `ps_manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` varchar(254) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_manufacturer_lang`
--

INSERT INTO `ps_manufacturer_lang` (`id_manufacturer`, `id_lang`, `description`, `short_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(3, 1, NULL, NULL, NULL, NULL, NULL),
(3, 2, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL),
(3, 4, NULL, NULL, NULL, NULL, NULL),
(3, 5, NULL, NULL, NULL, NULL, NULL),
(3, 6, NULL, NULL, NULL, NULL, NULL),
(3, 7, NULL, NULL, NULL, NULL, NULL),
(3, 8, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_memcached_servers`
--

DROP TABLE IF EXISTS `ps_memcached_servers`;
CREATE TABLE IF NOT EXISTS `ps_memcached_servers` (
  `id_memcached_server` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(254) NOT NULL,
  `port` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_memcached_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_menu`
--

DROP TABLE IF EXISTS `ps_menu`;
CREATE TABLE IF NOT EXISTS `ps_menu` (
  `id_menu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `id_item` int(10) unsigned NOT NULL,
  `type` varchar(16) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `ignore` varchar(128) DEFAULT NULL,
  `logged` tinyint(1) NOT NULL DEFAULT '0',
  `css` varchar(32) DEFAULT NULL,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `ps_menu`
--

INSERT INTO `ps_menu` (`id_menu`, `id_parent`, `id_item`, `type`, `level`, `ignore`, `logged`, `css`, `new_window`, `active`, `position`, `date_add`, `date_upd`) VALUES
(14, 0, 2, 'category', 1, NULL, 0, NULL, 0, 1, 1, '2011-09-16 10:57:45', '2011-09-27 16:57:06'),
(15, 0, 3, 'category', 1, NULL, 0, NULL, 0, 1, 2, '2011-09-16 10:59:04', '2011-10-04 11:40:49'),
(16, 0, 4, 'category', 1, NULL, 0, NULL, 0, 1, 3, '2011-09-16 11:01:31', '2011-10-15 20:56:25'),
(17, 0, 5, 'category', 1, NULL, 0, NULL, 0, 1, 4, '2011-09-16 11:02:06', '2011-10-05 13:11:54'),
(18, 0, 6, 'category', 1, NULL, 0, NULL, 0, 1, 5, '2011-09-16 11:02:39', '2011-09-27 16:57:39'),
(19, 0, 7, 'category', 1, NULL, 0, NULL, 0, 1, 6, '2011-09-16 11:03:40', '2011-10-05 13:24:51'),
(20, 0, 8, 'category', 1, NULL, 0, NULL, 0, 1, 7, '2011-09-16 11:04:18', '2011-10-04 11:17:30'),
(21, 0, 9, 'category', 1, NULL, 0, NULL, 0, 1, 8, '2011-09-16 11:04:55', '2011-10-05 14:59:58'),
(22, 0, 10, 'category', 1, NULL, 0, NULL, 0, 1, 9, '2011-09-16 11:05:27', '2011-10-04 14:14:36'),
(23, 0, 11, 'category', 1, NULL, 0, NULL, 0, 1, 10, '2011-09-16 11:05:59', '2011-10-04 12:49:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_menu_lang`
--

DROP TABLE IF EXISTS `ps_menu_lang`;
CREATE TABLE IF NOT EXISTS `ps_menu_lang` (
  `id_menu` int(10) unsigned NOT NULL,
  `id_lang` tinyint(2) unsigned NOT NULL,
  `title` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id_menu`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_menu_lang`
--

INSERT INTO `ps_menu_lang` (`id_menu`, `id_lang`, `title`, `link`) VALUES
(14, 1, '', ''),
(14, 2, '', ''),
(14, 3, '', ''),
(14, 4, '', ''),
(14, 5, '', ''),
(14, 6, '', ''),
(14, 7, '', ''),
(14, 8, '', ''),
(15, 1, '', ''),
(15, 2, '', ''),
(15, 3, '', ''),
(15, 4, '', ''),
(15, 5, '', ''),
(15, 6, '', ''),
(15, 7, '', ''),
(15, 8, '', ''),
(16, 1, '', ''),
(16, 2, '', ''),
(16, 3, '', ''),
(16, 4, '', ''),
(16, 5, '', ''),
(16, 6, '', ''),
(16, 7, '', ''),
(16, 8, '', ''),
(17, 1, '', ''),
(17, 2, '', ''),
(17, 3, '', ''),
(17, 4, '', ''),
(17, 5, '', ''),
(17, 6, '', ''),
(17, 7, '', ''),
(17, 8, '', ''),
(18, 1, '', ''),
(18, 2, '', ''),
(18, 3, '', ''),
(18, 4, '', ''),
(18, 5, '', ''),
(18, 6, '', ''),
(18, 7, '', ''),
(18, 8, '', ''),
(19, 1, '', ''),
(19, 2, '', ''),
(19, 3, '', ''),
(19, 4, '', ''),
(19, 5, '', ''),
(19, 6, '', ''),
(19, 7, '', ''),
(19, 8, '', ''),
(20, 1, '', ''),
(20, 2, '', ''),
(20, 3, '', ''),
(20, 4, '', ''),
(20, 5, '', ''),
(20, 6, '', ''),
(20, 7, '', ''),
(20, 8, '', ''),
(21, 1, '', ''),
(21, 2, '', ''),
(21, 3, '', ''),
(21, 4, '', ''),
(21, 5, '', ''),
(21, 6, '', ''),
(21, 7, '', ''),
(21, 8, '', ''),
(22, 1, '', ''),
(22, 2, '', ''),
(22, 3, '', ''),
(22, 4, '', ''),
(22, 5, '', ''),
(22, 6, '', ''),
(22, 7, '', ''),
(22, 8, '', ''),
(23, 1, '', ''),
(23, 2, '', ''),
(23, 3, '', ''),
(23, 4, '', ''),
(23, 5, '', ''),
(23, 6, '', ''),
(23, 7, '', ''),
(23, 8, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_message`
--

DROP TABLE IF EXISTS `ps_message`;
CREATE TABLE IF NOT EXISTS `ps_message` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_message_readed`
--

DROP TABLE IF EXISTS `ps_message_readed`;
CREATE TABLE IF NOT EXISTS `ps_message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_meta`
--

DROP TABLE IF EXISTS `ps_meta`;
CREATE TABLE IF NOT EXISTS `ps_meta` (
  `id_meta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  PRIMARY KEY (`id_meta`),
  KEY `meta_name` (`page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `ps_meta`
--

INSERT INTO `ps_meta` (`id_meta`, `page`) VALUES
(1, '404'),
(11, 'address'),
(12, 'addresses'),
(13, 'authentication'),
(2, 'best-sales'),
(14, 'cart'),
(3, 'contact-form'),
(15, 'discount'),
(25, 'guest-tracking'),
(16, 'history'),
(17, 'identity'),
(4, 'index'),
(5, 'manufacturer'),
(18, 'my-account'),
(6, 'new-products'),
(21, 'order'),
(19, 'order-follow'),
(24, 'order-opc'),
(20, 'order-slip'),
(7, 'password'),
(8, 'prices-drop'),
(22, 'search'),
(9, 'sitemap'),
(23, 'stores'),
(10, 'supplier');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_meta_lang`
--

DROP TABLE IF EXISTS `ps_meta_lang`;
CREATE TABLE IF NOT EXISTS `ps_meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL,
  PRIMARY KEY (`id_meta`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_meta_lang`
--

INSERT INTO `ps_meta_lang` (`id_meta`, `id_lang`, `title`, `description`, `keywords`, `url_rewrite`) VALUES
(1, 1, '404 error', 'This page cannot be found', 'error, 404, not found', 'page-not-found'),
(1, 2, 'Erreur 404', 'Cette page est introuvable', 'erreur, 404, introuvable', 'page-non-trouvee'),
(1, 3, 'Error 404', 'Esta página no se encuentra', 'error, 404, No se ha encontrado', 'pagina-no-encuentra'),
(1, 4, 'Fehler 404', 'Seite wurde nicht gefunden', 'Fehler 404, nicht gefunden', 'seite-nicht-gefunden'),
(1, 5, 'errore 404', 'Impossibile trovare questa pagina', 'errore, 404, non trovato', 'pagina-non-trovata'),
(1, 6, '404 error', 'This page cannot be found', 'error, 404, not found', 'page-not-found'),
(1, 7, '404 error', 'This page cannot be found', 'error, 404, not found', 'page-not-found'),
(1, 8, '404 error', 'This page cannot be found', 'error, 404, not found', 'page-not-found'),
(2, 1, 'Best sales', 'Our best sales', 'best sales', 'best-sales'),
(2, 2, 'Meilleures ventes', 'Liste de nos produits les mieux vendus', 'meilleures ventes', 'meilleures-ventes'),
(2, 3, 'Los más vendidos', 'Lista de los de mayor venta de productos', 'los más vendidos', 'mas-vendidos'),
(2, 4, 'Verkaufshits', 'Unsere Verkaufshits', 'Verkaufshits', 'verkaufshits'),
(2, 5, 'Vendite migliori', 'Le nostre vendite migliori', 'vendite migliori', 'vendite-migliori'),
(2, 6, 'Best sales', 'Our best sales', 'best sales', 'best-sales'),
(2, 7, 'Best sales', 'Our best sales', 'best sales', 'best-sales'),
(2, 8, 'Best sales', 'Our best sales', 'best sales', 'best-sales'),
(3, 1, 'Contact us', 'Use our form to contact us', 'contact, form, e-mail', 'contact-us'),
(3, 2, 'Contactez-nous', 'Utilisez notre formulaire pour nous contacter', 'contact, formulaire, e-mail', 'contactez-nous'),
(3, 3, 'Contáctenos', 'Use nuestro formulario de contacto con nosotros', 'formulario de contacto, e-mail', 'contactenos'),
(3, 4, 'Kontaktieren Sie uns', 'Nutzen Sie unser Kontaktformular', 'Kontakt, Formular, E-Mail', 'kontaktieren-sie-uns'),
(3, 5, 'Contattaci', 'Usa il nostro modulo per contattarci', 'contatto, modulo, e-mail', 'contattaci'),
(3, 6, 'Contact us', 'Use our form to contact us', 'contact, form, e-mail', 'contact-us'),
(3, 7, 'Contact us', 'Use our form to contact us', 'contact, form, e-mail', 'contact-us'),
(3, 8, 'Contact us', 'Use our form to contact us', 'contact, form, e-mail', 'contact-us'),
(4, 1, 'YOUR KWIK SAVE - Your Scandinavian and English Supermarket', 'We are a supermarket on the coast that tries to satisfy our customers as best possible.﻿﻿', 'shop, supermarket, cheap, prices, torremuelle, benalmadena, fuengirola', ''),
(4, 2, NULL, 'Boutique propulsée par PrestaShop', 'boutique, prestashop', ''),
(4, 3, NULL, 'Shop powered by PrestaShop', 'tienda, prestashop', ''),
(4, 4, NULL, 'Shop powered by PrestaShop', 'Shop, prestashop', ''),
(4, 5, NULL, 'Negozio powered by PrestaShop', 'negozio, prestashop', ''),
(4, 6, NULL, 'Shop powered by PrestaShop', 'shop, prestashop', ''),
(4, 7, NULL, 'Shop powered by PrestaShop', 'shop, prestashop', ''),
(4, 8, NULL, 'Shop powered by PrestaShop', 'shop, prestashop', ''),
(5, 1, 'Manufacturers', 'Manufacturers list', 'manufacturer', 'manufacturers'),
(5, 2, 'Fabricants', 'Liste de nos fabricants', 'fabricants', 'fabricants'),
(5, 3, 'Fabricantes', 'Lista de Fabricantes', 'fabricantes', 'fabricantes'),
(5, 4, 'Hersteller', 'Herstellerliste', 'Hersteller', 'hersteller'),
(5, 5, 'Produttori', 'Elenco produttori', 'produttore', 'produttori'),
(5, 6, 'Manufacturers', 'Manufacturers list', 'manufacturer', 'manufacturers'),
(5, 7, 'Manufacturers', 'Manufacturers list', 'manufacturer', 'manufacturers'),
(5, 8, 'Manufacturers', 'Manufacturers list', 'manufacturer', 'manufacturers'),
(6, 1, 'New products', 'Our new products', 'new, products', 'new-products'),
(6, 2, 'Nouveaux produits', 'Liste de nos nouveaux produits', 'nouveau, produit', 'nouveaux-produits'),
(6, 3, 'Nuevos Productos', 'Lista de nuestros nuevos productos', 'nuevo, productos', 'nuevos-productos'),
(6, 4, 'Neue Produkte', 'Unsere neuen Produkte', 'neu, Produkte', 'neue-Produkte'),
(6, 5, 'Nuovi prodotti', 'I nostri nuovi prodotti', 'nuovi, prodotti', 'nuovi-prodotti'),
(6, 6, 'New products', 'Our new products', 'new, products', 'new-products'),
(6, 7, 'New products', 'Our new products', 'new, products', 'new-products'),
(6, 8, 'New products', 'Our new products', 'new, products', 'new-products'),
(7, 1, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', 'forgot, password, e-mail, new, reset', 'password-recovery'),
(7, 2, 'Mot de passe oublié', 'Renseignez votre adresse e-mail afin de recevoir votre nouveau mot de passe.', 'mot de passe, oublié, e-mail, nouveau, regénération', 'mot-de-passe-oublie'),
(7, 3, 'Olvidaste tu contraseña', 'Ingrese su dirección de correo electrónico para recibir su nueva contraseña.', 'contraseña, has olvidado, e-mail, nuevo, regeneración', 'contrasena-olvidado'),
(7, 4, 'Kennwort vergessen', 'Geben Sie die E-Mailadresse ein, die Sie zum Einloggen benutzen, damit Sie eine E-Mail mit dem neuen Kennwort erhalt', 'vergessen, Kennwort, E-Mail, neu, Reset', 'kennwort-wiederherstellung'),
(7, 5, 'Hai dimenticato la password', 'Inserisci l''indirizzo e-mail usato per registrarti per poter ottenere una e-mail with con la tua nuova password', 'dimenticato, password, e-mail, nuovo, reset', 'password-recupero'),
(7, 6, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', 'forgot, password, e-mail, new, reset', 'password-recovery'),
(7, 7, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', 'forgot, password, e-mail, new, reset', 'password-recovery'),
(7, 8, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', 'forgot, password, e-mail, new, reset', 'password-recovery'),
(8, 1, 'Prices drop', 'Our special products', 'special, prices drop', 'prices-drop'),
(8, 2, 'Promotions', 'Nos produits en promotion', 'promotion, réduction', 'promotions'),
(8, 3, 'Promociones', 'Nuestros productos promocionales', 'promoción, reducción', 'promocion'),
(8, 4, 'Angebote', 'Unsere Sonderangebote', 'besonders, Angebote', 'angebote'),
(8, 5, 'Riduzioni prezzi', 'I nostri prodotti speciali', 'speciali, riduzione prezzi', 'riduzione-prezzi'),
(8, 6, 'Prices drop', 'Our special products', 'special, prices drop', 'prices-drop'),
(8, 7, 'Prices drop', 'Our special products', 'special, prices drop', 'prices-drop'),
(8, 8, 'Prices drop', 'Our special products', 'special, prices drop', 'prices-drop'),
(9, 1, 'Sitemap', 'Lost ? Find what your are looking for', 'sitemap', 'sitemap'),
(9, 2, 'Plan du site', 'Perdu ? Trouvez ce que vous cherchez', 'plan, site', 'plan-du-site'),
(9, 3, 'Mapa del sitio', '¿Perdido? Encuentra lo que buscas', 'plan, sitio', 'mapa-del-sitio'),
(9, 4, 'Sitemap', 'Verloren? Finden Sie, was Sie suchen', 'sitemap', 'sitemap'),
(9, 5, 'Mappa del sito', 'Ti sei perso? Trova quello che stai cercando', 'sitemap', 'sitemap'),
(9, 6, 'Sitemap', 'Lost ? Find what your are looking for', 'sitemap', 'sitemap'),
(9, 7, 'Sitemap', 'Lost ? Find what your are looking for', 'sitemap', 'sitemap'),
(9, 8, 'Sitemap', 'Lost ? Find what your are looking for', 'sitemap', 'sitemap'),
(10, 1, 'Suppliers', 'Suppliers list', 'supplier', 'supplier'),
(10, 2, 'Fournisseurs', 'Liste de nos fournisseurs', 'fournisseurs', 'fournisseurs'),
(10, 3, 'Proveedores', 'Lista de Proveedores', 'proveedores', 'proveedores'),
(10, 4, 'Zulieferer', 'Zuliefererliste', 'Zulieferer', 'zulieferer'),
(10, 5, 'Fornitori', 'Elenco fornitori', 'fornitori', 'fornitore'),
(10, 6, 'Suppliers', 'Suppliers list', 'supplier', 'supplier'),
(10, 7, 'Suppliers', 'Suppliers list', 'supplier', 'supplier'),
(10, 8, 'Suppliers', 'Suppliers list', 'supplier', 'supplier'),
(11, 1, 'Address', NULL, NULL, 'address'),
(11, 2, 'Adresse', NULL, NULL, 'adresse'),
(11, 3, 'Dirección', NULL, NULL, 'direccion'),
(11, 4, 'Adresse', NULL, NULL, 'adresse'),
(11, 5, 'Indirizzo', NULL, NULL, 'indirizzo'),
(11, 6, 'Address', NULL, NULL, 'address'),
(11, 7, 'Address', NULL, NULL, 'address'),
(11, 8, 'Address', NULL, NULL, 'address'),
(12, 1, 'Addresses', NULL, NULL, 'addresses'),
(12, 2, 'Adresses', NULL, NULL, 'adresses'),
(12, 3, 'Direcciones', NULL, NULL, 'direcciones'),
(12, 4, 'Adressen', NULL, NULL, 'adressen'),
(12, 5, 'Indirizzi', NULL, NULL, 'indirizzi'),
(12, 6, 'Addresses', NULL, NULL, 'addresses'),
(12, 7, 'Addresses', NULL, NULL, 'addresses'),
(12, 8, 'Addresses', NULL, NULL, 'addresses'),
(13, 1, 'Authentication', NULL, NULL, 'authentication'),
(13, 2, 'Authentification', NULL, NULL, 'authentification'),
(13, 3, 'Autenticación', NULL, NULL, 'autenticacion'),
(13, 4, 'Authentifizierung', NULL, NULL, 'authentifizierung'),
(13, 5, 'Autenticazione', NULL, NULL, 'autenticazione'),
(13, 6, 'Authentication', NULL, NULL, 'authentication'),
(13, 7, 'Authentication', NULL, NULL, 'authentication'),
(13, 8, 'Authentication', NULL, NULL, 'authentication'),
(14, 1, 'Cart', NULL, NULL, 'cart'),
(14, 2, 'Panier', NULL, NULL, 'panier'),
(14, 3, 'Carro de la compra', NULL, NULL, 'carro-de-la-compra'),
(14, 4, 'Warenkorb', NULL, NULL, 'warenkorb'),
(14, 5, 'Carrello', NULL, NULL, 'carrello'),
(14, 6, 'Cart', NULL, NULL, 'cart'),
(14, 7, 'Cart', NULL, NULL, 'cart'),
(14, 8, 'Cart', NULL, NULL, 'cart'),
(15, 1, 'Discount', NULL, NULL, 'discount'),
(15, 2, 'Bons de réduction', NULL, NULL, 'bons-de-reduction'),
(15, 3, 'Descuento', NULL, NULL, 'descuento'),
(15, 4, 'Discount', NULL, NULL, 'discount'),
(15, 5, 'Sconto', NULL, NULL, 'sconto'),
(15, 6, 'Discount', NULL, NULL, 'discount'),
(15, 7, 'Discount', NULL, NULL, 'discount'),
(15, 8, 'Discount', NULL, NULL, 'discount'),
(16, 1, 'Order history', NULL, NULL, 'order-history'),
(16, 2, 'Historique des commandes', NULL, NULL, 'historique-des-commandes'),
(16, 3, 'Historial de pedidos', NULL, NULL, 'historial-de-pedidos'),
(16, 4, 'Bestellungsverlauf', NULL, NULL, 'bestellungsverlauf'),
(16, 5, 'Storico ordine', NULL, NULL, 'storico-ordine'),
(16, 6, 'Order history', NULL, NULL, 'order-history'),
(16, 7, 'Order history', NULL, NULL, 'order-history'),
(16, 8, 'Order history', NULL, NULL, 'order-history'),
(17, 1, 'Identity', NULL, NULL, 'identity'),
(17, 2, 'Identité', NULL, NULL, 'identite'),
(17, 3, 'Identidad', NULL, NULL, 'identidad'),
(17, 4, 'Kennung', NULL, NULL, 'kennung'),
(17, 5, 'Identità', NULL, NULL, 'identita'),
(17, 6, 'Identity', NULL, NULL, 'identity'),
(17, 7, 'Identity', NULL, NULL, 'identity'),
(17, 8, 'Identity', NULL, NULL, 'identity'),
(18, 1, 'My account', NULL, NULL, 'my-account'),
(18, 2, 'Mon compte', NULL, NULL, 'mon-compte'),
(18, 3, 'Mi Cuenta', NULL, NULL, 'mi-cuenta'),
(18, 4, 'Mein Konto', NULL, NULL, 'mein-Konto'),
(18, 5, 'Il mio account', NULL, NULL, 'il-mio-account'),
(18, 6, 'My account', NULL, NULL, 'my-account'),
(18, 7, 'My account', NULL, NULL, 'my-account'),
(18, 8, 'My account', NULL, NULL, 'my-account'),
(19, 1, 'Order follow', NULL, NULL, 'order-follow'),
(19, 2, 'Détails de la commande', NULL, NULL, 'details-de-la-commande'),
(19, 3, 'Devolución de productos', NULL, NULL, 'devolucion-de-productos'),
(19, 4, 'Bestellungsverfolgung', NULL, NULL, 'bestellungsverfolgung'),
(19, 5, 'Seguito ordine', NULL, NULL, 'seguito-ordine'),
(19, 6, 'Order follow', NULL, NULL, 'order-follow'),
(19, 7, 'Order follow', NULL, NULL, 'order-follow'),
(19, 8, 'Order follow', NULL, NULL, 'order-follow'),
(20, 1, 'Order slip', NULL, NULL, 'order-slip'),
(20, 2, 'Avoirs', NULL, NULL, 'avoirs'),
(20, 3, 'Vales', NULL, NULL, 'vales'),
(20, 4, 'Bestellschein', NULL, NULL, 'bestellschein'),
(20, 5, 'Nota di ordine', NULL, NULL, 'nota-di-ordine'),
(20, 6, 'Order slip', NULL, NULL, 'order-slip'),
(20, 7, 'Order slip', NULL, NULL, 'order-slip'),
(20, 8, 'Order slip', NULL, NULL, 'order-slip'),
(21, 1, 'Order', NULL, NULL, 'order'),
(21, 2, 'Commande', NULL, NULL, 'commande'),
(21, 3, 'Carrito', NULL, NULL, 'carrito'),
(21, 4, 'Bestellung', NULL, NULL, 'bestellung'),
(21, 5, 'Ordine', NULL, NULL, 'ordine'),
(21, 6, 'Order', NULL, NULL, 'order'),
(21, 7, 'Order', NULL, NULL, 'order'),
(21, 8, 'Order', NULL, NULL, 'order'),
(22, 1, 'Search', NULL, NULL, 'search'),
(22, 2, 'Recherche', NULL, NULL, 'recherche'),
(22, 3, 'Buscar', NULL, NULL, 'buscar'),
(22, 4, 'Suche', NULL, NULL, 'suche'),
(22, 5, 'Cerca', NULL, NULL, 'cerca'),
(22, 6, 'Search', NULL, NULL, 'search'),
(22, 7, 'Search', NULL, NULL, 'search'),
(22, 8, 'Search', NULL, NULL, 'search'),
(23, 1, 'Stores', NULL, NULL, 'stores'),
(23, 2, 'Magasins', NULL, NULL, 'magasins'),
(23, 3, 'Tiendas', NULL, NULL, 'tiendas'),
(23, 4, 'Shops', NULL, NULL, 'shops'),
(23, 5, 'Negozi', NULL, NULL, 'negozi'),
(23, 6, 'Stores', NULL, NULL, 'stores'),
(23, 7, 'Stores', NULL, NULL, 'stores'),
(23, 8, 'Stores', NULL, NULL, 'stores'),
(24, 1, 'Order', NULL, NULL, 'quick-order'),
(24, 2, 'Commande', NULL, NULL, 'commande-rapide'),
(24, 3, 'Carrito', NULL, NULL, 'pedido-rapido'),
(24, 4, 'Bestellung', NULL, NULL, 'schnell-bestellung'),
(24, 5, 'Ordine', NULL, NULL, 'ordine-veloce'),
(24, 6, 'Order', NULL, NULL, 'quick-order'),
(24, 7, 'Order', NULL, NULL, 'quick-order'),
(24, 8, 'Order', NULL, NULL, 'quick-order'),
(25, 1, 'Guest tracking', NULL, NULL, 'guest-tracking'),
(25, 2, 'Suivi de commande invité', NULL, NULL, 'suivi-commande-invite'),
(25, 3, 'Estado del pedido', NULL, NULL, 'estado-pedido'),
(25, 4, 'Auftragsverfolgung Gast', NULL, NULL, 'auftragsverfolgung-gast'),
(25, 5, 'Ospite di monitoraggio', NULL, NULL, 'ospite-monitoraggio'),
(25, 6, 'Guest tracking', NULL, NULL, 'guest-tracking'),
(25, 7, 'Guest tracking', NULL, NULL, 'guest-tracking'),
(25, 8, 'Guest tracking', NULL, NULL, 'guest-tracking');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_module`
--

DROP TABLE IF EXISTS `ps_module`;
CREATE TABLE IF NOT EXISTS `ps_module` (
  `id_module` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_module`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Volcado de datos para la tabla `ps_module`
--

INSERT INTO `ps_module` (`id_module`, `name`, `active`) VALUES
(1, 'homefeatured', 0),
(2, 'gsitemap', 1),
(3, 'cheque', 1),
(4, 'moneybookers', 1),
(5, 'editorial', 1),
(6, 'bankwire', 1),
(8, 'blockbestsellers', 0),
(9, 'blockcart', 1),
(10, 'blockcategories', 1),
(11, 'blockcurrencies', 0),
(12, 'blockcms', 0),
(13, 'blocklanguages', 1),
(14, 'blockmanufacturer', 1),
(15, 'blockmyaccount', 1),
(16, 'blocknewproducts', 1),
(17, 'blockpaymentlogo', 0),
(18, 'blockpermanentlinks', 1),
(19, 'blocksearch', 1),
(20, 'blockspecials', 1),
(22, 'blockuserinfo', 1),
(24, 'blockviewed', 0),
(25, 'statsdata', 1),
(26, 'statsvisits', 1),
(27, 'statssales', 1),
(28, 'statsregistrations', 1),
(30, 'statspersonalinfos', 1),
(31, 'statslive', 1),
(32, 'statsequipment', 1),
(33, 'statscatalog', 1),
(34, 'graphvisifire', 1),
(35, 'graphxmlswfcharts', 1),
(36, 'graphgooglechart', 1),
(37, 'graphartichow', 1),
(39, 'gridhtml', 1),
(40, 'statsbestcustomers', 1),
(41, 'statsorigin', 1),
(42, 'pagesnotfound', 1),
(43, 'sekeywords', 1),
(44, 'statsproduct', 1),
(45, 'statsbestproducts', 1),
(46, 'statsbestcategories', 1),
(47, 'statsbestvouchers', 1),
(48, 'statsbestsuppliers', 1),
(49, 'statscarrier', 1),
(50, 'statsnewsletter', 1),
(51, 'statssearch', 1),
(52, 'statscheckup', 1),
(53, 'statsstock', 1),
(54, 'blockstore', 1),
(55, 'statsforecast', 1),
(56, 'themeinstallator', 1),
(57, 'newslettertabmodule', 1),
(58, 'blockcustomerprivacy', 1),
(59, 'slideric', 0),
(60, 'jbx_menu', 1),
(61, 'ddlx_xtreme_footer', 1),
(62, 'dateofdelivery', 0),
(63, 'carriercompare', 0),
(64, 'blocknewsletter', 1),
(65, 'sendtoafriend', 1),
(66, 'crossselling', 1),
(67, 'productscategory', 1),
(68, 'watermark', 1),
(69, 'livezilla', 1),
(70, 'blockadvertising', 1),
(71, 'blockadvertising2', 1),
(72, 'homecarousel', 0),
(73, 'piscesslider', 1),
(74, 'blockvariouslinks', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_module_country`
--

DROP TABLE IF EXISTS `ps_module_country`;
CREATE TABLE IF NOT EXISTS `ps_module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_module_country`
--

INSERT INTO `ps_module_country` (`id_module`, `id_country`) VALUES
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(6, 20),
(6, 21),
(6, 22),
(6, 23),
(6, 24),
(6, 25),
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30),
(6, 31),
(6, 32),
(6, 33),
(6, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_module_currency`
--

DROP TABLE IF EXISTS `ps_module_currency`;
CREATE TABLE IF NOT EXISTS `ps_module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_currency` int(11) NOT NULL,
  PRIMARY KEY (`id_module`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_module_currency`
--

INSERT INTO `ps_module_currency` (`id_module`, `id_currency`) VALUES
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(6, 1),
(6, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_module_group`
--

DROP TABLE IF EXISTS `ps_module_group`;
CREATE TABLE IF NOT EXISTS `ps_module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_group` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_module_group`
--

INSERT INTO `ps_module_group` (`id_module`, `id_group`) VALUES
(3, 1),
(4, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_newsletter`
--

DROP TABLE IF EXISTS `ps_newsletter`;
CREATE TABLE IF NOT EXISTS `ps_newsletter` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_operating_system`
--

DROP TABLE IF EXISTS `ps_operating_system`;
CREATE TABLE IF NOT EXISTS `ps_operating_system` (
  `id_operating_system` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `ps_operating_system`
--

INSERT INTO `ps_operating_system` (`id_operating_system`, `name`) VALUES
(1, 'Windows XP'),
(2, 'Windows Vista'),
(3, 'MacOsX'),
(4, 'Linux');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_orders`
--

DROP TABLE IF EXISTS `ps_orders`;
CREATE TABLE IF NOT EXISTS `ps_orders` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `shipping_number` varchar(32) DEFAULT NULL,
  `total_discounts` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_real` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `invoice_number` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_number` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_orders`
--

INSERT INTO `ps_orders` (`id_order`, `id_carrier`, `id_lang`, `id_customer`, `id_cart`, `id_currency`, `id_address_delivery`, `id_address_invoice`, `secure_key`, `payment`, `conversion_rate`, `module`, `recyclable`, `gift`, `gift_message`, `shipping_number`, `total_discounts`, `total_paid`, `total_paid_real`, `total_products`, `total_products_wt`, `total_shipping`, `carrier_tax_rate`, `total_wrapping`, `invoice_number`, `delivery_number`, `invoice_date`, `delivery_date`, `valid`, `date_add`, `date_upd`) VALUES
(1, 2, 2, 1, 1, 1, 2, 2, '47ce86627c1f3c792a80773c5d2deaf8', 'Chèque', 1.000000, 'cheque', 0, 0, NULL, NULL, 0.00, 625.98, 625.98, 516.72, 618.00, 7.98, 0.000, 0.00, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2011-09-05 03:03:32', '2011-09-05 03:03:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_detail`
--

DROP TABLE IF EXISTS `ps_order_detail`;
CREATE TABLE IF NOT EXISTS `ps_order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` float NOT NULL,
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ps_order_detail`
--

INSERT INTO `ps_order_detail` (`id_order_detail`, `id_order`, `product_id`, `product_attribute_id`, `product_name`, `product_quantity`, `product_quantity_in_stock`, `product_quantity_refunded`, `product_quantity_return`, `product_quantity_reinjected`, `product_price`, `reduction_percent`, `reduction_amount`, `group_reduction`, `product_quantity_discount`, `product_ean13`, `product_upc`, `product_reference`, `product_supplier_reference`, `product_weight`, `tax_name`, `tax_rate`, `ecotax`, `ecotax_tax_rate`, `discount_quantity_applied`, `download_hash`, `download_nb`, `download_deadline`) VALUES
(1, 1, 7, 23, 'iPod touch - Capacité: 32Go', 1, 0, 0, 0, 0, 392.140500, 0.00, 0.000000, 0.00, 0.000000, NULL, NULL, NULL, NULL, 0, 'TVA 19.6%', 19.600, 0.000000, 0.000, 0, NULL, 0, '0000-00-00 00:00:00'),
(2, 1, 9, 0, 'Écouteurs à isolation sonore Shure SE210', 1, 0, 0, 0, 0, 124.581900, 0.00, 0.000000, 0.00, 0.000000, NULL, NULL, NULL, NULL, 0, 'TVA 19.6%', 19.600, 0.000000, 0.000, 0, NULL, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_discount`
--

DROP TABLE IF EXISTS `ps_order_discount`;
CREATE TABLE IF NOT EXISTS `ps_order_discount` (
  `id_order_discount` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_discount` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id_order_discount`),
  KEY `order_discount_order` (`id_order`),
  KEY `id_discount` (`id_discount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_history`
--

DROP TABLE IF EXISTS `ps_order_history`;
CREATE TABLE IF NOT EXISTS `ps_order_history` (
  `id_order_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_order_history`
--

INSERT INTO `ps_order_history` (`id_order_history`, `id_employee`, `id_order`, `id_order_state`, `date_add`) VALUES
(1, 0, 1, 1, '2011-09-05 03:03:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_message`
--

DROP TABLE IF EXISTS `ps_order_message`;
CREATE TABLE IF NOT EXISTS `ps_order_message` (
  `id_order_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_order_message`
--

INSERT INTO `ps_order_message` (`id_order_message`, `date_add`) VALUES
(1, '2011-09-05 03:03:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_message_lang`
--

DROP TABLE IF EXISTS `ps_order_message_lang`;
CREATE TABLE IF NOT EXISTS `ps_order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_order_message_lang`
--

INSERT INTO `ps_order_message_lang` (`id_order_message`, `id_lang`, `name`, `message`) VALUES
(1, 1, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(1, 2, 'Délai', 'Bonjour,\n\nUn des éléments de votre commande est actuellement en réapprovisionnement, ce qui peut légèrement retarder son envoi.\n\nMerci de votre compréhension.\n\nCordialement,'),
(1, 3, 'Plazo', 'Hola,\n\nUno de los elementos de su solicitud se encuentra actualmente la reposición, el cual poco puede retrasar el envío.\n\nGracias por su comprensión.\n\nSaludos cordiales,'),
(1, 4, 'Frist', 'Hi,\n\nLeider ist einer der Artikel aus Ihrer Bestellung momentan nicht auf Lager. Dies kann zu einer leichten Lieferverzögerung führen. Wir entschuldigen uns hierfür und bemühen uns schnellstens um Abhilfe.\n\nMit freundlichen Grüßen,'),
(1, 5, 'Ritardo', 'Salve,\n\npurtroppo un articolo che hai ordinato non è al momento in magazzino. Questo potrebbe provocare un leggero ritardo nella consegna.\nTi preghiamo di scusarci; ci stiamo organizzando per ovviare a questo inconveniente.\n\nCordialmente,'),
(1, 6, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(1, 7, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(1, 8, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_return`
--

DROP TABLE IF EXISTS `ps_order_return`;
CREATE TABLE IF NOT EXISTS `ps_order_return` (
  `id_order_return` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_return_detail`
--

DROP TABLE IF EXISTS `ps_order_return_detail`;
CREATE TABLE IF NOT EXISTS `ps_order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_return_state`
--

DROP TABLE IF EXISTS `ps_order_return_state`;
CREATE TABLE IF NOT EXISTS `ps_order_return_state` (
  `id_order_return_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ps_order_return_state`
--

INSERT INTO `ps_order_return_state` (`id_order_return_state`, `color`) VALUES
(1, '#ADD8E6'),
(2, '#EEDDFF'),
(3, '#DDFFAA'),
(4, '#FFD3D3'),
(5, '#FFFFBB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_return_state_lang`
--

DROP TABLE IF EXISTS `ps_order_return_state_lang`;
CREATE TABLE IF NOT EXISTS `ps_order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `order_state_lang_index` (`id_order_return_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_order_return_state_lang`
--

INSERT INTO `ps_order_return_state_lang` (`id_order_return_state`, `id_lang`, `name`) VALUES
(1, 1, 'Waiting for confirmation'),
(1, 2, 'En attente de confirmation'),
(1, 3, 'Pendiente de confirmación'),
(1, 4, 'Bestätigung wird erwartet'),
(1, 5, 'In attesa di conferma'),
(1, 6, 'Waiting for confirmation'),
(1, 7, 'Waiting for confirmation'),
(1, 8, 'Waiting for confirmation'),
(2, 1, 'Waiting for package'),
(2, 2, 'En attente du colis'),
(2, 3, 'En espera de paquetes'),
(2, 4, 'Paket wird erwartet'),
(2, 5, 'In attesa del pacco'),
(2, 6, 'Waiting for package'),
(2, 7, 'Waiting for package'),
(2, 8, 'Waiting for package'),
(3, 1, 'Package received'),
(3, 2, 'Colis reçu'),
(3, 3, 'Paquetes recibidos'),
(3, 4, 'Paket erhalten'),
(3, 5, 'Pacco ricevuto'),
(3, 6, 'Package received'),
(3, 7, 'Package received'),
(3, 8, 'Package received'),
(4, 1, 'Return denied'),
(4, 2, 'Retour refusé'),
(4, 3, 'Volver negó'),
(4, 4, 'Rücksendung abgelehnt'),
(4, 5, 'Restituzione non accettata'),
(4, 6, 'Return denied'),
(4, 7, 'Return denied'),
(4, 8, 'Return denied'),
(5, 1, 'Return completed'),
(5, 2, 'Retour terminé'),
(5, 3, 'Diligenciados'),
(5, 4, 'Rücksendung beendet'),
(5, 5, 'Restituzione terminata'),
(5, 6, 'Return completed'),
(5, 7, 'Return completed'),
(5, 8, 'Return completed');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_slip`
--

DROP TABLE IF EXISTS `ps_order_slip`;
CREATE TABLE IF NOT EXISTS `ps_order_slip` (
  `id_order_slip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_slip_detail`
--

DROP TABLE IF EXISTS `ps_order_slip_detail`;
CREATE TABLE IF NOT EXISTS `ps_order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_slip`,`id_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_state`
--

DROP TABLE IF EXISTS `ps_order_state`;
CREATE TABLE IF NOT EXISTS `ps_order_state` (
  `id_order_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint(1) unsigned DEFAULT '0',
  `send_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `ps_order_state`
--

INSERT INTO `ps_order_state` (`id_order_state`, `invoice`, `send_email`, `color`, `unremovable`, `hidden`, `logable`, `delivery`) VALUES
(1, 0, 1, 'lightblue', 1, 0, 0, 0),
(2, 1, 1, '#DDEEFF', 1, 0, 1, 0),
(3, 1, 1, '#FFDD99', 1, 0, 1, 1),
(4, 1, 1, '#EEDDFF', 1, 0, 1, 1),
(5, 1, 0, '#DDFFAA', 1, 0, 1, 1),
(6, 0, 1, '#DADADA', 1, 0, 0, 0),
(7, 1, 1, '#FFFFBB', 1, 0, 0, 0),
(8, 0, 1, '#FFDFDF', 1, 0, 0, 0),
(9, 1, 1, '#FFD3D3', 1, 0, 0, 0),
(10, 0, 1, 'lightblue', 1, 0, 0, 0),
(11, 0, 0, 'lightblue', 1, 0, 0, 0),
(12, 0, 0, 'lightblue', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_order_state_lang`
--

DROP TABLE IF EXISTS `ps_order_state_lang`;
CREATE TABLE IF NOT EXISTS `ps_order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  UNIQUE KEY `order_state_lang_index` (`id_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_order_state_lang`
--

INSERT INTO `ps_order_state_lang` (`id_order_state`, `id_lang`, `name`, `template`) VALUES
(1, 1, 'Awaiting cheque payment', 'cheque'),
(1, 2, 'En attente du paiement par chèque', 'cheque'),
(1, 3, 'En espera de pago por cheque', 'cheque'),
(1, 4, 'Scheckzahlung wird erwartet', 'cheque'),
(1, 5, 'In attesa di pagamento con assegno', 'cheque'),
(1, 6, 'Awaiting cheque payment', 'cheque'),
(1, 7, 'Awaiting cheque payment', 'cheque'),
(1, 8, 'Awaiting cheque payment', 'cheque'),
(2, 1, 'Payment accepted', 'payment'),
(2, 2, 'Paiement accepté', 'payment'),
(2, 3, 'Pago aceptamos', 'payment'),
(2, 4, 'Zahlung eingegangen', 'payment'),
(2, 5, 'Pagamento accettato', 'payment'),
(2, 6, 'Payment accepted', 'payment'),
(2, 7, 'Payment accepted', 'payment'),
(2, 8, 'Payment accepted', 'payment'),
(3, 1, 'Preparation in progress', 'preparation'),
(3, 2, 'Préparation en cours', 'preparation'),
(3, 3, 'Preparación en curso', 'preparation'),
(3, 4, 'Bestellung eingegangen', 'preparation'),
(3, 5, 'Preparazione in corso', 'preparation'),
(3, 6, 'Preparation in progress', 'preparation'),
(3, 7, 'Preparation in progress', 'preparation'),
(3, 8, 'Preparation in progress', 'preparation'),
(4, 1, 'Shipped', 'shipped'),
(4, 2, 'En cours de livraison', 'shipped'),
(4, 3, 'Enviado', 'shipped'),
(4, 4, 'Versendet', 'shipped'),
(4, 5, 'Consegna in corso', 'shipped'),
(4, 6, 'Shipped', 'shipped'),
(4, 7, 'Shipped', 'shipped'),
(4, 8, 'Shipped', 'shipped'),
(5, 1, 'Delivered', ''),
(5, 2, 'Livré', ''),
(5, 3, 'Entregado', ''),
(5, 4, 'Erfolgreich abgeschlossen', ''),
(5, 5, 'Consegnato', ''),
(5, 6, 'Delivered', ''),
(5, 7, 'Delivered', ''),
(5, 8, 'Delivered', ''),
(6, 1, 'Canceled', 'order_canceled'),
(6, 2, 'Annulé', 'order_canceled'),
(6, 3, 'Cancelada', 'order_canceled'),
(6, 4, 'Storniert', 'order_canceled'),
(6, 5, 'Annullato', 'order_canceled'),
(6, 6, 'Canceled', 'order_canceled'),
(6, 7, 'Canceled', 'order_canceled'),
(6, 8, 'Canceled', 'order_canceled'),
(7, 1, 'Refund', 'refund'),
(7, 2, 'Remboursé', 'refund'),
(7, 3, 'Reembolsado', 'refund'),
(7, 4, 'Erstattet', 'refund'),
(7, 5, 'Rimborsato', 'refund'),
(7, 6, 'Refund', 'refund'),
(7, 7, 'Refund', 'refund'),
(7, 8, 'Refund', 'refund'),
(8, 1, 'Payment error', 'payment_error'),
(8, 2, 'Erreur de paiement', 'payment_error'),
(8, 3, 'Error de pago', 'payment_error'),
(8, 4, 'Fehler bei der Bezahlung', 'payment_error'),
(8, 5, 'Errore di pagamento', 'payment_error'),
(8, 6, 'Payment error', 'payment_error'),
(8, 7, 'Payment error', 'payment_error'),
(8, 8, 'Payment error', 'payment_error'),
(9, 1, 'On backorder', 'outofstock'),
(9, 2, 'En attente de réapprovisionnement', 'outofstock'),
(9, 3, 'Productos fuera de línea', 'outofstock'),
(9, 4, 'Artikel erwartet', 'outofstock'),
(9, 5, 'In attesa di rifornimento', 'outofstock'),
(9, 6, 'On backorder', 'outofstock'),
(9, 7, 'On backorder', 'outofstock'),
(9, 8, 'On backorder', 'outofstock'),
(10, 1, 'Awaiting bank wire payment', 'bankwire'),
(10, 2, 'En attente du paiement par virement bancaire', 'bankwire'),
(10, 3, 'En espera de pago por transferencia bancaria', 'bankwire'),
(10, 4, 'Warten auf Zahlungseingang', 'bankwire'),
(10, 5, 'In attesa di pagamento con bonifico bancario', 'bankwire'),
(10, 6, 'Awaiting bank wire payment', 'bankwire'),
(10, 7, 'Awaiting bank wire payment', 'bankwire'),
(10, 8, 'Awaiting bank wire payment', 'bankwire'),
(11, 1, 'Awaiting PayPal payment', ''),
(11, 2, 'En attente du paiement par PayPal', ''),
(11, 3, 'En espera de pago por PayPal', ''),
(11, 4, 'Warten auf Zahlungseingang von PayPal', ''),
(11, 5, 'In attesa di pagamento con PayPal', ''),
(11, 6, 'Awaiting PayPal payment', ''),
(11, 7, 'Awaiting PayPal payment', ''),
(11, 8, 'Awaiting PayPal payment', ''),
(12, 1, 'Payment remotely accepted', ''),
(12, 2, 'Paiement à distance accepté', ''),
(12, 3, 'Payment remotely accepted', ''),
(12, 4, 'Payment Anmeldung erfolgreich', ''),
(12, 5, 'Payment remotely accepted', ''),
(12, 6, 'Payment remotely accepted', ''),
(12, 7, 'Payment remotely accepted', ''),
(12, 8, 'Payment remotely accepted', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_pack`
--

DROP TABLE IF EXISTS `ps_pack`;
CREATE TABLE IF NOT EXISTS `ps_pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_page`
--

DROP TABLE IF EXISTS `ps_page`;
CREATE TABLE IF NOT EXISTS `ps_page` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=144 ;

--
-- Volcado de datos para la tabla `ps_page`
--

INSERT INTO `ps_page` (`id_page`, `id_page_type`, `id_object`) VALUES
(1, 15, NULL),
(2, 2, 3),
(3, 16, NULL),
(4, 17, NULL),
(5, 2, 4),
(6, 2, 2),
(7, 2, 8),
(8, 1, 1),
(9, 1, 2),
(10, 2, 5),
(11, 4, 3),
(12, 18, NULL),
(13, 1, 7),
(14, 2, 9),
(15, 2, 11),
(16, 19, NULL),
(17, 20, NULL),
(18, 2, 55),
(19, 2, 56),
(20, 2, 12),
(21, 2, 16),
(22, 3, 1),
(23, 2, 13),
(24, 3, 0),
(25, 21, NULL),
(26, 22, NULL),
(27, 23, NULL),
(28, 2, 21),
(29, 2, 59),
(30, 2, 32),
(31, 2, 37),
(32, 2, 26),
(33, 2, 14),
(34, 2, 18),
(35, 2, 50),
(36, 2, 43),
(37, 2, 57),
(38, 2, 31),
(39, 1, 10),
(40, 2, 29),
(41, 2, 30),
(42, 2, 25),
(43, 24, NULL),
(44, 2, 68),
(45, 2, 67),
(46, 2, 19),
(47, 2, 20),
(48, 2, 27),
(49, 2, 7),
(50, 25, NULL),
(51, 2, 65),
(52, 2, 28),
(53, 2, 33),
(54, 2, 58),
(55, 2, 46),
(56, 2, 44),
(57, 2, 62),
(58, 2, 54),
(59, 2, 63),
(60, 2, 41),
(61, 4, 0),
(62, 2, 61),
(63, 2, 34),
(64, 2, 45),
(65, 2, 35),
(66, 2, 66),
(67, 2, 48),
(68, 2, 10),
(69, 2, 38),
(70, 2, 23),
(71, 2, 24),
(72, 2, 42),
(73, 2, 60),
(74, 2, 52),
(75, 2, 6),
(76, 2, 17),
(77, 2, 64),
(78, 2, 40),
(79, 2, 51),
(80, 2, 49),
(81, 2, 36),
(82, 2, 53),
(83, 2, 39),
(84, 2, 47),
(85, 2, 22),
(86, 1, 11),
(87, 26, NULL),
(88, 27, NULL),
(89, 28, NULL),
(90, 29, NULL),
(91, 1, 22),
(92, 2, 69),
(93, 2, 79),
(94, 2, 78),
(95, 2, 76),
(96, 2, 70),
(97, 2, 77),
(98, 2, 74),
(99, 2, 75),
(100, 2, 116),
(101, 1, 13),
(102, 1, 14),
(103, 2, 96),
(104, 2, 86),
(105, 2, 92),
(106, 2, 110),
(107, 2, 100),
(108, 2, 101),
(109, 2, 98),
(110, 2, 87),
(111, 2, 91),
(112, 2, 106),
(113, 2, 82),
(114, 2, 94),
(115, 2, 90),
(116, 2, 108),
(117, 2, 102),
(118, 2, 81),
(119, 2, 112),
(120, 2, 93),
(121, 2, 84),
(122, 2, 88),
(123, 2, 111),
(124, 2, 89),
(125, 2, 109),
(126, 2, 83),
(127, 2, 114),
(128, 2, 107),
(129, 2, 104),
(130, 2, 105),
(131, 2, 85),
(132, 2, 113),
(133, 2, 99),
(134, 2, 80),
(135, 2, 103),
(136, 2, 95),
(137, 1, 15),
(138, 2, 97),
(139, 1, 12),
(140, 30, NULL),
(141, 31, NULL),
(142, 32, NULL),
(143, 33, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_pagenotfound`
--

DROP TABLE IF EXISTS `ps_pagenotfound`;
CREATE TABLE IF NOT EXISTS `ps_pagenotfound` (
  `id_pagenotfound` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_pagenotfound`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=755 ;

--
-- Volcado de datos para la tabla `ps_pagenotfound`
--

INSERT INTO `ps_pagenotfound` (`id_pagenotfound`, `request_uri`, `http_referer`, `date_add`) VALUES
(1, '/page-not-found', '', '2011-09-05 03:26:50'),
(2, '/page-not-found', '', '2011-09-05 03:27:02'),
(3, '/en/page-not-found', '', '2011-09-06 03:46:13'),
(4, '/en/page-not-found', '', '2011-09-06 10:10:00'),
(5, '/en/page-not-found', '', '2011-09-06 10:10:01'),
(6, '/en/page-not-found', '', '2011-09-06 10:10:03'),
(7, '/en/page-not-found', '', '2011-09-07 02:07:37'),
(8, '/en/page-not-found', '', '2011-09-08 09:16:30'),
(9, '/en/page-not-found', '', '2011-09-08 09:17:10'),
(10, '/en/page-not-found', '', '2011-09-08 10:24:19'),
(11, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=75beebe3c886d536f021c8725e80c5d8', '2011-09-08 13:28:45'),
(12, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&conf=13&token=75beebe3c886d536f021c8725e80c5d8&tab_module=advertising_marketing&module_name=blockadvertising', '2011-09-08 13:39:33'),
(13, '/en/page-not-found', '', '2011-09-08 14:40:15'),
(14, '/en/page-not-found', '', '2011-09-08 14:40:16'),
(15, '/en/page-not-found', '', '2011-09-08 14:40:22'),
(16, '/en/page-not-found', '', '2011-09-08 14:40:32'),
(17, '/en/page-not-found', '', '2011-09-08 14:40:38'),
(18, '/en/page-not-found', '', '2011-09-09 01:01:37'),
(19, '/en/page-not-found', '', '2011-09-09 01:27:47'),
(20, '/en/page-not-found', '', '2011-09-09 07:39:07'),
(21, '/en/page-not-found', '', '2011-09-09 07:39:26'),
(22, '/en/page-not-found', '', '2011-09-09 07:39:27'),
(23, '/en/page-not-found', '', '2011-09-12 02:16:17'),
(24, '/en/page-not-found', '', '2011-09-12 02:16:21'),
(25, '/en/page-not-found', '', '2011-09-12 02:16:22'),
(26, '/en/page-not-found', '', '2011-09-12 02:16:24'),
(27, '/en/page-not-found', '', '2011-09-12 02:16:31'),
(28, '/en/page-not-found', '', '2011-09-12 02:16:34'),
(29, '/en/page-not-found', '', '2011-09-12 04:11:25'),
(30, '/en/page-not-found', '', '2011-09-12 04:12:00'),
(31, '/en/page-not-found', '', '2011-09-12 04:12:25'),
(32, '/en/page-not-found', '', '2011-09-12 06:31:45'),
(33, '/da/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=75beebe3c886d536f021c8725e80c5d8', '2011-09-12 06:38:45'),
(34, '/en/page-not-found', '', '2011-09-12 10:26:13'),
(35, '/en/page-not-found', '', '2011-09-12 10:31:51'),
(36, '/en/page-not-found', '', '2011-09-12 11:14:05'),
(37, '/en/page-not-found', '', '2011-09-12 11:18:25'),
(38, '/en/page-not-found', '', '2011-09-12 12:12:44'),
(39, '/en/page-not-found', '', '2011-09-12 15:07:08'),
(40, '/en/page-not-found', '', '2011-09-12 15:07:20'),
(41, '/en/page-not-found', '', '2011-09-13 01:06:11'),
(42, '/en/page-not-found', '', '2011-09-13 05:00:34'),
(43, '/en/page-not-found', '', '2011-09-13 05:00:37'),
(44, '/en/page-not-found', '', '2011-09-13 05:54:56'),
(45, '/en/page-not-found', '', '2011-09-13 08:31:14'),
(46, '/en/page-not-found', '', '2011-09-13 09:41:20'),
(47, '/en/page-not-found', '', '2011-09-13 09:43:03'),
(48, '/en/page-not-found', '', '2011-09-13 10:35:46'),
(49, '/en/page-not-found', '', '2011-09-13 12:24:38'),
(50, '/en/page-not-found', '', '2011-09-13 12:24:55'),
(51, '/en/page-not-found', '', '2011-09-13 13:13:16'),
(52, '/en/page-not-found', '', '2011-09-13 14:54:09'),
(53, '/en/page-not-found', '', '2011-09-13 14:57:22'),
(54, '/en/page-not-found', '', '2011-09-13 15:33:50'),
(55, '/en/page-not-found', '', '2011-09-13 16:36:51'),
(56, '/en/page-not-found', '', '2011-09-13 17:04:49'),
(57, '/en/page-not-found', '', '2011-09-13 17:05:23'),
(58, '/en/page-not-found', '', '2011-09-13 18:08:05'),
(59, '/en/page-not-found', '', '2011-09-13 18:38:45'),
(60, '/en/page-not-found', '', '2011-09-13 18:38:52'),
(61, '/en/page-not-found', '', '2011-09-14 00:25:23'),
(62, '/en/page-not-found', '', '2011-09-14 01:50:52'),
(63, '/en/page-not-found', '', '2011-09-14 01:50:57'),
(64, '/en/page-not-found', '', '2011-09-14 01:58:53'),
(65, '/en/page-not-found', '', '2011-09-14 02:09:05'),
(66, '/da/page-not-found', '', '2011-09-14 04:31:27'),
(67, '/en/page-not-found', '', '2011-09-14 08:32:57'),
(68, '/en/page-not-found', '', '2011-09-14 09:13:32'),
(69, '/en/page-not-found', '', '2011-09-14 16:34:01'),
(70, '/en/page-not-found', '', '2011-09-14 16:34:33'),
(71, '/en/page-not-found', '', '2011-09-14 16:46:17'),
(72, '/en/page-not-found', '', '2011-09-14 18:02:07'),
(73, '/en/page-not-found', '', '2011-09-14 18:50:17'),
(74, '/en/page-not-found', '', '2011-09-14 18:50:20'),
(75, '/en/page-not-found', '', '2011-09-14 20:54:17'),
(76, '/en/page-not-found', '', '2011-09-14 21:24:15'),
(77, '/en/page-not-found', '', '2011-09-14 23:55:06'),
(78, '/en/page-not-found', '', '2011-09-15 00:07:30'),
(79, '/en/page-not-found', '', '2011-09-15 01:37:43'),
(80, '/en/page-not-found', '', '2011-09-15 03:29:50'),
(81, '/en/page-not-found', '', '2011-09-15 03:29:53'),
(82, '/en/page-not-found', '', '2011-09-15 08:10:46'),
(83, '/es/pagina-no-encuentra', '', '2011-09-15 08:18:31'),
(84, '/en/page-not-found', '', '2011-09-15 08:18:52'),
(85, '/en/page-not-found', '', '2011-09-15 08:20:28'),
(86, '/en/page-not-found', '', '2011-09-15 08:20:53'),
(87, '/en/page-not-found', '', '2011-09-15 08:25:06'),
(88, '/en/page-not-found', '', '2011-09-15 08:25:08'),
(89, '/en/page-not-found', '', '2011-09-15 09:12:09'),
(90, '/en/page-not-found', '', '2011-09-15 09:12:25'),
(91, '/en/page-not-found', '', '2011-09-15 17:45:56'),
(92, '/en/page-not-found', '', '2011-09-15 18:21:20'),
(93, '/en/page-not-found', '', '2011-09-15 21:03:23'),
(94, '/en/page-not-found', '', '2011-09-15 21:39:47'),
(95, '/en/page-not-found', '', '2011-09-15 21:39:57'),
(96, '/en/page-not-found', '', '2011-09-16 01:02:25'),
(97, '/en/page-not-found', '', '2011-09-16 02:24:32'),
(98, '/en/page-not-found', '', '2011-09-16 02:25:36'),
(99, '/en/page-not-found', '', '2011-09-16 02:34:24'),
(100, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&conf=5&token=78260e1cce35eae781847c4672df4d20&tab_module=Home&module_name=piscesslider', '2011-09-16 03:46:56'),
(101, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=78260e1cce35eae781847c4672df4d20', '2011-09-16 03:48:03'),
(102, '/en/page-not-found', '', '2011-09-16 03:49:10'),
(103, '/en/page-not-found', '', '2011-09-16 07:16:43'),
(104, '/en/page-not-found', '', '2011-09-16 07:28:35'),
(105, '/en/page-not-found', '', '2011-09-16 08:35:42'),
(106, '/en/page-not-found', '', '2011-09-16 08:55:35'),
(107, '/en/page-not-found', '', '2011-09-16 08:55:37'),
(108, '/en/page-not-found', '', '2011-09-16 10:01:06'),
(109, '/en/page-not-found', '', '2011-09-16 11:34:21'),
(110, '/en/page-not-found', '', '2011-09-16 11:41:43'),
(111, '/en/page-not-found', '', '2011-09-16 11:41:57'),
(112, '/en/page-not-found', '', '2011-09-16 12:19:03'),
(113, '/en/page-not-found', '', '2011-09-17 04:15:51'),
(114, '/en/page-not-found', '', '2011-09-17 04:16:16'),
(115, '/en/page-not-found', '', '2011-09-17 04:18:24'),
(116, '/en/page-not-found', '', '2011-09-17 04:42:57'),
(117, '/en/page-not-found', '', '2011-09-17 04:50:46'),
(118, '/en/page-not-found', '', '2011-09-17 06:30:45'),
(119, '/en/page-not-found', '', '2011-09-17 06:31:03'),
(120, '/en/page-not-found', '', '2011-09-17 06:31:08'),
(121, '/en/page-not-found', '', '2011-09-17 09:17:38'),
(122, '/en/page-not-found', '', '2011-09-17 09:29:51'),
(123, '/en/page-not-found', '', '2011-09-17 09:29:53'),
(124, '/en/page-not-found', '', '2011-09-17 09:29:55'),
(125, '/en/page-not-found', '', '2011-09-17 09:29:57'),
(126, '/en/page-not-found', '', '2011-09-18 07:30:43'),
(127, '/en/page-not-found', '', '2011-09-18 10:28:22'),
(128, '/en/page-not-found', '', '2011-09-18 11:02:28'),
(129, '/en/page-not-found', '', '2011-09-18 12:20:34'),
(130, '/en/page-not-found', '', '2011-09-18 12:20:35'),
(131, '/en/page-not-found', '', '2011-09-18 12:20:36'),
(132, '/en/page-not-found', '', '2011-09-18 12:20:37'),
(133, '/en/page-not-found', '', '2011-09-18 12:22:57'),
(134, '/da/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-18 12:23:21'),
(135, '/en/page-not-found', '', '2011-09-18 18:24:45'),
(136, '/en/page-not-found', '', '2011-09-18 19:33:23'),
(137, '/en/page-not-found', '', '2011-09-18 19:43:48'),
(138, '/en/page-not-found', '', '2011-09-19 00:57:11'),
(139, '/en/page-not-found', '', '2011-09-19 01:43:37'),
(140, '/en/page-not-found', '', '2011-09-19 04:34:11'),
(141, '/en/page-not-found', '', '2011-09-19 04:45:26'),
(142, '/en/page-not-found', '', '2011-09-19 04:55:37'),
(143, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-19 05:39:36'),
(144, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-19 05:39:37'),
(145, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-19 05:40:03'),
(146, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-19 05:40:03'),
(147, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-19 05:43:17'),
(148, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-19 05:43:18'),
(149, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-19 05:43:19'),
(150, '/en/page-not-found', '', '2011-09-19 06:36:50'),
(151, '/en/page-not-found', '', '2011-09-19 06:37:03'),
(152, '/en/page-not-found', '', '2011-09-19 09:11:47'),
(153, '/en/page-not-found', '', '2011-09-19 15:53:57'),
(154, '/en/page-not-found', '', '2011-09-19 17:27:54'),
(155, '/en/page-not-found', '', '2011-09-19 21:19:26'),
(156, '/en/page-not-found', '', '2011-09-20 02:18:00'),
(157, '/en/page-not-found', '', '2011-09-20 02:18:03'),
(158, '/en/page-not-found', '', '2011-09-20 05:46:21'),
(159, '/en/page-not-found', '', '2011-09-20 05:46:22'),
(160, '/en/page-not-found', '', '2011-09-20 05:46:23'),
(161, '/en/page-not-found', '', '2011-09-20 05:46:24'),
(162, '/en/page-not-found', '', '2011-09-20 05:46:26'),
(163, '/en/page-not-found', '', '2011-09-20 05:46:30'),
(164, '/en/page-not-found', '', '2011-09-20 05:46:36'),
(165, '/en/page-not-found', '', '2011-09-20 05:46:42'),
(166, '/en/page-not-found', '', '2011-09-20 05:47:02'),
(167, '/en/page-not-found', '', '2011-09-20 05:47:10'),
(168, '/en/page-not-found', '', '2011-09-20 05:48:00'),
(169, '/en/page-not-found', '', '2011-09-20 05:48:06'),
(170, '/en/page-not-found', '', '2011-09-20 05:48:25'),
(171, '/en/page-not-found', '', '2011-09-20 05:48:28'),
(172, '/en/page-not-found', '', '2011-09-20 05:48:50'),
(173, '/en/page-not-found', '', '2011-09-20 05:48:53'),
(174, '/en/page-not-found', '', '2011-09-20 05:49:19'),
(175, '/en/page-not-found', '', '2011-09-20 05:49:22'),
(176, '/en/page-not-found', '', '2011-09-20 05:49:49'),
(177, '/en/page-not-found', '', '2011-09-20 05:49:51'),
(178, '/en/page-not-found', '', '2011-09-20 05:50:16'),
(179, '/en/page-not-found', '', '2011-09-20 05:50:19'),
(180, '/en/page-not-found', '', '2011-09-20 09:45:04'),
(181, '/en/page-not-found', '', '2011-09-20 10:16:53'),
(182, '/en/page-not-found', '', '2011-09-20 10:16:57'),
(183, '/en/page-not-found', '', '2011-09-20 10:17:02'),
(184, '/en/page-not-found', '', '2011-09-20 10:17:05'),
(185, '/en/page-not-found', '', '2011-09-20 10:17:10'),
(186, '/en/page-not-found', '', '2011-09-20 10:24:37'),
(187, '/en/page-not-found', '', '2011-09-20 10:45:43'),
(188, '/en/page-not-found', '', '2011-09-20 10:45:46'),
(189, '/en/page-not-found', '', '2011-09-20 10:45:52'),
(190, '/en/page-not-found', '', '2011-09-20 10:46:03'),
(191, '/en/page-not-found', '', '2011-09-20 10:47:05'),
(192, '/en/page-not-found', '', '2011-09-20 10:47:08'),
(193, '/en/page-not-found', '', '2011-09-20 10:47:15'),
(194, '/en/page-not-found', '', '2011-09-20 10:47:19'),
(195, '/en/page-not-found', '', '2011-09-20 10:47:39'),
(196, '/en/page-not-found', '', '2011-09-20 10:48:01'),
(197, '/en/page-not-found', '', '2011-09-20 10:49:15'),
(198, '/en/page-not-found', '', '2011-09-20 10:49:21'),
(199, '/en/page-not-found', '', '2011-09-20 10:49:30'),
(200, '/en/page-not-found', '', '2011-09-20 10:49:36'),
(201, '/en/page-not-found', '', '2011-09-20 10:49:40'),
(202, '/en/page-not-found', '', '2011-09-20 10:50:11'),
(203, '/en/page-not-found', '', '2011-09-20 10:50:23'),
(204, '/en/page-not-found', '', '2011-09-20 10:50:31'),
(205, '/en/page-not-found', '', '2011-09-20 10:51:25'),
(206, '/en/page-not-found', '', '2011-09-20 10:51:37'),
(207, '/en/page-not-found', '', '2011-09-20 10:52:43'),
(208, '/en/page-not-found', '', '2011-09-20 10:52:45'),
(209, '/en/page-not-found', '', '2011-09-20 10:52:54'),
(210, '/en/page-not-found', '', '2011-09-20 10:53:07'),
(211, '/en/page-not-found', '', '2011-09-20 10:55:33'),
(212, '/en/page-not-found', '', '2011-09-20 10:55:41'),
(213, '/en/page-not-found', '', '2011-09-20 10:55:45'),
(214, '/en/page-not-found', '', '2011-09-20 10:56:06'),
(215, '/en/page-not-found', '', '2011-09-20 10:56:25'),
(216, '/en/page-not-found', '', '2011-09-20 11:02:08'),
(217, '/en/page-not-found', '', '2011-09-20 11:02:11'),
(218, '/en/page-not-found', '', '2011-09-20 11:02:20'),
(219, '/en/page-not-found', '', '2011-09-20 11:02:26'),
(220, '/en/page-not-found', '', '2011-09-20 11:02:41'),
(221, '/en/page-not-found', '', '2011-09-20 11:03:11'),
(222, '/en/page-not-found', '', '2011-09-20 11:03:34'),
(223, '/en/page-not-found', '', '2011-09-20 11:07:45'),
(224, '/en/page-not-found', '', '2011-09-20 11:07:57'),
(225, '/en/page-not-found', '', '2011-09-20 11:08:01'),
(226, '/en/page-not-found', '', '2011-09-20 11:08:15'),
(227, '/en/page-not-found', '', '2011-09-20 11:08:21'),
(228, '/en/page-not-found', '', '2011-09-20 11:08:42'),
(229, '/en/page-not-found', '', '2011-09-20 11:09:23'),
(230, '/en/page-not-found', '', '2011-09-20 11:09:42'),
(231, '/en/page-not-found', '', '2011-09-20 11:09:52'),
(232, '/en/page-not-found', '', '2011-09-20 11:10:11'),
(233, '/en/page-not-found', '', '2011-09-20 11:10:18'),
(234, '/en/page-not-found', '', '2011-09-20 11:10:31'),
(235, '/en/page-not-found', '', '2011-09-20 11:10:45'),
(236, '/en/page-not-found', '', '2011-09-20 11:10:58'),
(237, '/en/page-not-found', '', '2011-09-20 11:11:16'),
(238, '/en/page-not-found', '', '2011-09-20 11:11:38'),
(239, '/en/page-not-found', '', '2011-09-20 11:11:41'),
(240, '/en/page-not-found', '', '2011-09-20 11:17:40'),
(241, '/en/page-not-found', '', '2011-09-20 11:17:47'),
(242, '/en/page-not-found', '', '2011-09-20 11:18:04'),
(243, '/en/page-not-found', '', '2011-09-20 11:18:09'),
(244, '/en/page-not-found', '', '2011-09-20 11:18:17'),
(245, '/en/page-not-found', '', '2011-09-20 11:18:29'),
(246, '/en/page-not-found', '', '2011-09-20 11:18:43'),
(247, '/en/page-not-found', '', '2011-09-20 11:18:54'),
(248, '/en/page-not-found', '', '2011-09-20 11:19:00'),
(249, '/en/page-not-found', '', '2011-09-20 11:19:12'),
(250, '/en/page-not-found', '', '2011-09-20 11:19:25'),
(251, '/en/page-not-found', '', '2011-09-20 11:19:33'),
(252, '/en/page-not-found', '', '2011-09-20 11:19:38'),
(253, '/en/page-not-found', '', '2011-09-20 11:19:54'),
(254, '/en/page-not-found', '', '2011-09-20 11:20:01'),
(255, '/en/page-not-found', '', '2011-09-20 11:20:08'),
(256, '/en/page-not-found', '', '2011-09-20 11:20:47'),
(257, '/en/page-not-found', '', '2011-09-20 11:20:49'),
(258, '/en/page-not-found', '', '2011-09-20 11:23:54'),
(259, '/en/page-not-found', '', '2011-09-20 11:23:59'),
(260, '/en/page-not-found', '', '2011-09-20 11:24:12'),
(261, '/en/page-not-found', '', '2011-09-20 11:24:16'),
(262, '/en/page-not-found', '', '2011-09-20 11:24:31'),
(263, '/en/page-not-found', '', '2011-09-20 11:24:35'),
(264, '/en/page-not-found', '', '2011-09-20 11:24:55'),
(265, '/en/page-not-found', '', '2011-09-20 11:24:57'),
(266, '/en/page-not-found', '', '2011-09-20 11:25:30'),
(267, '/en/page-not-found', '', '2011-09-20 11:25:34'),
(268, '/en/page-not-found', '', '2011-09-20 11:34:15'),
(269, '/en/page-not-found', '', '2011-09-20 11:34:20'),
(270, '/en/page-not-found', '', '2011-09-20 11:34:40'),
(271, '/en/page-not-found', '', '2011-09-20 11:34:48'),
(272, '/en/page-not-found', '', '2011-09-20 11:35:04'),
(273, '/en/page-not-found', '', '2011-09-20 11:35:15'),
(274, '/en/page-not-found', '', '2011-09-20 11:35:26'),
(275, '/en/page-not-found', '', '2011-09-20 11:35:41'),
(276, '/en/page-not-found', '', '2011-09-20 11:35:49'),
(277, '/en/page-not-found', '', '2011-09-20 11:36:05'),
(278, '/en/page-not-found', '', '2011-09-20 11:36:16'),
(279, '/en/page-not-found', '', '2011-09-20 11:36:30'),
(280, '/en/page-not-found', '', '2011-09-20 11:36:38'),
(281, '/en/page-not-found', '', '2011-09-20 11:36:47'),
(282, '/en/page-not-found', '', '2011-09-20 11:37:01'),
(283, '/en/page-not-found', '', '2011-09-20 11:37:05'),
(284, '/en/page-not-found', '', '2011-09-20 11:37:18'),
(285, '/en/page-not-found', '', '2011-09-20 11:37:29'),
(286, '/en/page-not-found', '', '2011-09-20 11:37:46'),
(287, '/en/page-not-found', '', '2011-09-20 11:37:49'),
(288, '/en/page-not-found', '', '2011-09-20 11:38:02'),
(289, '/en/page-not-found', '', '2011-09-20 11:38:07'),
(290, '/en/page-not-found', '', '2011-09-20 11:38:16'),
(291, '/en/page-not-found', '', '2011-09-20 11:38:20'),
(292, '/en/page-not-found', '', '2011-09-20 11:38:33'),
(293, '/en/page-not-found', '', '2011-09-20 11:38:40'),
(294, '/en/page-not-found', '', '2011-09-20 11:38:53'),
(295, '/en/page-not-found', '', '2011-09-20 11:38:59'),
(296, '/en/page-not-found', '', '2011-09-20 11:39:26'),
(297, '/en/page-not-found', '', '2011-09-20 11:39:29'),
(298, '/en/page-not-found', '', '2011-09-20 11:42:32'),
(299, '/en/page-not-found', '', '2011-09-20 11:42:49'),
(300, '/en/page-not-found', '', '2011-09-20 11:42:58'),
(301, '/en/page-not-found', '', '2011-09-20 11:43:03'),
(302, '/en/page-not-found', '', '2011-09-20 11:43:07'),
(303, '/en/page-not-found', '', '2011-09-20 11:43:28'),
(304, '/en/page-not-found', '', '2011-09-20 11:43:37'),
(305, '/en/page-not-found', '', '2011-09-20 11:43:49'),
(306, '/en/page-not-found', '', '2011-09-20 11:43:53'),
(307, '/en/page-not-found', '', '2011-09-20 11:43:59'),
(308, '/en/page-not-found', '', '2011-09-20 11:44:12'),
(309, '/en/page-not-found', '', '2011-09-20 11:44:19'),
(310, '/en/page-not-found', '', '2011-09-20 11:44:32'),
(311, '/en/page-not-found', '', '2011-09-20 11:44:36'),
(312, '/en/page-not-found', '', '2011-09-20 11:48:51'),
(313, '/en/page-not-found', '', '2011-09-20 11:49:06'),
(314, '/en/page-not-found', '', '2011-09-20 11:49:20'),
(315, '/en/page-not-found', '', '2011-09-20 11:49:24'),
(316, '/en/page-not-found', '', '2011-09-20 11:49:42'),
(317, '/en/page-not-found', '', '2011-09-20 11:49:49'),
(318, '/en/page-not-found', '', '2011-09-20 11:49:59'),
(319, '/en/page-not-found', '', '2011-09-20 11:50:16'),
(320, '/en/page-not-found', '', '2011-09-20 11:50:25'),
(321, '/en/page-not-found', '', '2011-09-20 11:50:34'),
(322, '/en/page-not-found', '', '2011-09-20 11:50:45'),
(323, '/en/page-not-found', '', '2011-09-20 11:50:51'),
(324, '/en/page-not-found', '', '2011-09-20 11:51:03'),
(325, '/en/page-not-found', '', '2011-09-20 11:51:08'),
(326, '/en/page-not-found', '', '2011-09-20 11:51:23'),
(327, '/en/page-not-found', '', '2011-09-20 11:51:31'),
(328, '/en/page-not-found', '', '2011-09-20 11:51:41'),
(329, '/en/page-not-found', '', '2011-09-20 11:51:45'),
(330, '/en/page-not-found', '', '2011-09-20 11:51:59'),
(331, '/en/page-not-found', '', '2011-09-20 11:52:02'),
(332, '/en/page-not-found', '', '2011-09-20 11:52:27'),
(333, '/en/page-not-found', '', '2011-09-20 12:00:40'),
(334, '/en/page-not-found', '', '2011-09-20 12:00:53'),
(335, '/en/page-not-found', '', '2011-09-20 12:00:58'),
(336, '/en/page-not-found', '', '2011-09-20 12:01:15'),
(337, '/en/page-not-found', '', '2011-09-20 12:01:20'),
(338, '/en/page-not-found', '', '2011-09-20 12:01:29'),
(339, '/en/page-not-found', '', '2011-09-20 12:01:36'),
(340, '/en/page-not-found', '', '2011-09-20 12:01:47'),
(341, '/en/page-not-found', '', '2011-09-20 12:01:57'),
(342, '/en/page-not-found', '', '2011-09-20 12:02:04'),
(343, '/en/page-not-found', '', '2011-09-20 12:02:13'),
(344, '/en/page-not-found', '', '2011-09-20 12:02:21'),
(345, '/en/page-not-found', '', '2011-09-20 12:02:33'),
(346, '/en/page-not-found', '', '2011-09-20 12:02:41'),
(347, '/en/page-not-found', '', '2011-09-20 12:02:50'),
(348, '/en/page-not-found', '', '2011-09-20 12:03:01'),
(349, '/en/page-not-found', '', '2011-09-20 12:03:15'),
(350, '/en/page-not-found', '', '2011-09-20 12:03:26'),
(351, '/en/page-not-found', '', '2011-09-20 12:03:34'),
(352, '/en/page-not-found', '', '2011-09-20 12:04:22'),
(353, '/en/page-not-found', '', '2011-09-20 12:04:28'),
(354, '/en/page-not-found', '', '2011-09-20 12:04:35'),
(355, '/en/page-not-found', '', '2011-09-20 12:04:45'),
(356, '/en/page-not-found', '', '2011-09-20 12:05:04'),
(357, '/en/page-not-found', '', '2011-09-20 12:05:14'),
(358, '/en/page-not-found', '', '2011-09-20 12:05:21'),
(359, '/en/page-not-found', '', '2011-09-20 12:05:33'),
(360, '/en/page-not-found', '', '2011-09-20 12:05:40'),
(361, '/en/page-not-found', '', '2011-09-20 12:05:49'),
(362, '/en/page-not-found', '', '2011-09-20 12:05:54'),
(363, '/en/page-not-found', '', '2011-09-20 12:06:07'),
(364, '/en/page-not-found', '', '2011-09-20 12:06:10'),
(365, '/en/page-not-found', '', '2011-09-20 12:06:29'),
(366, '/en/page-not-found', '', '2011-09-20 12:13:30'),
(367, '/en/page-not-found', '', '2011-09-20 12:13:41'),
(368, '/en/page-not-found', '', '2011-09-20 12:13:50'),
(369, '/en/page-not-found', '', '2011-09-20 12:14:06'),
(370, '/en/page-not-found', '', '2011-09-20 12:14:14'),
(371, '/en/page-not-found', '', '2011-09-20 12:14:17'),
(372, '/en/page-not-found', '', '2011-09-20 12:14:29'),
(373, '/en/page-not-found', '', '2011-09-20 12:14:36'),
(374, '/en/page-not-found', '', '2011-09-20 12:14:50'),
(375, '/en/page-not-found', '', '2011-09-20 12:14:57'),
(376, '/en/page-not-found', '', '2011-09-20 12:15:11'),
(377, '/en/page-not-found', '', '2011-09-20 12:15:16'),
(378, '/en/page-not-found', '', '2011-09-20 12:15:28'),
(379, '/en/page-not-found', '', '2011-09-20 12:15:38'),
(380, '/en/page-not-found', '', '2011-09-20 12:15:46'),
(381, '/en/page-not-found', '', '2011-09-20 12:15:52'),
(382, '/en/page-not-found', '', '2011-09-20 12:16:06'),
(383, '/en/page-not-found', '', '2011-09-20 12:16:11'),
(384, '/en/page-not-found', '', '2011-09-20 12:16:21'),
(385, '/en/page-not-found', '', '2011-09-20 12:16:33'),
(386, '/en/page-not-found', '', '2011-09-20 12:16:45'),
(387, '/en/page-not-found', '', '2011-09-20 12:16:55'),
(388, '/en/page-not-found', '', '2011-09-20 12:17:20'),
(389, '/en/page-not-found', '', '2011-09-20 12:17:28'),
(390, '/en/page-not-found', '', '2011-09-20 12:17:36'),
(391, '/en/page-not-found', '', '2011-09-20 12:18:05'),
(392, '/en/page-not-found', '', '2011-09-20 12:18:13'),
(393, '/en/page-not-found', '', '2011-09-20 12:18:23'),
(394, '/en/page-not-found', '', '2011-09-20 12:18:35'),
(395, '/en/page-not-found', '', '2011-09-20 12:18:38'),
(396, '/en/page-not-found', '', '2011-09-20 15:30:14'),
(397, '/en/page-not-found', '', '2011-09-20 15:59:55'),
(398, '/en/page-not-found', '', '2011-09-21 02:15:43'),
(399, '/en/page-not-found', '', '2011-09-21 02:15:48'),
(400, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=78260e1cce35eae781847c4672df4d20', '2011-09-21 03:51:55'),
(401, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=78260e1cce35eae781847c4672df4d20', '2011-09-21 03:52:37'),
(402, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=78260e1cce35eae781847c4672df4d20', '2011-09-21 03:53:16'),
(403, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 07:30:36'),
(404, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 07:30:39'),
(405, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 07:30:53'),
(406, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-21 07:30:56'),
(407, '/en/page-not-found', '', '2011-09-21 07:35:44'),
(408, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 07:59:14'),
(409, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 07:59:17'),
(410, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 07:59:20'),
(411, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:29:02'),
(412, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:29:05'),
(413, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:29:46'),
(414, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:29:51'),
(415, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:33:19'),
(416, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-21 08:33:22'),
(417, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-21 08:33:25'),
(418, '/en/page-not-found', '', '2011-09-21 08:34:12'),
(419, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-21 08:34:14'),
(420, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-21 08:34:18'),
(421, '/en/page-not-found', '', '2011-09-21 08:34:32'),
(422, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-21 08:34:34'),
(423, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/page-not-found', '2011-09-21 08:34:37'),
(424, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:40:18'),
(425, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:40:21'),
(426, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:41:28'),
(427, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:41:30'),
(428, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:42:19'),
(429, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:42:21'),
(430, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-09-21 08:42:25'),
(431, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/?live_edit&ad=adminYKS&liveToken=9891014c6efea6eb0d9d17c7763f62b7fbd93c02', '2011-09-21 09:16:03'),
(432, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/?live_edit&ad=adminYKS&liveToken=9891014c6efea6eb0d9d17c7763f62b7fbd93c02', '2011-09-21 09:16:11'),
(433, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/?live_edit&ad=adminYKS&liveToken=9891014c6efea6eb0d9d17c7763f62b7fbd93c02', '2011-09-21 09:16:12'),
(434, '/en/page-not-found', '', '2011-09-21 09:27:37'),
(435, '/en/page-not-found', '', '2011-09-21 10:09:56'),
(436, '/en/page-not-found', '', '2011-09-21 16:00:51'),
(437, '/en/page-not-found', '', '2011-09-21 16:34:59'),
(438, '/en/page-not-found', '', '2011-09-21 19:38:11'),
(439, '/en/page-not-found', '', '2011-09-21 19:38:14'),
(440, '/en/page-not-found', '', '2011-09-21 19:39:16'),
(441, '/en/page-not-found', '', '2011-09-22 00:51:56'),
(442, '/en/page-not-found', '', '2011-09-22 01:38:29'),
(443, '/en/page-not-found', '', '2011-09-22 02:31:55'),
(444, '/en/page-not-found', '', '2011-09-22 04:05:24'),
(445, '/en/page-not-found', '', '2011-09-22 04:05:32'),
(446, '/en/page-not-found', '', '2011-09-22 04:48:09'),
(447, '/en/page-not-found', '', '2011-09-22 05:01:14'),
(448, '/en/page-not-found', '', '2011-09-22 16:48:22'),
(449, '/en/page-not-found', '', '2011-09-22 22:56:09'),
(450, '/en/page-not-found', '', '2011-09-23 01:55:28'),
(451, '/en/page-not-found', '', '2011-09-23 02:16:25'),
(452, '/en/page-not-found', '', '2011-09-23 02:35:04'),
(453, '/en/page-not-found', '', '2011-09-23 04:07:50'),
(454, '/en/page-not-found', '', '2011-09-23 04:48:45'),
(455, '/en/page-not-found', '', '2011-09-23 10:50:16'),
(456, '/en/page-not-found', '', '2011-09-23 14:10:41'),
(457, '/en/page-not-found', '', '2011-09-23 16:52:14'),
(458, '/en/page-not-found', '', '2011-09-23 22:31:15'),
(459, '/en/page-not-found', '', '2011-09-23 23:01:53'),
(460, '/en/page-not-found', '', '2011-09-24 04:14:30'),
(461, '/en/page-not-found', '', '2011-09-24 04:57:18'),
(462, '/en/page-not-found', '', '2011-09-24 06:15:45'),
(463, '/en/page-not-found', '', '2011-09-24 06:15:49'),
(464, '/en/page-not-found', '', '2011-09-24 12:35:02'),
(465, '/en/page-not-found', '', '2011-09-24 12:44:28'),
(466, '/en/page-not-found', '', '2011-09-25 01:18:15'),
(467, '/en/page-not-found', '', '2011-09-26 01:19:43'),
(468, '/en/page-not-found', '', '2011-09-26 16:29:57'),
(469, '/en/page-not-found', '', '2011-09-26 16:31:22'),
(470, '/en/page-not-found', '', '2011-09-27 09:43:28'),
(471, '/en/page-not-found', '', '2011-09-27 09:43:38'),
(472, '/en/page-not-found', '', '2011-09-29 05:26:55'),
(473, '/en/page-not-found', '', '2011-09-29 05:27:43'),
(474, '/en/page-not-found', '', '2011-09-29 06:04:39'),
(475, '/en/page-not-found', '', '2011-09-29 06:05:33'),
(476, '/en/page-not-found', '', '2011-09-29 06:05:48'),
(477, '/en/page-not-found', '', '2011-09-29 06:05:50'),
(478, '/en/page-not-found', '', '2011-09-29 06:08:17'),
(479, '/en/page-not-found', '', '2011-09-29 06:36:16'),
(480, '/en/page-not-found', '', '2011-09-30 11:45:30'),
(481, '/en/page-not-found', '', '2011-09-30 11:45:32'),
(482, '/en/page-not-found', '', '2011-09-30 11:58:27'),
(483, '/en/page-not-found', '', '2011-09-30 11:58:29'),
(484, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminThemes&token=0c099cebd0ed7c83fd1c4872aa98bb7b', '2011-09-30 13:25:43'),
(485, '/en/page-not-found', '', '2011-10-01 01:06:57'),
(486, '/en/page-not-found', '', '2011-10-02 02:08:28'),
(487, '/en/page-not-found', '', '2011-10-02 02:08:47'),
(488, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=78260e1cce35eae781847c4672df4d20&tab_module=advertising_marketing&module_name=blockadvertising', '2011-10-02 04:31:08'),
(489, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=78260e1cce35eae781847c4672df4d20&tab_module=advertising_marketing&module_name=blockadvertising', '2011-10-02 04:31:09'),
(490, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=78260e1cce35eae781847c4672df4d20', '2011-10-02 04:31:28'),
(491, '/en/page-not-found', '', '2011-10-02 05:01:42'),
(492, '/en/page-not-found', '', '2011-10-02 05:18:31'),
(493, '/en/page-not-found', '', '2011-10-02 09:21:11'),
(494, '/en/page-not-found', '', '2011-10-02 12:27:51'),
(495, '/en/page-not-found', '', '2011-10-02 13:58:01'),
(496, '/en/page-not-found', '', '2011-10-03 08:48:15'),
(497, '/en/page-not-found', '', '2011-10-03 09:01:43'),
(498, '/en/page-not-found', '', '2011-10-03 09:01:43'),
(499, '/en/page-not-found', '', '2011-10-03 09:01:44'),
(500, '/en/page-not-found', '', '2011-10-03 09:01:45'),
(501, '/en/page-not-found', '', '2011-10-03 09:01:47'),
(502, '/en/page-not-found', '', '2011-10-03 09:01:48'),
(503, '/en/page-not-found', '', '2011-10-03 09:01:51'),
(504, '/en/page-not-found', '', '2011-10-03 09:02:06'),
(505, '/en/page-not-found', '', '2011-10-03 09:02:17'),
(506, '/en/page-not-found', '', '2011-10-03 09:02:18'),
(507, '/en/page-not-found', '', '2011-10-03 09:02:31'),
(508, '/en/page-not-found', '', '2011-10-03 09:02:37'),
(509, '/en/page-not-found', '', '2011-10-03 09:04:16'),
(510, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/content/4-about-us', '2011-10-03 10:05:14'),
(511, '/en/page-not-found', '', '2011-10-03 10:21:32'),
(512, '/en/page-not-found', '', '2011-10-03 10:33:22'),
(513, '/en/page-not-found', '', '2011-10-03 10:33:25'),
(514, '/en/page-not-found', '', '2011-10-03 10:33:40'),
(515, '/en/page-not-found', '', '2011-10-03 12:02:38'),
(516, '/en/page-not-found', '', '2011-10-03 17:42:40'),
(517, '/en/page-not-found', '', '2011-10-03 18:42:10'),
(518, '/en/page-not-found', '', '2011-10-03 20:11:40'),
(519, '/en/page-not-found', '', '2011-10-03 21:23:14'),
(520, '/en/page-not-found', '', '2011-10-04 03:07:07'),
(521, '/en/page-not-found', '', '2011-10-04 03:07:09'),
(522, '/en/page-not-found', '', '2011-10-04 03:07:12'),
(523, '/en/page-not-found', '', '2011-10-04 03:54:42'),
(524, '/en/page-not-found', '', '2011-10-04 03:59:55'),
(525, '/en/page-not-found', '', '2011-10-04 06:43:34'),
(526, '/en/page-not-found', '', '2011-10-04 09:13:15'),
(527, '/en/page-not-found', '', '2011-10-04 10:16:32'),
(528, '/en/page-not-found', '', '2011-10-04 10:42:05'),
(529, '/en/page-not-found', '', '2011-10-04 12:32:37'),
(530, '/en/page-not-found', '', '2011-10-04 12:33:08'),
(531, '/en/page-not-found', '', '2011-10-04 14:44:56'),
(532, '/en/page-not-found', '', '2011-10-04 15:58:26'),
(533, '/en/page-not-found', '', '2011-10-04 15:58:28'),
(534, '/en/page-not-found', '', '2011-10-04 17:20:36'),
(535, '/en/page-not-found', '', '2011-10-04 17:20:41'),
(536, '/en/page-not-found', '', '2011-10-05 02:44:43'),
(537, '/en/page-not-found', '', '2011-10-05 02:44:45'),
(538, '/en/page-not-found', '', '2011-10-05 03:50:12'),
(539, '/en/page-not-found', '', '2011-10-05 03:54:24'),
(540, '/en/page-not-found', '', '2011-10-05 03:55:36'),
(541, '/en/page-not-found', '', '2011-10-05 04:28:39'),
(542, '/en/page-not-found', '', '2011-10-05 05:03:02'),
(543, '/en/page-not-found', '', '2011-10-05 05:36:20'),
(544, '/en/page-not-found', '', '2011-10-05 06:36:39'),
(545, '/en/page-not-found', '', '2011-10-05 07:19:37'),
(546, '/en/page-not-found', '', '2011-10-05 07:27:47'),
(547, '/en/page-not-found', '', '2011-10-05 07:30:23'),
(548, '/en/page-not-found', '', '2011-10-05 07:30:26'),
(549, '/en/page-not-found', '', '2011-10-05 08:18:27'),
(550, '/en/page-not-found', '', '2011-10-05 16:22:14'),
(551, '/en/page-not-found', '', '2011-10-05 16:43:16'),
(552, '/en/page-not-found', '', '2011-10-05 16:51:19'),
(553, '/en/page-not-found', '', '2011-10-05 16:51:44'),
(554, '/en/page-not-found', '', '2011-10-05 20:56:38'),
(555, '/en/page-not-found', '', '2011-10-05 23:23:36'),
(556, '/en/page-not-found', '', '2011-10-06 01:01:26'),
(557, '/en/page-not-found', '', '2011-10-06 02:28:05'),
(558, '/en/page-not-found', '', '2011-10-06 03:38:26'),
(559, '/en/page-not-found', '', '2011-10-06 05:19:37'),
(560, '/en/page-not-found', '', '2011-10-06 05:39:09'),
(561, '/en/page-not-found', '', '2011-10-06 05:39:10'),
(562, '/en/page-not-found', '', '2011-10-06 05:39:14'),
(563, '/en/page-not-found', '', '2011-10-06 05:39:16'),
(564, '/en/page-not-found', '', '2011-10-06 05:39:18'),
(565, '/en/page-not-found', '', '2011-10-06 06:07:07'),
(566, '/en/page-not-found', '', '2011-10-06 06:07:29'),
(567, '/en/page-not-found', '', '2011-10-06 06:35:56'),
(568, '/en/page-not-found', '', '2011-10-06 06:44:44'),
(569, '/en/page-not-found', '', '2011-10-06 07:01:16'),
(570, '/en/page-not-found', '', '2011-10-06 07:01:18'),
(571, '/en/page-not-found', '', '2011-10-06 07:27:32'),
(572, '/en/page-not-found', '', '2011-10-06 09:15:36'),
(573, '/en/page-not-found', '', '2011-10-06 10:46:08'),
(574, '/en/page-not-found', '', '2011-10-06 10:47:25'),
(575, '/en/page-not-found', '', '2011-10-06 11:17:33'),
(576, '/en/page-not-found', '', '2011-10-06 13:36:29'),
(577, '/en/page-not-found', '', '2011-10-06 13:45:05'),
(578, '/en/page-not-found', '', '2011-10-06 14:05:09'),
(579, '/en/page-not-found', '', '2011-10-06 14:09:40'),
(580, '/en/page-not-found', '', '2011-10-06 14:22:24'),
(581, '/en/page-not-found', '', '2011-10-06 14:50:32'),
(582, '/en/page-not-found', '', '2011-10-06 15:08:55'),
(583, '/en/page-not-found', '', '2011-10-06 15:33:08'),
(584, '/en/page-not-found', '', '2011-10-06 15:54:28'),
(585, '/en/page-not-found', '', '2011-10-06 15:54:33'),
(586, '/en/page-not-found', '', '2011-10-06 15:55:54'),
(587, '/en/page-not-found', '', '2011-10-06 15:57:36'),
(588, '/en/page-not-found', '', '2011-10-06 16:12:57'),
(589, '/en/page-not-found', '', '2011-10-06 16:28:01'),
(590, '/en/page-not-found', '', '2011-10-06 16:34:37'),
(591, '/en/page-not-found', '', '2011-10-06 16:53:43'),
(592, '/en/page-not-found', '', '2011-10-06 17:07:04'),
(593, '/en/page-not-found', '', '2011-10-06 17:07:32'),
(594, '/en/page-not-found', '', '2011-10-06 17:09:36'),
(595, '/en/page-not-found', '', '2011-10-06 17:11:56'),
(596, '/en/page-not-found', '', '2011-10-06 17:33:57'),
(597, '/en/page-not-found', '', '2011-10-06 20:43:59'),
(598, '/en/page-not-found', '', '2011-10-07 01:03:12'),
(599, '/en/page-not-found', '', '2011-10-07 01:29:48'),
(600, '/en/page-not-found', '', '2011-10-07 01:29:49'),
(601, '/en/page-not-found', '', '2011-10-07 01:29:51'),
(602, '/en/page-not-found', '', '2011-10-07 01:59:18'),
(603, '/en/page-not-found', '', '2011-10-07 03:54:39'),
(604, '/en/page-not-found', '', '2011-10-07 07:59:19'),
(605, '/en/page-not-found', '', '2011-10-07 08:51:40'),
(606, '/en/page-not-found', '', '2011-10-07 08:52:19'),
(607, '/en/page-not-found', '', '2011-10-07 09:44:29'),
(608, '/en/page-not-found', '', '2011-10-07 09:44:32'),
(609, '/en/page-not-found', '', '2011-10-07 12:05:35'),
(610, '/en/page-not-found', '', '2011-10-07 12:05:39'),
(611, '/en/page-not-found', '', '2011-10-07 12:52:12'),
(612, '/en/page-not-found', '', '2011-10-07 12:52:14'),
(613, '/en/page-not-found', '', '2011-10-07 14:35:47'),
(614, '/en/page-not-found', '', '2011-10-07 14:45:31'),
(615, '/en/page-not-found', '', '2011-10-07 14:45:57'),
(616, '/en/page-not-found', '', '2011-10-11 01:02:11'),
(617, '/en/page-not-found', '', '2011-10-11 01:02:13'),
(618, '/en/page-not-found', '', '2011-10-11 02:29:12'),
(619, '/en/page-not-found', '', '2011-10-11 02:47:52'),
(620, '/en/page-not-found', '', '2011-10-11 09:19:28'),
(621, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-10-11 09:24:46'),
(622, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-10-11 09:25:54'),
(623, '/en/page-not-found', '', '2011-10-11 09:26:09'),
(624, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-10-11 09:27:47'),
(625, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/contact-us', '2011-10-11 09:27:57'),
(626, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-10-11 09:28:00'),
(627, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/contact-us', '2011-10-11 09:29:34'),
(628, '/en/page-not-found', '', '2011-10-11 09:30:46'),
(629, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-10-11 09:41:02'),
(630, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-10-11 09:54:41'),
(631, '/en/page-not-found', '', '2011-10-11 10:22:08'),
(632, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/catalogs/oct11/en-catalog.html', '2011-10-11 10:34:26'),
(633, '/en/page-not-found', '', '2011-10-11 10:36:21'),
(634, '/en/page-not-found', '', '2011-10-11 10:37:24'),
(635, '/en/page-not-found', '', '2011-10-11 15:37:33'),
(636, '/en/page-not-found', '', '2011-10-11 15:37:57'),
(637, '/en/page-not-found', '', '2011-10-11 17:44:33'),
(638, '/en/page-not-found', '', '2011-10-11 20:39:04'),
(639, '/en/page-not-found', '', '2011-10-12 02:19:05'),
(640, '/en/page-not-found', '', '2011-10-12 02:22:17'),
(641, '/en/page-not-found', '', '2011-10-12 02:33:02'),
(642, '/en/page-not-found', '', '2011-10-12 03:17:40'),
(643, '/en/page-not-found', '', '2011-10-12 03:21:07'),
(644, '/en/page-not-found', '', '2011-10-12 03:29:19'),
(645, '/en/page-not-found', '', '2011-10-12 03:29:21'),
(646, '/en/page-not-found', '', '2011-10-12 03:42:24'),
(647, '/en/page-not-found', '', '2011-10-12 05:57:23'),
(648, '/en/page-not-found', '', '2011-10-12 08:29:34'),
(649, '/en/page-not-found', '', '2011-10-12 10:50:41'),
(650, '/en/page-not-found', '', '2011-10-12 10:50:43'),
(651, '/en/page-not-found', '', '2011-10-12 13:50:38'),
(652, '/en/page-not-found', '', '2011-10-12 13:50:40'),
(653, '/en/page-not-found', '', '2011-10-12 14:02:48'),
(654, '/en/page-not-found', '', '2011-10-12 14:02:50'),
(655, '/en/page-not-found', '', '2011-10-12 15:43:34'),
(656, '/en/page-not-found', '', '2011-10-12 16:42:15'),
(657, '/en/page-not-found', '', '2011-10-12 20:46:54'),
(658, '/en/page-not-found', '', '2011-10-12 21:40:39'),
(659, '/en/page-not-found', '', '2011-10-13 01:10:38'),
(660, '/en/page-not-found', '', '2011-10-13 01:10:41'),
(661, '/en/page-not-found', '', '2011-10-13 01:44:14'),
(662, '/en/page-not-found', '', '2011-10-13 01:44:21'),
(663, '/en/page-not-found', '', '2011-10-13 03:44:40'),
(664, '/en/page-not-found', '', '2011-10-13 04:02:39'),
(665, '/en/page-not-found', '', '2011-10-13 04:02:44'),
(666, '/en/page-not-found', '', '2011-10-13 04:02:46'),
(667, '/en/page-not-found', '', '2011-10-13 06:14:07'),
(668, '/en/page-not-found', '', '2011-10-13 06:48:56'),
(669, '/en/page-not-found', '', '2011-10-13 06:48:58'),
(670, '/en/page-not-found', '', '2011-10-13 06:49:03'),
(671, '/en/page-not-found', '', '2011-10-13 08:24:05'),
(672, '/en/page-not-found', '', '2011-10-13 09:31:13'),
(673, '/en/page-not-found', '', '2011-10-13 09:31:15'),
(674, '/en/page-not-found', '', '2011-10-13 09:31:17'),
(675, '/en/page-not-found', '', '2011-10-13 09:40:40'),
(676, '/en/page-not-found', '', '2011-10-13 10:12:42'),
(677, '/en/page-not-found', '', '2011-10-13 10:12:44'),
(678, '/en/page-not-found', '', '2011-10-13 10:12:46'),
(679, '/en/page-not-found', '', '2011-10-13 10:38:10'),
(680, '/en/page-not-found', '', '2011-10-13 10:38:12'),
(681, '/en/page-not-found', '', '2011-10-14 04:56:52'),
(682, '/en/page-not-found', '', '2011-10-14 04:57:29'),
(683, '/en/page-not-found', '', '2011-10-14 04:59:26'),
(684, '/en/page-not-found', '', '2011-10-14 04:59:41'),
(685, '/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/adminYKS/index.php?tab=AdminModules&token=78260e1cce35eae781847c4672df4d20', '2011-10-14 05:28:22'),
(686, '/en/page-not-found', '', '2011-10-14 11:37:54'),
(687, '/en/page-not-found', '', '2011-10-14 11:53:50'),
(688, '/en/page-not-found', '', '2011-10-15 06:12:51'),
(689, '/en/page-not-found', '', '2011-10-15 06:13:35'),
(690, '/en/page-not-found', '', '2011-10-15 06:39:25'),
(691, '/en/page-not-found', '', '2011-10-15 06:47:32'),
(692, '/en/page-not-found', '', '2011-10-15 06:47:33'),
(693, '/en/page-not-found', '', '2011-10-15 06:47:35'),
(694, '/en/page-not-found', '', '2011-10-15 14:17:17'),
(695, '/en/page-not-found', '', '2011-10-15 14:27:12'),
(696, '/en/page-not-found', '', '2011-10-16 01:27:13'),
(697, '/en/page-not-found', '', '2011-10-16 01:28:44'),
(698, '/en/page-not-found', '', '2011-10-17 10:01:10'),
(699, '/en/page-not-found', '', '2011-10-17 10:01:11'),
(700, '/en/page-not-found', '', '2011-10-17 10:01:14'),
(701, '/en/page-not-found', '', '2011-10-17 10:01:15'),
(702, '/en/page-not-found', '', '2011-10-17 10:02:55'),
(703, '/en/page-not-found', '', '2011-10-17 16:12:03'),
(704, '/en/page-not-found', '', '2011-10-18 02:05:53'),
(705, '/en/page-not-found', '', '2011-10-18 12:08:46'),
(706, '/en/page-not-found', '', '2011-10-18 15:52:23'),
(707, '/en/page-not-found', '', '2011-10-18 15:52:25'),
(708, '/en/page-not-found', '', '2011-10-19 03:51:06'),
(709, '/en/page-not-found', '', '2011-10-19 03:51:08'),
(710, '/en/page-not-found', '', '2011-10-19 04:11:56'),
(711, '/en/page-not-found', '', '2011-10-19 05:20:42'),
(712, '/en/page-not-found', '', '2011-10-20 02:44:45'),
(713, '/en/page-not-found', '', '2011-10-20 02:44:48'),
(714, '/en/page-not-found', '', '2011-10-22 06:57:37'),
(715, '/en/page-not-found', '', '2011-10-22 08:50:03'),
(716, '/en/page-not-found', '', '2011-10-22 09:13:23'),
(717, '/en/page-not-found', '', '2011-10-22 09:19:13'),
(718, '/en/page-not-found', '', '2011-10-22 09:19:16'),
(719, '/en/page-not-found', '', '2011-10-22 09:25:18'),
(720, '/en/page-not-found', '', '2011-10-22 09:25:20'),
(721, '/en/page-not-found', '', '2011-10-22 10:11:24'),
(722, '/en/page-not-found', '', '2011-10-22 11:00:50'),
(723, '/en/page-not-found', '', '2011-10-22 11:00:55'),
(724, '/en/page-not-found', '', '2011-10-22 12:09:47'),
(725, '/en/page-not-found', '', '2011-10-22 14:51:04'),
(726, '/en/page-not-found', '', '2011-10-22 14:51:06'),
(727, '/en/page-not-found', '', '2011-10-27 02:53:12'),
(728, '/en/page-not-found', '', '2011-10-27 02:53:14'),
(729, '/en/page-not-found', '', '2011-10-27 03:00:46'),
(730, '/en/page-not-found', '', '2011-10-27 06:28:22'),
(731, '/en/page-not-found', '', '2011-11-25 03:50:49'),
(732, '/portfolio/prestashop/yourkwiksave/en/page-not-found', '', '2011-12-06 03:28:43'),
(733, '/portfolio/prestashop/yourkwiksave/en/page-not-found', '', '2011-12-06 03:28:44'),
(734, '/portfolio/prestashop/yourkwiksave/en/page-not-found', '', '2011-12-06 03:28:45'),
(735, '/portfolio/prestashop/yourkwiksave/en/page-not-found', '', '2011-12-06 06:00:32'),
(736, '/portfolio/prestashop/yourkwiksave/en/page-not-found', '', '2011-12-06 06:00:34'),
(737, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:37:17'),
(738, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:37:17'),
(739, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:37:23'),
(740, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:37:23'),
(741, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:37:33'),
(742, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:39:28'),
(743, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:40:12'),
(744, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:40:13'),
(745, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:40:14'),
(746, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:40:15'),
(747, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/', '2011-12-13 17:40:15'),
(748, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/order', '2011-12-13 17:40:25'),
(749, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/order', '2011-12-13 17:40:25'),
(750, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/order', '2011-12-13 17:40:26'),
(751, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/order', '2011-12-13 17:40:26'),
(752, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/order', '2011-12-13 17:40:26'),
(753, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/order', '2011-12-13 17:40:26'),
(754, '/portfolio/prestashop/yourkwiksave/en/page-not-found', 'http://juancruzllorens.co.cc/portfolio/prestashop/yourkwiksave/en/order', '2011-12-13 17:40:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_page_type`
--

DROP TABLE IF EXISTS `ps_page_type`;
CREATE TABLE IF NOT EXISTS `ps_page_type` (
  `id_page_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `ps_page_type`
--

INSERT INTO `ps_page_type` (`id_page_type`, `name`) VALUES
(16, '404.php'),
(13, 'authentication.php'),
(17, 'authentication.php'),
(11, 'best-sales.php'),
(25, 'best-sales.php'),
(26, 'cart.php'),
(2, 'category.php'),
(7, 'cms.php'),
(19, 'cms.php'),
(12, 'contact-form.php'),
(23, 'contact-form.php'),
(5, 'index.php'),
(15, 'index.php'),
(4, 'manufacturer.php'),
(20, 'modules/sendtoafriend/sendtoafriend-form.php'),
(21, 'new-products.php'),
(3, 'order.php'),
(29, 'password.php'),
(33, 'portfolio/prestashop/yourkwiksave/cms.php'),
(30, 'portfolio/prestashop/yourkwiksave/index.php'),
(31, 'portfolio/prestashop/yourkwiksave/prices-drop.php'),
(32, 'portfolio/prestashop/yourkwiksave/sitemap.php'),
(10, 'prices-drop.php'),
(24, 'prices-drop.php'),
(1, 'product.php'),
(8, 'search.php'),
(18, 'search.php'),
(14, 'sitemap.php'),
(22, 'sitemap.php'),
(9, 'stores.php'),
(27, 'stores.php'),
(6, 'supplier.php'),
(28, 'supplier.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_page_viewed`
--

DROP TABLE IF EXISTS `ps_page_viewed`;
CREATE TABLE IF NOT EXISTS `ps_page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_payment_cc`
--

DROP TABLE IF EXISTS `ps_payment_cc`;
CREATE TABLE IF NOT EXISTS `ps_payment_cc` (
  `id_payment_cc` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned DEFAULT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_payment_cc`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product`
--

DROP TABLE IF EXISTS `ps_product`;
CREATE TABLE IF NOT EXISTS `ps_product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_tax_rules_group` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_color_default` int(10) unsigned DEFAULT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` float NOT NULL DEFAULT '0',
  `height` float NOT NULL DEFAULT '0',
  `depth` float NOT NULL DEFAULT '0',
  `weight` float NOT NULL DEFAULT '0',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`),
  KEY `id_category_default` (`id_category_default`),
  KEY `id_color_default` (`id_color_default`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `ps_product`
--

INSERT INTO `ps_product` (`id_product`, `id_supplier`, `id_manufacturer`, `id_tax_rules_group`, `id_category_default`, `id_color_default`, `on_sale`, `online_only`, `ean13`, `upc`, `ecotax`, `quantity`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `reference`, `supplier_reference`, `location`, `width`, `height`, `depth`, `weight`, `out_of_stock`, `quantity_discount`, `customizable`, `uploadable_files`, `text_fields`, `active`, `available_for_order`, `condition`, `show_price`, `indexed`, `cache_is_pack`, `cache_has_attachments`, `cache_default_attribute`, `date_add`, `date_upd`) VALUES
(10, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, 0.000000, 50, 1, 14.500000, 0.000000, NULL, 0.000000, 0.00, NULL, NULL, NULL, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1, 'new', 1, 1, 0, 0, 0, '2011-09-09 14:08:48', '2011-09-09 14:16:30'),
(11, 0, 0, 2, 1, 0, 0, 0, NULL, NULL, 0.000000, 100, 1, 4.620370, 0.000000, NULL, 0.000000, 0.00, NULL, NULL, NULL, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1, 'new', 1, 1, 0, 0, 0, '2011-09-12 23:33:16', '2011-09-12 23:33:16'),
(12, 0, 0, 3, 2, 0, 0, 0, NULL, NULL, 0.000000, 1000, 1, 0.769231, 0.310000, NULL, 0.000000, 0.00, NULL, NULL, NULL, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1, 'new', 1, 1, 0, 0, 0, '2011-09-19 14:56:09', '2011-09-19 14:56:09'),
(13, 0, 0, 3, 1, 0, 0, 0, NULL, NULL, 0.000000, 10, 1, 0.769231, 0.310000, NULL, 0.000000, 0.00, NULL, NULL, NULL, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1, 'new', 1, 1, 0, 0, 0, '2011-09-19 14:58:49', '2011-10-19 09:42:52'),
(14, 0, 0, 4, 1, 0, 0, 0, NULL, NULL, 0.000000, 10, 1, 0.394231, 1.000000, NULL, 0.000000, 0.00, NULL, NULL, NULL, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1, 'new', 1, 1, 0, 0, 0, '2011-09-19 15:07:55', '2011-10-19 09:53:41'),
(15, 0, 0, 4, 1, 0, 0, 0, NULL, NULL, 0.000000, 0, 1, 0.721154, 0.270000, NULL, 0.000000, 0.00, NULL, NULL, NULL, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1, 'new', 1, 1, 0, 0, 0, '2011-09-19 15:10:28', '2011-10-19 09:54:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_attachment`
--

DROP TABLE IF EXISTS `ps_product_attachment`;
CREATE TABLE IF NOT EXISTS `ps_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_attribute`
--

DROP TABLE IF EXISTS `ps_product_attribute`;
CREATE TABLE IF NOT EXISTS `ps_product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` float NOT NULL DEFAULT '0',
  `unit_price_impact` decimal(17,2) NOT NULL DEFAULT '0.00',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_attribute`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `product_default` (`id_product`,`default_on`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_attribute_combination`
--

DROP TABLE IF EXISTS `ps_product_attribute_combination`;
CREATE TABLE IF NOT EXISTS `ps_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_attribute_image`
--

DROP TABLE IF EXISTS `ps_product_attribute_image`;
CREATE TABLE IF NOT EXISTS `ps_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_product_attribute_image`
--

INSERT INTO `ps_product_attribute_image` (`id_product_attribute`, `id_image`) VALUES
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(19, 0),
(22, 0),
(23, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_country_tax`
--

DROP TABLE IF EXISTS `ps_product_country_tax`;
CREATE TABLE IF NOT EXISTS `ps_product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  UNIQUE KEY `id_product` (`id_product`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_download`
--

DROP TABLE IF EXISTS `ps_product_download`;
CREATE TABLE IF NOT EXISTS `ps_product_download` (
  `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `physically_filename` varchar(255) DEFAULT NULL,
  `date_deposit` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_download`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_group_reduction_cache`
--

DROP TABLE IF EXISTS `ps_product_group_reduction_cache`;
CREATE TABLE IF NOT EXISTS `ps_product_group_reduction_cache` (
  `id_product` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_product`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_lang`
--

DROP TABLE IF EXISTS `ps_product_lang`;
CREATE TABLE IF NOT EXISTS `ps_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  UNIQUE KEY `product_lang_index` (`id_product`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_product_lang`
--

INSERT INTO `ps_product_lang` (`id_product`, `id_lang`, `description`, `description_short`, `link_rewrite`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `available_now`, `available_later`) VALUES
(10, 1, NULL, NULL, 'danish-baco', NULL, NULL, NULL, 'Danish Bacon', NULL, NULL),
(10, 2, NULL, NULL, 'danish-baco', NULL, NULL, NULL, 'Danish Bacon', NULL, NULL),
(10, 3, NULL, NULL, 'danish-baco', NULL, NULL, NULL, 'Danish Bacon', NULL, NULL),
(10, 4, NULL, NULL, 'danish-baco', NULL, NULL, NULL, 'Danish Bacon', NULL, NULL),
(10, 5, NULL, NULL, 'danish-baco', NULL, NULL, NULL, 'Danish Bacon', NULL, NULL),
(10, 6, NULL, NULL, 'danish-baco', NULL, NULL, NULL, 'Danish Bacon', NULL, NULL),
(10, 7, NULL, NULL, 'danish-baco', NULL, NULL, NULL, 'Danish Bacon', NULL, NULL),
(10, 8, NULL, NULL, 'danish-baco', NULL, NULL, NULL, 'Danish Bacon', NULL, NULL),
(11, 1, NULL, NULL, 'daloon-spring-rolls-8-pies', NULL, NULL, NULL, 'Daloon spring rolls 8 pies', NULL, NULL),
(11, 2, NULL, NULL, 'daloon-spring-rolls-8-pies', NULL, NULL, NULL, 'Daloon spring rolls 8 pies', NULL, NULL),
(11, 3, NULL, NULL, 'daloon-spring-rolls-8-pies', NULL, NULL, NULL, 'Daloon spring rolls 8 pies', NULL, NULL),
(11, 4, NULL, NULL, 'daloon-spring-rolls-8-pies', NULL, NULL, NULL, 'Daloon spring rolls 8 pies', NULL, NULL),
(11, 5, NULL, NULL, 'daloon-spring-rolls-8-pies', NULL, NULL, NULL, 'Daloon spring rolls 8 pies', NULL, NULL),
(11, 6, NULL, NULL, 'daloon-spring-rolls-8-pies', NULL, NULL, NULL, 'Daloon spring rolls 8 pies', NULL, NULL),
(11, 7, NULL, NULL, 'daloon-spring-rolls-8-pies', NULL, NULL, NULL, 'Daloon spring rolls 8 pies', NULL, NULL),
(11, 8, NULL, NULL, 'daloon-spring-rolls-8-pies', NULL, NULL, NULL, 'Daloon spring rolls 8 pies', NULL, NULL),
(12, 1, NULL, NULL, 'baguette-normal', NULL, NULL, NULL, 'Baguette Normal', NULL, NULL),
(12, 2, NULL, NULL, 'baguette-normal', NULL, NULL, NULL, 'Baguette Normal', NULL, NULL),
(12, 3, NULL, NULL, 'baguette-normal', NULL, NULL, NULL, 'Baguette Normal', NULL, NULL),
(12, 4, NULL, NULL, 'baguette-normal', NULL, NULL, NULL, 'Baguette Normal', NULL, NULL),
(12, 5, NULL, NULL, 'baguette-normal', NULL, NULL, NULL, 'Baguette Normal', NULL, NULL),
(12, 6, NULL, NULL, 'baguette-normal', NULL, NULL, NULL, 'Baguette Normal', NULL, NULL),
(12, 7, NULL, NULL, 'baguette-normal', NULL, NULL, NULL, 'Baguette Normal', NULL, NULL),
(12, 8, NULL, NULL, 'baguette-normal', NULL, NULL, NULL, 'Baguette Normal', NULL, NULL),
(13, 1, '<p>Aliquam in justo lacus. Proin varius, sem sit amet viverra porta, nunc felis tincidunt magna, non blandit leo mauris id nulla. Ut ac risus libero, in interdum libero. Vestibulum nibh augue, pharetra ut faucibus a, dignissim commodo quam. Ut rutrum, nisi a vehicula sodales, ipsum metus scelerisque turpis, nec posuere urna ante vitae mi. Praesent sed ligula erat, a ullamcorper odio. Cras tellus sem, ornare eu placerat ac, facilisis vitae nibh.﻿</p>', '<p>100g  -  1.80 €/Kg﻿</p>', 'baugette-normal', NULL, NULL, NULL, 'Baugette Normal', NULL, NULL),
(13, 2, NULL, NULL, 'baugette-normal', NULL, NULL, NULL, 'Baugette Normal', NULL, NULL),
(13, 3, NULL, NULL, 'baugette-normal', NULL, NULL, NULL, 'Baugette Normal', NULL, NULL),
(13, 4, NULL, NULL, 'baugette-normal', NULL, NULL, NULL, 'Baugette Normal', NULL, NULL),
(13, 5, NULL, NULL, 'baugette-normal', NULL, NULL, NULL, 'Baugette Normal', NULL, NULL),
(13, 6, NULL, NULL, 'baugette-normal', NULL, NULL, NULL, 'Baugette Normal', NULL, NULL),
(13, 7, NULL, NULL, 'baugette-normal', NULL, NULL, NULL, 'Baugette Normal', NULL, NULL),
(13, 8, NULL, NULL, 'baugette-normal', NULL, NULL, NULL, 'Baugette Normal', NULL, NULL),
(14, 1, NULL, '<p>100g  -  1.30 €/Kg﻿﻿</p>', 'bagutte-rustic', NULL, NULL, NULL, 'Bagutte Rustic', NULL, NULL),
(14, 2, NULL, NULL, 'bagutte-rustic', NULL, NULL, NULL, 'Bagutte Rustic', NULL, NULL),
(14, 3, NULL, NULL, 'bagutte-rustic', NULL, NULL, NULL, 'Bagutte Rustic', NULL, NULL),
(14, 4, NULL, NULL, 'bagutte-rustic', NULL, NULL, NULL, 'Bagutte Rustic', NULL, NULL),
(14, 5, NULL, NULL, 'bagutte-rustic', NULL, NULL, NULL, 'Bagutte Rustic', NULL, NULL),
(14, 6, NULL, NULL, 'bagutte-rustic', NULL, NULL, NULL, 'Bagutte Rustic', NULL, NULL),
(14, 7, NULL, NULL, 'bagutte-rustic', NULL, NULL, NULL, 'Bagutte Rustic', NULL, NULL),
(14, 8, NULL, NULL, 'bagutte-rustic', NULL, NULL, NULL, 'Bagutte Rustic', NULL, NULL),
(15, 1, NULL, '<p>100g  -  1.00 €/Kg﻿﻿</p>', 'baguette-mediano', NULL, NULL, NULL, 'Baguette Mediano', NULL, NULL),
(15, 2, NULL, NULL, 'baguette-mediano', NULL, NULL, NULL, 'Baguette Mediano', NULL, NULL),
(15, 3, NULL, NULL, 'baguette-mediano', NULL, NULL, NULL, 'Baguette Mediano', NULL, NULL),
(15, 4, NULL, NULL, 'baguette-mediano', NULL, NULL, NULL, 'Baguette Mediano', NULL, NULL),
(15, 5, NULL, NULL, 'baguette-mediano', NULL, NULL, NULL, 'Baguette Mediano', NULL, NULL),
(15, 6, NULL, NULL, 'baguette-mediano', NULL, NULL, NULL, 'Baguette Mediano', NULL, NULL),
(15, 7, NULL, NULL, 'baguette-mediano', NULL, NULL, NULL, 'Baguette Mediano', NULL, NULL),
(15, 8, NULL, NULL, 'baguette-mediano', NULL, NULL, NULL, 'Baguette Mediano', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_sale`
--

DROP TABLE IF EXISTS `ps_product_sale`;
CREATE TABLE IF NOT EXISTS `ps_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_product_tag`
--

DROP TABLE IF EXISTS `ps_product_tag`;
CREATE TABLE IF NOT EXISTS `ps_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_product_tag`
--

INSERT INTO `ps_product_tag` (`id_product`, `id_tag`) VALUES
(12, 1),
(13, 1),
(15, 1),
(13, 2),
(14, 3),
(15, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_profile`
--

DROP TABLE IF EXISTS `ps_profile`;
CREATE TABLE IF NOT EXISTS `ps_profile` (
  `id_profile` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `ps_profile`
--

INSERT INTO `ps_profile` (`id_profile`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_profile_lang`
--

DROP TABLE IF EXISTS `ps_profile_lang`;
CREATE TABLE IF NOT EXISTS `ps_profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_profile_lang`
--

INSERT INTO `ps_profile_lang` (`id_lang`, `id_profile`, `name`) VALUES
(1, 1, 'Administrator'),
(2, 1, 'Administrateur'),
(3, 1, 'Administrador'),
(4, 1, 'Administrator'),
(5, 1, 'Administrator'),
(6, 1, 'Administrator'),
(7, 1, 'Administrator'),
(8, 1, 'Administrator'),
(1, 2, 'Logistician'),
(2, 2, 'Logisticien'),
(3, 2, 'Logistician'),
(4, 2, 'Logistiker'),
(5, 2, 'Logista'),
(6, 2, 'Logistician'),
(7, 2, 'Logistician'),
(8, 2, 'Logistician'),
(1, 3, 'Translator'),
(2, 3, 'Traducteur'),
(3, 3, 'Translator'),
(4, 3, 'Übersetzer'),
(5, 3, 'Traduttore'),
(6, 3, 'Translator'),
(7, 3, 'Translator'),
(8, 3, 'Translator'),
(1, 4, 'Salesman'),
(2, 4, 'Commercial'),
(3, 4, 'Salesman'),
(4, 4, 'Verkäufer'),
(5, 4, 'Venditore'),
(6, 4, 'Salesman'),
(7, 4, 'Salesman'),
(8, 4, 'Salesman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_quick_access`
--

DROP TABLE IF EXISTS `ps_quick_access`;
CREATE TABLE IF NOT EXISTS `ps_quick_access` (
  `id_quick_access` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ps_quick_access`
--

INSERT INTO `ps_quick_access` (`id_quick_access`, `new_window`, `link`) VALUES
(1, 0, 'index.php'),
(2, 1, '../'),
(3, 0, 'index.php?tab=AdminCatalog&addcategory'),
(4, 0, 'index.php?tab=AdminCatalog&addproduct'),
(5, 0, 'index.php?tab=AdminDiscounts&adddiscount');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_quick_access_lang`
--

DROP TABLE IF EXISTS `ps_quick_access_lang`;
CREATE TABLE IF NOT EXISTS `ps_quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_quick_access_lang`
--

INSERT INTO `ps_quick_access_lang` (`id_quick_access`, `id_lang`, `name`) VALUES
(1, 1, 'Home'),
(1, 2, 'Accueil'),
(1, 3, 'Inicio'),
(1, 4, 'Start'),
(1, 5, 'Home page'),
(1, 6, 'Home'),
(1, 7, 'Home'),
(1, 8, 'Home'),
(2, 1, 'My Shop'),
(2, 2, 'Ma boutique'),
(2, 3, 'Mi tienda'),
(2, 4, 'Mein Shop'),
(2, 5, 'Il mio negozio'),
(2, 6, 'My Shop'),
(2, 7, 'My Shop'),
(2, 8, 'My Shop'),
(3, 1, 'New category'),
(3, 2, 'Nouvelle catégorie'),
(3, 3, 'Nueva categoría'),
(3, 4, 'Neue Kategorie'),
(3, 5, 'Nuova categoria'),
(3, 6, 'New category'),
(3, 7, 'New category'),
(3, 8, 'New category'),
(4, 1, 'New product'),
(4, 2, 'Nouveau produit'),
(4, 3, 'Nuevo producto'),
(4, 4, 'Neues Produkt'),
(4, 5, 'Nuovo prodotto'),
(4, 6, 'New product'),
(4, 7, 'New product'),
(4, 8, 'New product'),
(5, 1, 'New voucher'),
(5, 2, 'Nouveau bon de réduction'),
(5, 3, 'Nuevo cupón'),
(5, 4, 'Neuer Ermäßigungsgutschein'),
(5, 5, 'Nuovo buono sconto'),
(5, 6, 'New voucher'),
(5, 7, 'New voucher'),
(5, 8, 'New voucher');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_range_price`
--

DROP TABLE IF EXISTS `ps_range_price`;
CREATE TABLE IF NOT EXISTS `ps_range_price` (
  `id_range_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_range_price`
--

INSERT INTO `ps_range_price` (`id_range_price`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES
(1, 2, 0.000000, 10000.000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_range_weight`
--

DROP TABLE IF EXISTS `ps_range_weight`;
CREATE TABLE IF NOT EXISTS `ps_range_weight` (
  `id_range_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_range_weight`
--

INSERT INTO `ps_range_weight` (`id_range_weight`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES
(1, 2, 0.000000, 10000.000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_referrer`
--

DROP TABLE IF EXISTS `ps_referrer`;
CREATE TABLE IF NOT EXISTS `ps_referrer` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_referrer_cache`
--

DROP TABLE IF EXISTS `ps_referrer_cache`;
CREATE TABLE IF NOT EXISTS `ps_referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_required_field`
--

DROP TABLE IF EXISTS `ps_required_field`;
CREATE TABLE IF NOT EXISTS `ps_required_field` (
  `id_required_field` int(11) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_required_field`),
  KEY `object_name` (`object_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_scene`
--

DROP TABLE IF EXISTS `ps_scene`;
CREATE TABLE IF NOT EXISTS `ps_scene` (
  `id_scene` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_scene`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `ps_scene`
--

INSERT INTO `ps_scene` (`id_scene`, `active`) VALUES
(4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_scene_category`
--

DROP TABLE IF EXISTS `ps_scene_category`;
CREATE TABLE IF NOT EXISTS `ps_scene_category` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_scene_lang`
--

DROP TABLE IF EXISTS `ps_scene_lang`;
CREATE TABLE IF NOT EXISTS `ps_scene_lang` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_scene_lang`
--

INSERT INTO `ps_scene_lang` (`id_scene`, `id_lang`, `name`) VALUES
(4, 1, 'Daloon'),
(4, 2, 'Daloon'),
(4, 3, 'Daloon'),
(4, 4, 'Daloon'),
(4, 5, 'Daloon'),
(4, 6, 'Daloon'),
(4, 7, 'Daloon'),
(4, 8, 'Daloon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_scene_products`
--

DROP TABLE IF EXISTS `ps_scene_products`;
CREATE TABLE IF NOT EXISTS `ps_scene_products` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_search_engine`
--

DROP TABLE IF EXISTS `ps_search_engine`;
CREATE TABLE IF NOT EXISTS `ps_search_engine` (
  `id_search_engine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `ps_search_engine`
--

INSERT INTO `ps_search_engine` (`id_search_engine`, `server`, `getvar`) VALUES
(1, 'google', 'q'),
(2, 'aol', 'q'),
(3, 'yandex', 'text'),
(4, 'ask.com', 'q'),
(5, 'nhl.com', 'q'),
(6, 'yahoo', 'p'),
(7, 'baidu', 'wd'),
(8, 'lycos', 'query'),
(9, 'exalead', 'q'),
(10, 'search.live', 'q'),
(11, 'voila', 'rdata'),
(12, 'altavista', 'q'),
(13, 'bing', 'q'),
(14, 'daum', 'q'),
(15, 'eniro', 'search_word'),
(16, 'naver', 'query'),
(17, 'msn', 'q'),
(18, 'netscape', 'query'),
(19, 'cnn', 'query'),
(20, 'about', 'terms'),
(21, 'mamma', 'query'),
(22, 'alltheweb', 'q'),
(23, 'virgilio', 'qs'),
(24, 'alice', 'qs'),
(25, 'najdi', 'q'),
(26, 'mama', 'query'),
(27, 'seznam', 'q'),
(28, 'onet', 'qt'),
(29, 'szukacz', 'q'),
(30, 'yam', 'k'),
(31, 'pchome', 'q'),
(32, 'kvasir', 'q'),
(33, 'sesam', 'q'),
(34, 'ozu', 'q'),
(35, 'terra', 'query'),
(36, 'mynet', 'q'),
(37, 'ekolay', 'q'),
(38, 'rambler', 'words');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_search_index`
--

DROP TABLE IF EXISTS `ps_search_index`;
CREATE TABLE IF NOT EXISTS `ps_search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_search_index`
--

INSERT INTO `ps_search_index` (`id_product`, `id_word`, `weight`) VALUES
(10, 9633, 6),
(10, 9634, 6),
(10, 9635, 3),
(11, 9635, 3),
(13, 9635, 3),
(14, 9635, 3),
(15, 9635, 3),
(10, 9636, 6),
(10, 9637, 6),
(10, 9638, 3),
(11, 9638, 3),
(13, 9638, 3),
(14, 9638, 3),
(15, 9638, 3),
(10, 9639, 6),
(10, 9640, 6),
(10, 9641, 3),
(11, 9641, 3),
(13, 9641, 3),
(14, 9641, 3),
(15, 9641, 3),
(10, 9642, 6),
(10, 9643, 6),
(10, 9644, 3),
(11, 9644, 3),
(13, 9644, 3),
(14, 9644, 3),
(15, 9644, 3),
(10, 9645, 6),
(10, 9646, 6),
(10, 9647, 3),
(11, 9647, 3),
(13, 9647, 3),
(14, 9647, 3),
(15, 9647, 3),
(10, 9648, 3),
(11, 9648, 3),
(13, 9648, 3),
(14, 9648, 3),
(15, 9648, 3),
(10, 9649, 6),
(10, 9650, 6),
(10, 9651, 3),
(11, 9651, 3),
(13, 9651, 3),
(14, 9651, 3),
(15, 9651, 3),
(10, 9652, 6),
(10, 9653, 6),
(10, 9654, 3),
(11, 9654, 3),
(13, 9654, 3),
(14, 9654, 3),
(15, 9654, 3),
(10, 9655, 6),
(10, 9656, 6),
(10, 9657, 3),
(11, 9657, 3),
(13, 9657, 3),
(14, 9657, 3),
(15, 9657, 3),
(11, 9708, 6),
(11, 9709, 6),
(11, 9710, 6),
(11, 9711, 6),
(11, 9713, 6),
(11, 9714, 6),
(11, 9715, 6),
(11, 9716, 6),
(11, 9718, 6),
(11, 9719, 6),
(11, 9720, 6),
(11, 9721, 6),
(11, 9723, 6),
(11, 9724, 6),
(11, 9725, 6),
(11, 9726, 6),
(11, 9728, 6),
(11, 9729, 6),
(11, 9730, 6),
(11, 9731, 6),
(11, 9734, 6),
(11, 9735, 6),
(11, 9736, 6),
(11, 9737, 6),
(11, 9739, 6),
(11, 9740, 6),
(11, 9741, 6),
(11, 9742, 6),
(11, 9744, 6),
(11, 9745, 6),
(11, 9746, 6),
(11, 9747, 6),
(12, 9748, 10),
(13, 9748, 4),
(14, 9748, 4),
(15, 9748, 10),
(12, 9749, 6),
(13, 9749, 6),
(12, 9750, 3),
(13, 9750, 4),
(12, 9751, 6),
(15, 9751, 6),
(12, 9752, 6),
(13, 9752, 6),
(12, 9753, 3),
(12, 9754, 6),
(15, 9754, 6),
(12, 9755, 6),
(13, 9755, 6),
(12, 9756, 3),
(12, 9757, 6),
(15, 9757, 6),
(12, 9758, 6),
(13, 9758, 6),
(12, 9759, 3),
(12, 9760, 6),
(15, 9760, 6),
(12, 9761, 6),
(13, 9761, 6),
(12, 9762, 3),
(12, 9763, 6),
(15, 9763, 6),
(12, 9764, 6),
(13, 9764, 6),
(12, 9765, 3),
(12, 9766, 6),
(15, 9766, 6),
(12, 9767, 6),
(13, 9767, 6),
(12, 9768, 3),
(12, 9769, 6),
(15, 9769, 6),
(12, 9770, 6),
(13, 9770, 6),
(12, 9771, 3),
(13, 9772, 6),
(13, 9777, 6),
(13, 9780, 6),
(13, 9783, 6),
(13, 9786, 6),
(13, 9790, 6),
(13, 9793, 6),
(13, 9796, 6),
(14, 9853, 6),
(14, 9854, 10),
(14, 9857, 6),
(14, 9858, 6),
(14, 9860, 6),
(14, 9861, 6),
(14, 9863, 6),
(14, 9864, 6),
(14, 9866, 6),
(14, 9867, 6),
(14, 9870, 6),
(14, 9871, 6),
(14, 9873, 6),
(14, 9874, 6),
(14, 9876, 6),
(14, 9877, 6),
(15, 9905, 10),
(15, 9908, 6),
(15, 9911, 6),
(15, 9914, 6),
(15, 9917, 6),
(15, 9921, 6),
(15, 9924, 6),
(15, 9927, 6),
(13, 9928, 1),
(13, 9929, 1),
(13, 9930, 1),
(13, 9931, 1),
(13, 9932, 1),
(13, 9933, 2),
(13, 9934, 1),
(13, 9935, 1),
(13, 9936, 1),
(13, 9937, 1),
(13, 9938, 1),
(13, 9939, 1),
(13, 9940, 1),
(13, 9941, 1),
(13, 9942, 1),
(13, 9943, 1),
(13, 9944, 1),
(13, 9945, 1),
(13, 9946, 1),
(13, 9947, 1),
(13, 9948, 2),
(13, 9949, 1),
(13, 9950, 1),
(13, 9951, 2),
(13, 9952, 1),
(13, 9953, 1),
(13, 9954, 1),
(13, 9955, 1),
(13, 9956, 1),
(13, 9957, 1),
(13, 9958, 1),
(13, 9959, 1),
(13, 9960, 1),
(13, 9961, 1),
(13, 9962, 1),
(13, 9963, 1),
(13, 9964, 1),
(13, 9965, 1),
(13, 9966, 1),
(13, 9967, 1),
(13, 9968, 1),
(13, 9969, 1),
(13, 9970, 2),
(13, 9971, 1),
(13, 9972, 1),
(13, 9973, 1),
(13, 9974, 1),
(13, 9975, 1),
(13, 9976, 1),
(13, 9977, 1),
(13, 9978, 1),
(13, 9979, 1),
(13, 9980, 1),
(13, 9981, 1),
(13, 10286, 1),
(14, 10286, 1),
(15, 10286, 1),
(13, 10287, 1),
(14, 10369, 1),
(15, 10397, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_search_word`
--

DROP TABLE IF EXISTS `ps_search_word`;
CREATE TABLE IF NOT EXISTS `ps_search_word` (
  `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`word`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10398 ;

--
-- Volcado de datos para la tabla `ps_search_word`
--

INSERT INTO `ps_search_word` (`id_word`, `id_lang`, `word`) VALUES
(10397, 1, '100'),
(10286, 1, '100g'),
(10369, 1, '130'),
(10287, 1, '180'),
(9928, 1, 'aliquam'),
(9935, 1, 'amet'),
(9969, 1, 'ante'),
(9952, 1, 'augue'),
(9634, 1, 'bacon'),
(9748, 1, 'baguette'),
(9853, 1, 'bagutte'),
(9772, 1, 'baugette'),
(9943, 1, 'blandit'),
(9750, 1, 'bread'),
(9956, 1, 'commodo'),
(9977, 1, 'cras'),
(9708, 1, 'daloon'),
(9633, 1, 'danish'),
(9955, 1, 'dignissim'),
(9974, 1, 'erat'),
(9981, 1, 'facilisis'),
(9954, 1, 'faucibus'),
(9939, 1, 'felis'),
(9635, 1, 'home'),
(9949, 1, 'interdum'),
(9962, 1, 'ipsum'),
(9929, 1, 'justo'),
(9930, 1, 'lacus'),
(9944, 1, 'leo'),
(9948, 1, 'libero'),
(9973, 1, 'ligula'),
(9941, 1, 'magna'),
(9945, 1, 'mauris'),
(9905, 1, 'mediano'),
(9963, 1, 'metus'),
(9966, 1, 'nec'),
(9951, 1, 'nibh'),
(9959, 1, 'nisi'),
(9942, 1, 'non'),
(9749, 1, 'normal'),
(9946, 1, 'nulla'),
(9938, 1, 'nunc'),
(9976, 1, 'odio'),
(9979, 1, 'ornare'),
(9953, 1, 'pharetra'),
(9711, 1, 'pies'),
(9980, 1, 'placerat'),
(9937, 1, 'porta'),
(9967, 1, 'posuere'),
(9971, 1, 'praesent'),
(9931, 1, 'proin'),
(9957, 1, 'quam'),
(9947, 1, 'risus'),
(9710, 1, 'rolls'),
(9854, 1, 'rustic'),
(9958, 1, 'rutrum'),
(9964, 1, 'scelerisque'),
(9972, 1, 'sed'),
(9933, 1, 'sem'),
(9934, 1, 'sit'),
(9961, 1, 'sodales'),
(9709, 1, 'spring'),
(9978, 1, 'tellus'),
(9940, 1, 'tincidunt'),
(9965, 1, 'turpis'),
(9975, 1, 'ullamcorper'),
(9968, 1, 'urna'),
(9932, 1, 'varius'),
(9960, 1, 'vehicula'),
(9950, 1, 'vestibulum'),
(9970, 1, 'vitae'),
(9936, 1, 'viverra'),
(9638, 2, 'accueil'),
(9637, 2, 'bacon'),
(9751, 2, 'baguette'),
(9857, 2, 'bagutte'),
(9777, 2, 'baugette'),
(9713, 2, 'daloon'),
(9636, 2, 'danish'),
(9753, 2, 'ipods'),
(9908, 2, 'mediano'),
(9752, 2, 'normal'),
(9716, 2, 'pies'),
(9715, 2, 'rolls'),
(9858, 2, 'rustic'),
(9714, 2, 'spring'),
(9640, 3, 'bacon'),
(9754, 3, 'baguette'),
(9860, 3, 'bagutte'),
(9780, 3, 'baugette'),
(9718, 3, 'daloon'),
(9639, 3, 'danish'),
(9641, 3, 'inicio'),
(9756, 3, 'ipods'),
(9911, 3, 'mediano'),
(9755, 3, 'normal'),
(9721, 3, 'pies'),
(9720, 3, 'rolls'),
(9861, 3, 'rustic'),
(9719, 3, 'spring'),
(9643, 4, 'bacon'),
(9757, 4, 'baguette'),
(9863, 4, 'bagutte'),
(9783, 4, 'baugette'),
(9723, 4, 'daloon'),
(9642, 4, 'danish'),
(9759, 4, 'ipods'),
(9914, 4, 'mediano'),
(9758, 4, 'normal'),
(9726, 4, 'pies'),
(9725, 4, 'rolls'),
(9864, 4, 'rustic'),
(9724, 4, 'spring'),
(9644, 4, 'start'),
(9646, 5, 'bacon'),
(9760, 5, 'baguette'),
(9866, 5, 'bagutte'),
(9786, 5, 'baugette'),
(9728, 5, 'daloon'),
(9645, 5, 'danish'),
(9647, 5, 'home'),
(9762, 5, 'ipods'),
(9917, 5, 'mediano'),
(9761, 5, 'normal'),
(9648, 5, 'page'),
(9731, 5, 'pies'),
(9730, 5, 'rolls'),
(9867, 5, 'rustic'),
(9729, 5, 'spring'),
(9650, 6, 'bacon'),
(9763, 6, 'baguette'),
(9870, 6, 'bagutte'),
(9790, 6, 'baugette'),
(9734, 6, 'daloon'),
(9649, 6, 'danish'),
(9651, 6, 'home'),
(9765, 6, 'ipods'),
(9921, 6, 'mediano'),
(9764, 6, 'normal'),
(9737, 6, 'pies'),
(9736, 6, 'rolls'),
(9871, 6, 'rustic'),
(9735, 6, 'spring'),
(9653, 7, 'bacon'),
(9766, 7, 'baguette'),
(9873, 7, 'bagutte'),
(9793, 7, 'baugette'),
(9739, 7, 'daloon'),
(9652, 7, 'danish'),
(9654, 7, 'home'),
(9768, 7, 'ipods'),
(9924, 7, 'mediano'),
(9767, 7, 'normal'),
(9742, 7, 'pies'),
(9741, 7, 'rolls'),
(9874, 7, 'rustic'),
(9740, 7, 'spring'),
(9656, 8, 'bacon'),
(9769, 8, 'baguette'),
(9876, 8, 'bagutte'),
(9796, 8, 'baugette'),
(9744, 8, 'daloon'),
(9655, 8, 'danish'),
(9657, 8, 'home'),
(9771, 8, 'ipods'),
(9927, 8, 'mediano'),
(9770, 8, 'normal'),
(9747, 8, 'pies'),
(9746, 8, 'rolls'),
(9877, 8, 'rustic'),
(9745, 8, 'spring');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_sekeyword`
--

DROP TABLE IF EXISTS `ps_sekeyword`;
CREATE TABLE IF NOT EXISTS `ps_sekeyword` (
  `id_sekeyword` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_sekeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_specific_price`
--

DROP TABLE IF EXISTS `ps_specific_price`;
CREATE TABLE IF NOT EXISTS `ps_specific_price` (
  `id_specific_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` tinyint(3) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` smallint(5) unsigned NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price`),
  KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_specific_price_priority`
--

DROP TABLE IF EXISTS `ps_specific_price_priority`;
CREATE TABLE IF NOT EXISTS `ps_specific_price_priority` (
  `id_specific_price_priority` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `priority` varchar(80) NOT NULL,
  PRIMARY KEY (`id_specific_price_priority`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_state`
--

DROP TABLE IF EXISTS `ps_state`;
CREATE TABLE IF NOT EXISTS `ps_state` (
  `id_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` char(4) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `id_zone` (`id_zone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=233 ;

--
-- Volcado de datos para la tabla `ps_state`
--

INSERT INTO `ps_state` (`id_state`, `id_country`, `id_zone`, `name`, `iso_code`, `tax_behavior`, `active`) VALUES
(1, 21, 2, 'Alabama', 'AL', 0, 1),
(2, 21, 2, 'Alaska', 'AK', 0, 1),
(3, 21, 2, 'Arizona', 'AZ', 0, 1),
(4, 21, 2, 'Arkansas', 'AR', 0, 1),
(5, 21, 2, 'California', 'CA', 0, 1),
(6, 21, 2, 'Colorado', 'CO', 0, 1),
(7, 21, 2, 'Connecticut', 'CT', 0, 1),
(8, 21, 2, 'Delaware', 'DE', 0, 1),
(9, 21, 2, 'Florida', 'FL', 0, 1),
(10, 21, 2, 'Georgia', 'GA', 0, 1),
(11, 21, 2, 'Hawaii', 'HI', 0, 1),
(12, 21, 2, 'Idaho', 'ID', 0, 1),
(13, 21, 2, 'Illinois', 'IL', 0, 1),
(14, 21, 2, 'Indiana', 'IN', 0, 1),
(15, 21, 2, 'Iowa', 'IA', 0, 1),
(16, 21, 2, 'Kansas', 'KS', 0, 1),
(17, 21, 2, 'Kentucky', 'KY', 0, 1),
(18, 21, 2, 'Louisiana', 'LA', 0, 1),
(19, 21, 2, 'Maine', 'ME', 0, 1),
(20, 21, 2, 'Maryland', 'MD', 0, 1),
(21, 21, 2, 'Massachusetts', 'MA', 0, 1),
(22, 21, 2, 'Michigan', 'MI', 0, 1),
(23, 21, 2, 'Minnesota', 'MN', 0, 1),
(24, 21, 2, 'Mississippi', 'MS', 0, 1),
(25, 21, 2, 'Missouri', 'MO', 0, 1),
(26, 21, 2, 'Montana', 'MT', 0, 1),
(27, 21, 2, 'Nebraska', 'NE', 0, 1),
(28, 21, 2, 'Nevada', 'NV', 0, 1),
(29, 21, 2, 'New Hampshire', 'NH', 0, 1),
(30, 21, 2, 'New Jersey', 'NJ', 0, 1),
(31, 21, 2, 'New Mexico', 'NM', 0, 1),
(32, 21, 2, 'New York', 'NY', 0, 1),
(33, 21, 2, 'North Carolina', 'NC', 0, 1),
(34, 21, 2, 'North Dakota', 'ND', 0, 1),
(35, 21, 2, 'Ohio', 'OH', 0, 1),
(36, 21, 2, 'Oklahoma', 'OK', 0, 1),
(37, 21, 2, 'Oregon', 'OR', 0, 1),
(38, 21, 2, 'Pennsylvania', 'PA', 0, 1),
(39, 21, 2, 'Rhode Island', 'RI', 0, 1),
(40, 21, 2, 'South Carolina', 'SC', 0, 1),
(41, 21, 2, 'South Dakota', 'SD', 0, 1),
(42, 21, 2, 'Tennessee', 'TN', 0, 1),
(43, 21, 2, 'Texas', 'TX', 0, 1),
(44, 21, 2, 'Utah', 'UT', 0, 1),
(45, 21, 2, 'Vermont', 'VT', 0, 1),
(46, 21, 2, 'Virginia', 'VA', 0, 1),
(47, 21, 2, 'Washington', 'WA', 0, 1),
(48, 21, 2, 'West Virginia', 'WV', 0, 1),
(49, 21, 2, 'Wisconsin', 'WI', 0, 1),
(50, 21, 2, 'Wyoming', 'WY', 0, 1),
(51, 21, 2, 'Puerto Rico', 'PR', 0, 1),
(52, 21, 2, 'US Virgin Islands', 'VI', 0, 1),
(53, 21, 2, 'District of Columbia', 'DC', 0, 1),
(54, 145, 2, 'Aguascalientes', 'AGS', 0, 1),
(55, 145, 2, 'Baja California', 'BCN', 0, 1),
(56, 145, 2, 'Baja California Sur', 'BCS', 0, 1),
(57, 145, 2, 'Campeche', 'CAM', 0, 1),
(58, 145, 2, 'Chiapas', 'CHP', 0, 1),
(59, 145, 2, 'Chihuahua', 'CHH', 0, 1),
(60, 145, 2, 'Coahuila', 'COA', 0, 1),
(61, 145, 2, 'Colima', 'COL', 0, 1),
(62, 145, 2, 'Distrito Federal', 'DIF', 0, 1),
(63, 145, 2, 'Durango', 'DUR', 0, 1),
(64, 145, 2, 'Guanajuato', 'GUA', 0, 1),
(65, 145, 2, 'Guerrero', 'GRO', 0, 1),
(66, 145, 2, 'Hidalgo', 'HID', 0, 1),
(67, 145, 2, 'Jalisco', 'JAL', 0, 1),
(68, 145, 2, 'Estado de México', 'MEX', 0, 1),
(69, 145, 2, 'Michoacán', 'MIC', 0, 1),
(70, 145, 2, 'Morelos', 'MOR', 0, 1),
(71, 145, 2, 'Nayarit', 'NAY', 0, 1),
(72, 145, 2, 'Nuevo León', 'NLE', 0, 1),
(73, 145, 2, 'Oaxaca', 'OAX', 0, 1),
(74, 145, 2, 'Puebla', 'PUE', 0, 1),
(75, 145, 2, 'Querétaro', 'QUE', 0, 1),
(76, 145, 2, 'Quintana Roo', 'ROO', 0, 1),
(77, 145, 2, 'San Luis Potosí', 'SLP', 0, 1),
(78, 145, 2, 'Sinaloa', 'SIN', 0, 1),
(79, 145, 2, 'Sonora', 'SON', 0, 1),
(80, 145, 2, 'Tabasco', 'TAB', 0, 1),
(81, 145, 2, 'Tamaulipas', 'TAM', 0, 1),
(82, 145, 2, 'Tlaxcala', 'TLA', 0, 1),
(83, 145, 2, 'Veracruz', 'VER', 0, 1),
(84, 145, 2, 'Yucatán', 'YUC', 0, 1),
(85, 145, 2, 'Zacatecas', 'ZAC', 0, 1),
(86, 4, 2, 'Ontario', 'ON', 0, 1),
(87, 4, 2, 'Quebec', 'QC', 0, 1),
(88, 4, 2, 'British Columbia', 'BC', 0, 1),
(89, 4, 2, 'Alberta', 'AB', 0, 1),
(90, 4, 2, 'Manitoba', 'MB', 0, 1),
(91, 4, 2, 'Saskatchewan', 'SK', 0, 1),
(92, 4, 2, 'Nova Scotia', 'NS', 0, 1),
(93, 4, 2, 'New Brunswick', 'NB', 0, 1),
(94, 4, 2, 'Newfoundland and Labrador', 'NL', 0, 1),
(95, 4, 2, 'Prince Edward Island', 'PE', 0, 1),
(96, 4, 2, 'Northwest Territories', 'NT', 0, 1),
(97, 4, 2, 'Yukon', 'YT', 0, 1),
(98, 4, 2, 'Nunavut', 'NU', 0, 1),
(99, 44, 6, 'Buenos Aires', 'B', 0, 1),
(100, 44, 6, 'Catamarca', 'K', 0, 1),
(101, 44, 6, 'Chaco', 'H', 0, 1),
(102, 44, 6, 'Chubut', 'U', 0, 1),
(103, 44, 6, 'Ciudad de Buenos Aires', 'C', 0, 1),
(104, 44, 6, 'Córdoba', 'X', 0, 1),
(105, 44, 6, 'Corrientes', 'W', 0, 1),
(106, 44, 6, 'Entre Ríos', 'E', 0, 1),
(107, 44, 6, 'Formosa', 'P', 0, 1),
(108, 44, 6, 'Jujuy', 'Y', 0, 1),
(109, 44, 6, 'La Pampa', 'L', 0, 1),
(110, 44, 6, 'La Rioja', 'F', 0, 1),
(111, 44, 6, 'Mendoza', 'M', 0, 1),
(112, 44, 6, 'Misiones', 'N', 0, 1),
(113, 44, 6, 'Neuquén', 'Q', 0, 1),
(114, 44, 6, 'Río Negro', 'R', 0, 1),
(115, 44, 6, 'Salta', 'A', 0, 1),
(116, 44, 6, 'San Juan', 'J', 0, 1),
(117, 44, 6, 'San Luis', 'D', 0, 1),
(118, 44, 6, 'Santa Cruz', 'Z', 0, 1),
(119, 44, 6, 'Santa Fe', 'S', 0, 1),
(120, 44, 6, 'Santiago del Estero', 'G', 0, 1),
(121, 44, 6, 'Tierra del Fuego', 'V', 0, 1),
(122, 44, 6, 'Tucumán', 'T', 0, 1),
(123, 10, 1, 'Agrigento', 'AG', 0, 1),
(124, 10, 1, 'Alessandria', 'AL', 0, 1),
(125, 10, 1, 'Ancona', 'AN', 0, 1),
(126, 10, 1, 'Aosta', 'AO', 0, 1),
(127, 10, 1, 'Arezzo', 'AR', 0, 1),
(128, 10, 1, 'Ascoli Piceno', 'AP', 0, 1),
(129, 10, 1, 'Asti', 'AT', 0, 1),
(130, 10, 1, 'Avellino', 'AV', 0, 1),
(131, 10, 1, 'Bari', 'BA', 0, 1),
(132, 10, 1, 'Barletta-Andria-Trani', 'BT', 0, 1),
(133, 10, 1, 'Belluno', 'BL', 0, 1),
(134, 10, 1, 'Benevento', 'BN', 0, 1),
(135, 10, 1, 'Bergamo', 'BG', 0, 1),
(136, 10, 1, 'Biella', 'BI', 0, 1),
(137, 10, 1, 'Bologna', 'BO', 0, 1),
(138, 10, 1, 'Bolzano', 'BZ', 0, 1),
(139, 10, 1, 'Brescia', 'BS', 0, 1),
(140, 10, 1, 'Brindisi', 'BR', 0, 1),
(141, 10, 1, 'Cagliari', 'CA', 0, 1),
(142, 10, 1, 'Caltanissetta', 'CL', 0, 1),
(143, 10, 1, 'Campobasso', 'CB', 0, 1),
(144, 10, 1, 'Carbonia-Iglesias', 'CI', 0, 1),
(145, 10, 1, 'Caserta', 'CE', 0, 1),
(146, 10, 1, 'Catania', 'CT', 0, 1),
(147, 10, 1, 'Catanzaro', 'CZ', 0, 1),
(148, 10, 1, 'Chieti', 'CH', 0, 1),
(149, 10, 1, 'Como', 'CO', 0, 1),
(150, 10, 1, 'Cosenza', 'CS', 0, 1),
(151, 10, 1, 'Cremona', 'CR', 0, 1),
(152, 10, 1, 'Crotone', 'KR', 0, 1),
(153, 10, 1, 'Cuneo', 'CN', 0, 1),
(154, 10, 1, 'Enna', 'EN', 0, 1),
(155, 10, 1, 'Fermo', 'FM', 0, 1),
(156, 10, 1, 'Ferrara', 'FE', 0, 1),
(157, 10, 1, 'Firenze', 'FI', 0, 1),
(158, 10, 1, 'Foggia', 'FG', 0, 1),
(159, 10, 1, 'Forlì-Cesena', 'FC', 0, 1),
(160, 10, 1, 'Frosinone', 'FR', 0, 1),
(161, 10, 1, 'Genova', 'GE', 0, 1),
(162, 10, 1, 'Gorizia', 'GO', 0, 1),
(163, 10, 1, 'Grosseto', 'GR', 0, 1),
(164, 10, 1, 'Imperia', 'IM', 0, 1),
(165, 10, 1, 'Isernia', 'IS', 0, 1),
(166, 10, 1, 'L''Aquila', 'AQ', 0, 1),
(167, 10, 1, 'La Spezia', 'SP', 0, 1),
(168, 10, 1, 'Latina', 'LT', 0, 1),
(169, 10, 1, 'Lecce', 'LE', 0, 1),
(170, 10, 1, 'Lecco', 'LC', 0, 1),
(171, 10, 1, 'Livorno', 'LI', 0, 1),
(172, 10, 1, 'Lodi', 'LO', 0, 1),
(173, 10, 1, 'Lucca', 'LU', 0, 1),
(174, 10, 1, 'Macerata', 'MC', 0, 1),
(175, 10, 1, 'Mantova', 'MN', 0, 1),
(176, 10, 1, 'Massa', 'MS', 0, 1),
(177, 10, 1, 'Matera', 'MT', 0, 1),
(178, 10, 1, 'Medio Campidano', 'VS', 0, 1),
(179, 10, 1, 'Messina', 'ME', 0, 1),
(180, 10, 1, 'Milano', 'MI', 0, 1),
(181, 10, 1, 'Modena', 'MO', 0, 1),
(182, 10, 1, 'Monza e della Brianza', 'MB', 0, 1),
(183, 10, 1, 'Napoli', 'NA', 0, 1),
(184, 10, 1, 'Novara', 'NO', 0, 1),
(185, 10, 1, 'Nuoro', 'NU', 0, 1),
(186, 10, 1, 'Ogliastra', 'OG', 0, 1),
(187, 10, 1, 'Olbia-Tempio', 'OT', 0, 1),
(188, 10, 1, 'Oristano', 'OR', 0, 1),
(189, 10, 1, 'Padova', 'PD', 0, 1),
(190, 10, 1, 'Palermo', 'PA', 0, 1),
(191, 10, 1, 'Parma', 'PR', 0, 1),
(192, 10, 1, 'Pavia', 'PV', 0, 1),
(193, 10, 1, 'Perugia', 'PG', 0, 1),
(194, 10, 1, 'Pesaro-Urbino', 'PU', 0, 1),
(195, 10, 1, 'Pescara', 'PE', 0, 1),
(196, 10, 1, 'Piacenza', 'PC', 0, 1),
(197, 10, 1, 'Pisa', 'PI', 0, 1),
(198, 10, 1, 'Pistoia', 'PT', 0, 1),
(199, 10, 1, 'Pordenone', 'PN', 0, 1),
(200, 10, 1, 'Potenza', 'PZ', 0, 1),
(201, 10, 1, 'Prato', 'PO', 0, 1),
(202, 10, 1, 'Ragusa', 'RG', 0, 1),
(203, 10, 1, 'Ravenna', 'RA', 0, 1),
(204, 10, 1, 'Reggio Calabria', 'RC', 0, 1),
(205, 10, 1, 'Reggio Emilia', 'RE', 0, 1),
(206, 10, 1, 'Rieti', 'RI', 0, 1),
(207, 10, 1, 'Rimini', 'RN', 0, 1),
(208, 10, 1, 'Roma', 'RM', 0, 1),
(209, 10, 1, 'Rovigo', 'RO', 0, 1),
(210, 10, 1, 'Salerno', 'SA', 0, 1),
(211, 10, 1, 'Sassari', 'SS', 0, 1),
(212, 10, 1, 'Savona', 'SV', 0, 1),
(213, 10, 1, 'Siena', 'SI', 0, 1),
(214, 10, 1, 'Siracusa', 'SR', 0, 1),
(215, 10, 1, 'Sondrio', 'SO', 0, 1),
(216, 10, 1, 'Taranto', 'TA', 0, 1),
(217, 10, 1, 'Teramo', 'TE', 0, 1),
(218, 10, 1, 'Terni', 'TR', 0, 1),
(219, 10, 1, 'Torino', 'TO', 0, 1),
(220, 10, 1, 'Trapani', 'TP', 0, 1),
(221, 10, 1, 'Trento', 'TN', 0, 1),
(222, 10, 1, 'Treviso', 'TV', 0, 1),
(223, 10, 1, 'Trieste', 'TS', 0, 1),
(224, 10, 1, 'Udine', 'UD', 0, 1),
(225, 10, 1, 'Varese', 'VA', 0, 1),
(226, 10, 1, 'Venezia', 'VE', 0, 1),
(227, 10, 1, 'Verbano-Cusio-Ossola', 'VB', 0, 1),
(228, 10, 1, 'Vercelli', 'VC', 0, 1),
(229, 10, 1, 'Verona', 'VR', 0, 1),
(230, 10, 1, 'Vibo Valentia', 'VV', 0, 1),
(231, 10, 1, 'Vicenza', 'VI', 0, 1),
(232, 10, 1, 'Viterbo', 'VT', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_statssearch`
--

DROP TABLE IF EXISTS `ps_statssearch`;
CREATE TABLE IF NOT EXISTS `ps_statssearch` (
  `id_statssearch` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_statssearch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_stock_mvt`
--

DROP TABLE IF EXISTS `ps_stock_mvt`;
CREATE TABLE IF NOT EXISTS `ps_stock_mvt` (
  `id_stock_mvt` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned DEFAULT NULL,
  `id_product_attribute` int(11) unsigned DEFAULT NULL,
  `id_order` int(11) unsigned DEFAULT NULL,
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_stock_mvt`),
  KEY `id_order` (`id_order`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `ps_stock_mvt`
--

INSERT INTO `ps_stock_mvt` (`id_stock_mvt`, `id_product`, `id_product_attribute`, `id_order`, `id_stock_mvt_reason`, `id_employee`, `quantity`, `date_add`, `date_upd`) VALUES
(1, 6, 0, 0, 2, 1, 250, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(2, 8, 0, 0, 2, 1, 1, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(3, 9, 0, 0, 2, 1, 1, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(4, 2, 7, 0, 2, 1, 10, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(5, 2, 8, 0, 2, 1, 20, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(6, 2, 9, 0, 2, 1, 30, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(7, 2, 10, 0, 2, 1, 40, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(8, 5, 12, 0, 2, 1, 100, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(9, 5, 13, 0, 2, 1, 99, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(10, 5, 14, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(11, 5, 15, 0, 2, 1, 25, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(12, 7, 19, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(13, 7, 22, 0, 2, 1, 60, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(14, 7, 23, 0, 2, 1, 70, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(15, 1, 25, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(16, 1, 26, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(17, 1, 27, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(18, 1, 28, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(19, 1, 29, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(20, 1, 30, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(21, 1, 31, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(22, 1, 32, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(23, 1, 33, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(24, 1, 34, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(25, 1, 35, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(26, 1, 36, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(27, 1, 39, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(28, 1, 40, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(29, 1, 41, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(30, 1, 42, 0, 2, 1, 50, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(31, 10, 0, 0, 1, 1, 50, '2011-09-09 14:16:30', '2011-09-09 14:16:30'),
(32, 14, 0, 0, 1, 2, 10, '2011-10-18 12:18:32', '2011-10-18 12:18:32'),
(33, 13, 0, 0, 2, 2, -990, '2011-10-18 12:20:17', '2011-10-18 12:20:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_stock_mvt_reason`
--

DROP TABLE IF EXISTS `ps_stock_mvt_reason`;
CREATE TABLE IF NOT EXISTS `ps_stock_mvt_reason` (
  `id_stock_mvt_reason` int(11) NOT NULL AUTO_INCREMENT,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_stock_mvt_reason`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ps_stock_mvt_reason`
--

INSERT INTO `ps_stock_mvt_reason` (`id_stock_mvt_reason`, `sign`, `date_add`, `date_upd`) VALUES
(1, 1, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(2, -1, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(3, -1, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(4, -1, '2011-09-05 03:03:32', '2011-09-05 03:03:32'),
(5, 1, '2011-09-05 03:03:32', '2011-09-05 03:03:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_stock_mvt_reason_lang`
--

DROP TABLE IF EXISTS `ps_stock_mvt_reason_lang`;
CREATE TABLE IF NOT EXISTS `ps_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_stock_mvt_reason_lang`
--

INSERT INTO `ps_stock_mvt_reason_lang` (`id_stock_mvt_reason`, `id_lang`, `name`) VALUES
(1, 1, 'Increase'),
(1, 2, 'Augmenter'),
(1, 3, 'Aumentar'),
(1, 4, 'Erhöhen'),
(1, 5, 'Increase'),
(1, 6, 'Increase'),
(1, 7, 'Increase'),
(1, 8, 'Increase'),
(2, 1, 'Decrease'),
(2, 2, 'Diminuer'),
(2, 3, 'Disminuir'),
(2, 4, 'Reduzieren'),
(2, 5, 'Decrease'),
(2, 6, 'Decrease'),
(2, 7, 'Decrease'),
(2, 8, 'Decrease'),
(3, 1, 'Order'),
(3, 2, 'Commande'),
(3, 3, 'Pedido'),
(3, 4, 'Bestellung'),
(3, 5, 'Ordine'),
(3, 6, 'Order'),
(3, 7, 'Order'),
(3, 8, 'Order'),
(4, 1, 'Missing Stock Movement'),
(4, 2, 'Mouvement de stock manquant'),
(4, 3, 'Movimiento de stock que falta'),
(4, 4, 'Lagerbewegung nicht stattgefunden'),
(4, 5, 'Movimento di merce mancante'),
(4, 6, 'Missing Stock Movement'),
(4, 7, 'Missing Stock Movement'),
(4, 8, 'Missing Stock Movement'),
(5, 1, 'Restocking'),
(5, 2, 'Réassort'),
(5, 3, 'Reaprovisionar'),
(5, 4, 'Auffüllung'),
(5, 5, 'Riassortimento'),
(5, 6, 'Restocking'),
(5, 7, 'Restocking'),
(5, 8, 'Restocking');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_store`
--

DROP TABLE IF EXISTS `ps_store`;
CREATE TABLE IF NOT EXISTS `ps_store` (
  `id_store` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `hours` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_store`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_store`
--

INSERT INTO `ps_store` (`id_store`, `id_country`, `id_state`, `name`, `address1`, `address2`, `city`, `postcode`, `latitude`, `longitude`, `hours`, `phone`, `fax`, `email`, `note`, `active`, `date_add`, `date_upd`) VALUES
(1, 6, 9, 'Your Kwik Save', 'Av. de la Torre. Centro Comercial Benalmadena.', 'Urb. Torremuelle', 'benalmadena', '29630', 36.579529, -4.567080, 'a:7:{i:0;s:13:"09:00 - 20:30";i:1;s:13:"09:00 - 20:30";i:2;s:13:"09:00 - 20:30";i:3;s:13:"09:00 - 20:30";i:4;s:13:"09:00 - 20:30";i:5;s:13:"09:00 - 20:30";i:6;s:13:"09:00 - 19:00";}', '(034) 952576734', '(034) 952576734', 'info@yourkwiksave.com', NULL, 1, '2010-11-09 10:53:13', '2011-09-05 19:01:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_subdomain`
--

DROP TABLE IF EXISTS `ps_subdomain`;
CREATE TABLE IF NOT EXISTS `ps_subdomain` (
  `id_subdomain` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id_subdomain`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ps_subdomain`
--

INSERT INTO `ps_subdomain` (`id_subdomain`, `name`) VALUES
(1, 'www');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_supplier`
--

DROP TABLE IF EXISTS `ps_supplier`;
CREATE TABLE IF NOT EXISTS `ps_supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_supplier_lang`
--

DROP TABLE IF EXISTS `ps_supplier_lang`;
CREATE TABLE IF NOT EXISTS `ps_supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_tab`
--

DROP TABLE IF EXISTS `ps_tab`;
CREATE TABLE IF NOT EXISTS `ps_tab` (
  `id_tab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Volcado de datos para la tabla `ps_tab`
--

INSERT INTO `ps_tab` (`id_tab`, `id_parent`, `class_name`, `module`, `position`) VALUES
(1, 0, 'AdminCatalog', NULL, 1),
(2, 0, 'AdminCustomers', NULL, 2),
(3, 0, 'AdminOrders', NULL, 3),
(4, 0, 'AdminPayment', NULL, 4),
(5, 0, 'AdminShipping', NULL, 5),
(6, 0, 'AdminStats', NULL, 6),
(7, 0, 'AdminModules', NULL, 7),
(8, 0, 'AdminPreferences', NULL, 9),
(9, 0, 'AdminTools', NULL, 10),
(10, 1, 'AdminManufacturers', NULL, 2),
(11, 1, 'AdminAttributesGroups', NULL, 4),
(12, 2, 'AdminAddresses', NULL, 1),
(13, 3, 'AdminStatuses', NULL, 6),
(14, 4, 'AdminDiscounts', NULL, 4),
(15, 4, 'AdminCurrencies', NULL, 1),
(16, 4, 'AdminTaxes', NULL, 2),
(17, 5, 'AdminCarriers', NULL, 1),
(18, 5, 'AdminCountries', NULL, 3),
(19, 5, 'AdminZones', NULL, 5),
(20, 5, 'AdminRangePrice', NULL, 6),
(21, 5, 'AdminRangeWeight', NULL, 7),
(22, 7, 'AdminModulesPositions', NULL, 4),
(23, 8, 'AdminDb', NULL, 7),
(24, 8, 'AdminEmails', NULL, 5),
(26, 8, 'AdminImages', NULL, 6),
(27, 8, 'AdminPPreferences', NULL, 4),
(28, 29, 'AdminContacts', NULL, 3),
(29, 0, 'AdminEmployees', NULL, 8),
(30, 29, 'AdminProfiles', NULL, 1),
(31, 29, 'AdminAccess', NULL, 2),
(32, 9, 'AdminLanguages', NULL, 1),
(33, 9, 'AdminTranslations', NULL, 2),
(34, 1, 'AdminSuppliers', NULL, 3),
(35, 29, 'AdminTabs', NULL, 3),
(36, 1, 'AdminFeatures', NULL, 5),
(37, 9, 'AdminQuickAccesses', NULL, 4),
(38, 8, 'AdminAppearance', NULL, 2),
(39, 8, 'AdminContact', NULL, 1),
(40, 8, 'AdminAliases', NULL, 5),
(41, 9, 'AdminImport', NULL, 6),
(42, 3, 'AdminInvoices', NULL, 1),
(43, -1, 'AdminSearch', NULL, 0),
(44, 8, 'AdminLocalization', NULL, 9),
(46, 5, 'AdminStates', NULL, 2),
(47, 3, 'AdminReturn', NULL, 3),
(48, 3, 'AdminPDF', NULL, 8),
(49, 3, 'AdminSlip', NULL, 4),
(51, 6, 'AdminStatsConf', NULL, 1),
(52, 9, 'AdminSubDomains', NULL, 7),
(53, 9, 'AdminBackup', NULL, 8),
(54, 3, 'AdminOrderMessage', NULL, 7),
(55, 3, 'AdminDeliverySlip', NULL, 2),
(56, 8, 'AdminMeta', NULL, 3),
(57, 9, 'AdminCMSContent', NULL, 9),
(58, 1, 'AdminScenes', NULL, 6),
(59, 3, 'AdminMessages', NULL, 5),
(60, 1, 'AdminTracking', NULL, 1),
(61, 6, 'AdminSearchEngines', NULL, 2),
(62, 6, 'AdminReferrers', NULL, 3),
(63, 2, 'AdminGroups', NULL, 2),
(64, 9, 'AdminGenerator', NULL, 10),
(65, 2, 'AdminCarts', NULL, 3),
(66, 1, 'AdminTags', NULL, 7),
(67, 8, 'AdminSearchConf', NULL, 10),
(68, 1, 'AdminAttachments', NULL, 7),
(69, 9, 'AdminInformation', NULL, 11),
(70, 8, 'AdminPerformance', NULL, 11),
(71, 29, 'AdminCustomerThreads', NULL, 4),
(72, 9, 'AdminWebservice', NULL, 12),
(73, 1, 'AdminStockMvt', NULL, 9),
(80, 7, 'AdminAddonsCatalog', NULL, 1),
(81, 7, 'AdminAddonsMyAccount', NULL, 2),
(82, 9, 'AdminStores', NULL, 11),
(83, 7, 'AdminThemes', NULL, 3),
(84, 8, 'AdminGeolocation', NULL, 12),
(85, 4, 'AdminTaxRulesGroup', NULL, 3),
(86, 9, 'AdminLogs', NULL, 13),
(87, 5, 'AdminCounty', NULL, 4),
(88, -1, 'AdminHome', NULL, 0),
(89, 9, 'AdminUpgrade', NULL, 14),
(90, 7, 'AdminModuleMenu', 'jbx_menu', 5),
(91, 2, 'AdminNewsletter', 'newslettertabmodule', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_tab_lang`
--

DROP TABLE IF EXISTS `ps_tab_lang`;
CREATE TABLE IF NOT EXISTS `ps_tab_lang` (
  `id_tab` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_tab_lang`
--

INSERT INTO `ps_tab_lang` (`id_tab`, `id_lang`, `name`) VALUES
(1, 1, 'Catalog'),
(1, 2, 'Catalogue'),
(1, 3, 'Catálogo'),
(1, 4, 'Katalog'),
(1, 5, 'Catalogo'),
(1, 6, 'Catalog'),
(1, 7, 'Catalog'),
(1, 8, 'Catalog'),
(2, 1, 'Customers'),
(2, 2, 'Clients'),
(2, 3, 'Clientes'),
(2, 4, 'Kunden'),
(2, 5, 'Clienti'),
(2, 6, 'Customers'),
(2, 7, 'Customers'),
(2, 8, 'Customers'),
(3, 1, 'Orders'),
(3, 2, 'Commandes'),
(3, 3, 'Pedidos'),
(3, 4, 'Bestellungen'),
(3, 5, 'Ordini'),
(3, 6, 'Orders'),
(3, 7, 'Orders'),
(3, 8, 'Orders'),
(4, 1, 'Payment'),
(4, 2, 'Paiement'),
(4, 3, 'Pago'),
(4, 4, 'Zahlung'),
(4, 5, 'Pagamento'),
(4, 6, 'Payment'),
(4, 7, 'Payment'),
(4, 8, 'Payment'),
(5, 1, 'Shipping'),
(5, 2, 'Transport'),
(5, 3, 'Transporte'),
(5, 4, 'Versandkosten'),
(5, 5, 'Spedizione'),
(5, 6, 'Shipping'),
(5, 7, 'Shipping'),
(5, 8, 'Shipping'),
(6, 1, 'Stats'),
(6, 2, 'Stats'),
(6, 3, 'Estadísticas'),
(6, 4, 'Statistik'),
(6, 5, 'Stat'),
(6, 6, 'Stats'),
(6, 7, 'Stats'),
(6, 8, 'Stats'),
(7, 1, 'Modules'),
(7, 2, 'Modules'),
(7, 3, 'Módulos'),
(7, 4, 'Module'),
(7, 5, 'Moduli'),
(7, 6, 'Modules'),
(7, 7, 'Modules'),
(7, 8, 'Modules'),
(8, 1, 'Preferences'),
(8, 2, 'Préférences'),
(8, 3, 'Preferencias'),
(8, 4, 'Voreinstellungen'),
(8, 5, 'Preferenze'),
(8, 6, 'Preferences'),
(8, 7, 'Preferences'),
(8, 8, 'Preferences'),
(9, 1, 'Tools'),
(9, 2, 'Outils'),
(9, 3, 'Herramientas'),
(9, 4, 'Tools'),
(9, 5, 'Strumenti'),
(9, 6, 'Tools'),
(9, 7, 'Tools'),
(9, 8, 'Tools'),
(10, 1, 'Manufacturers'),
(10, 2, 'Marques'),
(10, 3, 'Fabricantes'),
(10, 4, 'Hersteller'),
(10, 5, 'Produttori'),
(10, 6, 'Manufacturers'),
(10, 7, 'Manufacturers'),
(10, 8, 'Manufacturers'),
(11, 1, 'Attributes and Groups'),
(11, 2, 'Attributs et groupes'),
(11, 3, 'Atributos y grupos'),
(11, 4, 'Attribute und Gruppen'),
(11, 5, 'Attributi e Gruppi'),
(11, 6, 'Attributes and Groups'),
(11, 7, 'Attributes and Groups'),
(11, 8, 'Attributes and Groups'),
(12, 1, 'Addresses'),
(12, 2, 'Adresses'),
(12, 3, 'Direcciones'),
(12, 4, 'Adressen'),
(12, 5, 'Indirizzi'),
(12, 6, 'Addresses'),
(12, 7, 'Addresses'),
(12, 8, 'Addresses'),
(13, 1, 'Statuses'),
(13, 2, 'Statuts'),
(13, 3, 'Estados'),
(13, 4, 'Status'),
(13, 5, 'Status'),
(13, 6, 'Statuses'),
(13, 7, 'Statuses'),
(13, 8, 'Statuses'),
(14, 1, 'Vouchers'),
(14, 2, 'Bons de réduction'),
(14, 3, 'Vales de descuento'),
(14, 4, 'Gutscheine'),
(14, 5, 'Voucher'),
(14, 6, 'Vouchers'),
(14, 7, 'Vouchers'),
(14, 8, 'Vouchers'),
(15, 1, 'Currencies'),
(15, 2, 'Devises'),
(15, 3, 'Divisas'),
(15, 4, 'Währungen'),
(15, 5, 'Valute'),
(15, 6, 'Currencies'),
(15, 7, 'Currencies'),
(15, 8, 'Currencies'),
(16, 1, 'Taxes'),
(16, 2, 'Taxes'),
(16, 3, 'Impuestos'),
(16, 4, 'Steuern'),
(16, 5, 'Tasse'),
(16, 6, 'Taxes'),
(16, 7, 'Taxes'),
(16, 8, 'Taxes'),
(17, 1, 'Carriers'),
(17, 2, 'Transporteurs'),
(17, 3, 'Transportistas'),
(17, 4, 'Lieferanten'),
(17, 5, 'Corrieri'),
(17, 6, 'Carriers'),
(17, 7, 'Carriers'),
(17, 8, 'Carriers'),
(18, 1, 'Countries'),
(18, 2, 'Pays'),
(18, 3, 'Países'),
(18, 4, 'Länder'),
(18, 5, 'Nazioni'),
(18, 6, 'Countries'),
(18, 7, 'Countries'),
(18, 8, 'Countries'),
(19, 1, 'Zones'),
(19, 2, 'Zones'),
(19, 3, 'Zonas'),
(19, 4, 'Zonen'),
(19, 5, 'Zone'),
(19, 6, 'Zones'),
(19, 7, 'Zones'),
(19, 8, 'Zones'),
(20, 1, 'Price Ranges'),
(20, 2, 'Tranches de prix'),
(20, 3, 'Franja de precios'),
(20, 4, 'Preislagen'),
(20, 5, 'Fasce di prezzo'),
(20, 6, 'Price Ranges'),
(20, 7, 'Price Ranges'),
(20, 8, 'Price Ranges'),
(21, 1, 'Weight Ranges'),
(21, 2, 'Tranches de poids'),
(21, 3, 'Franja de pesos'),
(21, 4, 'Gewichtsklassen'),
(21, 5, 'Fasce di peso'),
(21, 6, 'Weight Ranges'),
(21, 7, 'Weight Ranges'),
(21, 8, 'Weight Ranges'),
(22, 1, 'Positions'),
(22, 2, 'Positions'),
(22, 3, 'Posiciones'),
(22, 4, 'Positionen'),
(22, 5, 'Posizioni'),
(22, 6, 'Positions'),
(22, 7, 'Positions'),
(22, 8, 'Positions'),
(23, 1, 'Database'),
(23, 2, 'Base de données'),
(23, 3, 'Base de datos'),
(23, 4, 'Datenbank'),
(23, 5, 'Database'),
(23, 6, 'Database'),
(23, 7, 'Database'),
(23, 8, 'Database'),
(24, 1, 'E-mail'),
(24, 2, 'Emails'),
(24, 3, 'Emails'),
(24, 4, 'E-Mail'),
(24, 5, 'E-mail'),
(24, 6, 'E-mail'),
(24, 7, 'E-mail'),
(24, 8, 'E-mail'),
(26, 1, 'Image'),
(26, 2, 'Images'),
(26, 3, 'Imágenes'),
(26, 4, 'Bild'),
(26, 5, 'Immagine'),
(26, 6, 'Image'),
(26, 7, 'Image'),
(26, 8, 'Image'),
(27, 1, 'Products'),
(27, 2, 'Produits'),
(27, 3, 'Productos'),
(27, 4, 'Produkte'),
(27, 5, 'Prodotti'),
(27, 6, 'Products'),
(27, 7, 'Products'),
(27, 8, 'Products'),
(28, 1, 'Contacts'),
(28, 2, 'Contacts'),
(28, 3, 'Contactos'),
(28, 4, 'Kontakte'),
(28, 5, 'Contatti'),
(28, 6, 'Contacts'),
(28, 7, 'Contacts'),
(28, 8, 'Contacts'),
(29, 1, 'Employees'),
(29, 2, 'Employés'),
(29, 3, 'Empleados'),
(29, 4, 'Mitarbeiter'),
(29, 5, 'Impiegati'),
(29, 6, 'Employees'),
(29, 7, 'Employees'),
(29, 8, 'Employees'),
(30, 1, 'Profiles'),
(30, 2, 'Profils'),
(30, 3, 'Perfiles'),
(30, 4, 'Profile'),
(30, 5, 'Profili'),
(30, 6, 'Profiles'),
(30, 7, 'Profiles'),
(30, 8, 'Profiles'),
(31, 1, 'Permissions'),
(31, 2, 'Permissions'),
(31, 3, 'Permisos'),
(31, 4, 'Berechtigungen'),
(31, 5, 'Permessi'),
(31, 6, 'Permissions'),
(31, 7, 'Permissions'),
(31, 8, 'Permissions'),
(32, 1, 'Languages'),
(32, 2, 'Langues'),
(32, 3, 'Idiomas'),
(32, 4, 'Sprachen'),
(32, 5, 'Lingue'),
(32, 6, 'Languages'),
(32, 7, 'Languages'),
(32, 8, 'Languages'),
(33, 1, 'Translations'),
(33, 2, 'Traductions'),
(33, 3, 'Traducciones'),
(33, 4, 'Übersetzungen'),
(33, 5, 'Traduzioni'),
(33, 6, 'Translations'),
(33, 7, 'Translations'),
(33, 8, 'Translations'),
(34, 1, 'Suppliers'),
(34, 2, 'Fournisseurs'),
(34, 3, 'Proveedores'),
(34, 4, 'Zulieferer'),
(34, 5, 'Fornitori'),
(34, 6, 'Suppliers'),
(34, 7, 'Suppliers'),
(34, 8, 'Suppliers'),
(35, 1, 'Tabs'),
(35, 2, 'Onglets'),
(35, 3, 'Pestañas'),
(35, 4, 'Tabs'),
(35, 5, 'Tab'),
(35, 6, 'Tabs'),
(35, 7, 'Tabs'),
(35, 8, 'Tabs'),
(36, 1, 'Features'),
(36, 2, 'Caractéristiques'),
(36, 3, 'Características'),
(36, 4, 'Funktionen'),
(36, 5, 'Caratteristiche'),
(36, 6, 'Features'),
(36, 7, 'Features'),
(36, 8, 'Features'),
(37, 1, 'Quick Access'),
(37, 2, 'Accès rapide'),
(37, 3, 'Acceso rápido'),
(37, 4, 'Schnellzugriff'),
(37, 5, 'Accesso rapido'),
(37, 6, 'Quick Access'),
(37, 7, 'Quick Access'),
(37, 8, 'Quick Access'),
(38, 1, 'Appearance'),
(38, 2, 'Apparence'),
(38, 3, 'Aspecto'),
(38, 4, 'Aussehen'),
(38, 5, 'Aspetto'),
(38, 6, 'Appearance'),
(38, 7, 'Appearance'),
(38, 8, 'Appearance'),
(39, 1, 'Contact Information'),
(39, 2, 'Coordonnées'),
(39, 3, 'Datos'),
(39, 4, 'Kontaktinformation'),
(39, 5, 'Informazioni di contatto'),
(39, 6, 'Contact Information'),
(39, 7, 'Contact Information'),
(39, 8, 'Contact Information'),
(40, 1, 'Aliases'),
(40, 2, 'Alias'),
(40, 3, 'Alias'),
(40, 4, 'Alias'),
(40, 5, 'Alias'),
(40, 6, 'Aliases'),
(40, 7, 'Aliases'),
(40, 8, 'Aliases'),
(41, 1, 'Import'),
(41, 2, 'Import'),
(41, 3, 'Importar'),
(41, 4, 'Import'),
(41, 5, 'Importa'),
(41, 6, 'Import'),
(41, 7, 'Import'),
(41, 8, 'Import'),
(42, 1, 'Invoices'),
(42, 2, 'Factures'),
(42, 3, 'Facturas'),
(42, 4, 'Rechnungen'),
(42, 5, 'Fatture'),
(42, 6, 'Invoices'),
(42, 7, 'Invoices'),
(42, 8, 'Invoices'),
(43, 1, 'Search'),
(43, 2, 'Recherche'),
(43, 3, 'Búsqueda'),
(43, 4, 'Suche'),
(43, 5, 'Cerca'),
(43, 6, 'Search'),
(43, 7, 'Search'),
(43, 8, 'Search'),
(44, 1, 'Localization'),
(44, 2, 'Localisation'),
(44, 3, 'Ubicación'),
(44, 4, 'Lokalisierung'),
(44, 5, 'Localizzazione'),
(44, 6, 'Localization'),
(44, 7, 'Localization'),
(44, 8, 'Localization'),
(46, 1, 'States'),
(46, 2, 'Etats'),
(46, 3, 'Estados'),
(46, 4, 'Staaten'),
(46, 5, 'Stati'),
(46, 6, 'States'),
(46, 7, 'States'),
(46, 8, 'States'),
(47, 1, 'Merchandise Returns'),
(47, 2, 'Retours produits'),
(47, 3, 'Devolución productos'),
(47, 4, 'Warenrücksendungen'),
(47, 5, 'Resi merci'),
(47, 6, 'Merchandise Returns'),
(47, 7, 'Merchandise Returns'),
(47, 8, 'Merchandise Returns'),
(48, 1, 'PDF'),
(48, 2, 'PDF'),
(48, 3, 'PDF'),
(48, 4, 'PDF'),
(48, 5, 'PDF'),
(48, 6, 'PDF'),
(48, 7, 'PDF'),
(48, 8, 'PDF'),
(49, 1, 'Credit Slips'),
(49, 2, 'Avoirs'),
(49, 3, 'Vales'),
(49, 4, 'Gutscheine'),
(49, 5, 'Note di credito'),
(49, 6, 'Credit Slips'),
(49, 7, 'Credit Slips'),
(49, 8, 'Credit Slips'),
(51, 1, 'Settings'),
(51, 2, 'Configuration'),
(51, 3, 'Configuración'),
(51, 4, 'Einstellungen'),
(51, 5, 'Impostazioni'),
(51, 6, 'Settings'),
(51, 7, 'Settings'),
(51, 8, 'Settings'),
(52, 1, 'Subdomains'),
(52, 2, 'Sous domaines'),
(52, 3, 'Subcampos'),
(52, 4, 'Subdomains'),
(52, 5, 'Sottodomini'),
(52, 6, 'Subdomains'),
(52, 7, 'Subdomains'),
(52, 8, 'Subdomains'),
(53, 1, 'DB backup'),
(53, 2, 'Sauvegarde BDD'),
(53, 3, 'Copia de seguridad'),
(53, 4, 'DB-Backup'),
(53, 5, 'DB backup'),
(53, 6, 'DB backup'),
(53, 7, 'DB backup'),
(53, 8, 'DB backup'),
(54, 1, 'Order Messages'),
(54, 2, 'Messages prédéfinis'),
(54, 3, 'Mensajes de Orden'),
(54, 4, 'Bestellnachrichten'),
(54, 5, 'Messaggi ordine'),
(54, 6, 'Order Messages'),
(54, 7, 'Order Messages'),
(54, 8, 'Order Messages'),
(55, 1, 'Delivery Slips'),
(55, 2, 'Bons de livraison'),
(55, 3, 'Albaranes de entrega'),
(55, 4, 'Lieferscheine'),
(55, 5, 'Note di consegna'),
(55, 6, 'Delivery Slips'),
(55, 7, 'Delivery Slips'),
(55, 8, 'Delivery Slips'),
(56, 1, 'SEO & URLs'),
(56, 2, 'SEO & URLs'),
(56, 3, 'SEO & URLs'),
(56, 4, 'SEO & URLs'),
(56, 5, 'SEO & URLs'),
(56, 6, 'SEO & URLs'),
(56, 7, 'SEO & URLs'),
(56, 8, 'SEO & URLs'),
(57, 1, 'CMS'),
(57, 2, 'CMS'),
(57, 3, 'CMS'),
(57, 4, 'CMS'),
(57, 5, 'CMS'),
(57, 6, 'CMS'),
(57, 7, 'CMS'),
(57, 8, 'CMS'),
(58, 1, 'Image Mapping'),
(58, 2, 'Scènes'),
(58, 3, 'Mapeo de la imagen'),
(58, 4, 'Image Mapping'),
(58, 5, 'Mappatura immagine'),
(58, 6, 'Image Mapping'),
(58, 7, 'Image Mapping'),
(58, 8, 'Image Mapping'),
(59, 1, 'Customer Messages'),
(59, 2, 'Messages clients'),
(59, 3, 'Mensajes del cliente'),
(59, 4, 'Kundennachrichten'),
(59, 5, 'Messaggi cliente'),
(59, 6, 'Customer Messages'),
(59, 7, 'Customer Messages'),
(59, 8, 'Customer Messages'),
(60, 1, 'Tracking'),
(60, 2, 'Suivi'),
(60, 3, 'Rastreo'),
(60, 4, 'Tracking'),
(60, 5, 'Rintracciare'),
(60, 6, 'Tracking'),
(60, 7, 'Tracking'),
(60, 8, 'Tracking'),
(61, 1, 'Search Engines'),
(61, 2, 'Moteurs de recherche'),
(61, 3, 'Motores de búsqueda'),
(61, 4, 'Suchmaschinen'),
(61, 5, 'Motori di ricerca'),
(61, 6, 'Search Engines'),
(61, 7, 'Search Engines'),
(61, 8, 'Search Engines'),
(62, 1, 'Referrers'),
(62, 2, 'Sites affluents'),
(62, 3, 'Referido'),
(62, 4, 'Referrer'),
(62, 5, 'Referenti'),
(62, 6, 'Referrers'),
(62, 7, 'Referrers'),
(62, 8, 'Referrers'),
(63, 1, 'Groups'),
(63, 2, 'Groupes'),
(63, 3, 'Grupos'),
(63, 4, 'Gruppen'),
(63, 5, 'Gruppi'),
(63, 6, 'Groups'),
(63, 7, 'Groups'),
(63, 8, 'Groups'),
(64, 1, 'Generators'),
(64, 2, 'Générateurs'),
(64, 3, 'Generadores'),
(64, 4, 'Generatoren'),
(64, 5, 'Generatori'),
(64, 6, 'Generators'),
(64, 7, 'Generators'),
(64, 8, 'Generators'),
(65, 1, 'Shopping Carts'),
(65, 2, 'Paniers'),
(65, 3, 'Carritos'),
(65, 4, 'Warenkörbe'),
(65, 5, 'Carrelli shopping'),
(65, 6, 'Shopping Carts'),
(65, 7, 'Shopping Carts'),
(65, 8, 'Shopping Carts'),
(66, 1, 'Tags'),
(66, 2, 'Tags'),
(66, 3, 'Etiquetas'),
(66, 4, 'Tags'),
(66, 5, 'Tag'),
(66, 6, 'Tags'),
(66, 7, 'Tags'),
(66, 8, 'Tags'),
(67, 1, 'Search'),
(67, 2, 'Recherche'),
(67, 3, 'Búsqueda'),
(67, 4, 'Suche'),
(67, 5, 'Cerca'),
(67, 6, 'Search'),
(67, 7, 'Search'),
(67, 8, 'Search'),
(68, 1, 'Attachments'),
(68, 2, 'Documents joints'),
(68, 3, 'Adjuntos'),
(68, 4, 'Anhänge'),
(68, 5, 'Allegati'),
(68, 6, 'Attachments'),
(68, 7, 'Attachments'),
(68, 8, 'Attachments'),
(69, 1, 'Configuration Information'),
(69, 2, 'Informations'),
(69, 3, 'Informaciones'),
(69, 4, 'Konfigurationsinformationen'),
(69, 5, 'Informazioni di configurazione'),
(69, 6, 'Configuration Information'),
(69, 7, 'Configuration Information'),
(69, 8, 'Configuration Information'),
(70, 1, 'Performance'),
(70, 2, 'Performances'),
(70, 3, 'Rendimiento'),
(70, 4, 'Leistung'),
(70, 5, 'Performance'),
(70, 6, 'Performance'),
(70, 7, 'Performance'),
(70, 8, 'Performance'),
(71, 1, 'Customer Service'),
(71, 2, 'SAV'),
(71, 3, 'Servicio al cliente'),
(71, 4, 'Kundenservice'),
(71, 5, 'Servizio clienti'),
(71, 6, 'Customer Service'),
(71, 7, 'Customer Service'),
(71, 8, 'Customer Service'),
(72, 1, 'Webservice'),
(72, 2, 'Service web'),
(72, 3, 'Web service'),
(72, 4, 'Webservice'),
(72, 5, 'Webservice'),
(72, 6, 'Webservice'),
(72, 7, 'Webservice'),
(72, 8, 'Webservice'),
(73, 1, 'Stock Movements'),
(73, 2, 'Mouvements de Stock'),
(73, 3, 'Movimiento de Stock'),
(73, 4, 'Lagerbewegungen'),
(73, 5, 'Movimenti magazzino'),
(73, 6, 'Stock Movements'),
(73, 7, 'Stock Movements'),
(73, 8, 'Stock Movements'),
(80, 1, 'Modules & Themes Catalog'),
(80, 2, 'Catalogue de modules et thèmes'),
(80, 3, 'Modules & Themes Catalog'),
(80, 4, 'Module und Themenkatalog'),
(80, 5, 'Moduli & Temi catalogo'),
(80, 6, 'Modules & Themes Catalog'),
(80, 7, 'Modules & Themes Catalog'),
(80, 8, 'Modules & Themes Catalog'),
(81, 1, 'My Account'),
(81, 2, 'Mon compte'),
(81, 3, 'My Account'),
(81, 4, 'Mein Konto'),
(81, 5, 'Il mio Account'),
(81, 6, 'My Account'),
(81, 7, 'My Account'),
(81, 8, 'My Account'),
(82, 1, 'Stores'),
(82, 2, 'Magasins'),
(82, 3, 'Tiendas'),
(82, 4, 'Shops'),
(82, 5, 'Negozi'),
(82, 6, 'Stores'),
(82, 7, 'Stores'),
(82, 8, 'Stores'),
(83, 1, 'Themes'),
(83, 2, 'Thèmes'),
(83, 3, 'Temas'),
(83, 4, 'Themen'),
(83, 5, 'Temi'),
(83, 6, 'Themes'),
(83, 7, 'Themes'),
(83, 8, 'Themes'),
(84, 1, 'Geolocation'),
(84, 2, 'Géolocalisation'),
(84, 3, 'Geolocalización'),
(84, 4, 'Geotargeting'),
(84, 5, 'Geolocalizzazione'),
(84, 6, 'Geolocation'),
(84, 7, 'Geolocation'),
(84, 8, 'Geolocation'),
(85, 1, 'Tax Rules'),
(85, 2, 'Règles de taxes'),
(85, 3, 'Reglas de Impuestos'),
(85, 4, 'Steuerregeln'),
(85, 5, 'Regimi fiscali'),
(85, 6, 'Tax Rules'),
(85, 7, 'Tax Rules'),
(85, 8, 'Tax Rules'),
(86, 1, 'Log'),
(86, 2, 'Log'),
(86, 3, 'Log'),
(86, 4, 'Log'),
(86, 5, 'Log'),
(86, 6, 'Log'),
(86, 7, 'Log'),
(86, 8, 'Log'),
(87, 1, 'Counties'),
(87, 2, 'Comtés'),
(87, 3, 'Condados'),
(87, 4, 'Counties'),
(87, 5, 'Counties'),
(87, 6, 'Counties'),
(87, 7, 'Counties'),
(87, 8, 'Counties'),
(88, 1, 'Home'),
(88, 2, 'Accueil'),
(88, 3, 'Home'),
(88, 4, 'Home'),
(88, 5, 'Home'),
(88, 6, 'Home'),
(88, 7, 'Home'),
(88, 8, 'Home'),
(89, 1, 'Upgrade'),
(89, 2, 'Mise à jour'),
(89, 3, 'Mejorar'),
(89, 4, 'Upgrade'),
(89, 5, 'Aggiornamento'),
(89, 6, 'Upgrade'),
(89, 7, 'Upgrade'),
(89, 8, 'Upgrade'),
(90, 1, 'Menu'),
(90, 2, 'Menu'),
(90, 3, 'Menu'),
(90, 4, 'Menu'),
(90, 5, 'Menu'),
(90, 6, 'Menu'),
(90, 7, 'Menu'),
(90, 8, 'Menu'),
(91, 1, 'Newsletters'),
(91, 2, 'Newsletters'),
(91, 3, 'Newsletters'),
(91, 4, 'Newsletters'),
(91, 5, 'Newsletters'),
(91, 6, 'Newsletters'),
(91, 7, 'Newsletters'),
(91, 8, 'Newsletters');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_tag`
--

DROP TABLE IF EXISTS `ps_tag`;
CREATE TABLE IF NOT EXISTS `ps_tag` (
  `id_tag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `ps_tag`
--

INSERT INTO `ps_tag` (`id_tag`, `id_lang`, `name`) VALUES
(1, 1, 'baguette'),
(2, 1, 'bread'),
(3, 1, 'Baguette rustic'),
(4, 1, 'mediano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_tax`
--

DROP TABLE IF EXISTS `ps_tax`;
CREATE TABLE IF NOT EXISTS `ps_tax` (
  `id_tax` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tax`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ps_tax`
--

INSERT INTO `ps_tax` (`id_tax`, `rate`, `active`) VALUES
(1, 18.000, 1),
(2, 8.000, 1),
(3, 4.000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_tax_lang`
--

DROP TABLE IF EXISTS `ps_tax_lang`;
CREATE TABLE IF NOT EXISTS `ps_tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  UNIQUE KEY `tax_lang_index` (`id_tax`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ps_tax_lang`
--

INSERT INTO `ps_tax_lang` (`id_tax`, `id_lang`, `name`) VALUES
(1, 1, 'IVA ES 18%'),
(1, 2, 'IVA ES 18%'),
(1, 3, 'IVA ES 18%'),
(1, 4, 'IVA ES 18%'),
(1, 5, 'IVA ES 18%'),
(1, 6, 'IVA ES 18%'),
(1, 7, 'IVA ES 18%'),
(1, 8, 'IVA ES 18%'),
(2, 1, 'IVA ES 8%'),
(2, 2, 'IVA ES 8%'),
(2, 3, 'IVA ES 8%'),
(2, 4, 'IVA ES 8%'),
(2, 5, 'IVA ES 8%'),
(2, 6, 'IVA ES 8%'),
(2, 7, 'IVA ES 8%'),
(2, 8, 'IVA ES 8%'),
(3, 1, 'IVA ES 4%'),
(3, 2, 'IVA ES 4%'),
(3, 3, 'IVA ES 4%'),
(3, 4, 'IVA ES 4%'),
(3, 5, 'IVA ES 4%'),
(3, 6, 'IVA ES 4%'),
(3, 7, 'IVA ES 4%'),
(3, 8, 'IVA ES 4%');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_tax_rule`
--

DROP TABLE IF EXISTS `ps_tax_rule`;
CREATE TABLE IF NOT EXISTS `ps_tax_rule` (
  `id_tax_rule` int(11) NOT NULL AUTO_INCREMENT,
  `id_tax_rules_group` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `id_county` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `state_behavior` int(11) NOT NULL,
  `county_behavior` int(11) NOT NULL,
  PRIMARY KEY (`id_tax_rule`),
  UNIQUE KEY `tax_rule` (`id_tax_rules_group`,`id_country`,`id_state`,`id_county`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Volcado de datos para la tabla `ps_tax_rule`
--

INSERT INTO `ps_tax_rule` (`id_tax_rule`, `id_tax_rules_group`, `id_country`, `id_state`, `id_county`, `id_tax`, `state_behavior`, `county_behavior`) VALUES
(1, 1, 3, 0, 0, 1, 0, 0),
(2, 1, 236, 0, 0, 1, 0, 0),
(3, 1, 16, 0, 0, 1, 0, 0),
(4, 1, 20, 0, 0, 1, 0, 0),
(5, 1, 1, 0, 0, 1, 0, 0),
(6, 1, 86, 0, 0, 1, 0, 0),
(7, 1, 9, 0, 0, 1, 0, 0),
(8, 1, 6, 0, 0, 1, 0, 0),
(9, 1, 8, 0, 0, 1, 0, 0),
(10, 1, 26, 0, 0, 1, 0, 0),
(11, 1, 10, 0, 0, 1, 0, 0),
(12, 1, 76, 0, 0, 1, 0, 0),
(13, 1, 125, 0, 0, 1, 0, 0),
(14, 1, 131, 0, 0, 1, 0, 0),
(15, 1, 12, 0, 0, 1, 0, 0),
(16, 1, 143, 0, 0, 1, 0, 0),
(17, 1, 139, 0, 0, 1, 0, 0),
(18, 1, 13, 0, 0, 1, 0, 0),
(19, 1, 2, 0, 0, 1, 0, 0),
(20, 1, 14, 0, 0, 1, 0, 0),
(21, 1, 15, 0, 0, 1, 0, 0),
(22, 1, 36, 0, 0, 1, 0, 0),
(23, 1, 193, 0, 0, 1, 0, 0),
(24, 1, 37, 0, 0, 1, 0, 0),
(25, 1, 7, 0, 0, 1, 0, 0),
(26, 1, 18, 0, 0, 1, 0, 0),
(27, 2, 3, 0, 0, 2, 0, 0),
(28, 2, 236, 0, 0, 2, 0, 0),
(29, 2, 16, 0, 0, 2, 0, 0),
(30, 2, 20, 0, 0, 2, 0, 0),
(31, 2, 1, 0, 0, 2, 0, 0),
(32, 2, 86, 0, 0, 2, 0, 0),
(33, 2, 9, 0, 0, 2, 0, 0),
(34, 2, 6, 0, 0, 2, 0, 0),
(35, 2, 8, 0, 0, 2, 0, 0),
(36, 2, 26, 0, 0, 2, 0, 0),
(37, 2, 10, 0, 0, 2, 0, 0),
(38, 2, 76, 0, 0, 2, 0, 0),
(39, 2, 125, 0, 0, 2, 0, 0),
(40, 2, 131, 0, 0, 2, 0, 0),
(41, 2, 12, 0, 0, 2, 0, 0),
(42, 2, 143, 0, 0, 2, 0, 0),
(43, 2, 139, 0, 0, 2, 0, 0),
(44, 2, 13, 0, 0, 2, 0, 0),
(45, 2, 2, 0, 0, 2, 0, 0),
(46, 2, 14, 0, 0, 2, 0, 0),
(47, 2, 15, 0, 0, 2, 0, 0),
(48, 2, 36, 0, 0, 2, 0, 0),
(49, 2, 193, 0, 0, 2, 0, 0),
(50, 2, 37, 0, 0, 2, 0, 0),
(51, 2, 7, 0, 0, 2, 0, 0),
(52, 2, 18, 0, 0, 2, 0, 0),
(53, 3, 3, 0, 0, 3, 0, 0),
(54, 3, 236, 0, 0, 3, 0, 0),
(55, 3, 16, 0, 0, 3, 0, 0),
(56, 3, 20, 0, 0, 3, 0, 0),
(57, 3, 1, 0, 0, 3, 0, 0),
(58, 3, 86, 0, 0, 3, 0, 0),
(59, 3, 9, 0, 0, 3, 0, 0),
(60, 3, 6, 0, 0, 3, 0, 0),
(61, 3, 8, 0, 0, 3, 0, 0),
(62, 3, 26, 0, 0, 3, 0, 0),
(63, 3, 10, 0, 0, 3, 0, 0),
(64, 3, 76, 0, 0, 3, 0, 0),
(65, 3, 125, 0, 0, 3, 0, 0),
(66, 3, 131, 0, 0, 3, 0, 0),
(67, 3, 12, 0, 0, 3, 0, 0),
(68, 3, 143, 0, 0, 3, 0, 0),
(69, 3, 139, 0, 0, 3, 0, 0),
(70, 3, 13, 0, 0, 3, 0, 0),
(71, 3, 2, 0, 0, 3, 0, 0),
(72, 3, 14, 0, 0, 3, 0, 0),
(73, 3, 15, 0, 0, 3, 0, 0),
(74, 3, 36, 0, 0, 3, 0, 0),
(75, 3, 193, 0, 0, 3, 0, 0),
(76, 3, 37, 0, 0, 3, 0, 0),
(77, 3, 7, 0, 0, 3, 0, 0),
(78, 3, 18, 0, 0, 3, 0, 0),
(79, 4, 3, 0, 0, 3, 0, 0),
(80, 4, 236, 0, 0, 3, 0, 0),
(81, 4, 16, 0, 0, 3, 0, 0),
(82, 4, 20, 0, 0, 3, 0, 0),
(83, 4, 1, 0, 0, 3, 0, 0),
(84, 4, 86, 0, 0, 3, 0, 0),
(85, 4, 9, 0, 0, 3, 0, 0),
(86, 4, 6, 0, 0, 3, 0, 0),
(87, 4, 8, 0, 0, 3, 0, 0),
(88, 4, 26, 0, 0, 3, 0, 0),
(89, 4, 10, 0, 0, 3, 0, 0),
(90, 4, 76, 0, 0, 3, 0, 0),
(91, 4, 125, 0, 0, 3, 0, 0),
(92, 4, 131, 0, 0, 3, 0, 0),
(93, 4, 12, 0, 0, 3, 0, 0),
(94, 4, 143, 0, 0, 3, 0, 0),
(95, 4, 139, 0, 0, 3, 0, 0),
(96, 4, 13, 0, 0, 3, 0, 0),
(97, 4, 2, 0, 0, 3, 0, 0),
(98, 4, 14, 0, 0, 3, 0, 0),
(99, 4, 15, 0, 0, 3, 0, 0),
(100, 4, 36, 0, 0, 3, 0, 0),
(101, 4, 193, 0, 0, 3, 0, 0),
(102, 4, 37, 0, 0, 3, 0, 0),
(103, 4, 7, 0, 0, 3, 0, 0),
(104, 4, 18, 0, 0, 3, 0, 0),
(105, 5, 3, 0, 0, 3, 0, 0),
(106, 5, 236, 0, 0, 3, 0, 0),
(107, 5, 16, 0, 0, 3, 0, 0),
(108, 5, 20, 0, 0, 3, 0, 0),
(109, 5, 1, 0, 0, 3, 0, 0),
(110, 5, 86, 0, 0, 3, 0, 0),
(111, 5, 9, 0, 0, 3, 0, 0),
(112, 5, 6, 0, 0, 3, 0, 0),
(113, 5, 8, 0, 0, 3, 0, 0),
(114, 5, 26, 0, 0, 3, 0, 0),
(115, 5, 10, 0, 0, 3, 0, 0),
(116, 5, 76, 0, 0, 3, 0, 0),
(117, 5, 125, 0, 0, 3, 0, 0),
(118, 5, 131, 0, 0, 3, 0, 0),
(119, 5, 12, 0, 0, 3, 0, 0),
(120, 5, 143, 0, 0, 3, 0, 0),
(121, 5, 139, 0, 0, 3, 0, 0),
(122, 5, 13, 0, 0, 3, 0, 0),
(123, 5, 2, 0, 0, 3, 0, 0),
(124, 5, 14, 0, 0, 3, 0, 0),
(125, 5, 15, 0, 0, 3, 0, 0),
(126, 5, 36, 0, 0, 3, 0, 0),
(127, 5, 193, 0, 0, 3, 0, 0),
(128, 5, 37, 0, 0, 3, 0, 0),
(129, 5, 7, 0, 0, 3, 0, 0),
(130, 5, 18, 0, 0, 3, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_tax_rules_group`
--

DROP TABLE IF EXISTS `ps_tax_rules_group`;
CREATE TABLE IF NOT EXISTS `ps_tax_rules_group` (
  `id_tax_rules_group` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ps_tax_rules_group`
--

INSERT INTO `ps_tax_rules_group` (`id_tax_rules_group`, `name`, `active`) VALUES
(1, 'ES Standard rate (18%)', 1),
(2, 'ES Reduced Rate (8%)', 1),
(3, 'ES Super Reduced Rate (4%)', 1),
(4, 'ES Foodstuff Rate (4%)', 1),
(5, 'ES Books Rate (4%)', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_timezone`
--

DROP TABLE IF EXISTS `ps_timezone`;
CREATE TABLE IF NOT EXISTS `ps_timezone` (
  `id_timezone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=561 ;

--
-- Volcado de datos para la tabla `ps_timezone`
--

INSERT INTO `ps_timezone` (`id_timezone`, `name`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Asmera'),
(7, 'Africa/Bamako'),
(8, 'Africa/Bangui'),
(9, 'Africa/Banjul'),
(10, 'Africa/Bissau'),
(11, 'Africa/Blantyre'),
(12, 'Africa/Brazzaville'),
(13, 'Africa/Bujumbura'),
(14, 'Africa/Cairo'),
(15, 'Africa/Casablanca'),
(16, 'Africa/Ceuta'),
(17, 'Africa/Conakry'),
(18, 'Africa/Dakar'),
(19, 'Africa/Dar_es_Salaam'),
(20, 'Africa/Djibouti'),
(21, 'Africa/Douala'),
(22, 'Africa/El_Aaiun'),
(23, 'Africa/Freetown'),
(24, 'Africa/Gaborone'),
(25, 'Africa/Harare'),
(26, 'Africa/Johannesburg'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Timbuktu'),
(51, 'Africa/Tripoli'),
(52, 'Africa/Tunis'),
(53, 'Africa/Windhoek'),
(54, 'America/Adak'),
(55, 'America/Anchorage '),
(56, 'America/Anguilla'),
(57, 'America/Antigua'),
(58, 'America/Araguaina'),
(59, 'America/Argentina/Buenos_Aires'),
(60, 'America/Argentina/Catamarca'),
(61, 'America/Argentina/ComodRivadavia'),
(62, 'America/Argentina/Cordoba'),
(63, 'America/Argentina/Jujuy'),
(64, 'America/Argentina/La_Rioja'),
(65, 'America/Argentina/Mendoza'),
(66, 'America/Argentina/Rio_Gallegos'),
(67, 'America/Argentina/Salta'),
(68, 'America/Argentina/San_Juan'),
(69, 'America/Argentina/San_Luis'),
(70, 'America/Argentina/Tucuman'),
(71, 'America/Argentina/Ushuaia'),
(72, 'America/Aruba'),
(73, 'America/Asuncion'),
(74, 'America/Atikokan'),
(75, 'America/Atka'),
(76, 'America/Bahia'),
(77, 'America/Barbados'),
(78, 'America/Belem'),
(79, 'America/Belize'),
(80, 'America/Blanc-Sablon'),
(81, 'America/Boa_Vista'),
(82, 'America/Bogota'),
(83, 'America/Boise'),
(84, 'America/Buenos_Aires'),
(85, 'America/Cambridge_Bay'),
(86, 'America/Campo_Grande'),
(87, 'America/Cancun'),
(88, 'America/Caracas'),
(89, 'America/Catamarca'),
(90, 'America/Cayenne'),
(91, 'America/Cayman'),
(92, 'America/Chicago'),
(93, 'America/Chihuahua'),
(94, 'America/Coral_Harbour'),
(95, 'America/Cordoba'),
(96, 'America/Costa_Rica'),
(97, 'America/Cuiaba'),
(98, 'America/Curacao'),
(99, 'America/Danmarkshavn'),
(100, 'America/Dawson'),
(101, 'America/Dawson_Creek'),
(102, 'America/Denver'),
(103, 'America/Detroit'),
(104, 'America/Dominica'),
(105, 'America/Edmonton'),
(106, 'America/Eirunepe'),
(107, 'America/El_Salvador'),
(108, 'America/Ensenada'),
(109, 'America/Fort_Wayne'),
(110, 'America/Fortaleza'),
(111, 'America/Glace_Bay'),
(112, 'America/Godthab'),
(113, 'America/Goose_Bay'),
(114, 'America/Grand_Turk'),
(115, 'America/Grenada'),
(116, 'America/Guadeloupe'),
(117, 'America/Guatemala'),
(118, 'America/Guayaquil'),
(119, 'America/Guyana'),
(120, 'America/Halifax'),
(121, 'America/Havana'),
(122, 'America/Hermosillo'),
(123, 'America/Indiana/Indianapolis'),
(124, 'America/Indiana/Knox'),
(125, 'America/Indiana/Marengo'),
(126, 'America/Indiana/Petersburg'),
(127, 'America/Indiana/Tell_City'),
(128, 'America/Indiana/Vevay'),
(129, 'America/Indiana/Vincennes'),
(130, 'America/Indiana/Winamac'),
(131, 'America/Indianapolis'),
(132, 'America/Inuvik'),
(133, 'America/Iqaluit'),
(134, 'America/Jamaica'),
(135, 'America/Jujuy'),
(136, 'America/Juneau'),
(137, 'America/Kentucky/Louisville'),
(138, 'America/Kentucky/Monticello'),
(139, 'America/Knox_IN'),
(140, 'America/La_Paz'),
(141, 'America/Lima'),
(142, 'America/Los_Angeles'),
(143, 'America/Louisville'),
(144, 'America/Maceio'),
(145, 'America/Managua'),
(146, 'America/Manaus'),
(147, 'America/Marigot'),
(148, 'America/Martinique'),
(149, 'America/Mazatlan'),
(150, 'America/Mendoza'),
(151, 'America/Menominee'),
(152, 'America/Merida'),
(153, 'America/Mexico_City'),
(154, 'America/Miquelon'),
(155, 'America/Moncton'),
(156, 'America/Monterrey'),
(157, 'America/Montevideo'),
(158, 'America/Montreal'),
(159, 'America/Montserrat'),
(160, 'America/Nassau'),
(161, 'America/New_York'),
(162, 'America/Nipigon'),
(163, 'America/Nome'),
(164, 'America/Noronha'),
(165, 'America/North_Dakota/Center'),
(166, 'America/North_Dakota/New_Salem'),
(167, 'America/Panama'),
(168, 'America/Pangnirtung'),
(169, 'America/Paramaribo'),
(170, 'America/Phoenix'),
(171, 'America/Port-au-Prince'),
(172, 'America/Port_of_Spain'),
(173, 'America/Porto_Acre'),
(174, 'America/Porto_Velho'),
(175, 'America/Puerto_Rico'),
(176, 'America/Rainy_River'),
(177, 'America/Rankin_Inlet'),
(178, 'America/Recife'),
(179, 'America/Regina'),
(180, 'America/Resolute'),
(181, 'America/Rio_Branco'),
(182, 'America/Rosario'),
(183, 'America/Santarem'),
(184, 'America/Santiago'),
(185, 'America/Santo_Domingo'),
(186, 'America/Sao_Paulo'),
(187, 'America/Scoresbysund'),
(188, 'America/Shiprock'),
(189, 'America/St_Barthelemy'),
(190, 'America/St_Johns'),
(191, 'America/St_Kitts'),
(192, 'America/St_Lucia'),
(193, 'America/St_Thomas'),
(194, 'America/St_Vincent'),
(195, 'America/Swift_Current'),
(196, 'America/Tegucigalpa'),
(197, 'America/Thule'),
(198, 'America/Thunder_Bay'),
(199, 'America/Tijuana'),
(200, 'America/Toronto'),
(201, 'America/Tortola'),
(202, 'America/Vancouver'),
(203, 'America/Virgin'),
(204, 'America/Whitehorse'),
(205, 'America/Winnipeg'),
(206, 'America/Yakutat'),
(207, 'America/Yellowknife'),
(208, 'Antarctica/Casey'),
(209, 'Antarctica/Davis'),
(210, 'Antarctica/DumontDUrville'),
(211, 'Antarctica/Mawson'),
(212, 'Antarctica/McMurdo'),
(213, 'Antarctica/Palmer'),
(214, 'Antarctica/Rothera'),
(215, 'Antarctica/South_Pole'),
(216, 'Antarctica/Syowa'),
(217, 'Antarctica/Vostok'),
(218, 'Arctic/Longyearbyen'),
(219, 'Asia/Aden'),
(220, 'Asia/Almaty'),
(221, 'Asia/Amman'),
(222, 'Asia/Anadyr'),
(223, 'Asia/Aqtau'),
(224, 'Asia/Aqtobe'),
(225, 'Asia/Ashgabat'),
(226, 'Asia/Ashkhabad'),
(227, 'Asia/Baghdad'),
(228, 'Asia/Bahrain'),
(229, 'Asia/Baku'),
(230, 'Asia/Bangkok'),
(231, 'Asia/Beirut'),
(232, 'Asia/Bishkek'),
(233, 'Asia/Brunei'),
(234, 'Asia/Calcutta'),
(235, 'Asia/Choibalsan'),
(236, 'Asia/Chongqing'),
(237, 'Asia/Chungking'),
(238, 'Asia/Colombo'),
(239, 'Asia/Dacca'),
(240, 'Asia/Damascus'),
(241, 'Asia/Dhaka'),
(242, 'Asia/Dili'),
(243, 'Asia/Dubai'),
(244, 'Asia/Dushanbe'),
(245, 'Asia/Gaza'),
(246, 'Asia/Harbin'),
(247, 'Asia/Ho_Chi_Minh'),
(248, 'Asia/Hong_Kong'),
(249, 'Asia/Hovd'),
(250, 'Asia/Irkutsk'),
(251, 'Asia/Istanbul'),
(252, 'Asia/Jakarta'),
(253, 'Asia/Jayapura'),
(254, 'Asia/Jerusalem'),
(255, 'Asia/Kabul'),
(256, 'Asia/Kamchatka'),
(257, 'Asia/Karachi'),
(258, 'Asia/Kashgar'),
(259, 'Asia/Kathmandu'),
(260, 'Asia/Katmandu'),
(261, 'Asia/Kolkata'),
(262, 'Asia/Krasnoyarsk'),
(263, 'Asia/Kuala_Lumpur'),
(264, 'Asia/Kuching'),
(265, 'Asia/Kuwait'),
(266, 'Asia/Macao'),
(267, 'Asia/Macau'),
(268, 'Asia/Magadan'),
(269, 'Asia/Makassar'),
(270, 'Asia/Manila'),
(271, 'Asia/Muscat'),
(272, 'Asia/Nicosia'),
(273, 'Asia/Novosibirsk'),
(274, 'Asia/Omsk'),
(275, 'Asia/Oral'),
(276, 'Asia/Phnom_Penh'),
(277, 'Asia/Pontianak'),
(278, 'Asia/Pyongyang'),
(279, 'Asia/Qatar'),
(280, 'Asia/Qyzylorda'),
(281, 'Asia/Rangoon'),
(282, 'Asia/Riyadh'),
(283, 'Asia/Saigon'),
(284, 'Asia/Sakhalin'),
(285, 'Asia/Samarkand'),
(286, 'Asia/Seoul'),
(287, 'Asia/Shanghai'),
(288, 'Asia/Singapore'),
(289, 'Asia/Taipei'),
(290, 'Asia/Tashkent'),
(291, 'Asia/Tbilisi'),
(292, 'Asia/Tehran'),
(293, 'Asia/Tel_Aviv'),
(294, 'Asia/Thimbu'),
(295, 'Asia/Thimphu'),
(296, 'Asia/Tokyo'),
(297, 'Asia/Ujung_Pandang'),
(298, 'Asia/Ulaanbaatar'),
(299, 'Asia/Ulan_Bator'),
(300, 'Asia/Urumqi'),
(301, 'Asia/Vientiane'),
(302, 'Asia/Vladivostok'),
(303, 'Asia/Yakutsk'),
(304, 'Asia/Yekaterinburg'),
(305, 'Asia/Yerevan'),
(306, 'Atlantic/Azores'),
(307, 'Atlantic/Bermuda'),
(308, 'Atlantic/Canary'),
(309, 'Atlantic/Cape_Verde'),
(310, 'Atlantic/Faeroe'),
(311, 'Atlantic/Faroe'),
(312, 'Atlantic/Jan_Mayen'),
(313, 'Atlantic/Madeira'),
(314, 'Atlantic/Reykjavik'),
(315, 'Atlantic/South_Georgia'),
(316, 'Atlantic/St_Helena'),
(317, 'Atlantic/Stanley'),
(318, 'Australia/ACT'),
(319, 'Australia/Adelaide'),
(320, 'Australia/Brisbane'),
(321, 'Australia/Broken_Hill'),
(322, 'Australia/Canberra'),
(323, 'Australia/Currie'),
(324, 'Australia/Darwin'),
(325, 'Australia/Eucla'),
(326, 'Australia/Hobart'),
(327, 'Australia/LHI'),
(328, 'Australia/Lindeman'),
(329, 'Australia/Lord_Howe'),
(330, 'Australia/Melbourne'),
(331, 'Australia/North'),
(332, 'Australia/NSW'),
(333, 'Australia/Perth'),
(334, 'Australia/Queensland'),
(335, 'Australia/South'),
(336, 'Australia/Sydney'),
(337, 'Australia/Tasmania'),
(338, 'Australia/Victoria'),
(339, 'Australia/West'),
(340, 'Australia/Yancowinna'),
(341, 'Europe/Amsterdam'),
(342, 'Europe/Andorra'),
(343, 'Europe/Athens'),
(344, 'Europe/Belfast'),
(345, 'Europe/Belgrade'),
(346, 'Europe/Berlin'),
(347, 'Europe/Bratislava'),
(348, 'Europe/Brussels'),
(349, 'Europe/Bucharest'),
(350, 'Europe/Budapest'),
(351, 'Europe/Chisinau'),
(352, 'Europe/Copenhagen'),
(353, 'Europe/Dublin'),
(354, 'Europe/Gibraltar'),
(355, 'Europe/Guernsey'),
(356, 'Europe/Helsinki'),
(357, 'Europe/Isle_of_Man'),
(358, 'Europe/Istanbul'),
(359, 'Europe/Jersey'),
(360, 'Europe/Kaliningrad'),
(361, 'Europe/Kiev'),
(362, 'Europe/Lisbon'),
(363, 'Europe/Ljubljana'),
(364, 'Europe/London'),
(365, 'Europe/Luxembourg'),
(366, 'Europe/Madrid'),
(367, 'Europe/Malta'),
(368, 'Europe/Mariehamn'),
(369, 'Europe/Minsk'),
(370, 'Europe/Monaco'),
(371, 'Europe/Moscow'),
(372, 'Europe/Nicosia'),
(373, 'Europe/Oslo'),
(374, 'Europe/Paris'),
(375, 'Europe/Podgorica'),
(376, 'Europe/Prague'),
(377, 'Europe/Riga'),
(378, 'Europe/Rome'),
(379, 'Europe/Samara'),
(380, 'Europe/San_Marino'),
(381, 'Europe/Sarajevo'),
(382, 'Europe/Simferopol'),
(383, 'Europe/Skopje'),
(384, 'Europe/Sofia'),
(385, 'Europe/Stockholm'),
(386, 'Europe/Tallinn'),
(387, 'Europe/Tirane'),
(388, 'Europe/Tiraspol'),
(389, 'Europe/Uzhgorod'),
(390, 'Europe/Vaduz'),
(391, 'Europe/Vatican'),
(392, 'Europe/Vienna'),
(393, 'Europe/Vilnius'),
(394, 'Europe/Volgograd'),
(395, 'Europe/Warsaw'),
(396, 'Europe/Zagreb'),
(397, 'Europe/Zaporozhye'),
(398, 'Europe/Zurich'),
(399, 'Indian/Antananarivo'),
(400, 'Indian/Chagos'),
(401, 'Indian/Christmas'),
(402, 'Indian/Cocos'),
(403, 'Indian/Comoro'),
(404, 'Indian/Kerguelen'),
(405, 'Indian/Mahe'),
(406, 'Indian/Maldives'),
(407, 'Indian/Mauritius'),
(408, 'Indian/Mayotte'),
(409, 'Indian/Reunion'),
(410, 'Pacific/Apia'),
(411, 'Pacific/Auckland'),
(412, 'Pacific/Chatham'),
(413, 'Pacific/Easter'),
(414, 'Pacific/Efate'),
(415, 'Pacific/Enderbury'),
(416, 'Pacific/Fakaofo'),
(417, 'Pacific/Fiji'),
(418, 'Pacific/Funafuti'),
(419, 'Pacific/Galapagos'),
(420, 'Pacific/Gambier'),
(421, 'Pacific/Guadalcanal'),
(422, 'Pacific/Guam'),
(423, 'Pacific/Honolulu'),
(424, 'Pacific/Johnston'),
(425, 'Pacific/Kiritimati'),
(426, 'Pacific/Kosrae'),
(427, 'Pacific/Kwajalein'),
(428, 'Pacific/Majuro'),
(429, 'Pacific/Marquesas'),
(430, 'Pacific/Midway'),
(431, 'Pacific/Nauru'),
(432, 'Pacific/Niue'),
(433, 'Pacific/Norfolk'),
(434, 'Pacific/Noumea'),
(435, 'Pacific/Pago_Pago'),
(436, 'Pacific/Palau'),
(437, 'Pacific/Pitcairn'),
(438, 'Pacific/Ponape'),
(439, 'Pacific/Port_Moresby'),
(440, 'Pacific/Rarotonga'),
(441, 'Pacific/Saipan'),
(442, 'Pacific/Samoa'),
(443, 'Pacific/Tahiti'),
(444, 'Pacific/Tarawa'),
(445, 'Pacific/Tongatapu'),
(446, 'Pacific/Truk'),
(447, 'Pacific/Wake'),
(448, 'Pacific/Wallis'),
(449, 'Pacific/Yap'),
(450, 'Brazil/Acre'),
(451, 'Brazil/DeNoronha'),
(452, 'Brazil/East'),
(453, 'Brazil/West'),
(454, 'Canada/Atlantic'),
(455, 'Canada/Central'),
(456, 'Canada/East-Saskatchewan'),
(457, 'Canada/Eastern'),
(458, 'Canada/Mountain'),
(459, 'Canada/Newfoundland'),
(460, 'Canada/Pacific'),
(461, 'Canada/Saskatchewan'),
(462, 'Canada/Yukon'),
(463, 'CET'),
(464, 'Chile/Continental'),
(465, 'Chile/EasterIsland'),
(466, 'CST6CDT'),
(467, 'Cuba'),
(468, 'EET'),
(469, 'Egypt'),
(470, 'Eire'),
(471, 'EST'),
(472, 'EST5EDT'),
(473, 'Etc/GMT'),
(474, 'Etc/GMT+0'),
(475, 'Etc/GMT+1'),
(476, 'Etc/GMT+10'),
(477, 'Etc/GMT+11'),
(478, 'Etc/GMT+12'),
(479, 'Etc/GMT+2'),
(480, 'Etc/GMT+3'),
(481, 'Etc/GMT+4'),
(482, 'Etc/GMT+5'),
(483, 'Etc/GMT+6'),
(484, 'Etc/GMT+7'),
(485, 'Etc/GMT+8'),
(486, 'Etc/GMT+9'),
(487, 'Etc/GMT-0'),
(488, 'Etc/GMT-1'),
(489, 'Etc/GMT-10'),
(490, 'Etc/GMT-11'),
(491, 'Etc/GMT-12'),
(492, 'Etc/GMT-13'),
(493, 'Etc/GMT-14'),
(494, 'Etc/GMT-2'),
(495, 'Etc/GMT-3'),
(496, 'Etc/GMT-4'),
(497, 'Etc/GMT-5'),
(498, 'Etc/GMT-6'),
(499, 'Etc/GMT-7'),
(500, 'Etc/GMT-8'),
(501, 'Etc/GMT-9'),
(502, 'Etc/GMT0'),
(503, 'Etc/Greenwich'),
(504, 'Etc/UCT'),
(505, 'Etc/Universal'),
(506, 'Etc/UTC'),
(507, 'Etc/Zulu'),
(508, 'Factory'),
(509, 'GB'),
(510, 'GB-Eire'),
(511, 'GMT'),
(512, 'GMT+0'),
(513, 'GMT-0'),
(514, 'GMT0'),
(515, 'Greenwich'),
(516, 'Hongkong'),
(517, 'HST'),
(518, 'Iceland'),
(519, 'Iran'),
(520, 'Israel'),
(521, 'Jamaica'),
(522, 'Japan'),
(523, 'Kwajalein'),
(524, 'Libya'),
(525, 'MET'),
(526, 'Mexico/BajaNorte'),
(527, 'Mexico/BajaSur'),
(528, 'Mexico/General'),
(529, 'MST'),
(530, 'MST7MDT'),
(531, 'Navajo'),
(532, 'NZ'),
(533, 'NZ-CHAT'),
(534, 'Poland'),
(535, 'Portugal'),
(536, 'PRC'),
(537, 'PST8PDT'),
(538, 'ROC'),
(539, 'ROK'),
(540, 'Singapore'),
(541, 'Turkey'),
(542, 'UCT'),
(543, 'Universal'),
(544, 'US/Alaska'),
(545, 'US/Aleutian'),
(546, 'US/Arizona'),
(547, 'US/Central'),
(548, 'US/East-Indiana'),
(549, 'US/Eastern'),
(550, 'US/Hawaii'),
(551, 'US/Indiana-Starke'),
(552, 'US/Michigan'),
(553, 'US/Mountain'),
(554, 'US/Pacific'),
(555, 'US/Pacific-New'),
(556, 'US/Samoa'),
(557, 'UTC'),
(558, 'W-SU'),
(559, 'WET'),
(560, 'Zulu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_webservice_account`
--

DROP TABLE IF EXISTS `ps_webservice_account`;
CREATE TABLE IF NOT EXISTS `ps_webservice_account` (
  `id_webservice_account` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint(2) NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_webservice_account`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_webservice_permission`
--

DROP TABLE IF EXISTS `ps_webservice_permission`;
CREATE TABLE IF NOT EXISTS `ps_webservice_permission` (
  `id_webservice_permission` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int(11) NOT NULL,
  PRIMARY KEY (`id_webservice_permission`),
  UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  KEY `resource` (`resource`),
  KEY `method` (`method`),
  KEY `id_webservice_account` (`id_webservice_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_web_browser`
--

DROP TABLE IF EXISTS `ps_web_browser`;
CREATE TABLE IF NOT EXISTS `ps_web_browser` (
  `id_web_browser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `ps_web_browser`
--

INSERT INTO `ps_web_browser` (`id_web_browser`, `name`) VALUES
(1, 'Safari'),
(2, 'Firefox 2.x'),
(3, 'Firefox 3.x'),
(4, 'Opera'),
(5, 'IE 6.x'),
(6, 'IE 7.x'),
(7, 'IE 8.x'),
(8, 'Google Chrome');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_zone`
--

DROP TABLE IF EXISTS `ps_zone`;
CREATE TABLE IF NOT EXISTS `ps_zone` (
  `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `ps_zone`
--

INSERT INTO `ps_zone` (`id_zone`, `name`, `active`) VALUES
(1, 'Europe', 1),
(2, 'North America', 1),
(3, 'Asia', 1),
(4, 'Africa', 1),
(5, 'Oceania', 1),
(6, 'South America', 1),
(7, 'Europe (out E.U)', 1),
(8, 'Centrale America/Antilla', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
