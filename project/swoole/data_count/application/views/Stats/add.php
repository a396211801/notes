<div class="layui-body">
    <div style="padding: 15px;">
        <form class="layui-form layui-form-pane" lay-filter="test1" action="" style="padding: 10px;">
            <div class="layui-form-item">
                <label class="layui-form-label">名称</label>
                <div class="layui-input-block">
                    <input type="text" id="name" name="name" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">展现量</label>
                <div class="layui-input-block">
                    <input type="text" id="pv" name="pv" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">时间</label>
                <div class="layui-input-block">
                    <input type="text"  name="date" id="inputdate" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">搜索选择框</label>
                <div class="layui-input-block">
                    <select name="user_id" id="user-list" lay-verify="required" lay-search="">
                    </select>
                </div>

            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-primary" lay-submit lay-filter="itemForm">确定</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    layui.use(['laydate', 'form' , 'jquery'], function () {
        var laydate = layui.laydate,
            form = layui.form,
            $ = layui.jquery;
        
        var curLayer = null,//当前打开的弹出层
            userList = null,//用户列表数据
            type = 1,//1为新增，2为修改
            curRow = null;//点击修改时，保存被点击行的数据
        
        // 获取用户列表
        $.ajax({
            url: '/user/userlist',
            type: 'post',
            success: function(res){
                res = JSON.parse(res);
                if(res.code == 0){
                    userList = res.data;
                    var html = '';
                    userList.forEach(function(item){
                        html += '<option value="'+item.id+'">'+item.username+'</option>'
                    })
                    $('#user-list').html(html);
                    laydate.render({
                        elem: '#inputdate'
                    });
                    form.render(null, 'test1');
                }
            }
        })

        // 添加提交
        form.on('submit(itemForm)', function(data){
            var d = data.field;
            $.ajax({
                'url' : '/stats/add',
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
