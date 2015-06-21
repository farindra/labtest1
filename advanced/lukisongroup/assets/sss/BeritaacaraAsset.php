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
        //'assets_sss/css/fonts/linecons/css/linecons.css',
        //'assets_sss/css/fonts/fontawesome/css/font-awesome.min.css',
        'assets_sss/css/xenon-core.css',
        //'assets_sss/css/xenon-forms.css',
        //'assets_sss/css/xenon-components.css',
        //'assets_sss/css/xenon-skins.css',
        //'assets_sss/css/custom.css',
        'assets_sss/js/tagsinput2/bootstrap-tagsinput.css',
        'assets_sss/js/angular.min.js',
        'assets_sss/js/tagsinput2/app.css',
    ];
    public $js = [

        'assets_sss/js/typeahead.bundle.js',
        'assets_sss/js/tagsinput2/bootstrap-tagsinput.js',

        //'assets_sss/js/bootstrap.min.js',
        //'assets_sss/js/TweenMax.min.js',
        //'assets_sss/js/resizeable.js',
        //'assets_sss/js/joinable.js',
        //'assets_sss/js/xenon-api.js',
        //'assets_sss/js/xenon-toggles.js',
        //'assets_sss/js/xenon-custom.js',

        ];
        public $jsOptions = [
            'position' => View::POS_END,
    ];

}


