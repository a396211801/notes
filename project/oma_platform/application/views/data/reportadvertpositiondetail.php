<div class="dataAd_section section fl">
    <!--头部-->
    <div class="top clearfix W">
        <h2 class="fl">数据报表<i class="fontSize_14">-<?php echo $advert_position_name; ?></i></h2>
        <div class="fr">
            <form action="/data/reportAdvertPositionDetail" method="get">
                <em>日期</em>
                <input type="hidden" name="adw_id" value="<?php echo fn_get_val('adw_id') ?>"/>
                <span class="relative pseudoClass">
                    <input type="text" id="start_date" name="start_date" value="<?php echo $start_date; ?>"  class="radius_5 H_30"/>
                </span>
                <i>-</i>
                <span class="relative pseudoClass">
                    <input type="text" id="end_date" name="end_date" value="<?php echo $end_date; ?>" class="radius_5 H_30"/>
                </span>
                <span class="btns textCenter fontSize_12 radius_5 backWhite H_30">
                    <a href="?adw_id=<?php echo fn_get_val('adw_id'); ?>&start_date=<?php echo $date_array['last_week']['start_date']; ?>&end_date=<?php echo $date_array['last_week']['end_date']; ?>" class="H_30">上周</a>
                    <a href="?adw_id=<?php echo fn_get_val('adw_id'); ?>&start_date=<?php echo $date_array['seven_day_ago']['start_date']; ?>&end_date=<?php echo $date_array['seven_day_ago']['end_date']; ?>" class="H_30">前七天</a>
                    <a href="?adw_id=<?php echo fn_get_val('adw_id'); ?>&start_date=<?php echo $date_array['now_month']['start_date']; ?>&end_date=<?php echo $date_array['now_month']['end_date']; ?>" class="H_30">本月</a>
                    <a href="?adw_id=<?php echo fn_get_val('adw_id'); ?>&start_date=<?php echo $date_array['prev_month']['start_date']; ?>&end_date=<?php echo $date_array['prev_month']['end_date']; ?>" class="H_30">上月</a>
                </span>
                <input type="submit" class="colorWhite textCenter radius_5 Btnback H_30" value="搜索">
            </form>
        </div>
    </div>
    <!--表格-->
    <div class="cont tableCont fontSize_12 relative backWhite">
        <table border="0" cellspacing="0" cellpadding="0" class="W">
            <tr>
                <th>日期</th>
                <th>广告曝光量</th>
                <th>广告点击量</th>
                <th>广告点击率</th>
                <th>活动曝光量</th>
                <th>活动点击量</th>
                <th>点击均价</th>
<!--                <th>激活价</th>-->
                <th>预期日收益</th>
            </tr>

            <?php
            if(isset($list) && $list) {
                foreach ($list as $k=>$v) {
                    ?>
                    <tr>
                        <td><?php echo date("Y-m-d",$v['date']) ?></td>
                        <td><?php echo $v['tpl_ads_ip']; ?></td>
                        <td><?php echo $v['tpl_ads_uv']; ?></td>
                        <td><?php echo $v['click_rate'] ?></td>
                        <td><?php echo $v['tpl_ads_pv']; ?></td>
                        <td><?php echo $v['tpl_ads_click']; ?></td>
                        <td><?php echo $v['tpl_ads_price']; ?></td>
<!--                        <td></td>-->
                        <td><?php echo $v['estimate_money_day']; ?></td>
                    </tr>
                    <?php
                }}else{
            ?>
                <tr>
                    <td colspan="8"><div style="text-align: center;">暂无数据</div></td>
                </tr>
            <?php
                }
            ?>

        </table>
        <!--页码-->
        <div id="settlement-pagination" class="pagination"></div>

    </div>
</div>
<script>
    var count = <?php echo $count; ?>;
    var yesterday = '<?php echo $yesterday; ?>';
</script>
<script type="text/javascript" src="/js/app/dataAdvert.js"></script>