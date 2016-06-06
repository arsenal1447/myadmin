<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "{{%user}}".
 *
 * @property string $id
 * @property string $username
 * @property string $password_hash
 * @property string $email
 * @property integer $create_at
 * @property integer $update_at
 * @property string $user_ip
 * @property string $user_nickname
 * @property integer $status
 * @property integer $user_deld
 * @property string $auth_key
 * @property string $password_reset_token
 * @property integer $user_role
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%user}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'password_hash', 'email', 'create_at', 'update_at', 'auth_key'], 'required'],
            [['create_at', 'update_at', 'status', 'user_deld', 'user_role'], 'integer'],
            [['username', 'password_hash', 'user_nickname', 'auth_key', 'password_reset_token'], 'string', 'max' => 100],
            [['email', 'user_ip'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'username' => Yii::t('app', 'Username'),
            'password_hash' => Yii::t('app', 'Password Hash'),
            'email' => Yii::t('app', 'Email'),
            'create_at' => Yii::t('app', 'Create At'),
            'update_at' => Yii::t('app', 'Update At'),
            'user_ip' => Yii::t('app', 'User Ip'),
            'user_nickname' => Yii::t('app', 'User Nickname'),
            'status' => Yii::t('app', 'Status'),
            'user_deld' => Yii::t('app', 'User Deld'),
            'auth_key' => Yii::t('app', 'Auth Key'),
            'password_reset_token' => Yii::t('app', 'Password Reset Token'),
            'user_role' => Yii::t('app', 'User Role'),
        ];
    }
}
