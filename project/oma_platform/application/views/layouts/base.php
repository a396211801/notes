<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo $title; ?></title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/css/layui.css"/>
    <link rel="stylesheet" href="/css/modules/layer/default/layer.css">
    <script type="text/javascript" src="/layui.js"></script>
    <script type="text/javascript" src="/lay/modules/layer.js"></script>
    <script type="text/javascript" src="/js/lib/jquery.min.js"></script>
    <script type="text/javascript" src="/js/lib/clipboard.min.js"></script>
    <script type="text/javascript" src="/config.js"></script>
    <style type="text/css">
        .aside ul li:nth-of-type(<?php echo $nav_num; ?>):before{
            width: 4px;
            height: 60px;
            background: url(/img/border.png) no-repeat;
            left: 0;
            top: 0;
        }
        .aside ul li:nth-of-type(<?php echo $nav_num; ?>):after{
            width: 6px;
            height: 10px;
            background: url(/img/tip.png) no-repeat;
            top: 50%;
            margin-top: -5px;
            right: 18px;
        }
        .aside ul li:nth-of-type(<?php echo $nav_num; ?>) a{
            color: #fff;
        }
        .aside ul li:nth-of-type(<?php echo $nav_num; ?>) a:before{
            background: url(/img/account1.png) no-repeat;
        }
    </style>
</head>
<body>
<!--页面左侧-->
<div class="aside fl">
    <!--logo-->
    <h1 class="textCenter"><span></span></h1>
    <!--用户登陆信息-->
    <p class="textCenter">
        <span class="colorWhite">Hi，我是<?php echo $userInfo['user_name'] ?></span>
        <i class="block fontSize_12">上次登录时间：<?php echo date("Y-m-d H:i:s",$userInfo['login_time']) ?></i>
    </p>
    <!--导航-->
    <ul>
        <li class="pseudoClass active relative">
            <a href="/advertPosition/index" class="pseudoClass relative">广告位管理</a>
        </li>
        <li class="pseudoClass relative">
            <a href="/data/reportAdvertPosition" class="pseudoClass relative">数据报表</a>
        </li>
        <li class="pseudoClass relative">
            <a href="/settlement/index" class="pseudoClass relative">结算报表</a>
        </li>
        <li class="pseudoClass relative">
            <a href="/user/index" class="pseudoClass relative">用户信息</a>
        </li>
    </ul>
    <!--退出登录-->
    <a href="/member/logout" class="textCenter colorWhite block">退出登录</a>
</div>
<?php echo $_content_; ?>
<!-- 平台客服 -->
<div class="service">
    平台客服
</div>
</body>
</html>