<?php

namespace lukisongroup\models\sss;

use Yii;

/**
 * This is the model class for table "r1000".
 *
 * @property integer $Id
 * @property string $Val_Nm
 * @property integer $Val_1
 * @property string $UPDT
 * @property string $Val_Json
 */
class R1000 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'r1000';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('db_sss');
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Val_1'], 'integer'],
            [['UPDT'], 'safe'],
            [['Val_Json'], 'string'],
            [['Val_Nm'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Id' => 'tabel reporting',
            'Val_Nm' => 'Val  Nm',
            'Val_1' => 'Val 1',
            'UPDT' => 'Updt',
            'Val_Json' => 'Val  Json',
        ];
    }
}
