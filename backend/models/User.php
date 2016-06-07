<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property integer $id
 * @property string $username
 * @property string $auth_key
 * @property string $token
 * @property string $access_token
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property string $balance
 * @property integer $point
 * @property integer $recommended_by
 * @property string $recommended_name
 * @property integer $supported_by
 * @property integer $auth_role
 * @property string $role
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'auth_key', 'password_hash', 'email', 'created_at', 'updated_at'], 'required'],
            [['balance'], 'number'],
            [['point', 'recommended_by', 'supported_by', 'auth_role', 'status', 'created_at', 'updated_at'], 'integer'],
            [['username', 'access_token', 'password_hash', 'password_reset_token', 'email', 'recommended_name'], 'string', 'max' => 255],
            [['auth_key'], 'string', 'max' => 32],
            [['token', 'role'], 'string', 'max' => 64],
            [['username'], 'unique'],
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
            'auth_key' => Yii::t('app', 'Auth Key'),
            'token' => Yii::t('app', 'Token'),
            'access_token' => Yii::t('app', 'Access Token'),
            'password_hash' => Yii::t('app', 'Password Hash'),
            'password_reset_token' => Yii::t('app', 'Password Reset Token'),
            'email' => Yii::t('app', 'Email'),
            'balance' => Yii::t('app', 'Balance'),
            'point' => Yii::t('app', 'Point'),
            'recommended_by' => Yii::t('app', 'Recommended By'),
            'recommended_name' => Yii::t('app', 'Recommended Name'),
            'supported_by' => Yii::t('app', 'Supported By'),
            'auth_role' => Yii::t('app', 'Auth Role'),
            'role' => Yii::t('app', 'Role'),
            'status' => Yii::t('app', 'Status'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }
}
