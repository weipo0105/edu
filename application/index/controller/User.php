<?php
/**
 * Created by PhpStorm.
 * User: Meng
 * Date: 2018/6/29
 * Time: 14:56
 */

namespace app\index\controller;
use think\captcha\Captcha;
use think\Request;
use app\index\model\User as UserModel;
class User extends Base
{
    public function login(){
        return $this->view->fetch();
    }

    public function checkLogin(Request $request){
        //初始化返回的参数
        $status = 0;
        $result = '';
        $data = $request -> param();

        //创建验证规则
        $rule = [
            'name|用户名'=>'require',
            'password|密码'=>'require',
            'verify|验证码'=>'require|captcha',
        ];

        //自定义验证失败的提示信息
        $msg = [
            'name'=>['require'=>'用户名不能为空，请检查'],
            'password'=>['require'=>'密码不能为空，请检查'],
            'verify'=>[
                'require'=>'验证码不能为空，请检查',
                'captcha'=>'验证码错误！',
            ],
        ];

        //进行验证,只会有两种返回值：1:true表示验证通过，2:返回字符串，则是用户自定义的提示信息

        $result = $this->validate($data,$rule,$msg);

        //如果验证通过，则执行
        if($result === true){//由于validate返回值为字符串时，字符串自动转换为bool值后还是为true，所以要用“===”全等于区分这两种返回值
            //构造查询条件
            $map = [
                'name'=>$data['name'],
                'password'=>md5($data['password']),
            ];

            //查询用户信息
            $user = UserModel::get($map);
            //return ['status'=>1,'message'=>$user,'data'=>$data];
            if($user == null){
                $result = '没有找到该用户';
            }else{
                $status = 1;
                $result = '恭喜！验证通过，点击【确定】进入';
            }
        }

        return ['status'=>$status,'message'=>$result,'data'=>$data];
    }

    public function captcha(){
        $captcha = new Captcha();
        return $captcha -> entry();

    }

    public function checkVerify($code){
        $captcha = new Captcha();
        return $captcha->check($code);
    }

    public function logout(){
        return $this->view->fetch();
    }
}