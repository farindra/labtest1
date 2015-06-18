<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\master\Tipebarang */

$this->title = 'Buat Tipe Barang';
$this->params['breadcrumbs'][] = ['label' => 'Tipebarangs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tipebarang-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
