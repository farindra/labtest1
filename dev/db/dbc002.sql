/*
Navicat MySQL Data Transfer

Source Server         : phpmyadmin
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : dbc002

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-06-15 17:35:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `a0001`
-- ----------------------------
DROP TABLE IF EXISTS `a0001`;
CREATE TABLE `a0001` (
  `DBTR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DBTR_NM` varchar(30) DEFAULT NULL,
  `DBTR_STT` smallint(6) DEFAULT NULL,
  `DBTR_JOIN` date DEFAULT NULL,
  `DBTR_PIC` varchar(30) DEFAULT NULL,
  `DBTR_ALMT` text,
  `DBTR_ID_TLP` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DBTR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='DISTRIBUTIR MAXI';

-- ----------------------------
-- Records of a0001
-- ----------------------------
INSERT INTO `a0001` VALUES ('1', 'ESM', '1', '2013-01-01', 'Stephen', 'Ruko Demension', null);
INSERT INTO `a0001` VALUES ('2', ' PT. CAHAYA INTI PUTRA SEJAHTE', '1', '2015-02-01', 'Atun', 'P.Gadung', null);
INSERT INTO `a0001` VALUES ('3', 'as', '1', '2015-05-26', 'as', 'asd', '12');
INSERT INTO `a0001` VALUES ('4', 'coba ya', '1', '2015-05-26', 'testing', 'hahahi', '123124123123');
INSERT INTO `a0001` VALUES ('6', 'adw', '1', '2015-05-27', 'awd', 'awdawd', '123');

-- ----------------------------
-- Table structure for `b0001`
-- ----------------------------
DROP TABLE IF EXISTS `b0001`;
CREATE TABLE `b0001` (
  `BRG_ID` varchar(10) NOT NULL,
  `BRG_CONV` smallint(6) DEFAULT NULL,
  `BRG_NM` varchar(30) DEFAULT NULL,
  `DBTR_ID` int(11) DEFAULT NULL,
  `PRIZE_ID` int(11) DEFAULT NULL,
  `BRG_STT` smallint(6) NOT NULL DEFAULT '0',
  `BRG_JOIN` date DEFAULT NULL,
  `BRG_DCRIP` text,
  PRIMARY KEY (`BRG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Prodak Maxi';

-- ----------------------------
-- Records of b0001
-- ----------------------------
INSERT INTO `b0001` VALUES ('EF001', '0', 'CASSAVA CRACKER HOT ', '2', null, '1', '2014-01-01', null);
INSERT INTO `b0001` VALUES ('EF002', '1', 'CASSAVA BALADO', '2', null, '1', '2014-01-01', null);
INSERT INTO `b0001` VALUES ('EF003', '2', 'TARO ROASTED CORN', '2', null, '1', '2014-01-01', null);
INSERT INTO `b0001` VALUES ('EF004', '3', 'TARO BLACK PEPPER', '2', null, '1', '2014-01-01', null);
INSERT INTO `b0001` VALUES ('EF005', '4', 'MIXED ROOTS', '2', null, '1', '2014-01-01', null);
INSERT INTO `b0001` VALUES ('MAX001', '0', 'CASSAVA CRACKER HOT ', '1', null, '1', '2014-01-01', null);
INSERT INTO `b0001` VALUES ('MAX002', '1', 'CASSAVA BALADO', '1', null, '1', '2014-01-01', null);
INSERT INTO `b0001` VALUES ('MAX003', '2', 'TARO ROASTED CORN', '1', null, '1', '2014-01-01', null);
INSERT INTO `b0001` VALUES ('MAX004', '3', 'TARO BLACK PEPPER', '1', null, '1', '2014-01-01', null);
INSERT INTO `b0001` VALUES ('MAX005', '4', 'MIXED ROOTS', '1', null, '1', '2014-01-01', null);

-- ----------------------------
-- Table structure for `ba0001`
-- ----------------------------
DROP TABLE IF EXISTS `ba0001`;
CREATE TABLE `ba0001` (
  `UNIT_ID` int(11) NOT NULL,
  `UNIT_NM` varchar(20) NOT NULL,
  `BRG_ID` varchar(10) NOT NULL,
  `PRIZE_ID` int(11) DEFAULT NULL,
  `UNIT_STT` smallint(6) NOT NULL DEFAULT '0',
  `UNIT_PCS` float DEFAULT NULL,
  `UNIT_PACK` int(11) DEFAULT NULL,
  PRIMARY KEY (`UNIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='UNIT';

-- ----------------------------
-- Records of ba0001
-- ----------------------------

-- ----------------------------
-- Table structure for `bb0001`
-- ----------------------------
DROP TABLE IF EXISTS `bb0001`;
CREATE TABLE `bb0001` (
  `PRIZE_ID` varchar(255) NOT NULL,
  `BRG_ID` varchar(10) NOT NULL,
  `DBTR_ID` int(11) NOT NULL,
  `PRIZE_BASE` float(50,2) NOT NULL DEFAULT '0.00',
  `PRIZE_UP` float(50,2) NOT NULL DEFAULT '0.00',
  `PRIZE_STT` smallint(6) NOT NULL DEFAULT '0',
  `PRIZE_DATE` date DEFAULT NULL,
  `PRIZE_DCRIP` text,
  PRIMARY KEY (`PRIZE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Price List';

-- ----------------------------
-- Records of bb0001
-- ----------------------------

-- ----------------------------
-- Table structure for `c0001`
-- ----------------------------
DROP TABLE IF EXISTS `c0001`;
CREATE TABLE `c0001` (
  `SELES_ID` varchar(10) NOT NULL,
  `SELES_NM` varchar(30) DEFAULT NULL,
  `SELES_STS` smallint(6) DEFAULT NULL,
  `DBTR_ID` int(11) DEFAULT NULL,
  `SELES_ALMT` text,
  `SELES_TLP` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SELES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of c0001
-- ----------------------------
INSERT INTO `c0001` VALUES ('000017', 'ADI', '1', '2', null, null);
INSERT INTO `c0001` VALUES ('000023', 'RONY', '1', '2', null, null);
INSERT INTO `c0001` VALUES ('1', 'ADI', '1', '1', null, null);
INSERT INTO `c0001` VALUES ('2', 'RONY', '1', '1', null, null);
INSERT INTO `c0001` VALUES ('3', 'JAYA', '1', '1', null, null);
INSERT INTO `c0001` VALUES ('4', 'HANDA', '1', '1', null, null);
INSERT INTO `c0001` VALUES ('5', 'SAMUEL', '1', '1', null, null);
INSERT INTO `c0001` VALUES ('X00001 ', 'JAYA', '1', '2', null, null);
INSERT INTO `c0001` VALUES ('X00002 ', 'HANDA', '1', '2', null, null);
INSERT INTO `c0001` VALUES ('X00003', 'SAMUEL', '1', '2', null, null);

-- ----------------------------
-- Table structure for `d0001`
-- ----------------------------
DROP TABLE IF EXISTS `d0001`;
CREATE TABLE `d0001` (
  `CUST_ID` varchar(10) NOT NULL,
  `CUST_NM` varchar(30) DEFAULT NULL,
  `DBTR_ID` varchar(10) NOT NULL,
  `SELES_ID` varchar(10) NOT NULL,
  `DBTR_REF` varchar(10) NOT NULL,
  `CUST_STT` smallint(6) NOT NULL DEFAULT '0',
  `CUST_JOIN` date DEFAULT NULL,
  `CUST_PIC` varchar(30) DEFAULT NULL,
  `CUST_PHONE` varchar(20) DEFAULT NULL,
  `CUST_ALMT` text,
  `CUST_TLP` varchar(20) DEFAULT NULL,
  `CUST_FAX` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='CUSTOMER MAXI\r\nDBTR_ID=INPUT DIRECT\r\nDBTR_REF=FROM';

-- ----------------------------
-- Records of d0001
-- ----------------------------
INSERT INTO `d0001` VALUES ('1', 'PONDOK CITRA BAKERY', '2', '000017', '1', '1', '2015-03-01', 'DWIDJA PRANATA', '59402076', 'CITRARAYA BLOK D1 NO.21R', '9402076', '9402076');
INSERT INTO `d0001` VALUES ('M00337', 'PONDOK CITRA BAKERY', '1', '000017', '1', '1', '2015-03-01', 'DWIDJA PRANATA', '59402076', 'CITRARAYA BLOK D1 NO.21R', '9402076', '9402076');

-- ----------------------------
-- Table structure for `taa_sales`
-- ----------------------------
DROP TABLE IF EXISTS `taa_sales`;
CREATE TABLE `taa_sales` (
  `SL_DTL_ID` varchar(20) NOT NULL DEFAULT '',
  `SL_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`SL_DTL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of taa_sales
-- ----------------------------

-- ----------------------------
-- Table structure for `ta_sales`
-- ----------------------------
DROP TABLE IF EXISTS `ta_sales`;
CREATE TABLE `ta_sales` (
  `SL_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ta_sales
-- ----------------------------

-- ----------------------------
-- Table structure for `tba_po`
-- ----------------------------
DROP TABLE IF EXISTS `tba_po`;
CREATE TABLE `tba_po` (
  `SL_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tba_po
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_po`
-- ----------------------------
DROP TABLE IF EXISTS `tb_po`;
CREATE TABLE `tb_po` (
  `SL_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_po
-- ----------------------------

-- ----------------------------
-- Table structure for `tca_inv`
-- ----------------------------
DROP TABLE IF EXISTS `tca_inv`;
CREATE TABLE `tca_inv` (
  `SL_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tca_inv
-- ----------------------------

-- ----------------------------
-- Table structure for `tc_inv`
-- ----------------------------
DROP TABLE IF EXISTS `tc_inv`;
CREATE TABLE `tc_inv` (
  `SL_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tc_inv
-- ----------------------------
