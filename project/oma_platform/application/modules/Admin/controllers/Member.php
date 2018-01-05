<?php
/**
 * Created by IntelliJ IDEA.
 * User: ying
 * Date: 17-12-5
 * Time: 下午1:25
 */
class Controller_Member extends Web
{
    protected $model_admin;

    public function init()
    {
        parent::init();
        $this->model_admin= new Model_Admin();

    }

    /**
     * 登录
     */
    public function loginAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //判断数据是否正确
            $result = $this->model_admin->loginCheck($data);

            if($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $admin = $result['data'];

            if($admin){

                //更新登录信息
                $update_data = [
                    'login_time' => time(),
                    'login_ip' => fn_get_ip(),
                ];
                $this->model_admin->update($update_data,['id' => $admin['id']]);

                //设置session
                $admin_info=[
                    'id'=>$admin['id'],
                    'user_name'=>$admin['user_name'],
                    'real_name'=>$admin['real_name'],
                    'group_id'=>$admin['group_id'],
                ];
                $this->_session->set("admin_info", $admin_info);
                fn_ajax_return(1, "登陆成功");
            }

        } else {

            $admin_info = $this->_session->get("admin_info");
            if($admin_info) {
                Header("Location: /admin/index/index");
            }
            $this->display();
        }

    }

    /**
     * 退出登录
     */
    public function logoutAction()
    {
        $this->_session->del('admin_info');
        $this->display("member/login");
    }

}