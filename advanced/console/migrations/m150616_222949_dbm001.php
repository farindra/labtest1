<?php

use yii\db\Schema;
use yii\db\Migration;

class m150616_222949_dbm001 extends Migration
{
    public function init()
    {
        $this->db = 'db1';
        parent::init();
    }
    public function safeUp()
    {
        $this->init();
        $sql = file_get_contents("..\dev\db\dbm001.sql");
        $this->execute($sql);
    }

    public function safeDown()
    {
        echo "dbm001 cannot be reverted.\n";

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
