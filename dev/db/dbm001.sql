/*
Navicat MySQL Data Transfer

Source Server         : phpmyadmin
<<<<<<< HEAD:dev/db/dbm001.sql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : dbm001

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-06-17 05:22:35
=======
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : dbm0001

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-06-15 15:50:14
>>>>>>> master:dev/db/dbm0001.sql
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('ACCT_OWNER', '1', '1432807683');
INSERT INTO `auth_assignment` VALUES ('ALG_OWNER', '1', '1432787201');
INSERT INTO `auth_assignment` VALUES ('ALG_OWNER', '2', '1432786920');
INSERT INTO `auth_assignment` VALUES ('DASHBOARD_REPORT_OWNER', '1', '1432812417');
INSERT INTO `auth_assignment` VALUES ('DEFAULT_MENU', '1', '1432802950');
INSERT INTO `auth_assignment` VALUES ('DEFAULT_MENU', '2', '1432802957');
INSERT INTO `auth_assignment` VALUES ('DEFAULT_MENU', '3', '1432802964');
INSERT INTO `auth_assignment` VALUES ('DESIGN_OWNER', '1', '1432808942');
INSERT INTO `auth_assignment` VALUES ('ESM_OWNER', '1', '1432789193');
INSERT INTO `auth_assignment` VALUES ('ESM_OWNER', '2', '1432785959');
INSERT INTO `auth_assignment` VALUES ('FNC_OWNER', '1', '1432807795');
INSERT INTO `auth_assignment` VALUES ('GA_OWNER', '1', '1432808097');
INSERT INTO `auth_assignment` VALUES ('GOSENT_OWNER', '1', '1432789226');
INSERT INTO `auth_assignment` VALUES ('HRD_OWNER', '1', '1432795531');
INSERT INTO `auth_assignment` VALUES ('IT_OWNER', '1', '1432810536');
INSERT INTO `auth_assignment` VALUES ('Permission_ACC_Full', '1', '1432807665');
INSERT INTO `auth_assignment` VALUES ('Permission_HRD_Full', '1', '1432795464');
INSERT INTO `auth_assignment` VALUES ('Permission_IT_Full', '1', '1433758898');
INSERT INTO `auth_assignment` VALUES ('SSS_OWNER', '1', '1432789203');

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`) USING BTREE,
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/acctsales/index', '2', null, null, null, '1432804212', '1432804212');
INSERT INTO `auth_item` VALUES ('/algcustomer/index', '2', null, null, null, '1432699167', '1432699167');
INSERT INTO `auth_item` VALUES ('/algmarketing/index', '2', null, null, null, '1432699219', '1432699219');
INSERT INTO `auth_item` VALUES ('/algprodak/index', '2', null, null, null, '1432699149', '1432699149');
INSERT INTO `auth_item` VALUES ('/algprodusen/index', '2', null, null, null, '1432699183', '1432699183');
INSERT INTO `auth_item` VALUES ('/algpurchasing/index', '2', null, null, null, '1432699235', '1432699235');
INSERT INTO `auth_item` VALUES ('/algselestrans/index', '2', null, null, null, '1432699204', '1432699204');
INSERT INTO `auth_item` VALUES ('/algwarehouse/index', '2', null, null, null, '1432699251', '1432699251');
INSERT INTO `auth_item` VALUES ('/bt/index', '2', null, null, null, '1432802191', '1432802191');
INSERT INTO `auth_item` VALUES ('/chating/index', '2', null, null, null, '1432802170', '1432802170');
INSERT INTO `auth_item` VALUES ('/dashboarda/index', '2', null, null, null, '1432802447', '1432802447');
INSERT INTO `auth_item` VALUES ('/dashboardb/index', '2', null, null, null, '1432802456', '1432802456');
INSERT INTO `auth_item` VALUES ('/dashboardc/index', '2', null, null, null, '1432802464', '1432802464');
INSERT INTO `auth_item` VALUES ('/dashboardcorp/index', '2', null, null, null, '1432811687', '1432811687');
INSERT INTO `auth_item` VALUES ('/dashboarddep/index', '2', null, null, null, '1432811698', '1432811698');
INSERT INTO `auth_item` VALUES ('/dashboardops/index', '2', null, null, null, '1432811720', '1432811720');
INSERT INTO `auth_item` VALUES ('/dashboardstaff/index', '2', null, null, null, '1432811711', '1432811711');
INSERT INTO `auth_item` VALUES ('/dashgrfaset/index', '2', null, null, null, '1432811985', '1432811985');
INSERT INTO `auth_item` VALUES ('/dashgrfcustomer/index', '2', null, null, null, '1432811937', '1432811937');
INSERT INTO `auth_item` VALUES ('/dashgrfforwarder/index', '2', null, null, null, '1432811955', '1432811955');
INSERT INTO `auth_item` VALUES ('/dashgrfkonsumen/index', '2', null, null, null, '1432811970', '1432811970');
INSERT INTO `auth_item` VALUES ('/dashgrfprodak/index', '2', null, null, null, '1432811915', '1432811915');
INSERT INTO `auth_item` VALUES ('/dashgrfsales/index', '2', null, null, null, '1432811924', '1432811924');
INSERT INTO `auth_item` VALUES ('/desdraff/index', '2', null, null, null, '1432808808', '1432808808');
INSERT INTO `auth_item` VALUES ('/desmatrial/index', '2', null, null, null, '1432808793', '1432808793');
INSERT INTO `auth_item` VALUES ('/distributor/index', '2', null, null, null, '1433493014', '1433493014');
INSERT INTO `auth_item` VALUES ('/esm/barang/index', '2', null, null, null, '1433758313', '1433758313');
INSERT INTO `auth_item` VALUES ('/esm/distributor/index', '2', null, null, null, '1433493318', '1433493318');
INSERT INTO `auth_item` VALUES ('/esm/suplier/index', '2', null, null, null, '1434014882', '1434014882');
INSERT INTO `auth_item` VALUES ('/esm/unitbarang/index', '2', null, null, null, '1433818152', '1433818152');
INSERT INTO `auth_item` VALUES ('/esmcustomer/index', '2', null, null, null, '1432698318', '1432698318');
INSERT INTO `auth_item` VALUES ('/esmdistributor/index', '2', null, null, null, '1432698281', '1432698281');
INSERT INTO `auth_item` VALUES ('/esmprodak/index', '2', null, null, null, '1432698263', '1432698263');
INSERT INTO `auth_item` VALUES ('/esmprodusen/index', '2', null, null, null, '1432698335', '1432698335');
INSERT INTO `auth_item` VALUES ('/esmpurchasing/index', '2', null, null, null, '1432698375', '1432698375');
INSERT INTO `auth_item` VALUES ('/esmsalesment/index', '2', null, null, null, '1432698302', '1432698302');
INSERT INTO `auth_item` VALUES ('/esmselestrans/index', '2', null, null, null, '1432698360', '1432698360');
INSERT INTO `auth_item` VALUES ('/esmwarehouse/index', '2', null, null, null, '1432698391', '1432698391');
INSERT INTO `auth_item` VALUES ('/fincinvoice/index', '2', null, null, null, '1432804276', '1432804276');
INSERT INTO `auth_item` VALUES ('/gaimaintenance/index', '2', null, null, null, '1432807947', '1432807947');
INSERT INTO `auth_item` VALUES ('/gainventaris/index', '2', null, null, null, '1432807931', '1432807931');
INSERT INTO `auth_item` VALUES ('/gsnbtb/index', '2', null, null, null, '1432702022', '1432702022');
INSERT INTO `auth_item` VALUES ('/gsnbtc/index', '2', null, null, null, '1432702027', '1432702027');
INSERT INTO `auth_item` VALUES ('/gsnforwarder/index', '2', null, null, null, '1432702271', '1432702271');
INSERT INTO `auth_item` VALUES ('/gsnkonsumen/index', '2', null, null, null, '1432701987', '1432701987');
INSERT INTO `auth_item` VALUES ('/gsnkurir/index', '2', null, null, null, '1432701929', '1432701929');
INSERT INTO `auth_item` VALUES ('/gsnprodak/index', '2', null, null, null, '1432701892', '1432701892');
INSERT INTO `auth_item` VALUES ('/gsnpurchasing/index', '2', null, null, null, '1432702042', '1432702042');
INSERT INTO `auth_item` VALUES ('/gsnsales/index', '2', null, null, null, '1432702002', '1432702002');
INSERT INTO `auth_item` VALUES ('/gsnwarehouse/index', '2', null, null, null, '1432702056', '1432702056');
INSERT INTO `auth_item` VALUES ('/gsnwh/index', '2', null, null, null, '1432701972', '1432701972');
INSERT INTO `auth_item` VALUES ('/hrdabsensi/index', '2', null, null, null, '1432793763', '1432793763');
INSERT INTO `auth_item` VALUES ('/hrdemploye/index', '2', null, null, null, '1432793708', '1432793708');
INSERT INTO `auth_item` VALUES ('/hrdmodul/index', '2', null, null, null, '1432793772', '1432793772');
INSERT INTO `auth_item` VALUES ('/hrdpayroll/index', '2', null, null, null, '1432793785', '1432793785');
INSERT INTO `auth_item` VALUES ('/hrdprofile/index', '2', null, null, null, '1432793718', '1432793718');
INSERT INTO `auth_item` VALUES ('/hrdrekrutmen/index', '2', null, null, null, '1432793747', '1432793747');
INSERT INTO `auth_item` VALUES ('/Itapi/index', '2', null, null, null, '1432810116', '1432810116');
INSERT INTO `auth_item` VALUES ('/Itdbe/index', '2', null, null, null, '1432809728', '1432809728');
INSERT INTO `auth_item` VALUES ('/Itexportimport/index', '2', null, null, null, '1432810103', '1432810103');
INSERT INTO `auth_item` VALUES ('/Itlogcancel/index', '2', null, null, null, '1432809886', '1432809886');
INSERT INTO `auth_item` VALUES ('/Itlogdelete/index', '2', null, null, null, '1432809865', '1432809865');
INSERT INTO `auth_item` VALUES ('/Itlogerror/index', '2', null, null, null, '1432809849', '1432809849');
INSERT INTO `auth_item` VALUES ('/Itnetwork/index', '2', null, null, null, '1432809743', '1432809743');
INSERT INTO `auth_item` VALUES ('/itprogramer/index', '2', null, null, null, '1433302248', '1433302248');
INSERT INTO `auth_item` VALUES ('/Itsupport/index', '2', null, null, null, '1432809756', '1432809756');
<<<<<<< HEAD:dev/db/dbm001.sql
INSERT INTO `auth_item` VALUES ('/master/barangumum', '2', null, null, null, '1434424518', '1434424518');
INSERT INTO `auth_item` VALUES ('/master/kategori', '2', null, null, null, '1434426036', '1434426036');
INSERT INTO `auth_item` VALUES ('/master/suplier/index', '2', null, null, null, '1434358494', '1434358494');
INSERT INTO `auth_item` VALUES ('/master/tipebarang', '2', null, null, null, '1434425503', '1434425503');
INSERT INTO `auth_item` VALUES ('/master/unitbarang', '2', null, null, null, '1434426091', '1434426091');
INSERT INTO `auth_item` VALUES ('/sss/beritaacara', '2', null, null, null, '1434462102', '1434462102');
=======
INSERT INTO `auth_item` VALUES ('/sss/a1000', '2', null, null, null, '1433747457', '1433747457');
INSERT INTO `auth_item` VALUES ('/sss/beritaacara', '2', null, null, null, '1433833431', '1433833431');
>>>>>>> master:dev/db/dbm0001.sql
INSERT INTO `auth_item` VALUES ('/ssskonsumen/index', '2', null, null, null, '1432665390', '1432665390');
INSERT INTO `auth_item` VALUES ('/sssmarketing/index', '2', null, null, null, '1432665448', '1432665448');
INSERT INTO `auth_item` VALUES ('/sssprodak/index', '2', null, null, null, '1432665346', '1432665346');
INSERT INTO `auth_item` VALUES ('/ssspurchasing/index', '2', null, null, null, '1432665415', '1432665415');
INSERT INTO `auth_item` VALUES ('/ssssales/index', '2', null, null, null, '1432697615', '1432697615');
INSERT INTO `auth_item` VALUES ('/ssstenant/index', '2', null, null, null, '1432665370', '1432665370');
INSERT INTO `auth_item` VALUES ('/ssswarehouse/index', '2', null, null, null, '1432665433', '1432665433');
INSERT INTO `auth_item` VALUES ('ACCT_OWNER', '1', null, 'OWNER', null, '1432804872', '1432807641');
INSERT INTO `auth_item` VALUES ('ALG_CEO', '1', null, 'CEO', null, '1432664818', '1432664818');
INSERT INTO `auth_item` VALUES ('ALG_DM', '1', null, 'DM', null, '1432664888', '1432782107');
INSERT INTO `auth_item` VALUES ('ALG_GM', '1', null, 'GM', null, '1432664831', '1432664831');
INSERT INTO `auth_item` VALUES ('ALG_KOMISARIS', '1', null, 'KOMISARIS', null, '1432664730', '1432794585');
INSERT INTO `auth_item` VALUES ('ALG_MANAGER', '1', null, 'MANAGER', null, '1432664854', '1432664854');
INSERT INTO `auth_item` VALUES ('ALG_OPS', '1', null, 'OPS', null, '1432664924', '1432664924');
INSERT INTO `auth_item` VALUES ('ALG_OWNER', '1', null, 'OWNER', null, '1432664710', '1432794282');
INSERT INTO `auth_item` VALUES ('ALG_STAFF', '1', null, 'STAFF', null, '1432664903', '1432664903');
INSERT INTO `auth_item` VALUES ('ALG_SUVERVISOR', '1', null, 'SUVERVISOR', null, '1432664875', '1432664875');
INSERT INTO `auth_item` VALUES ('DASHBOARD_REPORT_OWNER', '1', 'DASHBOARD REPORT', 'OWNER', null, '1432812393', '1432812393');
INSERT INTO `auth_item` VALUES ('DEFAULT_MENU', '1', 'Menu Untuk Semua login User', 'OWNER', null, '1432802919', '1432804794');
INSERT INTO `auth_item` VALUES ('DESIGN_OWNER', '1', null, 'OWNER', null, '1432808921', '1432808921');
INSERT INTO `auth_item` VALUES ('ESM_CEO', '1', null, 'CEO', null, '1432664401', '1432664401');
INSERT INTO `auth_item` VALUES ('ESM_DM', '1', null, 'DM', null, '1432664569', '1432664569');
INSERT INTO `auth_item` VALUES ('ESM_GM', '1', null, 'GM', null, '1432664423', '1432664423');
INSERT INTO `auth_item` VALUES ('ESM_KOMISARIS', '1', null, 'KOMISARIS', null, '1432664388', '1432664388');
INSERT INTO `auth_item` VALUES ('ESM_MANAGER', '1', null, 'MANAGER', null, '1432664447', '1432664447');
INSERT INTO `auth_item` VALUES ('ESM_OPS', '1', null, 'OPS', null, '1432664598', '1432664598');
INSERT INTO `auth_item` VALUES ('ESM_OWNER', '1', null, 'OWNER', null, '1432664354', '1432794292');
INSERT INTO `auth_item` VALUES ('ESM_STAFF', '1', null, 'STAFF', null, '1432664494', '1432664494');
INSERT INTO `auth_item` VALUES ('ESM_SUVERVISOR', '1', null, 'SUVERVISOR', null, '1432664473', '1432664473');
INSERT INTO `auth_item` VALUES ('FNC_OWNER', '1', null, null, null, '1432807768', '1432807785');
INSERT INTO `auth_item` VALUES ('GA_OWNER', '1', 'GENERAL AFFAIR', 'OWNER', null, '1432808082', '1432808082');
INSERT INTO `auth_item` VALUES ('GOSENT_CEO', '1', null, 'CEO', null, '1432664980', '1432664980');
INSERT INTO `auth_item` VALUES ('GOSENT_DM', '1', null, 'DM', null, '1432665025', '1432665025');
INSERT INTO `auth_item` VALUES ('GOSENT_GM', '1', null, 'GM', null, '1432664996', '1432664996');
INSERT INTO `auth_item` VALUES ('GOSENT_KOMISARIS', '1', null, 'KOMISARIS', null, '1432664964', '1432664964');
INSERT INTO `auth_item` VALUES ('GOSENT_MANAGER', '1', null, 'MANAGER', null, '1432665007', '1432665007');
INSERT INTO `auth_item` VALUES ('GOSENT_OPS', '1', null, 'OPS', null, '1432665079', '1432665079');
INSERT INTO `auth_item` VALUES ('GOSENT_OWNER', '1', null, 'OWNER', null, '1432664947', '1432708129');
INSERT INTO `auth_item` VALUES ('GOSENT_STAFF', '1', null, 'STAFF', null, '1432665058', '1432665058');
INSERT INTO `auth_item` VALUES ('GOSENT_SUVERVISOR', '1', null, 'SUVERVISOR', null, '1432665043', '1432665043');
INSERT INTO `auth_item` VALUES ('HRD_OWNER', '1', null, 'OWNER', null, '1432795501', '1432795501');
INSERT INTO `auth_item` VALUES ('IT_OWNER', '1', 'IT Show ALL', 'OWNER', null, '1432810516', '1432810516');
INSERT INTO `auth_item` VALUES ('Permission_ACC_Full', '2', 'Dept. Accounting - All Menu ', null, null, '1432804684', '1432806532');
INSERT INTO `auth_item` VALUES ('Permission_ALG_Full', '2', 'PT. Arta Lipat Ganda - All Menu  ', null, null, '1432699423', '1432806466');
INSERT INTO `auth_item` VALUES ('Permission_DESIGN_Full', '2', 'Dept. Design- All Menu ', null, null, '1432808867', '1432808934');
INSERT INTO `auth_item` VALUES ('Permission_ESM_Full', '2', 'PT. Efembi Sukses Makmur / Maxindo - All Menu ', null, null, '1432698661', '1433493341');
INSERT INTO `auth_item` VALUES ('Permission_FNC_Full', '2', 'Dept. Finance - All Menu ', null, null, '1432804718', '1432807745');
INSERT INTO `auth_item` VALUES ('Permission_GA_Full', '2', 'Dept. General Affair - All Menu ', null, null, '1432808020', '1432808053');
INSERT INTO `auth_item` VALUES ('Permission_GOSENT_Full', '2', 'PT.Gosent - All Menu ', null, null, '1432708101', '1432809192');
INSERT INTO `auth_item` VALUES ('Permission_HRD_Full', '2', 'Dept. HRD - All Menu ', null, null, '1432795442', '1432806555');
INSERT INTO `auth_item` VALUES ('Permission_IT_Full', '2', 'Dept. IT - All Menu ', null, null, '1432810444', '1433302294');
INSERT INTO `auth_item` VALUES ('Permission_Report_Dashboard', '2', ' Dashboard Report - All Menu, Description by Login user', null, null, '1432812243', '1432812303');
INSERT INTO `auth_item` VALUES ('Permission_SSS_Full', '2', 'PT. Sarana Sinar Surya - All Menu ', null, null, '1432665874', '1432806569');
INSERT INTO `auth_item` VALUES ('Permission_SSS_Prodak', '2', 'PT. Sarana Sinar Surya - Prodak', null, null, '1432806598', '1432806664');
INSERT INTO `auth_item` VALUES ('Permission_SSS_Purchasing', '2', 'PT. Sarana Sinar Surya - Purchasing', null, null, '1432794540', '1432806643');
INSERT INTO `auth_item` VALUES ('Permission_Umum_Beritaacara', '2', 'General Menu - Berita Acara', null, null, '1432802649', '1432806375');
INSERT INTO `auth_item` VALUES ('Permission_Umum_Chat', '2', 'General Menu - Chat Semua login User', null, null, '1432802614', '1432812213');
INSERT INTO `auth_item` VALUES ('Permission_Umum_Dashboard', '2', 'Dashboard Umum - All Menu - , Description by Login user', null, null, '1432802551', '1432812324');
INSERT INTO `auth_item` VALUES ('SSS_CEO', '1', null, 'CEO', null, '1432664122', '1432664122');
INSERT INTO `auth_item` VALUES ('SSS_DM', '1', null, 'DM', null, '1432664231', '1432664231');
INSERT INTO `auth_item` VALUES ('SSS_GM', '1', null, 'GM', null, '1432664142', '1432664142');
INSERT INTO `auth_item` VALUES ('SSS_KOMISARIS', '1', null, 'KOMISARIS', null, '1432664102', '1432664102');
INSERT INTO `auth_item` VALUES ('SSS_MANAGER', '1', null, 'MANAGER', null, '1432664195', '1432664195');
INSERT INTO `auth_item` VALUES ('SSS_OPS', '1', null, 'OPS', null, '1432664267', '1432664267');
INSERT INTO `auth_item` VALUES ('SSS_OWNER', '1', null, 'OWNER', null, '1432664045', '1432794470');
INSERT INTO `auth_item` VALUES ('SSS_STAFF', '1', null, 'STAFF', null, '1432664249', '1432788195');
INSERT INTO `auth_item` VALUES ('SSS_SUVERVISOR', '1', null, 'SUVERVISOR', null, '1432664217', '1432664217');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`) USING BTREE,
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('Permission_ACC_Full', '/acctsales/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ALG_Full', '/algcustomer/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ALG_Full', '/algmarketing/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ALG_Full', '/algprodak/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ALG_Full', '/algprodusen/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ALG_Full', '/algpurchasing/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ALG_Full', '/algselestrans/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ALG_Full', '/algwarehouse/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Umum_Chat', '/chating/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Umum_Dashboard', '/dashboarda/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Umum_Dashboard', '/dashboardcorp/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Umum_Dashboard', '/dashboarddep/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Umum_Dashboard', '/dashboardops/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Umum_Dashboard', '/dashboardstaff/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Report_Dashboard', '/dashgrfaset/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Report_Dashboard', '/dashgrfcustomer/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Report_Dashboard', '/dashgrfforwarder/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Report_Dashboard', '/dashgrfkonsumen/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Report_Dashboard', '/dashgrfprodak/index');
INSERT INTO `auth_item_child` VALUES ('Permission_Report_Dashboard', '/dashgrfsales/index');
INSERT INTO `auth_item_child` VALUES ('Permission_DESIGN_Full', '/desdraff/index');
INSERT INTO `auth_item_child` VALUES ('Permission_DESIGN_Full', '/desmatrial/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ESM_Full', '/esm/barang/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ESM_Full', '/esm/distributor/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/esm/unitbarang/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ESM_Full', '/esmcustomer/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ESM_Full', '/esmprodusen/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ESM_Full', '/esmpurchasing/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ESM_Full', '/esmsalesment/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ESM_Full', '/esmselestrans/index');
INSERT INTO `auth_item_child` VALUES ('Permission_ESM_Full', '/esmwarehouse/index');
INSERT INTO `auth_item_child` VALUES ('Permission_FNC_Full', '/fincinvoice/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GA_Full', '/gaimaintenance/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GA_Full', '/gainventaris/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnbtb/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnbtc/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnforwarder/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnkonsumen/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnkurir/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnprodak/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnpurchasing/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnsales/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnwarehouse/index');
INSERT INTO `auth_item_child` VALUES ('Permission_GOSENT_Full', '/gsnwh/index');
INSERT INTO `auth_item_child` VALUES ('Permission_HRD_Full', '/hrdabsensi/index');
INSERT INTO `auth_item_child` VALUES ('Permission_HRD_Full', '/hrdemploye/index');
INSERT INTO `auth_item_child` VALUES ('Permission_HRD_Full', '/hrdmodul/index');
INSERT INTO `auth_item_child` VALUES ('Permission_HRD_Full', '/hrdpayroll/index');
INSERT INTO `auth_item_child` VALUES ('Permission_HRD_Full', '/hrdprofile/index');
INSERT INTO `auth_item_child` VALUES ('Permission_HRD_Full', '/hrdrekrutmen/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/Itapi/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/Itdbe/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/Itexportimport/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/Itlogcancel/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/Itlogdelete/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/Itlogerror/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/Itnetwork/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/itprogramer/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/Itsupport/index');
<<<<<<< HEAD:dev/db/dbm001.sql
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/master/barangumum');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/master/kategori');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/master/suplier/index');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/master/tipebarang');
INSERT INTO `auth_item_child` VALUES ('Permission_IT_Full', '/master/unitbarang');
=======
INSERT INTO `auth_item_child` VALUES ('DEFAULT_MENU', '/sss/a1000');
>>>>>>> master:dev/db/dbm0001.sql
INSERT INTO `auth_item_child` VALUES ('Permission_Umum_Beritaacara', '/sss/beritaacara');
INSERT INTO `auth_item_child` VALUES ('Permission_SSS_Full', '/ssskonsumen/index');
INSERT INTO `auth_item_child` VALUES ('Permission_SSS_Full', '/sssmarketing/index');
INSERT INTO `auth_item_child` VALUES ('Permission_SSS_Full', '/sssprodak/index');
INSERT INTO `auth_item_child` VALUES ('Permission_SSS_Prodak', '/sssprodak/index');
INSERT INTO `auth_item_child` VALUES ('Permission_SSS_Full', '/ssspurchasing/index');
INSERT INTO `auth_item_child` VALUES ('Permission_SSS_Purchasing', '/ssspurchasing/index');
INSERT INTO `auth_item_child` VALUES ('Permission_SSS_Full', '/ssssales/index');
INSERT INTO `auth_item_child` VALUES ('Permission_SSS_Full', '/ssstenant/index');
INSERT INTO `auth_item_child` VALUES ('Permission_SSS_Full', '/ssswarehouse/index');
INSERT INTO `auth_item_child` VALUES ('ACCT_OWNER', 'Permission_ACC_Full');
INSERT INTO `auth_item_child` VALUES ('ALG_OWNER', 'Permission_ALG_Full');
INSERT INTO `auth_item_child` VALUES ('DESIGN_OWNER', 'Permission_DESIGN_Full');
INSERT INTO `auth_item_child` VALUES ('ESM_OWNER', 'Permission_ESM_Full');
INSERT INTO `auth_item_child` VALUES ('FNC_OWNER', 'Permission_FNC_Full');
INSERT INTO `auth_item_child` VALUES ('GA_OWNER', 'Permission_GA_Full');
INSERT INTO `auth_item_child` VALUES ('GOSENT_OWNER', 'Permission_GOSENT_Full');
INSERT INTO `auth_item_child` VALUES ('HRD_OWNER', 'Permission_HRD_Full');
INSERT INTO `auth_item_child` VALUES ('IT_OWNER', 'Permission_IT_Full');
INSERT INTO `auth_item_child` VALUES ('DASHBOARD_REPORT_OWNER', 'Permission_Report_Dashboard');
INSERT INTO `auth_item_child` VALUES ('SSS_OWNER', 'Permission_SSS_Full');
INSERT INTO `auth_item_child` VALUES ('DEFAULT_MENU', 'Permission_Umum_Beritaacara');
INSERT INTO `auth_item_child` VALUES ('DEFAULT_MENU', 'Permission_Umum_Chat');
INSERT INTO `auth_item_child` VALUES ('DEFAULT_MENU', 'Permission_Umum_Dashboard');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO `auth_rule` VALUES ('CEO', 'O:22:\"yii\\rbac\\UserGroupRule\":3:{s:4:\"name\";s:3:\"CEO\";s:9:\"createdAt\";i:1432663909;s:9:\"updatedAt\";i:1432663909;}', '1432663909', '1432663909');
INSERT INTO `auth_rule` VALUES ('DM', 'O:22:\"yii\\rbac\\UserGroupRule\":3:{s:4:\"name\";s:2:\"DM\";s:9:\"createdAt\";i:1432663960;s:9:\"updatedAt\";i:1432663960;}', '1432663960', '1432663960');
INSERT INTO `auth_rule` VALUES ('GM', 'O:22:\"yii\\rbac\\UserGroupRule\":3:{s:4:\"name\";s:2:\"GM\";s:9:\"createdAt\";i:1432663921;s:9:\"updatedAt\";i:1432663921;}', '1432663921', '1432663921');
INSERT INTO `auth_rule` VALUES ('KOMISARIS', 'O:22:\"yii\\rbac\\UserGroupRule\":3:{s:4:\"name\";s:9:\"KOMISARIS\";s:9:\"createdAt\";i:1432663897;s:9:\"updatedAt\";i:1432663897;}', '1432663897', '1432663897');
INSERT INTO `auth_rule` VALUES ('MANAGER', 'O:22:\"yii\\rbac\\UserGroupRule\":3:{s:4:\"name\";s:7:\"MANAGER\";s:9:\"createdAt\";i:1432663935;s:9:\"updatedAt\";i:1432663935;}', '1432663935', '1432663935');
INSERT INTO `auth_rule` VALUES ('OPS', 'O:22:\"yii\\rbac\\UserGroupRule\":3:{s:4:\"name\";s:3:\"OPS\";s:9:\"createdAt\";i:1432663982;s:9:\"updatedAt\";i:1432663982;}', '1432663982', '1432663982');
INSERT INTO `auth_rule` VALUES ('OWNER', 'O:22:\"yii\\rbac\\UserGroupRule\":3:{s:4:\"name\";s:5:\"OWNER\";s:9:\"createdAt\";i:1432663885;s:9:\"updatedAt\";i:1432663885;}', '1432663885', '1432663885');
INSERT INTO `auth_rule` VALUES ('STAFF', 'O:22:\"yii\\rbac\\UserGroupRule\":3:{s:4:\"name\";s:5:\"STAFF\";s:9:\"createdAt\";i:1432663970;s:9:\"updatedAt\";i:1432781070;}', '1432663970', '1432781070');
INSERT INTO `auth_rule` VALUES ('SUVERVISOR', 'O:22:\"yii\\rbac\\UserGroupRule\":3:{s:4:\"name\";s:10:\"SUVERVISOR\";s:9:\"createdAt\";i:1432663950;s:9:\"updatedAt\";i:1432663950;}', '1432663950', '1432663950');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('21', 'SSS', null, null, '5', null);
INSERT INTO `menu` VALUES ('22', 'ESM', null, null, '6', null);
INSERT INTO `menu` VALUES ('23', 'ALG', null, null, '7', null);
INSERT INTO `menu` VALUES ('24', 'GOSENT', null, null, '8', null);
INSERT INTO `menu` VALUES ('26', 'Accounting', '27', null, '2', null);
INSERT INTO `menu` VALUES ('27', 'DEPARTMEN', null, null, '4', null);
INSERT INTO `menu` VALUES ('28', 'Finance', '27', null, '3', null);
INSERT INTO `menu` VALUES ('30', 'DASHBOARD', null, null, '1', null);
INSERT INTO `menu` VALUES ('31', 'Master SSS', '21', null, '1', null);
INSERT INTO `menu` VALUES ('32', 'Prodak', '31', '/sssprodak/index', '1', null);
INSERT INTO `menu` VALUES ('33', 'Tenant', '31', '/ssstenant/index', null, null);
INSERT INTO `menu` VALUES ('34', 'Konsumen', '31', '/ssskonsumen/index', null, null);
INSERT INTO `menu` VALUES ('35', 'Purchasing', '21', '/ssspurchasing/index', '4', null);
INSERT INTO `menu` VALUES ('36', 'Warehouse', '21', '/ssswarehouse/index', '5', null);
INSERT INTO `menu` VALUES ('37', 'Marketing', '21', '/sssmarketing/index', '3', null);
INSERT INTO `menu` VALUES ('38', 'Sales', '21', '/ssssales/index', '2', null);
INSERT INTO `menu` VALUES ('39', 'Master ESM', '22', null, '1', null);
INSERT INTO `menu` VALUES ('40', 'Prodak', '39', '/esmprodak/index', '1', null);
INSERT INTO `menu` VALUES ('41', 'Distributor', '39', '/esm/distributor/index', '2', null);
INSERT INTO `menu` VALUES ('42', 'Salesment', '39', '/esmsalesment/index', '4', null);
INSERT INTO `menu` VALUES ('43', 'Customer', '39', '/esmcustomer/index', '5', null);
INSERT INTO `menu` VALUES ('44', 'Produsen', '39', '/esmprodusen/index', '3', null);
INSERT INTO `menu` VALUES ('45', 'Sales', '22', '/esmselestrans/index', '2', null);
INSERT INTO `menu` VALUES ('46', 'Purchasing', '22', '/esmpurchasing/index', '3', null);
INSERT INTO `menu` VALUES ('47', 'Warehouse', '22', '/esmwarehouse/index', '4', null);
INSERT INTO `menu` VALUES ('48', 'Master ALG', '23', null, '1', null);
INSERT INTO `menu` VALUES ('49', 'Prodak', '48', '/algprodak/index', '1', null);
INSERT INTO `menu` VALUES ('50', 'Customer', '48', '/algcustomer/index', '3', null);
INSERT INTO `menu` VALUES ('51', 'Produsen', '48', '/algprodusen/index', '2', null);
INSERT INTO `menu` VALUES ('52', 'Seles', '23', '/algselestrans/index', '2', null);
INSERT INTO `menu` VALUES ('53', 'Marketing', '23', '/algmarketing/index', '3', null);
INSERT INTO `menu` VALUES ('54', 'Purchasing', '23', '/algpurchasing/index', '4', null);
INSERT INTO `menu` VALUES ('55', 'Warehouse', '23', '/algwarehouse/index', '5', null);
INSERT INTO `menu` VALUES ('56', 'Master GOSENT', '24', null, '1', null);
INSERT INTO `menu` VALUES ('57', 'Prodak', '56', '/gsnprodak/index', '1', null);
INSERT INTO `menu` VALUES ('58', 'Fowarder', '56', '/gsnforwarder/index', '2', null);
INSERT INTO `menu` VALUES ('59', 'Kurir', '56', '/gsnkurir/index', '3', null);
INSERT INTO `menu` VALUES ('60', 'Warehouse', '56', '/gsnwh/index', '4', null);
INSERT INTO `menu` VALUES ('61', 'Konsumen', '56', '/gsnkonsumen/index', '5', null);
INSERT INTO `menu` VALUES ('62', 'Sales', '24', '/gsnsales/index', '2', null);
INSERT INTO `menu` VALUES ('63', 'Helpdesk', '24', null, '3', null);
INSERT INTO `menu` VALUES ('64', 'BTC', '63', '/gsnbtc/index', '1', null);
INSERT INTO `menu` VALUES ('65', 'BTB', '63', '/gsnbtb/index', '2', null);
INSERT INTO `menu` VALUES ('66', 'Purchasing', '23', null, '4', null);
INSERT INTO `menu` VALUES ('67', 'Warehouse', '24', '/gsnwarehouse/index', '5', null);
INSERT INTO `menu` VALUES ('68', 'HRD', '27', null, '1', null);
INSERT INTO `menu` VALUES ('71', 'IT Dept', '27', null, '6', null);
INSERT INTO `menu` VALUES ('72', 'General Affair', '27', null, '4', null);
INSERT INTO `menu` VALUES ('73', 'Designer', '27', null, '5', null);
INSERT INTO `menu` VALUES ('74', 'Employe', '68', '/hrdemploye/index', '1', null);
INSERT INTO `menu` VALUES ('75', 'Profile', '68', '/hrdprofile/index', null, null);
INSERT INTO `menu` VALUES ('76', 'Modul', '68', '/hrdmodul/index', '2', null);
INSERT INTO `menu` VALUES ('77', 'Rekrutmen', '68', '/hrdrekrutmen/index', null, null);
INSERT INTO `menu` VALUES ('78', 'Absensi', '68', '/hrdabsensi/index', null, null);
INSERT INTO `menu` VALUES ('79', 'Payroll', '68', '/hrdpayroll/index', null, null);
INSERT INTO `menu` VALUES ('80', 'Sales', '26', '/acctsales/index', '1', null);
INSERT INTO `menu` VALUES ('81', 'Invoice	', '28', '/fincinvoice/index', '1', null);
INSERT INTO `menu` VALUES ('82', 'Inventaris', '72', '/gainventaris/index', '1', null);
INSERT INTO `menu` VALUES ('83', 'Maintenance', '72', '/gaimaintenance/index', '2', null);
INSERT INTO `menu` VALUES ('84', 'MESSAGE', null, null, '2', null);
INSERT INTO `menu` VALUES ('85', 'Chat', '84', '/chating/index', '1', null);
INSERT INTO `menu` VALUES ('86', 'Berita Acara', '84', '/sss/beritaacara', '2', null);
INSERT INTO `menu` VALUES ('87', 'General', '30', '/dashboarda/index', '1', null);
INSERT INTO `menu` VALUES ('88', 'Matrial Promotion', '73', '/desmatrial/index', '1', null);
INSERT INTO `menu` VALUES ('89', 'Draff Design', '73', '/desdraff/index', '2', null);
INSERT INTO `menu` VALUES ('90', 'Programer', '71', '/itprogramer/index', '1', null);
INSERT INTO `menu` VALUES ('91', 'DBE', '71', '/Itdbe/index', '2', null);
INSERT INTO `menu` VALUES ('92', 'Networking', '71', '/Itnetwork/index', '3', null);
INSERT INTO `menu` VALUES ('93', 'Support', '71', '/Itsupport/index', '4', null);
INSERT INTO `menu` VALUES ('94', 'System Log', '71', null, '5', null);
INSERT INTO `menu` VALUES ('95', 'Export/import', '71', '/Itexportimport/index', '6', null);
INSERT INTO `menu` VALUES ('96', 'API', '71', '/Itapi/index', '7', null);
INSERT INTO `menu` VALUES ('97', 'Error Log', '94', '/Itlogerror/index', '1', null);
INSERT INTO `menu` VALUES ('98', 'Delete log', '94', '/Itlogdelete/index', '2', null);
INSERT INTO `menu` VALUES ('99', 'Cancel Log', '94', '/Itlogcancel/index', '3', null);
INSERT INTO `menu` VALUES ('100', 'Reporting', '30', null, '0', null);
INSERT INTO `menu` VALUES ('101', 'Prodak', '100', '/dashgrfprodak/index', '1', null);
INSERT INTO `menu` VALUES ('102', 'Sales', '100', '/dashgrfsales/index', '2', null);
INSERT INTO `menu` VALUES ('103', 'Customer', '100', '/dashgrfcustomer/index', '3', null);
INSERT INTO `menu` VALUES ('104', 'Forwarder', '100', '/dashgrfforwarder/index', '4', null);
INSERT INTO `menu` VALUES ('105', 'Konsumen', '100', '/dashgrfkonsumen/index', '5', null);
INSERT INTO `menu` VALUES ('106', 'Asset', '100', '/dashgrfaset/index', '6', null);
INSERT INTO `menu` VALUES ('107', 'Corporation', '30', '/dashboardcorp/index', '2', null);
INSERT INTO `menu` VALUES ('108', 'Department', '30', '/dashboarddep/index', '3', null);
INSERT INTO `menu` VALUES ('109', 'Staff', '30', '/dashboardstaff/index', '4', null);
INSERT INTO `menu` VALUES ('110', 'Operational', '30', '/dashboardops/index', '5', null);
INSERT INTO `menu` VALUES ('112', 'Barang', '39', '/esm/barang/index', null, null);
INSERT INTO `menu` VALUES ('113', 'Master Unit', '39', '/esm/unitbarang/index', null, null);
INSERT INTO `menu` VALUES ('116', 'Master Umum', null, null, '8', null);
INSERT INTO `menu` VALUES ('117', 'Suplier', '116', '/master/suplier/index', null, null);
INSERT INTO `menu` VALUES ('118', 'Barang Umum', '116', '/master/barangumum', null, null);
INSERT INTO `menu` VALUES ('119', 'Tipe Barang', '116', '/master/tipebarang', null, null);
INSERT INTO `menu` VALUES ('120', 'Unit Barang', '116', '/master/unitbarang', null, null);
INSERT INTO `menu` VALUES ('121', 'Kategori', '116', '/master/kategori', null, null);
INSERT INTO `menu` VALUES ('122', 'Berita Acara', '21', '/sss/beritaacara', null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'azLSTAYr7Y7TLsEAML-LsVq9cAXLyAWa', '$2y$13$Pfi69D74WzIJBtcy8JddLuJhMO8poTcNZsKjvXGgSLA4ruTA0AASC', null, 'admin@lukison.com', '10', '1431765676', '1431765676');
INSERT INTO `user` VALUES ('2', 'piter@lukison.com', 'Uv-9xj_BA3sFvZbDOTRE19P_6Ki-0Fw9', '$2y$13$xOJzTYsgB5TwpKm928b.TOYG5J9dLl6rvBBh6KnDcfTm7Us3L9ObG', null, 'piter@lukison.com', '10', '1431766262', '1431766262');
INSERT INTO `user` VALUES ('3', 'devandro@lukison.com', '5tj3p0tIpVEOVDEAsVzzsHCv29g_GFhU', '$2y$13$tzacpGyZhzACFFtklAq7iuyr08NuiVX4LFRzrjPj4QiOCO9qkVYq2', null, 'devandro@lukison.com', '10', '1431963597', '1431963597');
