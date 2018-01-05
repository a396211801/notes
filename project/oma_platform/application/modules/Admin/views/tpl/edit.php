<div class="content">
    <div class="row">
        <div class="col-xs-10">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">活动模板修改</h3>
                </div>
                <form class="form-horizontal layui-form" id="form">
                    <input type="hidden" name="id" value="<?php echo $info['id']; ?>">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">活动名称：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" value="<?php echo $info['name']; ?>" name="name"
                                       placeholder="活动名称：">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">活动模板图片：</label>
                            <div class="col-sm-10">
                                <img class="layui-upload-img" id="picImg" width="100" height="50"
                                     src="<?php echo $info['pic']; ?>">
                                <button type="button" class="layui-btn  layui-btn-normal" id="picBtn">上传图片</button>
                                <input type="hidden" class="form-control" name="pic" id="pic"
                                       value="<?php echo $info['pic']; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">是否三方链接：</label>
                            <div class="col-sm-10">
                                <input type="radio" lay-filter="isthird" name="is_third" value="1" title="是">
                                <input type="radio" lay-filter="isthird" name="is_third" value="0" title="否" >
                            </div>
                        </div>
                        <div class="form-group third-url" style="display: none;">
                            <label for="" class="col-sm-2 control-label">三方链接：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="" name="third_url" placeholder="三方链接" value="<?php  echo $info['third_url']; ?>">
                            </div>
                        </div>
                        <div class="form-group third-url" style="display: none;">
                            <label for="" class="col-sm-2 control-label">活动模板标识：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="" name="uniqe_name1" placeholder="活动模板标识" value="<?php echo $info['is_third'] ? $info['uniqe_name'] : ""; ?>">
                            </div>
                        </div>
                        <div class="form-group select-mark">
                            <label for="" class="col-sm-2 control-label">活动模板标识:</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="uniqe_name2" >
                                    <option value="egg1001">打金蛋1(egg1001)</option>
                                    <option value="pan1001">转盘1(pan1001)</option>
                                    <option value="pan1002">转盘2(pan1002)</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">活动权重:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="" name="weight" placeholder="活动权重"
                                       value="<?php echo $info['weight']; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">活动状态:</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="status">
                                    <option value="0">正常</option>
                                    <option value="1">下架</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">活动类型:</label>
                            <div class="col-sm-10">
                                <div class="checkbox">
                                    <select class="form-control" name="type_id">
                                        <option value="1">砸金蛋</option>
                                        <option value="2">转盘</option>
                                        <option value="3">娃娃机</option>
                                        <option value="4">刷红包</option>
                                        <option value="5">捞奖品</option>
                                        <option value="6">转盘</option>
                                        <option value="7">打金蛋</option>
                                        <option value="8">筛子</option>
                                        <option value="9">砸鸭子</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <a href="/admin/tpl/list" class="btn btn-default">返回</a>
                                <button type="button" class="btn btn-info" lay-submit lay-filter="submitBtn">确定</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<script>
    layui.use(['upload', 'form', "layer"], function () {
        var upload = layui.upload;
        var layer = layui.layer;
        var form = layui.form;
        var uniqeName = '<?php echo $info['uniqe_name'];?>';
        var typeId = '<?php echo $info['type_id'];?>';
        var status = '<?php echo $info['status'];?>';
        var isThird = '<?php echo $info['is_third'] ?>';

        $("[name='uniqe_name1']").val(uniqeName);
        $("[name='uniqe_name2']").val(uniqeName);
        $("[name='type_id']").val(typeId);
        $("[name='status']").val(status);
        $("[name='is_third'][value='"+isThird+"']").attr("checked","checked");
        if (isThird == 1) {
            $('.third-url').show();
            $('.select-mark').hide();
        }
        form.render();
        var uploadInst = upload.render({
            elem: '#picBtn'
            , url: '/admin/tpl/upload/'
            , done: function (res) {
                //如果上传失败
                if (res.code > 0) {
                    return layer.msg('上传失败');
                } else {
                    $("#picImg").attr("src", res.data.src);
                    $("#pic").val(res.data.src);
                }
                //上传成功
            }
        });
        form.on('submit(submitBtn)', function (data) {
            console.log(data.field);
            $.ajax({
                url: "/admin/tpl/edit",
                type: "post",
                data: data.field,
                dataType: "json",
                success: function (res) {
                    if (res.ret == 0) {
                        layer.msg(res.msg, {icon: 1});
                        setTimeout(function () {
                            window.location.href = "/admin/tpl/list";
                        }, 1500)
                    } else {
                        layer.msg(res.msg, {icon: 2});
                    }
                }
            });
            return false;
        });
        // 三方url输入
        form.on('radio(isthird)', function(data){
            var val = data.value;
            if( val == 1){
                $('.third-url').show();
                $('.select-mark').hide();
            } else if( val == 0){
                $('.third-url').hide();
                $('.select-mark').show();
            }
        });
    })
</script>
