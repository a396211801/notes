<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">修改后台用户</h3>
                </div>
                <div class="box-body">
                    <form class="form-horizontal layui-form" onsubmit="return false;">
                        <input type="hidden" name="id" value="<?php echo $data['id']; ?>"/>
                        <div class="layui-form-item">
                            <label  class="layui-form-label">用户名</label>
                            <div class="layui-input-inline">
                                <input type="text" name="user_name" value="<?php echo $data['user_name']; ?>" class="layui-input" placeholder="用户名">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label  class="layui-form-label">真实名称</label>
                            <div class="layui-input-inline">
                                <input type="text" name="real_name" value="<?php echo $data['real_name']; ?>" class="layui-input" placeholder="真实名称">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label  class="layui-form-label">密码</label>
                            <div class="layui-input-inline">
                                <input type="password" name="password" value="<?php echo $data['password']; ?>" class="layui-input" placeholder="密码">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label  class="layui-form-label">权限组</label>
                            <div class="layui-input-inline">
                                <select name="group_id" class="layui-input" lay-search="">
                                    <?php
                                    if(isset($role_group) && $role_group) {
                                        foreach ($role_group as $k=>$v) {
                                            ?>
                                            <option value="<?php echo $k; ?>" <?php if($data['group_id'] == $k) { echo ' selected="selected"'; }  ?>><?php echo $v['name'] ?></option>
                                            <?php
                                        }}
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button type="submit" class="layui-btn layui-btn-sm  layui-btn-normal" lay-submit lay-filter="formCreateAccount">确定</button>
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
    form.on('submit(formCreateAccount)', function(data){
        $.ajax({
            url: '/admin/admin/editAccount',
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