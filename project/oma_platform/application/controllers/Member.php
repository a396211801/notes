<?php

/**
 * Created by IntelliJ IDEA.
 * User: ying
 * Date: 17-12-5
 * Time: 下午5:15
 */
class Controller_Member extends Web
{
    protected $model_user;

    public function init()
    {
        parent::init();
        $this->model_user = new Model_User();
    }

    /**
     * 前台登录
     */
    public function loginAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //判断数据是否正确
            $result = $this->model_user->loginCheck($data);

            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $user = $result['data'];

            if ($user) {

                //更新登录信息
                $update_data = [
                    'login_time' => time(),
                    'login_ip' => fn_get_ip(),
                ];
                $this->model_user->update($update_data, ['id' => $user['id']]);

                //设置session
                $user_info = [
                    'id' => $user['id'],
                    'user_name' => $user['user_name'],
                ];
                $this->_session->set("user_info", $user_info);
                fn_ajax_return(1, "登陆成功");

            }
        } else {

            $user_info = $this->_session->get("user_info");
            if ($user_info) {
                Header("Location: /user/index");
            }
            $this->display();
        }
    }


    /**
     * 上传图片
     */
    public function uploadImgAction()
    {
        $result = fn_upload_img('file');

        $result = json_decode($result,true);
        if($result['ret']==1){
            echo  json_encode(array('statusCode'=>'200','message'=>'上传成功！','filename'=>$result['data']));
            exit;
        }else{
            echo  json_encode(array('statusCode'=>'300','message'=>'上传失败！','filename'=>$result['data']));
            exit;
        }
    }

    /**
     * 退出登录
     */
    public function logoutAction()
    {
        $this->_session->del('user_info');
        Header("Location: /index/index");
    }

}