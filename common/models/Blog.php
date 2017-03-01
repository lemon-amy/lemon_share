<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "blog".
 *
 * @property integer $id
 * @property string $title
 * @property integer $cate
 * @property string $content
 * @property string $author
 * @property string $flag
 * @property integer $zan_num
 * @property integer $is_show
 * @property string $create_time
 * @property string $update_time
 * @property integer $order
 * @property integer $read_num
 * @property integer $is_recommend
 */
class Blog extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'blog';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cate', 'zan_num', 'is_show', 'order', 'read_num', 'is_recommend'], 'integer'],
            [['content'], 'string'],
            [['title', 'author', 'flag', 'create_time', 'update_time'], 'string', 'max' => 255],
            [['cate'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'cate' => 'Cate',
            'content' => 'Content',
            'author' => 'Author',
            'flag' => 'Flag',
            'zan_num' => 'Zan Num',
            'is_show' => 'Is Show',
            'create_time' => 'Create Time',
            'update_time' => 'Update Time',
            'order' => 'Order',
            'read_num' => 'Read Num',
            'is_recommend' => 'Is Recommend',
        ];
    }
}
