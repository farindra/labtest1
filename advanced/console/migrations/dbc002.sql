/*
Navicat MySQL Data Transfer

Source Server         : phpmyadmin
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : dbc002

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-06-17 05:22:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b0001`
-- ----------------------------
DROP TABLE IF EXISTS `b0001`;
CREATE TABLE `b0001` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Tabel Barang',
  `kdBrg` varchar(50) NOT NULL,
  `nmBrg` varchar(255) NOT NULL,
  `kdUnit` int(11) NOT NULL,
  `kdSuplier` varchar(50) NOT NULL,
  `kdDbtr` varchar(50) NOT NULL,
  `hpp` bigint(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `barcode` int(11) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdAt` varchar(255) NOT NULL,
  `updateAt` varchar(255) NOT NULL,
  `data_all` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Table Barang';

-- ----------------------------
-- Records of b0001
-- ----------------------------
INSERT INTO `b0001` VALUES ('1', '213adaw', 'EF003', '2', '', 'KD004', '123123', '123123', '7654', 'adwdaw', '1', '0', '0', 'admin', '');
INSERT INTO `b0001` VALUES ('2', '213adaw', 'EF001', '1', 'awdadaw', 'KD001', '123123', '123123', '12321321', 'adwdaw', '1', '0', '0', 'admin', '');
INSERT INTO `b0001` VALUES ('3', 'awdawdaw', 'EF004', '3', 'AWD', 'awd', '456', '123345', '123', 'awdawd', '0', '0', '0', 'admin', '');
INSERT INTO `b0001` VALUES ('4', '11a', 'EF003', '2', 'asdf', '2e', '2678', '56224', '89077', 'rth', '0', '0', '0', 'admin', '');
INSERT INTO `b0001` VALUES ('5', 'awd', 'awd', '1', 'AWd', 'adw', '123', '213', '1232', 'awdawd', '0', 'admin', '0', 'admin', '');
INSERT INTO `b0001` VALUES ('6', 'MAX0012', 'EF001', '2', '', '2e', '2345', '41085', '45052', 'dfghj', '1', 'admin', '', 'admin', '');
INSERT INTO `b0001` VALUES ('7', 'awdwa', 'dawdawd', '3', '', '', '123', '345', '123', 'adw', '0', 'admin', '', '', '');
INSERT INTO `b0001` VALUES ('8', 'awd', 'awd', '4', 'aw', 'dawd', '123', '234', '56', 'awd', '1', 'admin', '', '', '');
INSERT INTO `b0001` VALUES ('9', 'awdawd', '21adw', '2', 'awdzxc', 'awd', '1443', '564', '345345', 'zcs', '1', 'admin', '', 'admin', '');
INSERT INTO `b0001` VALUES ('10', 'awdadw123', 'awd', '3', 'awd', 'wad', '213', '234', '5435', 'none', '1', 'admin', '', '', '');
INSERT INTO `b0001` VALUES ('11', 'dadwd', 'EF003', '3', '', 'dwaawd', '13245465', '786', '23456', 'sdvbn', '1', 'admin', '', '', '');
INSERT INTO `b0001` VALUES ('12', 'Brg0220', 'EF002', '2', '', 'KD004', '123', '234', '563', '123', '0', 'admin', '', '', '');

-- ----------------------------
-- Table structure for `b0002`
-- ----------------------------
DROP TABLE IF EXISTS `b0002`;
CREATE TABLE `b0002` (
  `idBarang` int(11) NOT NULL AUTO_INCREMENT,
  `kodeBarang` varchar(255) NOT NULL,
  `namaBarang` varchar(255) NOT NULL,
  `kdSuplier` varchar(50) NOT NULL,
  PRIMARY KEY (`idBarang`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Barang Maxi';

-- ----------------------------
-- Records of b0002
-- ----------------------------
INSERT INTO `b0002` VALUES ('1', 'EF001', 'Cassava Cracker Hot', '');
INSERT INTO `b0002` VALUES ('2', 'EF002', 'Cassava Balado', '');
INSERT INTO `b0002` VALUES ('3', 'EF003', 'Taro Roasted Corn', '');
INSERT INTO `b0002` VALUES ('4', 'EF004', 'Taro Black Pepper', '');
INSERT INTO `b0002` VALUES ('5', 'EF005', 'Mixed Roots', '');

-- ----------------------------
-- Table structure for `d0001`
-- ----------------------------
DROP TABLE IF EXISTS `d0001`;
CREATE TABLE `d0001` (
  `idDbtr` bigint(20) NOT NULL AUTO_INCREMENT,
  `kdDbtr` varchar(50) NOT NULL,
  `nmDbtr` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `tlp1` bigint(20) NOT NULL,
  `tlp2` bigint(20) NOT NULL,
  `fax` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL,
  `createBy` varchar(255) NOT NULL,
  `createAt` varchar(255) NOT NULL,
  `updateAt` varchar(255) NOT NULL,
  `data_all` varchar(255) NOT NULL,
  PRIMARY KEY (`idDbtr`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Distributor';

-- ----------------------------
-- Records of d0001
-- ----------------------------
INSERT INTO `d0001` VALUES ('1', 'KD001', 'Nama Dbtr 1', 'awd', 'asdwd', '43345', '0', '0', 'sadaw@adw.sad', 'awddwa', 'awdas', '0', '', '', 'admin', '');
INSERT INTO `d0001` VALUES ('3', 'KD003', 'Nama Dbtr 3', 'asdf', 'sdf', '123', '0', '0', '', '', '', '1', '', '', 'admin', '');
INSERT INTO `d0001` VALUES ('4', 'KD004', 'Nama Dbtr 4', 'aw', 'dawadwawd', '2131213', '0', '0', '', '', '', '0', 'admin', '', 'admin', '');
INSERT INTO `d0001` VALUES ('5', 'KD005', 'Nama Dbtr 5', 'awd', 'awdawdawdawd', '123213', '0', '123123', 'adwawd@adw', 'adwawd', 'awdawdsasd', '1', 'admin', '', 'admin', '');
INSERT INTO `d0001` VALUES ('6', 'KD006', 'Nama Dbtr 6', 'awd', 'awdawd', '123', '0', '213123', 'adwD@daw.asd', 'awdawd', 'adwdwa', '1', 'admin', '', 'admin', '');

-- ----------------------------
-- Table structure for `ub0001`
-- ----------------------------
DROP TABLE IF EXISTS `ub0001`;
CREATE TABLE `ub0001` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kdUnit` varchar(25) NOT NULL,
  `nmUnit` varchar(255) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Barang Unit';

-- ----------------------------
-- Records of ub0001
-- ----------------------------
INSERT INTO `ub0001` VALUES ('1', 'U001', 'PCS (1PCS)', '242', null, null, '', '', null, '', '', 'admin');
INSERT INTO `ub0001` VALUES ('2', 'U002', 'Kardus (32PCS)', '32', null, null, '', '', null, 'admin', '', 'admin');
INSERT INTO `ub0001` VALUES ('3', 'brg001', 'Kardus (34PCS)', '34', null, null, '', '', null, 'admin', '', 'admin');
INSERT INTO `ub0001` VALUES ('4', 'BOX001', 'BOX (12Kardus)', '12', null, null, '', '', null, 'admin', '', '');
