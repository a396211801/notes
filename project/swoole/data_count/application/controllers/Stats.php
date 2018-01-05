<?php

/**
 * Created by IntelliJ IDEA.
 * Stats: lidc
 * Date: 17-11-24
 * Time: 上午10:21
 */
class Controller_Stats extends \App\User
{
    private $user;
    protected $layout = "layout";
    protected $position;

    public function init()
    {
        parent::init();
        $this->stats = new \Model\Stats();
    }

    public function listAction()
    {
        if (IS_POST) {
            $query = $this->_request->getPost();
            $p = isset($query['page']) ? $query['page'] : 1;
            $l = isset($query['limit']) ? $query['limit'] : 50;
            $query['user_id'] = !$this->is_admin ? $this->user_id : 0;
            $list = $this->stats->getList($query, $p, $l);
            fn_ajax_return(0, "", $list['list'], [
                'count' => $list['count'],
                'is_admin' => $this->is_admin,
                'pvs' =>$list['pvtotal'],
            ]);
        } else {
            $this->assign('is_admin',$this->is_admin);
            $this->display("Stats/list");
        }
    }

    public function addAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            list($res, $msg) = $this->stats->addInfo($post);
            fn_ajax_return($res, $msg, "");
        } else {
            $this->display("Stats/add");
        }
    }

    public function editAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            list($res, $msg) = $this->stats->editInfo($post);
            fn_ajax_return($res, $msg, "");
        } else {
            $this->display("Stats/edit");
        }
    }

    public function getAction()
    {
        $post = $this->_request->getQuery();
        $uid = isset($post['uid']) ? $post['uid'] : 0;

        if (!$uid) {
            fn_ajax_return(1, "参数错误");
        }

        $uinfo = $this->stats->getStatsById($uid);
        if (!$uinfo) {
            fn_ajax_return(1, "数据不存在");
        } else {
            unset($uinfo['password']);
            fn_ajax_return(0, "", $uinfo);
        }
    }

    public function delAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            $uid = isset($post['id']) ? $post['id'] : 0;

            if (!$uid) {
                fn_ajax_return(1, "参数错误");
            }
            $res = $this->stats->delInfo($uid);
            if ($res) {
                fn_ajax_return(0, "删除成功");
            } else {
                fn_ajax_return(1, "删除失败");
            }
        }
    }


}