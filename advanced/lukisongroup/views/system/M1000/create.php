<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model lukisongroup\models\system\M1000 */

$this->title = 'Create M1000';
$this->params['breadcrumbs'][] = ['label' => 'M1000s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="m1000-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
