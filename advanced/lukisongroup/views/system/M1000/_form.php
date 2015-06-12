<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model lukisongroup\models\system\M1000 */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="container">
<div class="col-md-4 m1000-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'kd_menu')->textInput(['maxlength' => true])->label('Kode Menu') ?>

    <?= $form->field($model, 'nm_menu')->textInput(['maxlength' => true])->label('Nama Menu') ?>

    <?= $form->field($model, 'jval')->textarea(['rows' => 6])->label('Json Value') ?>

    <?= $form->field($model, 'note')->textarea(['rows' => 6])->label('Keterangan') ?>

    <?= $form->field($model, 'status')->checkbox()->label('ee') ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
</div>