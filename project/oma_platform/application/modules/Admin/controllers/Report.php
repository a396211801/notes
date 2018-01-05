<?php
/**
 * Created by IntelliJ IDEA.
 * User: zhanghuang
 * Date: 17-12-12
 * Time: 下午2:19
 * 报表管理
 */
class Controller_Report extends Admin
{
    protected $layout = 'base';
    protected $model_reportAdvert;
    protected $model_reportAdvertPosition;
    protected $model_advert_position;
    protected $model_advert;
    protected $model_reportTpl;
    protected $model_reportAdvPosiH5;
    protected $model_reportAdvPosiJs;
    public function init()
    {
        parent::init();
        $this->model_reportAdvert = new Model_ReportAdvert();
        $this->model_reportAdvertPosition = new Model_ReportAdvertPosition();
        $this->model_advert_position = new Model_AdvertPosition();
        $this->model_advert = new Model_Advert();
        $this->model_reportTpl = new Model_ReportTpl();
        $this->model_reportAdvPosiH5 = new Model_ReportAdvertPositionH5();
        $this->model_reportAdvPosiJs = new Model_ReportAdvertPositionJs();
    }

    /**
     * 广告位汇总表
     */
    public function reportAdvertpositionAction()
    {
        $data = $this->_request->getQuery();
        //设置时间
        if(!isset($data['start_date'])) {
            $data['start_date'] = date('Y-m-d', strtotime('-7 days'));
        }
        if(!isset($data['end_date'])) {
            $data['end_date'] = date("Y-m-d");
        }
        $list = $this->model_reportAdvertPosition->getList($data);
        $this->assign('list', $list);
        $this->display();
    }

    /**
     * 广告位详表
     */
    public function reportAdvertpositionDetaileAction()
    {

        $data = $this->_request->getQuery();
        $adw_id = $data['adw_id'];
        
        //设置时间
        if(!isset($data['start_date'])) {
            $data['start_date'] = date('Y-m-d', strtotime('-7 days'));
        }
        if(!isset($data['end_date'])) {
            $data['end_date'] = date("Y-m-d");
        }

        //没有广告位id,就跳转到数据报表-广告位列表
        if(!isset($adw_id) || intval($adw_id) <= 0) {
            Header("Location: /Admin/report/reportadvertposition");
        }

        $type = $this->model_advert_position->get('type',['AND'=>['id'=>$adw_id]]);
        //广告位参数错误
        if(!$type) {
            Header("Location: /Admin/report/reportadvertposition");
        }
        switch ($type) {
            case 1:
                $this->reportAdvertpositionDetaileH5($data);
                break;
            case 2:
                break;
            case 3:
                $this->reportAdvertpositionDetaileJs($data);
                break;
            default :
                $this->reportAdvertpositionDetaileH5($data);
                break;
        }
    }

    /**
     * h5广告位详表
     */
    public function reportAdvertpositionDetaileH5($data)
    {
        $list = $this->model_reportAdvPosiH5->detaileReport($data);
        $this->assign('adw_id', $data['adw_id']);
        $this->assign('list', $list);
        $this->display('reportadvertpositiondetaileh5');
    }

    /**
     * JS广告位详表
     */
    public function reportAdvertpositionDetaileJs($data)
    {
        $list = $this->model_reportAdvPosiJs->detaileReport($data);
        $this->assign('adw_id', $data['adw_id']);
        $this->assign('list', $list);
        $this->display('reportadvertpositiondetailejs');
    }

    /**
     * 广告汇总表
     */
    public function reportAdvertAction()
    {
        $data = $this->_request->getQuery();
        //设置时间
        if(!isset($data['start_date'])) {
            $data['start_date'] = date('Y-m-d', strtotime('-7 days'));
        }
        if(!isset($data['end_date'])) {
            $data['end_date'] = date("Y-m-d");
        }

        $list = $this->model_reportAdvert->getList($data);
        $this->assign('list', $list);
        $this->display();
    }

    /**
     * 模板汇总表
     */
    public function reportTplAction()
    {
        $data = $this->_request->getQuery();
        //设置时间
        if(!isset($data['start_date'])) {
            $data['start_date'] = date('Y-m-d', strtotime('-7 days'));
        }
        if(!isset($data['end_date'])) {
            $data['end_date'] = date("Y-m-d");
        }

        $list = $this->model_reportTpl->getList($data);
        $this->assign('list', $list);
        $this->display();
    }

    /**
     * 模板详细表
     */
    public function reportTplDetailAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            //设置时间
            if (!isset($data['start_date'])) {
                $data['start_date'] = date('Y-m-d', strtotime('-7 days'));
            }
            if (!isset($data['end_date'])) {
                $data['end_date'] = date("Y-m-d");
            }

            $list = $this->model_reportTpl->getDetailList($data);
            if ($list) fn_ajax_return(1, '获取成功', $list);
            fn_ajax_return(0, '无数据', $list);
        } else {
            $this->display();
        }
    }




    /**
     * 广告明细表
     */
    public function reportAdvertDetaileAction()
    {
        $data = $this->_request->getQuery();
        $id = $data['id'];

        //设置时间
        if(!isset($data['start_date'])) {
            $data['start_date'] = date('Y-m-d', strtotime('-7 days'));
        }
        if(!isset($data['end_date'])) {
            $data['end_date'] = date("Y-m-d");
        }

        //没有广告id,就跳转到数据报表-广告列表
        if(!isset($id) || intval($id) <= 0) {
            Header("Location: /Admin/report/reportadvert");
        }

        $type = $this->model_advert->get('ad_type',['AND'=>['id'=>$id]]);
        //广告参数错误
        if(!$type) {
            Header("Location: /Admin/report/reportadvert");
        }
        switch ($type) {
            case 1:
                $this->reportAdvertDetaileH5($data);
                break;
            case 2:
                break;
            case 3:
                break;
            default :
                $this->reportAdvertDetaileH5($data);
                break;
        }
    }

    /**
     * h5广告明细表
     */
    public function reportAdvertDetaileH5($data)
    {
        $list = $this->model_reportAdvert->reportDetailH5($data);
        $this->assign('id', $data['id']);
        $this->assign('list', $list);
        $this->display('reportadvertdetaileh5');
    }

    /**
     * 模板明细表获取广告数据
     */
    public function getAdvertDataAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            if (!isset($data['tpl_id']) || !$data['tpl_id']) {
                fn_ajax_return(0,'参数错误');
            }
            //设置时间
            if(!isset($data['start_date'])) {
                $data['start_date'] = date('Y-m-d', strtotime('-7 days'));
            }
            if(!isset($data['end_date'])) {
                $data['end_date'] = date("Y-m-d");
            }
            $list = $this->model_reportAdvert->getAdvertData($data);
            if ($list) fn_ajax_return(1, '获取成功', $list);
            fn_ajax_return(0, '无数据', $list);
        }
    }

    /**
     * 更新报表数据
     */
    public function updateTableAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            if (!isset($data['table']) || !$data['table']) {
                fn_ajax_return(0,'参数错误');
            }
            $url = 'http://' . $_SERVER['SERVER_NAME'] . '/ts/api/v1/update_report';
            $res = fn_get_contents($url, $data, 'get', 0);
            $res = json_decode($res, true);
            if ($res['ret'] == 0) fn_ajax_return(0, '获取成功', $res);
            fn_ajax_return(1, '无数据', $res);
        }
    }

    /**
     * 修改用户收益
     */
    public function updateIncomeAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            $check = $this->model_reportAdvertPosition->checkIncomeData($data);
            if (!$check['ret']) {
                fn_ajax_return(1, $check['msg'], '');
            }
            $res = $this->model_reportAdvertPosition->updateIncome($data);
            if ($res['ret'] == 0) fn_ajax_return(0, '修改成功', $res);
            fn_ajax_return(1, '修改失败', $res);
        }
    }


}