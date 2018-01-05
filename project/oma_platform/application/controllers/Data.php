<?php

/**
 * Created by IntelliJ IDEA.
 * User: ying
 * Date: 17-12-7
 * Time: 上午10:40
 */
class Controller_Data extends Front
{
    protected $layout = 'base';
    protected $model_report_advert_position;
    protected $model_report_advert;
    protected $model_advert_position;

    public function init()
    {
        parent::init();
        $this->model_report_advert_position = new Model_ReportAdvertPosition();
        $this->model_advert_position = new Model_AdvertPosition();
    }

    /**
     * 数据报表-广告位报表
     */
    public function reportAdvertPositionAction()
    {
        $user_info = $this->_session->get('user_info');

        $data = $this->_request->getQuery();
        $data['user_id'] = $user_info['id'];
        $list = $this->model_report_advert_position->dataReport($data);

        $this->assign('list', $list['list']);
        $this->assign('count', $list['count']);
        $this->display();
    }

    /**
     * 数据报表-单个广告位报表
     */
    public function reportAdvertPositionDetailAction()
    {
        //用户id
        $user_info = $this->_session->get('user_info');
        $user_id = $user_info['id'];

        //设置日期数组
        $this->assignDate();

        $data = $this->_request->getQuery();
        $adw_id = $data['adw_id'];

        //没有广告位id,就跳转到数据报表-广告位列表
        if (!isset($adw_id) || intval($adw_id) <= 0) {
            Header("Location: /data/reportAdvertPosition");
        }

        $advert_position = $this->model_advert_position->get(['id', 'name', 'type'], ['AND' => ['id' => $adw_id]]);
        //广告位参数错误
        if (!$advert_position) {
            Header("Location: /data/reportAdvertPosition");
        }

        $advert_position_name = $advert_position['name'];
        $advert_position_type = $advert_position['type'];

        //设置时间
        $yesterday = date("Y-m-d", strtotime('-1 days'));
        if (isset($data['start_date']) && $data['start_date']) {
            $start_date = $data['start_date'];
        } else {
            $start_date = date('Y-m-d', strtotime('-7 days'));
        }
        if (isset($data['end_date']) && $data['end_date']) {
            $end_date = $data['end_date'];
            if(strtotime($end_date) > strtotime($yesterday)) {
                $end_date = $yesterday;
            }

        } else {
            $end_date = $yesterday;
        }
        $condition = [
            'adw_id' => $adw_id,
            'user_id' => $user_id,
            'start_date' => $start_date,
            'end_date' => $end_date,
        ];
        switch ($advert_position_type) {
            case 1:
                $model_report_advert_position_h5 = new Model_ReportAdvertPositionH5();
                $list = $model_report_advert_position_h5->reportDetail($condition);
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            default :
                $model_report_advert_position_h5 = new Model_ReportAdvertPositionH5();
                $list = $model_report_advert_position_h5->reportDetail($condition);
                break;
        }

        $this->assign('start_date', $start_date);
        $this->assign('end_date', $end_date);
        $this->assign('yesterday', $yesterday);

        $this->assign('advert_position_name', $advert_position_name);
        $this->assign('list', $list['list']);
        $this->assign('count', $list['count']);
        $this->display();
    }


    /**
     * 设置日期数组
     */
    private function assignDate()
    {
        //上周
        $date = date('Y-m-d');  //当前日期
        $first = 1; //$first =1 表示每周星期一为开始日期 0表示每周日为开始日期
        $w = date('w', strtotime($date));  //获取当前周的第几天 周日是 0 周一到周六是 1 - 6
        $now_start = date('Y-m-d', strtotime("$date -" . ($w ? $w - $first : 6) . ' days')); //获取本周开始日期，如果$w是0，则表示周日，减去 6 天
        $last_week_start_date = date('Y-m-d', strtotime("$now_start - 7 days"));  //上周开始日期
        $last_week_end_date = date('Y-m-d', strtotime("$now_start - 1 days"));  //上周结束日期
        $last_week = [
            'start_date' => $last_week_start_date,
            'end_date' => $last_week_end_date
        ];

        //前7天
        $seven_day_ago = [
            'start_date' => date('Y-m-d', strtotime('-7 days')),
            'end_date' => date("Y-m-d", strtotime('-1 days'))
        ];

        //本月
        $now_month_start_date = date('Y-m-01', strtotime(date("Y-m-d")));
        $now_month_end_date = date('Y-m-d', strtotime("$now_month_start_date +1 month -1 day"));
        $now_month = [
            'start_date' => $now_month_start_date,
            'end_date' => $now_month_end_date
        ];

        //上月
        $prev_month = [
            'start_date' => date('Y-m-01', strtotime('-1 month')),
            'end_date' => date('Y-m-t', strtotime('-1 month'))
        ];

        $date_array = [
            'last_week' => $last_week,
            'seven_day_ago' => $seven_day_ago,
            'now_month' => $now_month,
            'prev_month' => $prev_month,
        ];
        $this->assign('date_array', $date_array);
    }

}