<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout login</title>
    <link rel="stylesheet" href="/src/css/layui.css">
    <style>
        body {
            overflow: hidden;
        }

        .layer_notice {
            background: #5fb878 none repeat scroll 0 0;
            float: left;
            height: 75px;
            overflow: hidden;
            padding: 10px;
            width: 330px;
        }

        .layer_notice ul li {
            color: #fff;
        }

        .video-player {
            background-color: transparent;
            min-width: 100%;
            min-height: 100%;
            display: block;
            position: absolute;
            z-index: 1;
            top: 0;
        }

        .video_mask {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            z-index: 90;
            /*background-color: rgba(0, 0, 0, 0.3);*/
        }

        .login {
            /*height: 260px;*/
            width: 260px;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 4px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin: -150px 0 0 -150px;
            z-index: 99;
        }

        .login h1 {
            text-align: center;
            color: #fff;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form_code {
            position: relative;
        }

        .form_code .code {
            position: absolute;
            right: 0;
            top: 1px;
            cursor: pointer;
        }

        .login_btn {
            width: 100%;
        }
    </style>
</head>

<body class="layui-layout-body">
<div class="layui-carousel video_mask" id="login_carousel">
    <div class="login layui-anim layui-anim-up">
        <form action="" class="layui-form">
            <h1>数据统计后台</h1></p>
            <div class="layui-form-item">
                <input type="text" name="account" id="account" lay-verify="required|account"  placeholder="请输入账号" autocomplete="off"
                       value="" class="layui-input">
            </div>
            <div class="layui-form-item">
                <input type="password" name="password" id="password" lay-verify="required|password" placeholder="请输入密码"
                       autocomplete="off" value="" class="layui-input">
            </div>
            <button class="layui-btn login_btn primary" lay-submit="" lay-filter="login">登陆系统</button>
        </form>
    </div>
</div>
<script src="/src/layui.js"></script>
<script>
    layui.use(['form', 'jquery'], function(){
        var form = layui.form,
            layer = layui.layer,
            $ = layui.jquery;

          //监听提交
        form.on('submit(login)', function(data){
            $.ajax({
                'url': '/member/login',
                'type': 'post',
                'data': data.field,
                'dataType': "json",
                'success': function (d) {
                    if (d.code == 0) {
                        location.href = "/main/index";
                    } else {
                        layer.msg('密码或者账号错误');
                    }
                },
            });
            return false;
        }); 
    });
</script>
</body>

</html>