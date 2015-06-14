<?php
namespace lukisongroup\assets;

use yii\web\AssetBundle;
use yii\web\View;

/**
 * @author maseka
 * @since 2015
 */
class SssAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
      //  'assets_sss/css/site.css',
    ];
    public $js = [
        'assets_sss/js/angular.min.js',
    ];
    public $jsOptions = [
        'position' => View::POS_END,
    ];
    public $depends = [
       // 'yii\web\YiiAsset',
       // 'yii\bootstrap\BootstrapAsset',
    ];

}
