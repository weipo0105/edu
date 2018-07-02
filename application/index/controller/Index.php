<?php
namespace app\index\controller;

class Index extends Base
{
    public function index()
    {
        $this->isLogin();//判断用户是否已经登陆
        return $this ->view ->fetch();
    }
}
