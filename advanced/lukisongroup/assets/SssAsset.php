<?php
namespace lukisongroup\assets;

use yii\web\AssetBundle;

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
        //  'assets_sss/js/site.css',
    ];
    public $depends = [
       // 'yii\web\YiiAsset',
       // 'yii\bootstrap\BootstrapAsset',
    ];

}
