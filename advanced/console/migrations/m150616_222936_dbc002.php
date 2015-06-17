<?php

use yii\db\Schema;
use yii\db\Migration;

class m150616_222936_dbc002 extends Migration
{
	protected $dbConnection1;
	protected function getDbConnection1()
	{	
		if (null !== $this->dbConnection1) {
			return $this->dbConnection1;
		}

		return $this->dbConnection1 = Yii::app()->getComponent('db_esm');
	}
     public function safeUp()
	{
		getDbConnection1()
		$sql = file_get_contents("..\dev\db\dbc002.sql");
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
