<?php
/* @var $this yii\web\View */
use lukisongroup\assets\SssAsset;
use kartik\sidenav\SideNav;
use yii\helpers\Html;

$this->title = 'New';
$this->params['breadcrumbs'][] = ['label' => 'Berita Acara', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
//SssAsset::register($this);

?>


<div class="container">
<?//=Icon::show('gears')//=print_r($side_menu,true);?>

    <h3>Berita Acara - New</h3>
    <aside class="main-sidebar">
        <?php
        if (!Yii::$app->user->isGuest) {
            echo SideNav::widget([
                'items' => $side_menu,
                'encodeLabels' => false,
                //'heading' => $heading,
                'type' => SideNav::TYPE_DEFAULT,
                'options' => ['class' => 'sidebar-nav'],
            ]);
        };
        ?>
    </aside>

    <div class="a1000-create">

      <?= $this->render('_form', [
            'model' => $model,'model2' => $model2
        ]) ?>

    </div>


</div>


