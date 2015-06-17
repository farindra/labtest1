/*
Navicat MySQL Data Transfer

Source Server         : phpmyadmin
Source Server Version : 50540
Source Host           : localhost:3306
<<<<<<< HEAD:advanced/console/migrations/dbm000.sql
Source Database       : dbm000
=======
Source Database       : dbm0004
>>>>>>> master:dev/db/dbm0004.sql

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

<<<<<<< HEAD:advanced/console/migrations/dbm000.sql
Date: 2015-06-17 05:22:47
=======
Date: 2015-06-15 15:51:02
>>>>>>> master:dev/db/dbm0004.sql
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `a1000`
-- ----------------------------
DROP TABLE IF EXISTS `a1000`;
CREATE TABLE `a1000` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Header Berita Acara',
  `kd_berita` varchar(20) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text,
  `kd_corp` varchar(20) DEFAULT NULL,
  `kd_cab` varchar(20) DEFAULT NULL,
  `kd_dep` varchar(20) DEFAULT NULL,
  `data_pict` text,
  `data_file` text,
  `status` smallint(6) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `data_all` longtext,
  `menu` longtext,
  PRIMARY KEY (`id`,`kd_berita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a1000
-- ----------------------------

-- ----------------------------
-- Table structure for `a1001`
-- ----------------------------
DROP TABLE IF EXISTS `a1001`;
CREATE TABLE `a1001` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Derail Berita Acara - User Attribut',
  `kd_berita` varchar(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `type` smallint(6) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`kd_berita`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a1001
-- ----------------------------

-- ----------------------------
-- Table structure for `a1002`
-- ----------------------------
DROP TABLE IF EXISTS `a1002`;
CREATE TABLE `a1002` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Detail Berita Acara - Chat',
  `kd_berita` varchar(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `chat` text,
  `status` smallint(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`kd_berita`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of a1002
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Master Barang Umum';

-- ----------------------------
-- Records of b1000
-- ----------------------------
INSERT INTO `b1000` VALUES ('1', 'awd', 'awd', 'awd', 'K1234', 'awd', 'qwea', 'awd', '', '12323', '347456', '', '', '', 'EFM', '', '', '1', 'admin', null, 'admin', '2015-06-16 16:59:39', null);
INSERT INTO `b1000` VALUES ('2', 'tes', 'dawd', 'KB1', '123sd', 'awd', 'dwa', '', '', '123', '435', '', '', 'awd', 'EFM', '', '', '0', 'admin1', '2015-06-16 16:08:31', 'admin', '2015-06-16 17:20:10', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Tipe Barang';

-- ----------------------------
-- Records of b1001
-- ----------------------------
INSERT INTO `b1001` VALUES ('1', 'tes', 'awd', 'awds', 'admin', null, 'admin', '2015-06-16 11:47:01', '1');
INSERT INTO `b1001` VALUES ('2', 'awdef', 'awd', 'awd', 'admin', null, null, null, '0');
INSERT INTO `b1001` VALUES ('3', 'KB1', 'kode barang 1', 'notes', 'admin', null, null, null, '1');
INSERT INTO `b1001` VALUES ('4', 'awd', 'ghjk', 'adw', 'admin', '2015-06-16 11:47:51', null, null, '1');
INSERT INTO `b1001` VALUES ('5', 'wad', 'wad', 'dwas', 'admin', '2015-06-16 13:34:43', 'admin', '2015-06-16 13:34:53', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Kategori';

-- ----------------------------
-- Records of b1002
-- ----------------------------
INSERT INTO `b1002` VALUES ('1', 'K1234', 'Nama Kategori', 'Note atau catatan', null, null, null, '2015-06-16 10:56:43', '1');
INSERT INTO `b1002` VALUES ('2', 'K4567', 'Kategori 2', 'note', null, null, null, null, '0');
INSERT INTO `b1002` VALUES ('3', '123sd', 'adwdaw', '', null, null, null, null, '0');
INSERT INTO `b1002` VALUES ('4', 'adw', 'awd', 'awds', 'admin', '2015-06-16 11:49:15', 'admin', '2015-06-16 11:50:39', '1');
INSERT INTO `b1002` VALUES ('5', 'awd', 'dwa', 'awd', 'admin', '2015-06-16 13:35:09', 'admin', '2015-06-16 13:35:18', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Unit Barang';

-- ----------------------------
-- Records of b1003
-- ----------------------------
INSERT INTO `b1003` VALUES ('1', 'awds', 'wda', 'awd', '123', 'awd', 'adw', 'admin', null, null, '2015-06-16 15:35:45', '1');
INSERT INTO `b1003` VALUES ('2', 'awd', 'zxc', 'wad', '12', 'adw', 'awd', 'admin', '2015-06-16 13:45:36', null, '2015-06-16 15:51:48', '1');

-- ----------------------------
-- Table structure for `c1000`
-- ----------------------------
DROP TABLE IF EXISTS `c1000`;
CREATE TABLE `c1000` (
  `id` int(11) NOT NULL,
  `kd_corp` varchar(50) NOT NULL,
  `nm_corp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Master Corporate';

-- ----------------------------
-- Records of c1000
-- ----------------------------
INSERT INTO `c1000` VALUES ('1', 'SSS', 'PT. SARANA SINAR SURYA');
INSERT INTO `c1000` VALUES ('2', 'EFM', 'PT. EFENBI SUKSES MAKMUR');
INSERT INTO `c1000` VALUES ('3', 'ALG', 'PT. ARTHA LIPAT GANDA');

-- ----------------------------
-- Table structure for `m1000`
-- ----------------------------
DROP TABLE IF EXISTS `m1000`;
CREATE TABLE `m1000` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kd_menu` varchar(50) NOT NULL,
  `nm_menu` varchar(200) NOT NULL,
  `jval` longtext,
  `note` text,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(6) DEFAULT '1',
  PRIMARY KEY (`id`,`kd_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m1000
-- ----------------------------
INSERT INTO `m1000` VALUES ('1', 'sss_berita_acara', 'Berita Acara', '[{\"label\":\"<i class=\\\"fa fa-pencil\\\"></i> New\",\"url\":[\"new\"]},{\"label\":\"<i class=\\\"fa fa-suitcase\\\"></i> PM <span id=\\\"menu-badge-1\\\" class=\\\"badge badge-purple\\\" style=\\\"float: right\\\"></span>\",\"url\":[\"pm\"]},{\"label\":\"<i class=\\\"fa fa-inbox\\\"></i> Inbox\",\"url\":[\"inbox\"]},{\"label\":\"<i class=\\\"fa fa-send\\\"></i> Sent\",\"url\":[\"sent\"]},{\"label\":\"<i class=\\\"fa fa-folder-o\\\"></i> Draft\",\"url\":[\"draft\"]}]', '', null, null, null, '2015-06-13 17:10:22', '1');
INSERT INTO `m1000` VALUES ('2', 'sss_po', 'Purchase Order', '[{\"label\":\"<i class=\\\"fa fa-pencil\\\"></i> New\",\"url\":[\"new\"]},{\"label\":\"<i class=\\\"fa fa-suitcase\\\"></i> PO List<span id=\\\"menu-badge-1\\\" class=\\\"badge badge-purple\\\" style=\\\"float: right\\\"></span>\",\"url\":[\"list\"]},{\"label\":\"<i class=\\\"fa fa-inbox\\\"></i> Setup\",\"url\":[\"setup\"]}]', null, null, null, null, '2015-06-12 11:23:40', '1');

-- ----------------------------
-- Table structure for `p1000`
-- ----------------------------
DROP TABLE IF EXISTS `p1000`;
CREATE TABLE `p1000` (
  `id` int(11) NOT NULL,
  `jenisCorp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Jenis Perusahaan';

-- ----------------------------
-- Records of p1000
-- ----------------------------
INSERT INTO `p1000` VALUES ('1', 'CV');
INSERT INTO `p1000` VALUES ('2', 'FA');
INSERT INTO `p1000` VALUES ('3', 'Koperasi');
INSERT INTO `p1000` VALUES ('4', 'Maatschap');
INSERT INTO `p1000` VALUES ('5', 'PK');
INSERT INTO `p1000` VALUES ('6', 'PMA');
INSERT INTO `p1000` VALUES ('7', 'PMDN');
INSERT INTO `p1000` VALUES ('8', 'Persekutuan Pedata');
INSERT INTO `p1000` VALUES ('9', 'Perusahaan Umum');
INSERT INTO `p1000` VALUES ('10', 'Perusahaan Jawatan');
INSERT INTO `p1000` VALUES ('11', 'PT');
INSERT INTO `p1000` VALUES ('12', 'PT. TBK.');
INSERT INTO `p1000` VALUES ('13', 'UD');
INSERT INTO `p1000` VALUES ('14', 'Yayasan');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Master Suplier';

-- ----------------------------
-- Records of s1000
-- ----------------------------
INSERT INTO `s1000` VALUES ('1', 'dwa', 'tester suplier', 'alamat', 'kota', 'telp', 'mobi', 'fax', 'email', 'web', 'img', 'awd', 'ALG', 'awd', 'wad', '1', 'tds', '0000-00-00 00:00:00', 'admin', '2015-06-16 11:56:07', 'daw');
INSERT INTO `s1000` VALUES ('2', 'qwea', 'dawd', 'awd', 'wad', 'wad', 'awd', 'adw', 'awd', 'awd', null, 'awd', 'ALG', null, null, '1', null, null, null, '2015-06-11 15:58:55', null);
INSERT INTO `s1000` VALUES ('3', 'wad', 'wad', 'wad', 'wa', 'wawad', 'wad', 'waawd', 'wawad', 'wdawda', null, 'awd', 'EFM', null, null, '1', null, null, null, null, null);
INSERT INTO `s1000` VALUES ('4', 'sdfg', 'fghjkl', 'fghjkl', 'sdfghjkxcv', 'bnxcvb', 'rtyuio', 'dfghui', 'fghjiko', 'fgyhuji', null, 'fghjkl', 'SSS', null, null, '1', null, null, null, '2015-06-16 15:54:00', null);
INSERT INTO `s1000` VALUES ('5', 'awdaw', 'daw', 'dwad', 'awd', 'awd', 'awd', 'awd', 'awd', 'awd', null, 'awd', 'EFM', null, null, '0', 'admin', '2015-06-16 11:56:59', null, null, null);
