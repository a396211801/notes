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
                                <input type="text" class="form-control" name="name" value="<?php echo fn_get_val('name')?>" placeholder="ID/名称/用户名">
                                <input type="hidden" name="adw_id" value="<?php echo isset($adw_id) ? $adw_id : ''?>">
                                <button type="submit" class="btn btn-default btn-sm"><i class="fa fa-search"></i>&nbsp;搜索</button>
                                <button type="button" class="btn btn-default btn-sm update" data-table="report_advert_position_h5">更新数据</button>
                                <a href="javascript:history.go(-1);" class="btn btn-sm btn-default">返回</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover text-center">
                        <thead>
                        <tr>
                            <th>日期</th>
                            <th>广告位id</th>
                            <th>广告位名称</th>
                            <th>用户名称</th>
                            <th>广告形式</th>
                            <th>广告曝光量</th>
                            <th>广告点击量</th>
                            <th>广告点击率</th>
                            <th>活动曝光量</th>
                            <th>活动点击量</th>
                            <th>活动点击率</th>
                            <th>活动广告点击量</th>
                            <th>活动广告点击率</th>
                            <th>活动广告点击均价</th>
                            <th>实际收益</th>
                            <th>用户收益</th>
                            <th>利润</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        if(isset($list['list']) && $list['list']) {
                        foreach ($list['list'] as $k=>$v) {
                        ?>
                        <tr>
                            <td><?php echo $v['date'] ? date('Y-m-d', $v['date']) : '-'?></td>
                            <td><?php echo $v['adw_id']?></td>
                            <td><?php echo $v['adw_name']?></td>
                            <td><?php echo $v['user_name']?></td>
                            <td><?php echo $v['type']?></td>
                            <td><?php echo $v['ad_pv']?></td>
                            <td><?php echo $v['ad_click']?></td>
                            <td><?php echo $v['click_rate']?></td>
                            <td><?php echo $v['tpl_pv']?></td>
                            <td><?php echo $v['tpl_click']?></td>
                            <td><?php echo $v['tpl_click_rate']?></td>
                            <td><?php echo $v['tpl_ads_click']?></td>
                            <td><?php echo $v['tpl_ads_click_rate']?></td>
                            <td><?php echo $v['tpl_ads_price']?></td>
                            <td><?php echo $v['total_money']?></td>
                            <td><?php echo $v['user_money']?></td>
                            <td><?php echo $v['profit']?></td>
                        </tr>
                        <?php }} else { echo '<tr>
                    <td colspan="14"><div style="text-align: center;">暂无数据</div></td>
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
    <div class="callout">
    <h4>共计</h4>
    <div>
        广告曝光量
        <span class="text-danger"><?php echo isset($list['total']['sum_ad_pv']) ? $list['total']['sum_ad_pv'] : 0?></span>
        广告点击量
        <span class="text-danger"><?php echo isset($list['total']['sum_ad_click']) ? $list['total']['sum_ad_click'] : 0?></span>
        活动曝光量
        <span class="text-danger"><?php echo isset($list['total']['sum_tpl_pv']) ? $list['total']['sum_tpl_pv'] : 0?></span>
        活动点击量
        <span class="text-danger"><?php echo isset($list['total']['sum_tpl_click']) ? $list['total']['sum_tpl_click'] : 0?></span>
        实际收益
        <span class="text-danger"><?php echo isset($list['total']['sum_total_money']) ? $list['total']['sum_total_money'] : 0?></span>
        用户收益
        <span class="text-danger"><?php echo isset($list['total']['sum_user_money']) ? $list['total']['sum_user_money'] : 0?></span>
        利润
        <span class="text-danger"><?php echo isset($list['total']['sum_profit']) ? $list['total']['sum_profit'] : 0?></span>
    </div>
</div>

</div>
<div id="totalpage" data-totalpage="<?php echo $list['count']; ?>" style="display: none;"></div>
<script type="text/javascript" src="/admin/js/app/report.js"></script>