<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>数据统计后台</title>
    <link rel="stylesheet" href="/src/css/layui.css">
    <script src="/src/layui.all.js"></script>
</head>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">数据统计后台</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">

            <?php foreach ($mainnavleft as $value): if ($value['show']): ?>
                <li class="layui-nav-item">
                    <a href=" <?php echo $value['url'];?>">
                        <?php echo $value['title'];?>
                    </a>
                </li>
            <?php endif;endforeach; ?>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;" id="gusername">
                    <?php echo $username;?>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" class="top-modifypass">修改密码</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="/member/logout">退出</a></li>
        </ul>
    </div>
    <?php echo include_once APP_PATH."/views/Layout/left.php"; ?>
    <?php echo $_content_; ?>
    <?php echo include_once APP_PATH."/views/Layout/footer.php"; ?>

</div>
<!-- 修改 -->
<script type="text/html" id="tpl-top-modifypass">
    <form class="layui-form layui-form-pane" action="" style="padding: 10px">
        <div class="layui-form-item">
            <label class="layui-form-label">旧密码</label>
            <div class="layui-input-block">
                <input type="password" name="old_password" lay-verify="required" placeholder="请输入旧密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-block">
                <input type="password" name="password" lay-verify="required" placeholder="请输入新密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-block">
                <input type="password" name="password1" lay-verify="required" placeholder="请输入确认密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-primary" lay-submit lay-filter="topModifyFrom">确定</button>
            </div>
        </div>
    </form>
</script>

<script>
    layui.use(['element','form', 'layer','jquery'], function() {
        var element = layui.element,
            layer = layui.layer,
            form = layui.form,
            $ = layui.jquery;

        var curLayer;

        $('.top-modifypass').click(function(){
            var html = $('#tpl-top-modifypass').html();
            curLayer = layer.open({
                type: 1,
                shade: .5,
                title: '修改密码', //不显示标题
                area: ['320px', '350px'], //宽高
                content: html,
                cancel: function(){ }
            });
        })
        
        // 修改提交
        form.on('submit(topModifyFrom)', function(data){
            var d = data.field;
            if(d.password !== d.password1){
                layer.msg('两次输入密码不一致');
                return false;
            }
            
            $.ajax({
                'url' : '/user/editPwd',
                'type': 'post',
                'data': d,
                'dataType': "json",
                'success': function (res) {
                    if (res.code == 0) {
                        layer.close(curLayer);
                        layer.msg(res.msg);
                    } else {
                        layer.msg(res.msg);
                    }
                },
            });
            return false;
        });

        
    });
</script>
</body>

</html>