<?php

use yii\db\Schema;
use yii\db\Migration;

class m150616_222931_dbc001 extends Migration
{
    public function safeUp()
	{
		$sql = file_get_contents("..\dev\db\dbc001.sql");
		$this->execute($sql);
	}
	
    public function safeDown()
    {
        echo "m150616_222931_dbc001 cannot be reverted.\n";

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
