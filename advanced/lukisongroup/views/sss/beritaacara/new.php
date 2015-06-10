<?php
/* @var $this yii\web\View */
use lukisongroup\assets\SssAsset;
use kartik\sidenav\SideNav;
use kartik\icons\Icon;

//$side_menu[]=['label' => Icon::show('gears') .'Login', 'url' => ['/site/login']];
$side_menu='[{"label":"New","url":["\new"]},{"label":"PM","url":["\new"]},{"label":"Inbox","url":["\new"]},{"label":"Sent","url":["\new"]},{"label":"Draft","url":["\new"]}]';
$side_menu=json_decode($side_menu,true);

//$side_menu=json_decode('[{"label":"New"}]');
$this->title = 'New';
$this->params['breadcrumbs'][] = ['label' => 'Berita Acara', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
SssAsset::register($this);

?>

<!DOCTYPE html>
<html>
<body ng-app="myApp" ng-controller="userCtrl">
<div class="container">
<?=print_r($side_menu,true);?>

    <h3>Users</h3>
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


        <form class="sidebar-form" method="get" action="#"></form>
        <li class="header">
            testsss
        </li>
    </aside>


</div>


</body>
</html>


