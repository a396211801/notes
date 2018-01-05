<?php 
    $data = $list['data'];
 ?>

<!--页面右侧-->
<div class="section fl">
    <!--头部-->
    <div class="top">
        <h2>广告位管理<i class="fontSize_14">-修改广告位</i></h2>
    </div>
    <!--内容部分-->
    <div class="editCont cont fontSize_12 backWhite">
        <form class="layui-form" action="">
            <!--基本信息-->
            <div>
                <h5 class="fontSize_14">基本信息</h5>
                <ul class="clearfix">
                    <li class="fl">
                        <span class="block fontSize_14">广告位名称</span>
                        <input type="text" name="name" lay-verify="required" placeholder="请输入广告位名称" value="<?php echo $data['name']; ?>"  class="radius_5 H_30"/>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">广告位类型</span>
                        <div>
                            <input lay-verify="type" <?php if($data['type'] == 1){echo "checked";} ?> lay-filter="type" value="1" type="radio" name="type" title="H5活动" />
                            <input lay-verify="type" <?php if($data['type'] == 2){echo "checked";} ?> lay-filter="type" value="2" type="radio" name="type" title="APP拉活"/>
                            <input lay-verify="type" <?php if($data['type'] == 3){echo "checked";} ?> lay-filter="type" value="3" type="radio" name="type" title="JS广告" />
                        </div>
                    </li>
                    <li class="fl" id="redioAdStyle" style="display: <?php if($data['type'] >= 3){echo "block";}else{echo "none";} ?>;">
                        <span class="block fontSize_14">JS广告样式</span>
                        <div>
                            <input type="radio" <?php if($data['js_type'] == 1){echo "checked";} ?> lay-filter="js_type" name="js_type" value="1" title="顶部浮窗">
                            <input type="radio" <?php if($data['js_type'] == 2){echo "checked";} ?> lay-filter="js_type" name="js_type" value="2" title="底部浮窗">
                            <input type="radio" <?php if($data['js_type'] == 3){echo "checked";} ?> lay-filter="js_type" name="js_type" value="3" title="左部小图标">
                            <input type="radio" <?php if($data['js_type'] == 4){echo "checked";} ?> lay-filter="js_type" name="js_type" value="4" title="右部小图标">
                            <input type="radio" <?php if($data['js_type'] == 5){echo "checked";} ?> lay-filter="js_type" name="js_type" value="5" title="信息流">
                            <input type="radio" <?php if($data['js_type'] == 6){echo "checked";} ?> lay-filter="js_type" name="js_type" value="6" title="插屏">
                        </div>
                    </li>
                </ul>
            </div>
            <!--媒体信息-->
            <div>
                <h5 class="fontSize_14">媒体信息</h5>
                <ul class="clearfix">
                    <li class="fl">
                        <span class="block fontSize_14">媒体信息</span>
                        <input type="text" name="media_name" value="<?php echo isset($data['media_name']) ? $data['media_name'] : ''; ?>" lay-verify="required"  placeholder="请输入媒体名称"  class="radius_5 H_30"/>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">媒体类型</span>
                        <div>
                            <input lay-verify="required" <?php if($data['media_type'] == 1){echo "checked";} ?> lay-filter="media_type" value="1"  type="radio" name="media_type" title="Android" />
                            <input lay-verify="required" <?php if($data['media_type'] == 2){echo "checked";} ?> lay-filter="media_type" value="2"  type="radio" name="media_type" title="IOS" />
                            <input lay-verify="required" <?php if($data['media_type'] == 3){echo "checked";} ?> lay-filter="media_type" value="3"  type="radio" name="media_type" title="H5" />
                        </div>
                    </li>
                    <li class="fl" id="pkg_name" style="display: <?php if($data['media_type'] <= 2){echo "block";}else{echo "none";} ?>;">
                        <span class="block fontSize_14">程序包名称</span>
                        <input type="text" lay-verify="pkg_name" value="<?php echo isset($data['pkg_name']) ? $data['pkg_name'] : ''; ?>" name="pkg_name" placeholder="请输入程序包名称"  class="radius_5 H_30"/>
                    </li>
                    <li class="fl" id="download_url" style="display: <?php if($data['media_type'] <= 2){echo "block";}else{echo "none";} ?>;">
                        <span class="block fontSize_14">下载地址</span>
                        <input type="text" lay-verify="download_url" value="<?php echo isset($data['download_url']) ? $data['download_url'] : ''; ?>" name="download_url" placeholder="请输入下载地址"  class="radius_5 H_30"/>
                    </li>
                    <li class="fl" id="web_url" style="display: <?php if($data['media_type'] == 3){echo "block";}else{echo "none";} ?>;">
                        <span class="block fontSize_14">网站链接</span>
                        <input type="text" lay-verify="web_url"  value="<?php echo isset($data['web_url']) ? $data['web_url'] : ''; ?>"  name="web_url" placeholder="请输入网站链接"  class="radius_5 H_30"/>
                    </li>
                </ul>
            </div>
            <!--按钮-->
            <button lay-submit lay-filter="formDemo" class="radius_5 Btn Btnback textCenter colorWhite">保存</button>
            <a href="#" onClick="javascript :history.back(-1);" class="radius_5 Btn Btnback1 textCenter">取消</a>
        </form>
    </div>
</div>

<script>
    // 基本信息
    var info =  <?php echo json_encode($list) ?>;
</script>

<script type="text/javascript" src="/js/app/advertPositionAdd.js"></script>