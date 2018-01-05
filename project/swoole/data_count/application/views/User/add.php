<div class="layui-body">
    <div style="padding: 15px;">
        <form class="layui-form layui-form-pane" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" name="username" lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block">
                    <input type="password" name="password" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
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
                    <button class="layui-btn layui-btn-primary" lay-submit lay-filter="addFrom">确定</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    layui.use(['jquery', 'form'], function() {
        var form = layui.form;
        // 添加提交
        form.on('submit(addFrom)', function(data){
            var d = data.field;
            if(d.password !== d.password1){
                layer.msg('两次输入密码不一致');
                return false;
            }
            $.ajax({
                'url' : '/user/add',
                'type': 'post',
                'data': d,
                'dataType': "json",
                'success': function (res) {
                    if (res.code == 0) {
                        layer.msg(res.msg);
                    } else {
                        layer.msg(res.msg);
                    }
                },
            });
            return false;
        });
    })
</script>
