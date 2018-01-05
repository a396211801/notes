<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>启冠移动联盟</title>
    <link rel="stylesheet" type="text/css" href="/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="/css/login.css"/>
    <script type="text/javascript" src="/layui.js"></script>
</head>
<body>
<div class="login_box">
    <span class="logo"></span>
    <div id="first" style="display: block;">
        <form action=""  class="layui-form">
            <div class="sys-name">启冠移动联盟</div>
            <input name="user_name" type="text" placeholder="" autocomplete="off" lay-verify="required"/>
            <input name="password" type="password" placeholder="" autocomplete="off" lay-verify="password"/>
            <button lay-submit="" lay-filter="formLogin">登录</button>
        </form>
    </div>
</div>
<script type="text/javascript" src="/js/app/login.js"></script>
</body>
</html>