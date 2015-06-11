<?php
/* @var $this yii\web\View */
use lukisongroup\assets\SssAsset;
use kartik\sidenav\SideNav;
use kartik\icons\Icon;


//$side_menu[]=['label' => Icon::show('gears') .'Login', 'url' => ['/site/login']];
$side_menu='[{"label":"<i class=\"fa fa-pencil\"></i> New","url":["\new"]},{"label":"PM","url":["\new"]},{"label":"Inbox","url":["\new"]},{"label":"Sent","url":["\new"]},{"label":"Draft","url":["\new"]}]';
$side_menu=json_decode($side_menu,true);

//$side_menu=json_decode('[{"label":"New"}]');
$this->title = 'New';
$this->params['breadcrumbs'][] = ['label' => 'Berita Acara', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
//SssAsset::register($this);

?>

<!DOCTYPE html>
<html>
<body ng-app="myApp" ng-controller="userCtrl">
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

    <div class="container">
        <div class="jumbotron">
            <h1>My First Bootstrap Page</h1>
            <p>Resize this responsive page to see the effect!</p>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <h3>Column 1</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
            </div>
            <div class="col-sm-4">
                <h3>Column 2</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
            </div>
            <div class="col-sm-4">
                <h3>Column 3</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
            </div>
        </div>
    </div>

</div>


</body>
</html>


