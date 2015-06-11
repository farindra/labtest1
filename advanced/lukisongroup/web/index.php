<?php
defined('YII_DEBUG') or define('YII_DEBUG', true);
defined('YII_ENV') or define('YII_ENV', 'dev');

//<sss - config By Maseka>
    defined('SSS_CORP_ID') or define('SSS_CORP_ID','SSS');
    defined('SSS_CORP_NM') or define('SSS_CORP_NM','PT. SARANA SINAR SURYA');
    defined('SSS_IMAGE_PATH') or define('SSS_IMAGE_PATH','/labtest1/advanced/lukisongroup/web/assets_sss/images/');
    defined('SSS_JS_PATH') or define('SSS_JS_PATH','/labtest1/advanced/lukisongroup/web/assets_sss/js/');
//</sss - config By Maseka>


require(__DIR__ . '/../../vendor/autoload.php');
require(__DIR__ . '/../../vendor/yiisoft/yii2/Yii.php');
require(__DIR__ . '/../../common/config/bootstrap.php');
require(__DIR__ . '/../config/bootstrap.php');

$config = yii\helpers\ArrayHelper::merge(
    require(__DIR__ . '/../../common/config/main.php'),
    require(__DIR__ . '/../../common/config/main-local.php'),
    require(__DIR__ . '/../config/main.php'),
    require(__DIR__ . '/../config/main-local.php')
);

$application = new yii\web\Application($config);
$application->run();
