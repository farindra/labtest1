<?php

namespace lukisongroup\controllers\sss;

use Yii;
use app\models\sss\A1000;
use app\models\sss\A1000Search;
use lukisongroup\models\system\M1000;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

class BeritaacaraController extends Controller
{

    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    public function actionIndex()
    {
        //set menu side menu index
        $side_menu=M1000::find()->findMenu('sss_berita_acara')->one()->jval;
        $side_menu=json_decode($side_menu,true);

        return $this->render('index',['side_menu'=>$side_menu]);
    }

    public function actionNew()
    {
        //set menu side menu index
        $side_menu=M1000::find()->findMenu('sss_berita_acara')->one()->jval;
        $side_menu=json_decode($side_menu,true);

        return $this->render('new',['side_menu'=>$side_menu]);
    }

    protected function findModel($id, $kd_menu)
    {
        if (($model = M1000::findOne(['id' => $id, 'kd_menu' => $kd_menu])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
