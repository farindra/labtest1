<?php

use yii\helpers\Html;
use yii\grid\GridView;
use lukisongroup\assets\SssAsset;

/* @var $this yii\web\View */
/* @var $searchModel app\models\sss\R1000Search */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Foodtown Report';
$this->params['breadcrumbs'][] = $this->title;
SssAsset::register($this);
?>

<div class="r1000-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create R1000', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'Id',
            'Val_Nm',
            'Val_1',
            'UPDT',
            'Val_Json:ntext',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
