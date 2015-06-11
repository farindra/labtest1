/*
Navicat MySQL Data Transfer

Source Server         : phpmyadmin
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : dmb0004

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-06-11 11:26:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b1000`
-- ----------------------------
DROP TABLE IF EXISTS `b1000`;
CREATE TABLE `b1000` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kd_barang` varchar(20) NOT NULL,
  `nm_barang` varchar(200) NOT NULL,
  `kd_type` varchar(5) DEFAULT NULL,
  `kd_kategori` varchar(5) DEFAULT NULL,
  `kd_unit` varchar(5) DEFAULT NULL,
  `kd_supplier` varchar(5) DEFAULT NULL,
  `kd_distributor` varchar(5) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `hpp` float DEFAULT NULL,
  `harga` float DEFAULT '0',
  `barcode` varchar(15) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `note` text,
  `kd_corp` varchar(5) DEFAULT NULL,
  `kd_cab` varchar(5) DEFAULT NULL,
  `kd_dep` varchar(5) DEFAULT NULL,
  `status` smallint(6) DEFAULT '1',
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `data_all` longtext,
  PRIMARY KEY (`id`,`kd_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of b1000
-- ----------------------------

-- ----------------------------
-- Table structure for `b1001`
-- ----------------------------
DROP TABLE IF EXISTS `b1001`;
CREATE TABLE `b1001` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kd_type` varchar(5) NOT NULL,
  `nm_type` varchar(200) NOT NULL,
  `note` text,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(6) DEFAULT '1',
  PRIMARY KEY (`id`,`kd_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of b1001
-- ----------------------------

-- ----------------------------
-- Table structure for `b1002`
-- ----------------------------
DROP TABLE IF EXISTS `b1002`;
CREATE TABLE `b1002` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kd_kategori` varchar(5) NOT NULL,
  `nm_kategori` varchar(200) NOT NULL,
  `note` text,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(6) DEFAULT '1',
  PRIMARY KEY (`id`,`kd_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of b1002
-- ----------------------------

-- ----------------------------
-- Table structure for `b1003`
-- ----------------------------
DROP TABLE IF EXISTS `b1003`;
CREATE TABLE `b1003` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kd_unit` varchar(5) NOT NULL,
  `nm_unit` varchar(200) NOT NULL,
  `size` varchar(100) DEFAULT NULL,
  `wight` float DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `note` text,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(6) DEFAULT '1',
  PRIMARY KEY (`id`,`kd_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of b1003
-- ----------------------------

-- ----------------------------
-- Table structure for `s1000`
-- ----------------------------
DROP TABLE IF EXISTS `s1000`;
CREATE TABLE `s1000` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kd_supplier` varchar(5) NOT NULL,
  `nm_supplier` varchar(200) NOT NULL,
  `alamat` text,
  `kota` varchar(100) DEFAULT NULL,
  `tlp` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `note` text,
  `kd_corp` varchar(5) DEFAULT NULL,
  `kd_cab` varchar(5) DEFAULT NULL,
  `kd_dep` varchar(5) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `data_all` longtext,
  PRIMARY KEY (`id`,`kd_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s1000
-- ----------------------------
