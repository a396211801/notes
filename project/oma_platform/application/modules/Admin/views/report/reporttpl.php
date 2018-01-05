<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <form class="form-inline">
                            <div class="form-group input-group-sm">
                                <p class="form-control-static">日期范围：</p>
                                <input id="dateStart" readonly type="text" class="form-control dateControl" style="width: 84px;" name="start_date" value="<?php if(fn_get_val('start_date')){ echo fn_get_val('start_date');}else{ echo date('Y-m-d', strtotime('-7 days'));} ?>" >
                                <p class="form-control-static">-</p>
                                <input id="dateEnd" readonly type="text" class="form-control dateControl" style="width: 84px;" name="end_date" value="<?php if(fn_get_val('end_date')){ echo fn_get_val('end_date');}else{ echo date('Y-m-d',time());} ?>">
                                <select class="form-control" id="timeSlot">
                                    <option value="0">时间段</option>
                                    <option value="month">本月</option>
                                    <option value="lastweek">上周</option>
                                    <option value="quarter">本季度</option>
                                </select>
                                <input type="text" class="form-control" name="name" value="<?php echo fn_get_val('name')?>" placeholder="模板名称">
                                <button type="submit" class="btn btn-default btn-sm"><i class="fa fa-search"></i>搜索</button>
                                <button type="button" class="btn btn-default btn-sm update" data-table="report_tpl">更新数据</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>模板名称</th>
                            <th>模板类型</th>
                            <th>游戏模板UV</th>
                            <th>用户游戏点击平均值</th>
                            <th>开始游戏按钮点击</th>
                            <th>马上使用按钮点击</th>
                            <th>下方奖品列表点击</th>
                            <th>我的奖品按钮点击</th>
                            <th>结束页PV</th>
                            <th>1号位立即参与点击</th>
                            <th>2号位立即参与点击</th>
                            <th>规则按钮点击</th>
                            <th>详情页立即使用点击</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        if(isset($list['list']) && $list['list']) {
                            foreach ($list['list'] as $k=>$v) {
                                ?>
                                <tr>
                                    <td>
                                        <a href="/Admin/Report/reportTplDetail?tpl_id=<?php echo $v['tpl_id'];if(fn_get_val('start_date')){echo '&start_date=' . fn_get_val('start_date');};if(fn_get_val('end_date')){echo '&end_date=' . fn_get_val('end_date');}?>" class="colorLink">
                                        <?php echo $v['tpl_name'];?>
                                        </a>
                                    </td>
                                    <td><?php echo $v['tpl_type_name']?></td>
                                    <td><?php echo $v['uv']?></td>
                                    <td><?php echo $v['avg_click']?></td>
                                    <td><?php echo $v['o_ck_1']?></td>
                                    <td><?php echo $v['o_ck_2']?></td>
                                    <td><?php echo $v['o_ck_3']?></td>
                                    <td><?php echo $v['o_ck_4']?></td>
                                    <td><?php echo $v['o_pv_1']?></td>
                                    <td><?php echo $v['o_ck_6']?></td>
                                    <td><?php echo $v['o_ck_7']?></td>
                                    <td><?php echo $v['o_ck_8']?></td>
                                    <td><?php echo $v['o_ck_5']?></td>
                                </tr>
                            <?php }} else { echo '<tr>
                    <td colspan="13"><div style="text-align: center;">暂无数据</div></td>
                </tr>';}?>
                        </tbody>
                    </table>
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
<script type="text/javascript" src="/admin/js/app/report.js"></script>