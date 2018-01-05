<!--页面右侧-->
<div class="adSection section fl">
    <!--头部-->
    <div class="top clearfix W">
        <h2 class="fl">广告位管理</h2>
        <div class="fr">
            <form action="/advertposition/index" method="get">
                <span>ID <input type="text" name="id" value="<?php echo fn_get_val('id') ?>" placeholder="请输入ID" class="radius_5 H_30"/></span>
                <span>名称 <input type="text" name="name" value="<?php echo fn_get_val('name') ?>"  placeholder="请输入名称" class="radius_5 H_30"/></span>
            <span>状态
						<select name="status" class="radius_5 H_30">
							<option value="0">全部</option>
                            <?php
                            foreach($status as $k=>$v) {
                                ?>
                                <option value="<?php echo $k ?>"
                                    <?php if($k == fn_get_val('status')){ echo ' selected="selected"';}  ?>>
                                <?php echo $v ?>
                            </option>
                                <?php
                            }
                            ?>
						</select>
					</span>
                <input type="submit" class="colorWhite textCenter radius_5 Btnback H_30" value="搜索">
            </form>
            <a href="/advertposition/add" class="colorWhite pseudoClass radius_5 relative Btnback H_30">新建广告位</a>
        </div>
    </div>
    <!--表格-->
    <div class="cont tableCont fontSize_12 relative backWhite">
        <table border="0" cellspacing="0" cellpadding="0" class="W">
            <tr>
                <th>广告位ID</th>
                <th>广告位名称</th>
                <th>用户名</th>
                <th>广告位类型</th>
                <th>修改日期</th>
                <th>广告位状态</th>
                <th>审核时间</th>
                <th>操作</th>
            </tr>
            <?php
            if(isset($list['list']) && $list['list']) {
            foreach ($list['list'] as $k=>$v) {
            ?>
                <tr>
                    <td><?php echo $v['id']?></td>
                    <td><a href="javascript:;" class="colorLink"><?php echo $v['name']?></a></td>
                    <td><?php echo $v['user_name'];?></td>
                    <td>
                        <i><?php echo $v['type'];?></i>
                        <a href="javascript:;" class="colorLink popBox" data-info='<?php echo json_encode($v) ?>'>链接</a>
                    </td>
                    <td><?php echo $v['update_time'] ? date('Y-m-d H:i:s', $v['update_time']) : '暂无';?></td>
                    <td>
                        <?php
                        if($v['status'] == 0) {
                            echo '<span class="textCenter colorWhite backWait">待审核</span>';
                        } else if($v['status'] == 1) {
                            echo '<span class="textCenter colorWhite backPass">审核通过</span>';
                        } else {
                            echo '<span class="textCenter colorWhite backNoPass" title=' .$v['audit_fail_reason'] . '>审核未通过</span>';
                        }
                        ?>
                    </td>
                    <td><?php echo $v['audit_time'] ? date('Y-m-d H:i:s', $v['audit_time']) : '暂无'; ?></td>
                    <td>
                        <?php if($v['status'] == 0) { ?>
                            <a href="/advertposition/edit?id=<?php echo $v['id']; ?>" class="colorLink">修改</a>
                        <?php } else if($v['status'] == 2) { ?>
                            <a href="/advertposition/edit?id=<?php echo $v['id']; ?>" class="colorLink">重新提交</a>
                        <?php } ?>
                    </td>
                </tr>

            <?php }} else { echo '<tr>
                    <td colspan="8"><div style="text-align: center;">暂无数据</div></td>
                </tr>';}?>
        </table>
        <!--页码-->
        <div id="settlement-pagination" class="pagination"></div>
    </div>
</div>
<!--链接弹窗-->
<div class="alertBox fontSize_12 WHs" style="display: none;">
    <div class="alertBg absolute WHs"></div>
    <div class="alertCont absolute backWhite">
        <div>
            <span>广告位名称：<i id="infoName">infoName</i></span>
            <sapn>广告位ID：<i id="infoId">infoId</i></sapn>
            <span>广告类型：<i id="infoType">infoType</i></span>
        </div>
        <p class="radius_5" id="linkText">
            <?php echo $v['h5_url']; ?>
        </p>
        <p class="textCenter">
            <a href="javascript:;" class="colorWhite radius_5 Btn Btnback" id="copyLink">复制链接</a>
            <a href="javascript:;" onclick="$('.alertBox').hide();" class="radius_5 Btn Btnback1">关闭</a>
        </p>
    </div>
</div>

<script>
    var count = <?php echo $list['count']; ?>;
</script>
<script type="text/javascript" src="/js/app/advertPosition.js"></script>
