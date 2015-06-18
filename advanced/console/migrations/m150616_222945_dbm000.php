<?php

use yii\db\Schema;
use yii\db\Migration;

class m150616_222945_dbm000 extends Migration
{
    public function init()
    {
        $this->db = 'db4';
        parent::init();
    }
    public function safeUp()
    {
        $this->init();
        $sql = file_get_contents("..\dev\db\dbm000.sql");
        $this->execute($sql);
    }

    public function safeDown()
    {
        echo "dbm000 cannot be reverted.\n";

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
