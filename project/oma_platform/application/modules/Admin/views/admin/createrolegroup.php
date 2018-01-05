<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">新建权限组</h3>
                </div>
                <div class="box-body">
                    <form class="layui-form" onsubmit="return false;">
                        <div class="layui-form-item">
                            <label class="layui-form-label">名称</label>
                            <div class="layui-input-inline">
                                <input type="text" name="name" class="layui-input" id="" placeholder="名称">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button type="submit" class="layui-btn layui-btn-sm  layui-btn-normal" lay-submit lay-filter="formCreateRoleGroup">确定</button>
                                <a href="javascript:history.go(-1);" class="layui-btn layui-btn-sm layui-btn-primary">返回</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
layui.use(['layer', 'form'],function() {
    var layer = layui.layer
        ,form = layui.form
        ;

    //监听提交
    form.on('submit(formCreateRoleGroup)', function(data){
        
        // 权限组
        $.ajax({
            url: '/admin/admin/createRoleGroup',
            type: 'post',
            data: data.field,
            success: function(res){
                res = JSON.parse(res);
                layer.msg(res.msg);

                if(res.ret == 1) {
                    setTimeout("window.location.href = '/admin/admin/accountList';",1000)
                }
            }
        })
        return false;
    });

})
</script>