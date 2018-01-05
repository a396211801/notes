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
                            <label for="" class="col-sm-2 control-label">名称：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" value="<?php echo $info['name']; ?>" name="name"
                                       placeholder="名称：">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">行业:</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="industry_id">
                                    <option value="">选择行业</option>
                                    <option value="1">棋牌</option>
                                    <option value="2">金融</option>
                                    <option value="3">网赚</option>
                                    <option value="4">电商</option>
                                    <option value="5">其他</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">域名:</label>
                            <div class="col-sm-10">
                                <textarea rows="10" style="width: 100%" name="urls"><?php echo str_replace("|","\n",$info['urls']); ?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <a href="/admin/shield/list" class="btn btn-default">返回</a>
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

        var layer = layui.layer;
        var form = layui.form;
        var industryId = '<?php echo $info['industry_id'];?>';

        $("[name='industry_id']").val(industryId);

        form.render();
        form.on('submit(submitBtn)', function (data) {
            console.log(data.field);
            $.ajax({
                url: "/admin/shield/edit",
                type: "post",
                data: data.field,
                dataType: "json",
                success: function (res) {
                    if (res.ret == 0) {
                        layer.msg(res.msg, {icon: 1});
                        setTimeout(function () {
                            window.location.href = "/admin/shield/list";
                        }, 1500)
                    } else {
                        layer.msg(res.msg, {icon: 2});
                    }
                }
            });
            return false;
        })
    })
</script>
