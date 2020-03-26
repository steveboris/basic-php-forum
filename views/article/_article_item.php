<?php
/** @var $model \app\models\Article */

use yii\helpers\Html;

?>

<div>
    <a href="<?php echo \yii\helpers\Url::to(['/article/view', 'slug' => $model->slug]) ?>">
        <h3><?php echo \yii\helpers\Html::encode($model->title) ?></h3>
    </a>
    <div>
        <p><?php echo \yii\helpers\StringHelper::truncateWords($model->getEncodedBody(), 40) ?></p>
    </div>
    <p class="text-muted text-right">
        <small>
            Created At: <b><?php echo Yii::$app->formatter->asRelativeTime($model->created_at) ?>
                By: <?php echo Html::encode($model->createdBy->username)?> </b>
        </small>
    </p>
    <hr>
</div>
