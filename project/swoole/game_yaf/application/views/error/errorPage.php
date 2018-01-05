<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>久旭推广</title>
    <meta http-equiv="description" content=""/>
    <meta http-equiv="keywords" content=""/>
    <link type="image/x-icon" href="/img/9xulogo.ico" rel="icon"/>
    <style>
        body{
            padding:0;
            margin:0;
            font:12px/1 "微软雅黑";
            background-color:#fff;
        }
        a{
            text-decoration:none;
        }
        p{
            padding:0;
            margin:0;
        }
        #error_page{
            position:absolute;
            top:50%;
            left:50%;
            width:950px;
            height:490px;
            margin-top:-225px;
            margin-left:-475px;
            border:1px solid #c1c1c1;
            background:url(../img/error_page.jpg) top center no-repeat;
        }
        .link{
            margin-left:510px;
            margin-top:269px;
        }
        .back_home{
            font-size:18px;
            color:#87cd53;
        }
        .back_home:hover{
            color:#7ac146;
        }
        .refresh{
            margin-left:22px;
            font-size:18px;
            color:#639f95;
        }
        .refresh:hover{
            color:#529086;
        }
        .back_home i,.refresh i{
            display:inline-block;
            width:23px;
            height:17px;
            margin-right:9px;
            background-image:url(../img/ico_error_page.jpg);
            background-repeat:no-repeat;
        }
        .back_home i{
            background-position:0 0;
        }
        .back_home:hover i{
            background-position:-23px 0;
        }
        .refresh i{
            background-position:-46px 0;
        }
        .refresh:hover i{
            background-position:-69px 0;
        }
        .countdown{
            margin-top:66px;
            line-height:30px;
            font-size:16px;
            color:#535353;
            text-align:center;
        }
        .countdown label{
            font-size:28px;
            color:#e6212a;
        }
    </style>
    <!--[if IE 6]>
    <script type="text/javascript" src="/js/iepng.js"></script>
    <![endif]-->
</head>
<body>
    <div id="error_page">
        <p class="link">
            <a href="/" class="back_home"><i></i><span>返回首页</span></a>
        </p>
        <p class="countdown">
            <?php if(isset($msg)): ?>
            <?php echo $msg; ?>
            <?php else: ?>
            高级SEO提示-您可能输错了网址，<br/>
或该网页已删除或移除，系统 <label>5</label> 秒后返回上级。
            <?php endif; ?>
        </p>
    </div>
</body>
</html>