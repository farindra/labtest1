<?php

namespace lukisongroup\controllers\sss;

use Yii;
use app\models\sss\A1000;
use app\models\sss\A1000Search;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

class BeritaacaraController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionNew()
    {
        return $this->render('new');
    }


}
