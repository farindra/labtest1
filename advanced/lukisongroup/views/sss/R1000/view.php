<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model lukisongroup\models\sss\R1000 */

$this->title = $model->Id;
$this->params['breadcrumbs'][] = ['label' => 'R1000s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="r1000-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->Id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->Id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'Id',
            'Val_Nm',
            'Val_1',
            'UPDT',
            'Val_Json:ntext',
        ],
    ]) ?>

</div>
