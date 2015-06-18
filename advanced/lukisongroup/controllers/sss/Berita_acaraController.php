<?php

namespace lukisongroup\controllers\sss;

use Yii;
use lukisongroup\models\master\berita_acara\A1000;
use lukisongroup\models\master\berita_acara\A1001;
use lukisongroup\models\master\berita_acara\A1000Search;
use lukisongroup\models\system\side_menu\M1000;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

class Berita_acaraController extends Controller
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
        $model = new A1000();$model2 = new A1001;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id, 'kd_berita' => $model->kd_berita]);
        } else {
            return $this->render('new',['side_menu'=>$side_menu,'model' => $model,'model2' => $model2
            ]);
        }

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
