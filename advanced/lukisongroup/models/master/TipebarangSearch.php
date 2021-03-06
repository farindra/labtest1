<?php

namespace app\models\master;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\master\Tipebarang;

/**
 * TipebarangSearch represents the model behind the search form about `app\models\master\Tipebarang`.
 */
class TipebarangSearch extends Tipebarang
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'status'], 'integer'],
            [['kd_type', 'nm_type', 'note', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Tipebarang::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
//            'id' => $this->id,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
//            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'kd_type', $this->kd_type])
            ->andFilterWhere(['like', 'nm_type', $this->nm_type])
            ->andFilterWhere(['like', 'note', $this->note]);
 //           ->andFilterWhere(['like', 'created_by', $this->created_by])
 //           ->andFilterWhere(['like', 'updated_by', $this->updated_by]);

        return $dataProvider;
    }
}
