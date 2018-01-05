<div class="layui-body">
    <div style="padding: 15px;">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <a href="javascript:history.back();" class="layui-btn layui-btn-normal" type="button" >
                    <i class="layui-icon">&#xe65c;</i>返回
                </a>
                <button class="layui-btn layui-btn-primary" type="button" id="addUser"><i
                            class="layui-icon">&#xe654;</i>添加名称
                </button>
                用户名:<?php echo isset($uname) ? $uname : "" ?>

            </div>
        </form>
        <table id="table" lay-filter="table"></table>
    </div>
</div>

<!-- 表格操作 -->
<script type="text/html" id="toolBar">
    <a class="layui-btn layui-btn-xs layui-btn-primary" lay-event="del"><i class="layui-icon">&#xe640;</i>删除</a>
    <a class="layui-btn layui-btn-xs layui-btn-primary" lay-event="modify"><i class="layui-icon">&#xe642;</i>修改</a>
</script>
<!-- 添加用户 -->
<script type="text/html" id="tpl-add">
    <form class="layui-form layui-form-pane" action="" style="padding: 10px">
        <div class="layui-form-item">
            <label class="layui-form-label">名称</label>
            <div class="layui-input-block">
                <input type="text" name="name" lay-verify="required" placeholder="请输入名称" autocomplete="off"
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
                <input type="text" name="name" lay-verify="required" placeholder="" autocomplete="off"
                       class="layui-input" value="{{d.username}}">
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
        var uid = <?php echo isset($uid) ? $uid : 0?>;
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
            url: '/user/namelist', //数据接口
            where: {user_id: <?php echo isset($uid) ? $uid : 0?>},
            cols: [[ //表头
                {field: 'id', title: 'ID'},
                {field: 'name', title: '名称'},
                {toolbar: '#toolBar', title: '操作'}
            ]]
        });
        //监听工具条
        table.on('tool(table)', function (obj) {
            var data = obj.data;
            if (obj.event === 'del') {
                layer.confirm('真的要删除么？', function (index) {
                    $.ajax({
                        url: '/user/namedel',
                        type: 'post',
                        data: {
                            id: data.id,
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

                html = html.replace(/{{d.username}}/, data.name);

                curLayer = layer.open({
                    type: 1,
                    shade: .5,
                    title: '修改名称', //不显示标题
                    area: ['320px', '170px'], //宽高
                    content: html,
                    cancel: function () {
                    }
                });
            }
        });

        //执行重载
        function reloadTable() {
            table.reload('reload', {
            })
        }


        // 打开添加层
        $('#addUser').click(function () {
            var html = $('#tpl-add').html();
            curLayer = layer.open({
                type: 1,
                shade: .5,
                title: '添加名称', //不显示标题
                area: ['320px', '175px'], //宽高
                content: html,
                cancel: function () {
                }
            });
        })
        // 添加提交
        form.on('submit(addFrom)', function (data) {
            var d = data.field;
            d.user_id = uid;
            $.ajax({
                'url': '/user/nameadd',
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
            d.id = global.id;
            d.user_id = uid;
            var url = "/user/nameedit";
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