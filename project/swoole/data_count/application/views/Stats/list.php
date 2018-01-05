<div class="layui-body">
    <!-- 内容主体区域 -->
    <style>
        .layui-form-label {
            float: left;
            display: block;
            padding: 9px 0px;
            width: 67px;
            font-weight: 400;
            text-align: center;
        }

        .layui-form-item .layui-input-inline {
            float: left;
            width: 160px;
            margin-right: 10px;
        }
    </style>
    <div style="padding: 15px;">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">开始日期</label>
                <div class="layui-input-inline">
                    <input type="text" name="begin_date" id="begin_date" placeholder="" autocomplete="off"
                           class="layui-input">
                </div>
                <label class="layui-form-label">结束日期</label>
                <div class="layui-input-inline">
                    <input type="text" name="end_date" id="end_date" placeholder="" autocomplete="off"
                           class="layui-input">
                </div>
                <label class="layui-form-label">名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="name" placeholder="" autocomplete="off" class="layui-input">
                </div>
                <!-- <label class="layui-form-label">展现量</label>
                <div class="layui-input-inline">
                    <input type="text" name="pv" placeholder="" autocomplete="off" class="layui-input">
                </div> -->
                <button class="layui-btn layui-btn-primary" lay-submit lay-filter="queryForm">查询</button>

                <button class="layui-btn layui-btn-primary add" type="button" showed>添加</button>
            </div>

        </form>
        <p>本页总展现量: <span id="all-pv" class="layui-badge"></span></p>
        <p>查询总展现量: <span id="all-total-pv" class="layui-badge layui-bg-blue"></span></p>
        <table id="table" lay-filter="table"></table>
    </div>
</div>
<!-- 工具 -->
<script type="text/html" id="toolBar">
    <a class="layui-btn layui-btn-xs layui-btn-primary" lay-event="del"><i class="layui-icon">&#xe640;</i>删除</a>
    <a class="layui-btn layui-btn-xs layui-btn-primary" lay-event="modify"><i class="layui-icon">&#xe642;</i>修改</a>
</script>
<script type="text/html" id="dateBar">
    {{ fmtDate(d.date)   }}
</script>
<!-- 弹出层 -->
<script type="text/html" id="tpl-item">
    <form class="layui-form layui-form-pane" lay-filter="test1" action="" style="padding: 10px;">
        <div class="layui-form-item">
            <label class="layui-form-label">用户</label>
            <div class="layui-input-block">
                <select name="user_id" id="user-list" lay-verify="required" lay-filter="ulist">
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">名称</label>
            <div class="layui-input-block">
                <select name="name" id="user-name-list" lay-verify="required">
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">展现量</label>
            <div class="layui-input-block">
                <input type="text" id="pv" name="pv" lay-verify="required" placeholder="请输入" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">时间</label>
            <div class="layui-input-block">
                <input type="text" name="date" id="inputdate" lay-verify="required" placeholder="请输入" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-primary" lay-submit lay-filter="itemForm">确定</button>
            </div>
        </div>
    </form>
</script>

<script>
    var isAdmin = <?php echo isset($is_admin) ? 'true' : 'false';?>
        // 时间戳转yyyy-mm-dd
        function fmtDate(obj) {
            obj = obj * 1000;
            var date = new Date(obj);
            var y = date.getFullYear();
            var m = date.getMonth() + 1;
            var d = date.getDate();
            return y + "-" + m + "-" + d;
        };
    layui.use(['laydate', 'form', 'table', 'jquery'], function () {
        var laydate = layui.laydate,
            table = layui.table,
            form = layui.form,
            $ = layui.jquery;

        var curLayer = null,//当前打开的弹出层
            userList = [],//用户列表数据
            type = 1,//1为新增，2为修改
            curRow = null;//点击修改时，保存被点击行的数据

        // 获取用户列表
        $.ajax({
            url: '/user/userlist',
            type: 'post',
            success: function (res) {
                res = JSON.parse(res);
                if (res.code == 0 && res.data && res.data.length > 0) {
                    userList = res.data;
                }
            }
        });

        //权限

        !isAdmin && $("[showed]").hide();


        //日期
        laydate.render({
            elem: '#begin_date'
        });
        laydate.render({
            elem: '#end_date'
        });

        //权限表头
        var tableCel = [ //表头
            {field: 'date', title: '日期', templet: '#dateBar'},
            {field: 'user_name', title: '用户名'},
            {field: 'name', title: '名称'},
            {field: 'pv', title: '展现量'},
            {field: 'create_time', title: '创建时间', templet: '#dateBar'},
            {toolbar: '#toolBar', title: '操作'}
        ];
        !isAdmin && tableCel.pop();
        //表格
        table.render({
            elem: '#table',
            method: 'post',
            id: 'reload',
            height: '500',
            url: '/stats/list', //数据接口
            page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['prev', 'page', 'next', 'count'] //自定义分页布局
                //,curr: 5 //设定初始在第 5 页
                , limit: 50
                , groups: 5 //只显示 1 个连续页码
                , first: false //不显示首页
                , last: false //不显示尾页
            },
            cols: [tableCel],
            done: function (res) {
                // success里面不要写return, 在源码里面加的请求成功事件

                // 本页所有展现量和
                var sum = 0;
                $.each(res.data, function (index, item) {
                    sum += Number(item.pv);
                });
                $('#all-pv').text(sum);
                $('#all-total-pv').text(res.pvs);
            }
        });

        //监听工具条
        table.on('tool(table)', function (obj) {
            var data = obj.data;
            if (obj.event === 'del') {
                layer.confirm('真的要删除么？', function (index) {
                    $.ajax({
                        url: '/stats/del',
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
                type = 2;
                curRow = data;
                var html = $('#tpl-item').html();
                curLayer = layer.open({
                    type: 1,
                    shade: .5,
                    title: '修改', //不显示标题
                    area: ['320px', '375px'], //宽高
                    content: html,
                    cancel: function () {
                    },
                    success: function (layero, index) {
                        var html = '';
                        userList.forEach(function (item) {
                            if (item.id == data.user_id)
                                html += '<option selected value="' + item.id + '">' + item.username + '</option>';
                            else
                                html += '<option value="' + item.id + '">' + item.username + '</option>';
                        })
                        $('#user-list').html(html);
                        $('#name').val(curRow.name);
                        $('#pv').val(curRow.pv);
                        laydate.render({
                            elem: '#inputdate'
                            , value: fmtDate(curRow.date)
                        });
                        console.log(curRow);
                        initNameList(curRow.user_id,curRow.name_id);
                        form.on('select(ulist)', function (data) {
                            initNameList(data.value,curRow.name_id);
                        });
                        form.render(null, 'test1');
                    }
                });
            }
        });

        // 执行重载
        function reloadTable() {
            table.reload('reload', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }, where: {}
            })
        }

        function initNameList(uid,selid) {
            $.ajax({
                url: "/user/namelist",
                type: "post",
                data: {user_id: uid},
                dataType: "json",
                success: function (res) {
                    console.log(res);
                    var html = "";
                    if (res.data != undefined && res.data.length > 0) {
                        res.data.forEach(function (item) {
                            var selhtml = "";
                            if (item.id == selid) {
                                selhtml = " selected='selected' ";
                            }
                            html += '<option value="' + item.id + '" '+selhtml+'>' + item.name + '</option>'
                        });
                    }
                    $('#user-name-list').html(html);
                    form.render(null, 'test1');
                }
            })
        }

        // 打开添加层
        $('.add').click(function () {
            type = 1;
            var html = $('#tpl-item').html()
            curLayer = layer.open({
                type: 1,
                shade: .5,
                title: '添加',
                area: ['320px', '375px'],
                content: html,
                cancel: function () {
                },
                success: function (layero, index) {
                    var html = '';
                    var fvalue = 0;
                    userList.forEach(function (item) {
                        if (fvalue == 0) {
                            fvalue = item.id;
                        }
                        html += '<option value="' + item.id + '">' + item.username + '</option>'
                    });
                    $('#user-list').html(html);
                    laydate.render({
                        elem: '#inputdate'
                    });
                    form.on('select(ulist)', function (data) {
                        initNameList(data.value);
                    });
                    form.render(null, 'test1');
                    initNameList(fvalue);
                }
            });
        });

        // 添加提交
        form.on('submit(itemForm)', function (data) {
            var d = data.field;
            d.name_id = d.name;
            d.name  = $("#user-name-list").find("option:selected").text();
            var url = null;
            if (type == 1) {
                url = '/stats/add';
            } else if (type == 2) {
                url = '/stats/edit';
                d.id = curRow.id;
            }
            $.ajax({
                'url': url,
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

        // 查询 queryForm
        form.on('submit(queryForm)', function (data) {
            var d = data.field;
            table.reload('reload', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }, where: d
            })

            return false;
        });


    })

</script>

