<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;
//use kartik\typeahead\TypeaheadBasic;
use kartik\typeahead\Typeahead;

/* @var $this yii\web\View */
/* @var $model app\models\sss\A1000 */
/* @var $form yii\widgets\ActiveForm */

?>

<div class="a1000-form" ng-controller="MainCtrl">

    <?php $form = ActiveForm::begin(); ?>

    <?= html::activeHiddenInput($model2, 'kd_berita') ?>

    <?= html::activeHiddenInput($model, 'kd_berita') ?>

    <?php /*echo $form->field($model, 'touser')->widget(Typeahead::classname(), [
            'dataset' => [['local' => $data,'limit' => 10]],
            'pluginOptions' => ['highlight' => true],
            'options' => ['placeholder' => 'Masukkan Username'],
        ]); */?>
    <?= $form->field($model, 'touser')->textInput(['maxlength' => true,'data-role'=>'tagsinput','ng-mode'=>'tags'])->label('To :') ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'isi')->textarea(['rows' => 6]) ?>

    <?= html::activeHiddenInput($model, 'kd_corp') ?>

    <?= html::activeHiddenInput($model, 'kd_cab') ?>

    <?= html::activeHiddenInput($model, 'kd_dep') ?>

    <?= $form->field($model, 'data_pict')->widget(FileInput::classname(), [
                                                    'options' => ['accept' => 'image/*','multiple' => true],
                                                ]); ?>

    <?= $form->field($model, 'data_file')->textarea(['rows' => 6]) ?>

    <?= html::activeHiddenInput($model, 'status') ?>

    <?= html::activeHiddenInput($model, 'created_at') ?>

    <?= html::activeHiddenInput($model, 'created_by') ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Save' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset',['class' => 'btn btn-warning']) ?>
        <?= Html::a(Html::button('Cancel',['class' => 'btn btn-danger']),'index') ?>
    </div>

    <?php ActiveForm::end(); ?>



</div>
