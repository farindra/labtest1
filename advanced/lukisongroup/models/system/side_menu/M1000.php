<?php

namespace lukisongroup\models\system\side_menu;

use Yii;

/**
 * This is the model class for table "m1000".
 *
 * @property string $id
 * @property string $kd_menu
 * @property string $nm_menu
 * @property string $jval
 * @property string $note
 * @property string $created_by
 * @property string $created_at
 * @property string $updated_by
 * @property string $updated_at
 * @property integer $status
 */
class M1000 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'm1000';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('db4');
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kd_menu', 'nm_menu'], 'required'],
            [['jval', 'note'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['status'], 'integer'],
            [['kd_menu'], 'string', 'max' => 50],
            [['nm_menu'], 'string', 'max' => 200],
            [['created_by', 'updated_by'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('M1000', 'ID'),
            'kd_menu' => Yii::t('M1000', 'Kd Menu'),
            'nm_menu' => Yii::t('M1000', 'Nm Menu'),
            'jval' => Yii::t('M1000', 'Jval'),
            'note' => Yii::t('M1000', 'Note'),
            'created_by' => Yii::t('M1000', 'Created By'),
            'created_at' => Yii::t('M1000', 'Created At'),
            'updated_by' => Yii::t('M1000', 'Updated By'),
            'updated_at' => Yii::t('M1000', 'Updated At'),
            'status' => Yii::t('M1000', 'Status'),
        ];
    }

    /**
     * @inheritdoc
     * @return M1000Query the active query used by this AR class.
     */
    public static function find()
    {
        return new M1000Query(get_called_class());
    }
}
