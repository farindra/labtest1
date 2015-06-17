/*
Navicat MySQL Data Transfer

Source Server         : phpmyadmin
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : dbm002

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-06-15 17:35:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `a0001`
-- ----------------------------
DROP TABLE IF EXISTS `a0001`;
CREATE TABLE `a0001` (
  `EMP_ID` varchar(10) NOT NULL,
  `EMP_NM` varchar(30) DEFAULT NULL,
  `USERNAME` varchar(30) DEFAULT NULL,
  `PAYROLL_ID` varchar(30) DEFAULT NULL,
  `EMP_STS` smallint(6) DEFAULT NULL,
  `EMP_AVATAR` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Employe Identifikasi';

-- ----------------------------
-- Records of a0001
-- ----------------------------
INSERT INTO `a0001` VALUES ('1', 'PITER NOVIAN', 'piter', 'SSS0089', '1', 'ptr.ico');

-- ----------------------------
-- Table structure for `aa0001`
-- ----------------------------
DROP TABLE IF EXISTS `aa0001`;
CREATE TABLE `aa0001` (
  `PRP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRP_STS` smallint(6) NOT NULL DEFAULT '0',
  `EMP_ID` varchar(10) NOT NULL,
  `EMP_PHOTO` varchar(20) DEFAULT NULL,
  `EMP_KTP` varchar(50) DEFAULT NULL,
  `EMP_NM` varchar(30) DEFAULT NULL,
  `EMP_ALMT` text,
  `EMP_TLP` varchar(20) DEFAULT NULL,
  `EMP_PHONE` varchar(20) DEFAULT NULL,
  `EMP_DRT_ALMT` text,
  `EMP_DRT_TLP` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Profile Employe Standart';

-- ----------------------------
-- Records of aa0001
-- ----------------------------

-- ----------------------------
-- Table structure for `b0001`
-- ----------------------------
DROP TABLE IF EXISTS `b0001`;
CREATE TABLE `b0001` (
  `CORP_ID` varchar(5) NOT NULL,
  `CORP_NM` varchar(30) DEFAULT NULL,
  `CORP_STS` smallint(6) DEFAULT NULL,
  `CORP_AVATAR` varchar(20) DEFAULT NULL,
  `CORP_DCRP` text,
  PRIMARY KEY (`CORP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Coorporate';

-- ----------------------------
-- Records of b0001
-- ----------------------------
INSERT INTO `b0001` VALUES ('ALG', 'ARTA LIPAT GANDA', '1', null, null);
INSERT INTO `b0001` VALUES ('ESM', 'EFEMBI SUKSES MAKMUR', '1', null, null);
INSERT INTO `b0001` VALUES ('GOSEN', 'GOSENT', '1', null, null);
INSERT INTO `b0001` VALUES ('SSS', 'SARANA SINAR SURYA', '1', null, null);

-- ----------------------------
-- Table structure for `c0001`
-- ----------------------------
DROP TABLE IF EXISTS `c0001`;
CREATE TABLE `c0001` (
  `DEP_ID` int(11) NOT NULL,
  `DEP_NM` varchar(30) DEFAULT NULL,
  `DEP_STS` smallint(6) DEFAULT NULL,
  `DEP_DCRP` text,
  PRIMARY KEY (`DEP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Departmen';

-- ----------------------------
-- Records of c0001
-- ----------------------------
INSERT INTO `c0001` VALUES ('1', 'IT', '1', 'INFORMATION TECHNOLOGY');
INSERT INTO `c0001` VALUES ('2', 'HRD', '1', 'HUMAN RESOURCE DEPARTMENT');

-- ----------------------------
-- Table structure for `d0001`
-- ----------------------------
DROP TABLE IF EXISTS `d0001`;
CREATE TABLE `d0001` (
  `JAB_ID` int(11) NOT NULL,
  `JAB_NM` varchar(30) DEFAULT NULL,
  `JAB_STS` smallint(6) DEFAULT NULL,
  `JAB_DCRP` text,
  PRIMARY KEY (`JAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Jabatan';

-- ----------------------------
-- Records of d0001
-- ----------------------------
INSERT INTO `d0001` VALUES ('1', 'OWNER', '1', 'PEMILIK');
INSERT INTO `d0001` VALUES ('2', 'GM', '1', 'General Manager');
INSERT INTO `d0001` VALUES ('3', 'MANAGER', '1', 'Manager');
INSERT INTO `d0001` VALUES ('4', 'SUVERVISOR', '1', 'Suvervisor');
INSERT INTO `d0001` VALUES ('5', 'DM', '1', 'DISTRIK MANAGER');
INSERT INTO `d0001` VALUES ('6', 'STAFF', '1', 'STAFF');
INSERT INTO `d0001` VALUES ('7', 'OPS', '1', 'Operational');

-- ----------------------------
-- Table structure for `e0001`
-- ----------------------------
DROP TABLE IF EXISTS `e0001`;
CREATE TABLE `e0001` (
  `LIST_ID` int(11) NOT NULL,
  `LIST_NM` varchar(30) DEFAULT NULL,
  `LIST_GENERAL` smallint(6) NOT NULL DEFAULT '0',
  `CORP_ID` varchar(10) NOT NULL,
  `DEP_ID` int(11) NOT NULL,
  `JAB_ID` int(11) NOT NULL,
  `MDL_ID` int(11) NOT NULL,
  `MDL_CHL` int(11) DEFAULT NULL,
  `LIST_STS` smallint(6) DEFAULT NULL,
  `LIST_DCRP` text,
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='HEADER MODUL KPI';

-- ----------------------------
-- Records of e0001
-- ----------------------------

-- ----------------------------
-- Table structure for `ea0001`
-- ----------------------------
DROP TABLE IF EXISTS `ea0001`;
CREATE TABLE `ea0001` (
  `MDL_ID` int(11) NOT NULL,
  `MDL_NM` varchar(30) DEFAULT NULL,
  `MDL_STS` smallint(6) DEFAULT NULL,
  `MDL_DCRP` text,
  PRIMARY KEY (`MDL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='NAMA MODUL KATEGORY';

-- ----------------------------
-- Records of ea0001
-- ----------------------------
INSERT INTO `ea0001` VALUES ('0', 'GENERAL', '1', null);
INSERT INTO `ea0001` VALUES ('1', 'BISNIS PROSESS', '1', null);
INSERT INTO `ea0001` VALUES ('2', 'SOP', '1', null);
INSERT INTO `ea0001` VALUES ('3', 'PROSESS APA GT', '1', null);
INSERT INTO `ea0001` VALUES ('4', 'JOBSDESK', '1', null);

-- ----------------------------
-- Table structure for `ea0002`
-- ----------------------------
DROP TABLE IF EXISTS `ea0002`;
CREATE TABLE `ea0002` (
  `MDL_CHL` int(11) NOT NULL AUTO_INCREMENT,
  `MDL_CHL_NM` varchar(30) NOT NULL,
  `MDL_ID` int(11) NOT NULL DEFAULT '0',
  `DCRP_TXT` text,
  `DCRP_STS` smallint(6) DEFAULT NULL,
  `DCRP_SORT` int(11) DEFAULT NULL,
  PRIMARY KEY (`MDL_CHL`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='DETAIL MODUL TEXT/CHART';

-- ----------------------------
-- Records of ea0002
-- ----------------------------
INSERT INTO `ea0002` VALUES ('1', '', '0', 'test coba', '1', null);
