<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>启冠移动联盟后台管理</title>
    <link rel="stylesheet" type="text/css" href="/admin/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="/admin/css/login.css"/>
    <script type="text/javascript" src="/admin/layui.js"></script>
</head>
<body>
<div class="login_box">
    <span class="logo"></span>
    <div id="first" style="display: block;">
        <form action=""  class="layui-form" onsubmit="return false;">
            <div class="sys-name">启冠移动联盟后台管理</div>
            <input name="user_name" type="text" placeholder="" autocomplete="off" lay-verify="required"/>
            <input name="password" type="password" placeholder="" autocomplete="off" lay-verify="password"/>
            <button lay-submit="" lay-filter="formLogin">登录</button>
        </form>
    </div>
</div>
<script type="text/javascript">
layui.use(['layer', 'form'],function() {
    var $ = layui.jquery,
        layer = layui.layer,
        form = layui.form;
    //自定义验证规则
    form.verify({
        password: [/(.+){1,12}$/, '密码必须6到12位']
    });
    //监听提交
    form.on('submit(formLogin)', function(data){
        $.ajax({
            url: '/admin/member/login',
            type: 'post',
            data: data.field,
            success: function(res){
                res = JSON.parse(res);
                if( res ){
                    layer.msg( res.msg );
                    if( res.ret == 1 ){
                        window.location.href = '/admin/Report/reportAdvertposition';
                    }else if (res.ret == 0) {
                        return false;
                    }
                } 
            }
        })
        return false;
    });
})
</script>
</body>
</html>