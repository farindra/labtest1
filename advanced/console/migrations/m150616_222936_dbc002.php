<?php

use yii\db\Schema;
use yii\db\Migration;

class m150616_222936_dbc002 extends Migration
{
    public function init()
    {
        $this->db = 'db_esm';
        parent::init();
    }
     public function safeUp()
	{
        $this->init();
		$sql = file_get_contents("..\dev\db\dbc002.sql");
		$this->execute($sql);
	}
	
    public function safeDown()
    {
        echo "dbc002 cannot be reverted.\n";

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
