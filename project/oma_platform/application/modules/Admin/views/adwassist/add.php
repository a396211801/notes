<div class="content">
    <div class="row">
        <div class="col-xs-10">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">辅助投放添加</h3>
                </div>
                <form class="form-horizontal layui-form" id="form">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">广告位：</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="adw_id">
                                    <?php foreach ($adwlist as $value): ?>
                                        <option value="<?php echo $value['id']; ?>"><?php echo $value['name'] . '--' . $value['id'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">展现形式：</label>
                            <div class="col-sm-10">
                                <input type="radio" lay-filter="isthird" name="show_type" value="1" title="跳转"
                                       checked="">
                                <input type="radio" lay-filter="isthird" name="show_type" value="2" title="后退">
                            </div>
                        </div>
                        <div class="form-group third-url">
                            <label for="" class="col-sm-2 control-label">跳转概率：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="" name="show_rate" placeholder="跳转概率">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="" class="col-sm-2 control-label">屏蔽区域：</label>
                            <div class="col-sm-10">
                                <button type="button" class="layui-btn  layui-btn-normal" id="chooseArea">选择区域</button>
                                <input type="hidden" name="shield_area" id="shield_area">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="" class="col-sm-2 control-label">屏蔽Ip：</label>
                            <div class="col-sm-10">
                                <textarea name="shield_ip" rows="8" style="width: 50%;"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <a href="/admin/adwassist/list" class="btn btn-default">返回</a>
                                <button type="button" class="btn btn-info" lay-submit lay-filter="submitBtn">确定</button>
                            </div>
                        </div>
                    </div>

                </form>

            </div>
        </div>
    </div>
</div>
<script type="text/html" id="area">
    <form class="layui-form">
        <ul id="areaUl">
            <li>
                <input type="checkbox" name="like[write]" value="" title="全选" dt="all"
                       lay-skin="primary">
            </li>
            {{# layui.each(d, function(index, item){ }}
            <li>
                <input type="checkbox" name="like[write]" value="{{ item.code }}" title="{{ item.name }}"
                       lay-skin="primary" dt="sub">
                <ul style="margin-left: 20px;">
                    <li>
                        {{# layui.each(item.children, function(index, sitem){ }}
                        <input type="checkbox" name="like[write]" value="{{ sitem.code }}" title="{{ sitem.name }}"
                               lay-skin="primary">
                        {{# }); }}
                    </li>
                </ul>
            </li>
            {{# }); }}
        </ul>
    </form>
</script>
<script>
    layui.use(['upload', 'form', "layer", "laytpl"], function () {
        var $ = layui.jquery, upload = layui.upload;
        var layer = layui.layer;
        var form = layui.form;
        var laytpl = layui.laytpl;
        var SList = [];

        $("#chooseArea").on("click", function () {
            $.ajax({
                url: "/admin/adwassist/getArea",
                dataType: "json",
                success: function (res) {
                    laytpl($("#area").html()).render(res.data, function (html) {
                        layer.open({
                            title: '选择区域',
                            area: ['600px', "500px"],
                            content: html,
                            yes: function (index, layero) {
                                var list = [];
                                console.log($("#areaUl :checked").each(function (index, dom) {
                                    list.push($(dom).val());
                                }));
                                SList = list;
                                layer.close(index); //如果设定了yes回调，需进行手工关闭
                                $("#shield_area").val(SList.join(";"));
                            }
                        });
                        form.render();
                        $("#areaUl :checkbox").each(function (index, dom) {
                            for (var i in SList) {
                                if (SList[i] == $(dom).val()) {
                                    $(dom).attr("checked", "checked");
                                    $(dom).next("div").addClass("layui-form-checked");
                                    break;
                                }
                            }
                        })
                        form.on('checkbox', function (data) {
                            var ck = data.elem.checked;
                            if ($(data.elem).attr("dt") == "all") {
                                data.othis.parent().find(":checkbox").each(function (index, dom) {
                                    if (ck) {
                                        $(dom).attr("checked", "checked");
                                        $(dom).next("div").addClass("layui-form-checked");
                                    } else {
                                        $(dom).removeAttr("checked");
                                        $(dom).next("div").removeClass("layui-form-checked");
                                    }
                                });
                                data.othis.parent().nextAll("li").find(":checkbox").each(function (index, dom) {
                                    if (ck) {
                                        $(dom).attr("checked", "checked");
                                        $(dom).next("div").addClass("layui-form-checked");
                                    } else {
                                        $(dom).removeAttr("checked");
                                        $(dom).next("div").removeClass("layui-form-checked");
                                    }
                                });
                            }
                            if ($(data.elem).attr("dt") == "sub") {
                                data.othis.parent().find(":checkbox").each(function (index, dom) {
                                    if (ck) {
                                        $(dom).attr("checked", "checked");
                                        $(dom).next("div").addClass("layui-form-checked");
                                    } else {
                                        $(dom).removeAttr("checked");
                                        $(dom).next("div").removeClass("layui-form-checked");
                                    }
                                });
                            }
                        })
                    });
                }
            })

        });
        form.on('submit(submitBtn)', function (data) {
            delete data.field.file;
            $.ajax({
                url: "/admin/Adwassist/add",
                type: "post",
                data: data.field,
                dataType: "json",
                success: function (res) {
                    if (res.ret == 0) {
                        layer.msg(res.msg, {icon: 1});
                        setTimeout(function () {
                            window.location.href = "/admin/Adwassist/list";
                        }, 1500)
                    } else {
                        layer.msg(res.msg, {icon: 2});
                    }
                }
            });
            return false;
        })

        form.on('radio(isthird)', function (data) {
            var val = data.value;
            if (val == 1) {
                $('.third-url').show();
            } else if (val == 2) {
                $('.third-url').hide();
            }
        });
    })
</script>