<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <form class="form-inline">
                            <div class="form-group input-group-sm">
                                <input type="text" name="name" class="form-control" placeholder="ID/名称/用户名" value="<?php echo fn_get_val('name')?>">
                                <select class="form-control" name="type">
                                    <option value="0">广告位规格</option>
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
                                 <select class="form-control" name="status">
                                     <option value="0">审核状态</option>
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
                                <button type="submit" class="btn btn-default btn-sm"><i class="fa fa-search"></i> 搜索</button>
                                 <a href="/Admin/AdvertPosition/add"  class="btn btn-default btn-sm">新建广告位</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <form action="" class="layui-form">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>广告位id</th>
                                <th>广告位名称</th>
                                <th>用户名</th>
                                <th>广告位规格</th>
                                <th>修改日期</th>
                                <th>广告位状态</th>
                                <th>审核时间</th>
                                <!-- <th>调用三方开关</th> -->
                                <th>调用三方概率</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                        if(isset($list['list']) && $list['list']) {
                        foreach ($list['list'] as $k=>$v) {
                        ?>
                            <tr>
                                <td><?php echo $v['id']?></td>
                                <td>
                                    <?php echo $v['name']?>
                                    
                                    <?php if( $v['shield_id'] ){ ?>
                                        <span class="pb" data-id="<?php echo $v['id']?>" data-info='<?php echo json_encode($v['shield_info']);?>' style="cursor: pointer;">
                                            <i class="fa fa-ban"></i>
                                        </span>
                                    <?php  } ?>

                                </td>
                                <td><?php echo $v['user_name'];?></td>
                                <td>
                                    <i><?php echo $v['type'];?></i>
                                    <a href="javascript:;" class="colorLink popBox" data-info='<?php echo json_encode($v) ?>'>链接</a>
                                </td>
                                <td><?php echo $v['update_time'] ? date('Y-m-d H:i:s', $v['update_time']) : '暂无';?></td>
                                <td>
                                    <?php
                                    if($v['status'] == 0) {
                                        echo '<span class="layui-btn layui-btn-warm layui-btn-xs">待审核</span>';
                                    } else if($v['status'] == 1) {
                                        echo '<span class="layui-btn layui-btn-xs">审核通过</span>';
                                    } else {
                                        echo '<span class="layui-btn layui-btn-danger layui-btn-xs" title=' .$v['audit_fail_reason'] . '>审核未通过</span>';
                                    }
                                    ?>
                                </td>
                                <td><?php echo $v['audit_time'] ? date('Y-m-d H:i:s', $v['audit_time']) : '暂无'; ?></td>
                                <!-- <td>
                                    <div>
                                        <input data-id="<?php echo $v['id']?>" type="checkbox"  lay-skin="switch" lay-text="开|关" lay-filter="switchSanfang" >
                                    </div>
                                </td> -->
                                <td>
                                    <div class="third_rate<?php echo $v['id']?>">
                                        <?php echo $v['third_rate'] ? $v['third_rate'] . '%' : '0.00%';?>
                                    </div>
                                </td>
                                <td>
                                    <a href="/Admin/advertposition/edit?id=<?php echo $v['id']; ?>" class="layui-btn layui-btn-normal layui-btn-xs colorLink">修改</a>
                                    <?php if($v['status'] == 0 || $v['status'] == 2) { ?>
                                        <a href="javascript:;" class="layui-btn layui-btn-normal layui-btn-xs examine" data-id="<?php echo $v['id']?>">审核</a>
                                    <?php } else {?>
                                        <a href="javascript:;" class="layui-btn layui-btn-normal layui-btn-xs third third<?php echo $v['id']?>" data-id="<?php echo $v['id']?>" data-third_rate="<?php echo $v['third_rate']?>" data-third_tpl_url="<?php echo $v['third_tpl_url']?>">三方</a>
                                    <?php } ?>
                                    <a href="javascript:;" class=" layui-btn layui-btn-normal layui-btn-xs setAdvertPositionShield" data-id="<?php echo $v['id']?>">屏蔽</a>
                                    <?php if($v['init_type'] == 3) { ?>
                                        <a href="javascript:;" class="layui-btn layui-btn-normal layui-btn-xs upload-pic" data-info='<?php echo json_encode($v); ?>'>上传图片</a>
                                    <?php }?>
                                    <a href="javascript:;" class="layui-btn layui-btn-danger layui-btn-xs del" data-id="<?php echo $v['id']?>">删除</a>
                                </td>
                            </tr>
                        <?php }} else { echo '<tr>
                    <td colspan="9"><div style="text-align: center;">暂无数据</div></td>
                </tr>';}?>
                        </tbody>
                    </table>
                    </form>
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

<div id="tpl-shield" style="display: none;">
    <form>
        <div class="box">
            <div class="box-body">
                <select  name="" id="shield" class="form-control" >
                <?php
                if(isset($shield_info)) {
                foreach ($shield_info as $k=>$v) {
                ?>
                    <option value="<?php echo $v['id']; ?>"><?php echo $v['name']; ?></option>
                <?php }}?>
                </select>
            </div>
        </div>
        <div class="form-group text-center">
            <button type="button" class="sureShield btn btn-default">确定</button>
        </div>
    </form>
</div>

<script id="tpl-pop" type="text/html">
    <div class="panel panel-default" style="margin-bottom: 0;">
        <div class="panel-body">
        <div class="row">
            <div class="col-xs-12"><p>广告位名称：{{ d.name }}</p></div>
            <div class="col-xs-12"><p>广告位ID：{{ d.id }}</p></div>
            <div class="col-xs-12"><p>广告类型：{{ d.type }}</p></div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <textarea class="form-control" id="linkText" rows="5">{{ d.h5_url }}</textarea>
            </div>
        </div>
        </div>
        <div class="panel-footer">
        <div class="text-center">
            <button type="button" class="btn btn-default btn-sm copyLink">复制</button>
            <button type="button" class="btn btn-default btn-sm closePop">取消</button>
        </div>
        </div>
    </div>
</script>
<script id="tpl-pb" type="text/html">
    <div class="panel panel-default" style="margin-bottom: 0;border: none;box-shadow: none;">
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-12">
                    <form class="layui-form">
                        <div class="form-group">
                            <label for="">屏蔽包名</label>
                            <input name="name" readonly type="text" class="form-control" value="{{d.name}}">
                            <input name="id" type="hidden" value="{{d.id}}">
                        </div>
                        <div class="form-group">
                            <label for="">屏蔽包类型</label>
                            
    
                            <select lay-ignore disabled name="industry_id" value="{{d.industry_id}}"  class="form-control">
                                <?php
                                if(isset($industry)) {
                                foreach ($industry as $k=>$v) {
                                ?>
                                    
                                    {{# if(d.industry_id == <?php echo $k; ?>){ }} 
                                        <option selected value="<?php echo $k; ?>"><?php echo $v; ?></option>
                                    {{# } else { }} 
                                        <option value="<?php echo $k; ?>"><?php echo $v; ?></option>
                                    {{# }  }} 
                                    
                                <?php }}?>
                            </select>

                        </div> 
                        <div class="form-group">
                            <label for="">屏蔽包URL</label>
                            <textarea name="urls" readonly type="text" rows="4" class="form-control">{{d.urls}}</textarea>
                        </div>
                        <div class="text-center">
                            <button type="button" class="btn btn-default btn-sm modify">修改</button>
                            <button type="button" class="btn btn-default btn-sm" lay-submit lay-filter="formSubmit" style="display: none;">保存</button>
                            <button type="button" class="btn btn-default btn-sm canal">取消屏蔽</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</script>
<script id="tpl-sanfang" type="text/html">
    <div class="panel panel-default no">
        <div class="panel-body">
            <form class="form-horizontal layui-form">
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">三方概率</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="third_rate" value="{{third_rate}}"  lay-verify="third_rate"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">三方链接</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="third_tpl_url" lay-verify="third_tpl_url" value="{{third_tpl_url}}" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button type="submit" class="btn btn-default" lay-submit="" lay-filter="formSanfang">保存</button>
                        <!-- <button type="button" class="btn btn-default closeSanfang">取消</button> -->
                        <button type="button" class="btn btn-default canalSanfang">取消三方调用</button>
                    </div>
                </div>
            </form>
            
        </div>
    </div>
</script>
<div id="totalpage" data-totalpage="<?php echo $list['count']; ?>" style="display: none;"></div>


<script id="tpl-upload-pic" type="text/html">
<div style="padding: 10px;">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">广告位ID</label>
            <div class="layui-input-block">
                <input type="text" name="id" class="layui-input" readonly="" value="{{d.id}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">广告位名称</label>
            <div class="layui-input-block">
                <input type="text" class="layui-input" readonly="" value="{{d.name}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" class="layui-input" readonly="" value="{{d.user_name}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">广告位类型</label>
            <div class="layui-input-block">
                <input type="text" class="layui-input" readonly="" value="{{d.type}}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选择尺寸</label>
            <div class="layui-input-block">
                {{# if(d.js_type == 1 || d.js_type == 2){ }}
                    <input type="radio" name="pic_size" value="640*200" title="640*200" checked>
                    <input type="radio" name="pic_size" value="640*150" title="640*150">
                    <input type="radio" name="pic_size" value="640*100" title="640*100">
                {{# } else if(d.js_type == 3 || d.js_type == 4){ }}
                    <input type="radio" name="pic_size" value="160*160" title="160*160" checked>
                {{# } else if(d.js_type == 6){ }}
                    <input type="radio" name="pic_size" value="300*230" title="300*230" checked>
                {{# } else if(d.js_type == 5){ }}
                    <input type="radio" name="pic_size" value="640*200" title="640*200" checked>
                    <input type="radio" name="pic_size" value="640*150" title="640*150">
                    <input type="radio" name="pic_size" value="640*100" title="640*100">
                {{# } else { }}

                {{# } }}
            </div>
        </div>
        <div>
            <input type="hidden" name="pic" id="pic">
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">上传图片</label>
            <div class="layui-input-block" style="position: relative;">
                <button type="button" class="layui-btn layui-btn-sm choose-pic">选择图片</button>
                <img src="" id="preview-pic" style="position: absolute;top: 0;right: 0;    max-width: 200px;max-height: 180px;display: none;">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="button" class="layui-btn layui-btn-sm layui-btn-normal" lay-submit="" lay-filter="formUploadPic">保 存</button>
            </div>
        </div>
    </form>
</div>  
</script>

<input type="file" name="file" id="onlyUpload" hidden="" style="display: none;">

<script type="text/javascript" src="/admin/js/app/advertposition.js"></script>