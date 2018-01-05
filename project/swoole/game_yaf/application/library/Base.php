<?php


class Base extends \Web
{
    //游戏ID
    protected $gameId = array(2244, 2324, 2390, 2419, 2421, 2426, 2427, 3151);

    protected $muber = array(
        '2244' => array(
            'info' => array(
                'title' => '视频年卡大集锦',
                'bannerUrl' => '/img/game/2244.jpg',
                'actUrl' => '/?id=2244'
            ),
            'limitTimes' => 8
        ),
        '2324' => array(
            'info' => array(
                'title' => '新机抢走玩开心',
                'bannerUrl' => '/img/game/2324.jpg',
                'actUrl' => '/?id=2324'
            ),
            'limitTimes' => 8
        ),
        '2390' => array(
            'info' => array(
                'title' => '天降红包雨，速来拿红包',
                'bannerUrl' => '/img/game/2390.jpg',
                'actUrl' => '/?id=2390'
            ),
            'limitTimes' => 8
        ),
        '2419' => array(
            'info' => array(
                'title' => '抢摄影利器做好“摄”之徒',
                'bannerUrl' => '/img/game/2419.jpg',
                'actUrl' => '/?id=2419'
            ),
            'limitTimes' => 8
        ),
        '2421' => array(
            'info' => array(
                'title' => '冰爽空调，冷风凉透心',
                'bannerUrl' => '/img/game/2421.jpg',
                'actUrl' => '/?id=2421'
            ),
            'limitTimes' => 8
        ),
        '2426' => array(
            'info' => array(
                'title' => '送观影券，让好片燃爆夏天',
                'bannerUrl' => '/img/game/2426.jpg',
                'actUrl' => '/?id=2426'
            ),
            'limitTimes' => 8
        ),
        '2427' => array(
            'info' => array(
                'title' => '钱包入账，花不完',
                'bannerUrl' => '/img/game/2427.jpg',
                'actUrl' => '/?id=2427'
            ),
            'limitTimes' => 8
        ),
        '3151' => array(
            'info' => array(
                'title' => '拿走购物卡，天猫超时搬回家',
                'bannerUrl' => '/img/game/3151.jpg',
                'actUrl' => '/?id=3151'
            ),
            'limitTimes' => 8
        ),
        '4000' => array(
            'info' => array(
                'title' => '红包白领花不完',
                'bannerUrl' => '/img/game/2421.jpg',
                'actUrl' => '/?id=2421'
            ),
            'limitTimes' => 8
        ),
        '4001' => array(
            'info' => array(
                'title' => '红包白领花不完',
                'bannerUrl' => '/img/game/2421.jpg',
                'actUrl' => '/?id=2421'
            ),
            'limitTimes' => 8
        ),
        '4002' => array(
            'info' => array(
                'title' => '红包白领花不完',
                'bannerUrl' => '/img/game/2421.jpg',
                'actUrl' => '/?id=2421'
            ),
            'limitTimes' => 8
        ),
    );

    public $orderId = 0;

    public function init()
    {
        parent::init();
    }

    /**
     * 每个游戏页面返回的数据
     * */
    public function getGame($gameId)
    {
        $gameData = new \Data();
        $data = $gameData->data();
        if (isset($data[$gameId][$this->_a])) {
            return $data[$gameId][$this->_a];
        }
        return '';
    }

    /**
     * 随机获取中奖数据
     * */
    public function getDetails($condition = [], $type = false)
    {
        $gameData = new \Data();
        $details = $gameData->details();
        $data = $gameData->data();
        $activity = $gameData->activity();

        if (!isset($data[$condition['id']][$this->_a])) return array();

        $redis = new Component\Redis();
        $id = $condition['id'];
        $random = isset($condition['random']) ? $condition['random'] : 0;
        $key = "InsetProduct_" . $random . "_" . $id;
        $number = $redis->SMEMBERS($key);

        //按顺data数据序来出广告
        $count = count($number);
        if ($count > 0) {
            //如果广告产品不足８个，剩余次数随机出
            $activityCount = count($activity);
            if($count<$activityCount){
                for ($i = 0; $i < $count; $i++) {
                    next($activity);
                }
                $key = current($activity);
            }else{
                $k = array_rand($activity,1);
                $key = $activity[$k];
            }
        } else {
            $key = $activity[key($activity)];
        }

        $this->orderId = $key['orderId'];
        $res = $details[$this->orderId];
        $re = $this->replaceData($data[$condition['id']][$this->_a], $res, $type);
        return $re;
    }

    /**
     * 数据替换、处理
     * $type false 第一版模块数据  1第二版模块数据
     * $return  array
     * */
    private function replaceData($used, $new, $type)
    {
        if ($type == 1) {
            $data = $this->SecondData($used, $new);
        } else {
            $data = $this->getUrl($used, $new);
        }
        return $data;
    }

    /**
     * 获取游戏页奖品列表的详情
     * */
    public function getOptions($optionsId)
    {
        $gameData = new \Data();
        $options = $gameData->options();
        if (isset($options[$optionsId])) {
            return $options[$optionsId];
        }
        return '';
    }

    /**
     * 获取我的奖品列表数据
     * */
    public function getActivity()
    {
        $gameData = new \Data();
        $activity = $gameData->activity();
        return $activity;
    }

    /**
     * 第二版数据替换
     * */
    private function SecondData($used, $new)
    {
        if (!$used || !$new) return '';
        $data = [
            'awardname' => isset($new['title']) ? $new['title'] : '',
            'awardimg' => isset($new['thumbnailPng']) ? $new['thumbnailPng'] : '',
            'awardmsg' => isset($new['couponRemark']) ? $new['couponRemark'] : '',
            'awardid' => 1321,
            'awardlink' => isset($new['iosDownloadUrl']) ? $new['iosDownloadUrl'] : '',
            'awardtype' => 2,
            'buttontext' => isset($new['buttonText']) ? $new['buttonText'] : '',
            'validitytime' => isset($new['endValid']) ? $new['endValid'] : '',
            'awardorderid' => 738237664,
            'iscontinue' => true,
            'shopstype' => 9,
            'awardangle' => '300',
            'ordernum' => NULL,
        ];
        return $data;

    }

    /**
     * 第一版模块数据替换
     * */
    public function getUrl($re = [], $data = [])
    {
        //是替换不是声明，还有其它字段参数 声明会丢失
        $re['lottery']['useBtnText'] = $data['buttonText'];
        $re['orderId'] = $data['orderId'];
        $re['lottery']['iosDownloadUrl'] = $data['iosDownloadUrl'];
        $re['lottery']['androidDownloadUrl'] = $data['androidDownloadUrl'];
        $re['lottery']['imgurl'] = $data['thumbnailPng'];
        $re['lottery']['title'] = $data['title'];

        if (isset($re['lottery']['st_info_dpm_title_click'])) {
            $info = array(
                'st_info_dpm_title_click',
                'st_info_dpm_exposure',
                'st_info_dpm_btn_close',
                'st_info_dpm_img_click',
                'st_info_dpm_btn_get',
            );
            foreach ($info as $k => $v) {
                //orderId taw-需要拼接发送给前端
                $re['lottery'][$v]['orderId'] = 'taw-' . $this->orderId;
                $re['lottery'][$v] = json_encode($re['lottery'][$v]);
            }
        }
        return $re;
    }

    /**
     * 计算中奖概率
     * */
    private function get_rand($proArr)
    {
        $rs = '';
        $proSum = array_sum($proArr);
        //概率数组循环
        foreach ($proArr as $key => $proCur) {
            $randNum = mt_rand(0, $proSum);
            if ($randNum <= $proCur) {
                $rs = $key;
                break;
            } else {
                $proSum -= $proCur;
            }
        }
        unset($proArr);
        return $rs;
    }

}
