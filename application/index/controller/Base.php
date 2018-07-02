<?php
/**
 * Created by PhpStorm.
 * User: Meng
 * Date: 2018/6/29
 * Time: 14:06
 */

namespace app\index\controller;
use think\Controller;
use think\Session;
class Base extends Controller
{
    protected function _initialize(){
        //parent::initialize();//继续父类中的初始化操作
        define('USER_ID',Session::get('user_id'));
    }

    //判断用户是否登陆，放在后台入口：index/index
    protected function isLogin(){
        if(empty(USER_ID)){
            $this->error('用户未登录，无权访问！',url('user/login'));
        }
    }

    //放荡之重复登陆，放在: user/login
    protected function alreadyLogin(){
        if(!empty(USER_ID)){
            $this->error('用户已登陆，请勿重复登陆！',url('index/index'));
        }
    }
}