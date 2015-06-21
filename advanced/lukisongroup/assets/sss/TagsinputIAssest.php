<?php
namespace lukisongroup\assets\sss;

use yii\web\AssetBundle;
use yii\web\View;

/**
 * @author maseka
 * @since 2015
 */
class BeritaacaraAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'assets_sss/js/eka/app.css',
    ];
    public $js = [

        'assets_sss/eka/typeahead.bundle.js',
        'assets_sss/eka/tagsinput2/bootstrap-tagsinput.js',

        ];
        public $jsOptions = [
            'position' => View::POS_END,
    ];
    public $depends = [
       // 'yii\web\YiiAsset',
       // 'yii\bootstrap\BootstrapAsset',
    ];

}



