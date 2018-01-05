<div class="layui-body">
    <div style="padding: 15px;">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-primary" type="button" id="addUser"><i
                            class="layui-icon">&#xe654;</i>添加用户
                </button>
            </div>
        </form>
        <table id="table" lay-filter="table"></table>
    </div>
</div>

<!-- 表格操作 -->
<script type="text/html" id="toolBar">
    <a class="layui-btn layui-btn-xs layui-btn-primary" lay-event="del"><i class="layui-icon">&#xe640;</i>删除</a>
    <a class="layui-btn layui-btn-xs layui-btn-primary" lay-event="modify"><i class="layui-icon">&#xe642;</i>修改</a>
    <a class="layui-btn layui-btn-xs layui-btn-primary" lay-event="namelist"><i class="layui-icon">&#xe62d;</i>名称列表</a>
</script>
<!-- 添加用户 -->
<script type="text/html" id="tpl-add">
    <form class="layui-form layui-form-pane" action="" style="padding: 10px">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="username" lay-verify="required" placeholder="请输入用户名" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-block">
                <input type="password" name="password" lay-verify="required" placeholder="请输入密码" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-block">
                <input type="password" name="password1" lay-verify="required" placeholder="请输入确认密码" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-primary" lay-submit lay-filter="addFrom">确定</button>
            </div>
        </div>
    </form>
</script>
<!-- 修改 -->
<script type="text/html" id="tpl-modifypass">
    <form class="layui-form layui-form-pane" action="" style="padding: 10px">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="username" lay-verify="required" placeholder="" autocomplete="off"
                       class="layui-input" value="{{d.username}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-block">
                <input type="password" name="password" placeholder="请输入新密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-block">
                <input type="password" name="password1" placeholder="请输入确认密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-primary" lay-submit lay-filter="modifyFrom">确定</button>
            </div>
        </div>
    </form>
</script>

<!-- 名称列表 -->
<script type="text/html" id="tpl-namelist">

</script>

<table id="nltable" lay-filter="nltable" style="display: none"></table>

<script>
    layui.use(['laydate', 'table', 'jquery', 'form', 'laytpl'], function () {

        // global var
        var global = null;
        // 当前打开的layer层
        var curLayer = null;


        var laydate = layui.laydate,
            form = layui.form,
            $ = layui.jquery,
            laytpl = layui.laytpl,
            table = layui.table;


        //日期
        laydate.render({
            elem: '#date'
        });


        //表格
        table.render({
            elem: '#table',
            method: 'post',
            id: 'reload',
            height: '500',
            url: '/user/list', //数据接口
            page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['prev', 'page', 'next', 'count'] //自定义分页布局
                //,curr: 5 //设定初始在第 5 页
                , limit: 10
                , groups: 5 //只显示 1 个连续页码
                , first: false //不显示首页
                , last: false //不显示尾页

            },
            cols: [[ //表头
                {field: 'id', title: 'ID'},
                {field: 'username', title: '用户'},
                {toolbar: '#toolBar', title: '操作'}
            ]]
        });
        //监听工具条
        table.on('tool(table)', function (obj) {
            var data = obj.data;
            if (obj.event === 'del') {
                layer.confirm('真的要删除么？', function (index) {
                    $.ajax({
                        url: '/user/del',
                        type: 'post',
                        data: {
                            uid: data.id,
                        },
                        success: function (res) {
                            res = JSON.parse(res);
                            if (res.code == 0) {
                                layer.msg(res.msg)
                                obj.del();
                                reloadTable()
                                layer.close(index);
                            } else {
                                layer.msg(res.msg)
                            }
                        }

                    })
                });
            } else if (obj.event === 'modify') {
                global = data;
                var html = $('#tpl-modifypass').html();

                html = html.replace(/{{d.username}}/, data.username);

                curLayer = layer.open({
                    type: 1,
                    shade: .5,
                    title: '修改密码', //不显示标题
                    area: ['320px', '350px'], //宽高
                    content: html,
                    cancel: function () {
                    }
                });
            }
            if (obj.event == "namelist") {
                window.location.href = "/user/namelist?uid="+data.id+"&uname="+data.username;
            }
        });

        //执行重载
        function reloadTable() {
            table.reload('reload', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }, where: {}
            })
        }


        // 打开添加层
        $('#addUser').click(function () {
            var html = $('#tpl-add').html();
            curLayer = layer.open({
                type: 1,
                shade: .5,
                title: '添加用户', //不显示标题
                area: ['320px', '275px'], //宽高
                content: html,
                cancel: function () {
                }
            });
        })
        // 添加提交
        form.on('submit(addFrom)', function (data) {
            var d = data.field;
            if (d.password !== d.password1) {
                layer.msg('两次输入密码不一致');
                return false;
            }
            $.ajax({
                'url': '/user/add',
                'type': 'post',
                'data': d,
                'dataType': "json",
                'success': function (res) {
                    if (res.code == 0) {
                        reloadTable()
                        layer.close(curLayer);
                        layer.msg(res.msg);

                    } else {
                        layer.msg(res.msg);
                    }
                },
            });
            return false;
        });


        // 修改提交
        form.on('submit(modifyFrom)', function (data) {
            var d = data.field;
            if (d.password !== d.password1) {
                layer.msg('两次输入密码不一致');
                return false;
            }
            d.id = global.id;
            var url;
            if (d.username == $.trim($("#gusername").html()))
                url = '/user/editPwd'
            else
                url = '/user/edit'
            $.ajax({
                'url': url,
                'type': 'post',
                'data': d,
                'dataType': "json",
                'success': function (res) {
                    if (res.code == 0) {
                        reloadTable();
                        layer.close(curLayer);
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