<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title"><?php if(isset($info)){ echo '编辑网站主';}else{ echo '新建网站主';} ?></h3>
                </div>
                <div class="box-body">
                    <form class="layui-form" onsubmit="return false;">
                        <input type="hidden" name="id" value="<?php echo isset($info['id']) ? $info['id'] : ''; ?>">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-inline">
                                <input type="text" class="layui-input" name="user_name" placeholder="用户名" value="<?php echo isset($info['user_name']) ? $info['user_name'] : ''; ?>">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-inline">
                                <input type="password" class="layui-input" name="password" placeholder="密码">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">手机号码</label>
                            <div class="layui-input-inline">
                                <input type="text" class="layui-input" name="phone" placeholder="手机号码" value="<?php echo isset($info['phone']) ? $info['phone'] : ''; ?>">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">邮箱</label>
                            <div class="layui-input-inline">
                                <input type="email" class="layui-input" name="email" placeholder="邮箱" value="<?php echo isset($info['email']) ? $info['email'] : ''; ?>">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">QQ</label>
                            <div class="layui-input-inline">
                                <input type="text" class="layui-input" name="qq" placeholder="QQ" value="<?php echo isset($info['qq']) ? $info['qq'] : ''; ?>">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button type="button" class="layui-btn layui-btn-sm  layui-btn-normal" lay-submit lay-filter="formCreateAccount">确定</button>
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
    layui.use(['layer', 'form'], function () {
        var layer = layui.layer
            , form = layui.form
            ;
        //监听提交
        form.on('submit(formCreateAccount)', function (data) {
            if(!data.field.user_name){
                layer.msg('请输入用户名！')
                return false;
            }
            if(!data.field.password){
                layer.msg('请输入密码！')
                return false;
            }
            if(!data.field.phone){
                layer.msg('请输入手机号码！')
                return false;
            }
            $.ajax({
                url: '/admin/user/create',
                type: 'post',
                data: data.field,
                success: function (res) {
                    res = JSON.parse(res);
                    if( res.ret == 1 ){
                        layer.msg(res.msg, function(){
                            window.location.href = '/admin/user/list';
                        });
                    } else {
                        layer.msg(res.msg, function(){
                            //
                        });
                    }
                }
            })
            return false;
        });

    })
</script>