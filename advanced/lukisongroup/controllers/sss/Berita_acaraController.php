<?php

namespace lukisongroup\controllers\sss;

use Yii;
use lukisongroup\models\master\berita_acara\A1000;
use lukisongroup\models\master\berita_acara\UploadForm;
use lukisongroup\models\system\User;
use lukisongroup\models\system\side_menu\M1000;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;


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
        $side_menu=M1000:: find()->findMenu('sss_berita_acara')->one()->jval;
        $side_menu=json_decode($side_menu,true);

        return $this->render('index',['side_menu'=>$side_menu]);
    }

    public function actionNew()
    {
        //set menu side menu index
        $user_list=User::find()->select('username')->where(['CORP'=>'SSS','CAB'=>'HO','DEP'=>'5'])->asArray()->all();
        //$user_list=ArrayHelper::map(User::find()->where(['CORP'=>'SSS','CAB'=>'HO','DEP'=>'5'])->all(),'id','username');
        //$user_list=json_encode($user_list);
        $user_list=ArrayHelper::getColumn($user_list,'username',false);
        $side_menu=M1000::find()->findMenu('sss_berita_acara')->one()->jval;
        $side_menu=json_decode($side_menu,true);
        $model = new A1000();$model2 = new A1001;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id, 'kd_berita' => $model->kd_berita]);
        } else {
            return $this->render('new',['side_menu'=>$side_menu,'model' => $model,'model2' => $model2,'user_list' => $user_list
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

    public function actionUpload()
    {
        $model = new UploadForm();

        if (Yii::$app->request->isPost) {
            $model->imageFiles = UploadedFile::getInstances($model, 'imageFiles');
            if ($model->upload()) {
                // file is uploaded successfully
                return;
            }
        }

        return $this->render('upload', ['model' => $model]);
    }
}
