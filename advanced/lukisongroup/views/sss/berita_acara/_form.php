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

    <?= html::activeHiddenInput($model, 'kd_berita',['value'=>date("Y-m-dh:i:s")]) ?>

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

    <?= html::activeHiddenInput($model, 'data_file',['type'=>'file','multiple'=>true]) ?>

    <?php /* echo $form->field($model, 'data_pict')->widget(FileInput::classname(), [
                                                    'options' => ['accept' => 'image/*','multiple' => true],
                                                ]); */ ?>

    <?php /*echo $form->field($model, 'data_file')->widget(FileInput::classname(), [
        'attribute' => 'data_file[]','options' => ['multiple' => true],
    ])->label('Attachment'); */?>

    <?= html::activeHiddenInput($model, 'status',['value'=>'0']) ?>

    <?= html::activeHiddenInput($model, 'time_at',['value'=>date("h:i:s")]) ?>

    <?= html::activeHiddenInput($model, 'created_at',['value'=>date("Y-m-d")]) ?>

    <?= html::activeHiddenInput($model, 'created_by',['value'=>Yii::$app->user->identity->username]) ?>



    <div class="form-group">
        </br>
        <?= Html::submitButton($model->isNewRecord ? 'Send' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?><span></span>
        <?= Html::resetButton('Reset',['class' => 'btn btn-warning']) ?>
        <?= Html::a(Html::button('Cancel',['class' => 'btn btn-danger']),'index') ?>
    </div>

    <?php ActiveForm::end(); ?>



</div>
