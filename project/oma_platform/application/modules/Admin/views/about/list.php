<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <form class="form-inline" method="get" action="/Admin/about/list">
                            <div class="form-group input-group-sm">

                                <input type="text" class="form-control" name="about_name" placeholder="姓名"
                                       value="<?php echo fn_get_val('about_name', '') ?>">
                                <input type="text" class="form-control" name="company_name" placeholder="企业名称"
                                       value="<?php echo fn_get_val('company_name', '') ?>">
                                <select name="contact_status" class="form-control">
                                    <option value="">联系状态</option>
                                    <option value="1" <?php if (fn_get_val('contact_status', 0) == 1) {
                                        echo "selected";
                                    } ?> >未联系
                                    </option>
                                    <option value="2" <?php if (fn_get_val('contact_status', 0) == 2) {
                                        echo 'selected';
                                    } ?> >已联系
                                    </option>
                                </select>
                                <button type="submit" class="btn btn-default btn-sm"><i class="fa fa-search"></i>搜索
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <form action="" class="layui-form">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>id</th>
                                <th>名称</th>
                                <th>企业名称</th>
                                <th>预约联系电话</th>
                                <th>联系状态</th>
                                <th>预约申请时间</th>
                                <th>操作（状态修改）</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if (isset($list['list'])) {
                                foreach ($list['list'] as $i => $value) {
                                    if($value['contact_status']==1){
                                        $contact_status = '未联系';
                                    }else{
                                        $contact_status = '已联系';
                                    }
                                    ?>
                                    <tr>
                                        <td><?php echo $value['id']; ?></td>
                                        <td><?php echo $value['about_name']; ?></td>
                                        <td><?php echo $value['company_name']; ?></td>
                                        <td><?php echo $value['about_phone']; ?></td>
                                        <td>
                                            <span  class="layui-btn layui-btn-xs <?php if ($value['contact_status']==1){ echo ' layui-btn-warm'; } ?>" ><?php echo $contact_status; ?></span>
                                        </td>
                                        <td><?php echo date('Y-m-d H:i:s',$value['create_time']); ?>
                                            
                                        </td>
                                        <td>
                                            <?php if($value['contact_status']==1){?>
                                            <a href="javascript:void(0);" data-id="<?php echo $value['id']; ?>"
                                               class="contact_status layui-btn layui-btn-warm layui-btn-xs"
                                               title="未联系">未联系</a>
                                            <?php }else{?>
                                                <a href="javascript:void(0);"
                                                   class=" layui-btn  layui-btn-xs"
                                                   title="已联系">已联系</a>
                                            <?php }?>
                                        </td>
                                    </tr>
                                <?php }
                            } else { ?>
                                <tr>
                                    <td>暂无数据</td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </form>
                </div>

                <div class="box-footer clearfix">
                    <div class="pull-right">
                        <ul class="pagination"></ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="totalpage" data-totalpage="<?php echo $list['count']; ?>" style="display: none;"></div>
<script>
    $(function () {
        var count = <?php echo $list['count']; ?>;
        var curPage = urlArgs()['p'] || 1;

        $('.pagination').bootstrapPaginator({
            currentPage: curPage,
            totalPages: count,
            size: "small",
            bootstrapMajorVersion: 3,
            alignment: "right",
            numberOfPages: 5,
            itemTexts: function (type, page, current) {
                switch (type) {
                    case "first":
                        return "首页";
                    case "prev":
                        return "上一页";
                    case "next":
                        return "下一页";
                    case "last":
                        return "末页";
                    case "page":
                        return page;
                }
            },
            onPageClicked: function (event, originalEvent, type, page) {
                if (!!location.search) {
                    if (!!location.search.match(/([?|&]p=)\d{1,}/))
                        window.location.href = location.search.replace(/([?|&]p=)\d{1,}/, '$1' + page)
                    else
                        window.location.href = location.search + '&p=' + page
                    return false;
                }
                window.location.href = '?p=' + page;
            },
        });

        $(".contact_status").click(function () {
            var id = $(this).data('id');
            layer.confirm('确定已联系？', {
                btn: ['确定', '取消'] //按钮
            }, function () {
                url = '/admin/about/edit';
                if (!id) {
                    layer.msg('参数错误', {icon: 2});
                    return false;
                }
                $.ajax({
                    url: url,
                    type: 'post',
                    data: {
                        id: id, status: 1,
                    },
                    success: function (res) {
                        res = JSON.parse(res);
                        layer.msg(res.msg, {icon: 1});
                        setTimeout(function () {
                            location.reload()
                        }, 1500)
                    }
                })
            }, function () {
                layer.msg('已取消', {icon: 2});
            });
        })
    })
</script>