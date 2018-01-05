<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <form class="form-inline">
                            <div class="form-group input-group-sm">
                                <!--                                <a href="/Admin/tpl/add"  class="btn btn-default btn-sm">新建模板</a>-->
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>模板id</th>
                            <th>模板名称</th>
                            <th>模板图片</th>
                            <th>模板标识符</th>
                            <th>模板权重</th>
                            <th>模板类型</th>
                            <th>模板状态</th>
                            <th>第三方链接</th>
                            <th>创建时间</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if (isset($list)): ?>
                            <?php foreach ($list as $value): ?>
                                <tr>
                                    <td><?php echo $value['id']; ?></td>
                                    <td><?php echo $value['name'] ?></td>
                                    <td>
                                        <img src="<?php echo $value['pic'] ?>" width="100" height="50"/>
                                    </td>
                                    <td><?php echo $value['uniqe_name'] ?></td>
                                    <td><?php echo $value['weight'] ?></td>
                                    <td><?php echo $value['type_name']; ?></td>
                                    <td><?php echo $value['status_name']; ?></td>
                                    <td style="word-break: break-all" width="150px"><?php echo $value['third_url']; ?></td>
                                    <td><?php echo date("Y-m-d H:i:s", $value['create_time']); ?></td>
                                    <td>
                                        <a href="/admin/tpl/edit?id=<?php echo $value['id']; ?>"
                                           class="layui-btn layui-btn-normal layui-btn-xs">编辑</a>
                                        <a href="javascript:void(0);" data-id="<?php echo $value['id']; ?>"
                                           class="layui-btn layui-btn-danger layui-btn-xs" data-event="del">删除</a>
                                    </td>
                                </tr>
                            <?php endforeach;endif; ?>
                        </tbody>
                    </table>
                </div>
                <div class="box-footer clearfix">
                    <div class="pull-right">
                        <ul class="pagination">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="totalpage" data-totalpage="<?php echo $count; ?>" style="display: none;"></div>
<script type="text/javascript">
    layui.use(["layer"], function () {
        var layer = layui.layer;
        $("[data-event='del']").on("click", function () {
            var id = $(this).attr("data-id");
            $.ajax({
                url: "/admin/tpl/del",
                type: "post",
                data: {tid: id},
                dataType: "json",
                success: function (res) {
                    if (res.ret == 0) {
                        layer.msg(res.msg, {icon: 1});
                        setTimeout(function () {
                            window.history.go(0);
                        }, 1500)
                    } else {
                        layer.msg(res.msg, {icon: 2});
                    }
                }
            })
        })
    })
</script>
<script type="application/javascript" src="/admin/js/app/common.js"></script>