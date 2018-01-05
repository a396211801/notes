<div class="section fl">
    <!--头部-->
    <div class="top clearfix W">
        <h2 class="fl">数据报表</h2>
        <div class="fr">
            <form action="/data/reportAdvertPosition" method="get">
                <span>ID <input type="text" name="adw_id" value="<?php echo fn_get_val('adw_id') ?>" placeholder="请输入ID" class="radius_5 H_30"/></span>
                <span>名称 <input type="text" name="name" value="<?php echo fn_get_val('name') ?>"  placeholder="请输入名称" class="radius_5 H_30"/></span>
                <span>投放类型
                    <select class="radius_5 H_30" name="type">
                        <option value="">全部</option>
                        <?php
                            foreach($base_info['advert']['type'] as $k=>$v) {
                        ?>
                            <option value="<?php echo $k ?>"
                                <?php if($k == fn_get_val('type')){ echo ' selected="selected"';}  ?>>
                                <?php echo $v ?>
                            </option>
                        <?php
                            }
                        ?>
                    </select>
                </span>
                <input type="submit" class="colorWhite textCenter radius_5 Btnback H_30" value="搜索">
            </form>
        </div>
    </div>
    <!--表格-->
    <div class="cont tableCont fontSize_12 relative backWhite">
        <table border="0" cellspacing="0" cellpadding="0" class="W">
            <tr>
                <th>广告位ID</th>
                <th>广告位名称</th>
                <th>投放类型</th>
                <th>曝光率</th>
                <th>预期收益</th>
            </tr>

            <?php
            if(isset($list) && $list) {
                foreach ($list as $k=>$v) {
                    ?>
                    <tr>
                        <td><?php echo $v['adw_id'] ?></td>
                        <td>
<!--                            <a href="/data/reportAdvertPositionDetail?adw_id=--><?php //echo $v['adw_id'] ?><!--" class="colorLink">-->
                                <?php echo $v['advert_position_name']; ?>
<!--                            </a>-->
                        </td>
                        <td><?php echo $v['type_name'] ?></td>
                        <td><?php echo $v['pv']; ?></td>
                        <td><?php echo $v['user_money']; ?></td>
                    </tr>
                    <?php
            }}else{
            ?>
                <tr>
                    <td colspan="5"><div style="text-align: center;">暂无数据</div></td>
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
</script>
<script type="text/javascript" src="/js/app/dataAdvertPosition.js"></script>
