<?php

use yii\db\Schema;
use yii\db\Migration;

class m150609_225323_sss extends Migration
{
    public function safeup()
    {
        $this->execute("
            SET FOREIGN_KEY_CHECKS=0;

            -- ----------------------------
            -- Table structure for `a------`
            -- ----------------------------
            -- DROP TABLE IF EXISTS `a------`;
            CREATE TABLE `a------` (
              `id` int(11) NOT NULL AUTO_INCREMENT,
              PRIMARY KEY (`id`)
            ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

            -- ----------------------------
            -- Records of a------
            -- ----------------------------

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
              PRIMARY KEY (`id`)
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
              PRIMARY KEY (`id`)
            ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

            -- ----------------------------
            -- Records of a1002
            -- ----------------------------

            -- ----------------------------
            -- Table structure for `b------`
            -- ----------------------------
            DROP TABLE IF EXISTS `b------`;
            CREATE TABLE `b------` (
              `id` int(11) NOT NULL AUTO_INCREMENT,
              PRIMARY KEY (`id`)
            ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

            -- ----------------------------
            -- Records of b------
            -- ----------------------------


        ");

    }

    public function safedown()
    {
        echo "m150609_225323_sss cannot be reverted.\n";

        return false;
    }
    
    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }
    
    public function safeDown()
    {
    }
    */
}
