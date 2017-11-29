<?php


class Weibo
{
    private $mysql_conf = array(
        'host' => '192.168.1.199',
        'db' => 'weibo',
        'db_user' => 'root',
        'db_pwd' => '123456',
    );
    private $pdo = '';

    public function __construct()
    {
        $this->pdo_content();

    }

    public function pdo_content()
    {
        $pdo = new PDO("mysql:host=" . $this->mysql_conf['host'] . ";dbname=" . $this->mysql_conf['db'],
            $this->mysql_conf['db_user'], $this->mysql_conf['db_pwd']);//创建一个pdo对象

        $pdo->exec("set names 'utf8'");
        $this->pdo = $pdo;

    }

    public function selectedAction()
    {
        $id = isset($_POST['id'])?$_POST['id']:0;
        $sql = "update weibo set selected=1 where Uid={$id} ";
        $stmt = $this->pdo->prepare($sql);
        $re = $stmt->execute();
        if($re !== false)
        {
            echo json_encode(array('code'=>0));
        }else{
            echo json_encode(array('code'=>1));
        }
    }

    public function listAction()
    {
        $stmt = $this->pdo->prepare('select count(*) from weibo ');
        $stmt->execute();
        $total = $stmt->fetchColumn();
        $num = 100;//每页显示条数

        $pagenum = ceil($total / $num);

        $cpage = isset($_GET["page"]) ? (int)$_GET["page"] : 1;//当前页

        $offset = ($cpage - 1) * $num;//开始去数据的位置

        $sql = "select * from weibo ORDER BY fansNum desc limit {$offset},{$num} ";
        $res = $this->pdo->query($sql);
        foreach ($res as $row) {
            $result[] = array(
                'id' => $row['Uid'],
                'userName' => $row['userName'],
                'watermark' => $row['watermark'],
                'sex' => $row['sex'],
                'fansNum' => (int)$row['fansNum'],
                'flowNum' => (int)$row['flowNum'],
                'weiboNum' => (int)$row['weiboNum'],
                'leaveNum' => $row['leaveNum'],
                'time' => date("Y-m-d H:i:s", $row['time'] / 1000),
                'selected'=> (int)$row['selected']
            );
        }
        $page = array(
            'url' => "/weibo/index.php",//请求的URL
            'cpage' => $cpage,//当前页
            'total' => $total,//总条数
            'pagenum' => $pagenum, //总页数
            'start' => $offset + 1, //开始记录页
            'end' => ($cpage == $pagenum) ? $total : ($cpage * $num), //结束记录页
            'next' => ($cpage == $pagenum) ? 0 : ($cpage + 1), //下一页
            'prev' => ($cpage == 1) ? 0 : ($cpage - 1), //下一页
        );
        $r_data = array(
            'code' => 0,
            'data' => $result,
            'page' => $page,
        );
        echo json_encode($r_data);
    }

    public function action()
    {
        $a = isset($_GET['a']) ? $_GET['a'] : 'list';
        $action = $a . 'Action';

        if (method_exists($this,$action )) {
            $this->$action();
        }
    }
}
$pdo = new Weibo();
$pdo->action();

