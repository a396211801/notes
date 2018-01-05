<div class="content">
    <div class="row">
        <div class="col-xs-6">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title"></h3>
                </div>
                <form class="form-horizontal layui-form" id="form1" onsubmit="return false;">
                    <div class="box-body">
                        <input type="hidden"  name="id" value="<?php echo isset($info['id'])?$info['id']:''; ?>">
<!--                        <div class="form-group">-->
<!--                            <label for="" class="col-sm-3 control-label">用户名</label>-->
<!--                            <div class="col-sm-9">-->
<!--                                <select lay-search="" name="user_id" class="form-control">-->
<!--                                    --><?php //if (isset($user)) {
//                                        foreach ($user as $k => $value) {
//                                            ?>
<!--                                            <option value="--><?php //echo $value['id']; ?><!--">--><?php //echo $value['user_name']; ?><!--</option>-->
<!--                                        --><?php //}
//                                    } else { ?>
<!--                                        <option value="">无用户</option>-->
<!--                                    --><?php //} ?>
<!--                                </select>-->
<!--                            </div>-->
<!--                        </div>-->

                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">广告名称</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="ad_name" placeholder="广告名称"
                                       value="<?php echo isset($info['ad_name']) ? $info['ad_name'] : ''; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">广告类型</label>
                            <div class="col-sm-9">
                                <select name="ad_type" id="" class="form-control">
                                    <option value="1">h5</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">日限额</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="put_day_limit" placeholder="日限额:0.00"
                                       value="<?php echo isset($info['put_day_limit']) ? $info['put_day_limit'] : ''; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">广告类型</label>
                            <div class="col-sm-9">
                                <select name="business_type" class="form-control">
                                    <option value="1" <?php echo isset($info['business_type']) && $info['business_type'] == 1 ? "selected" : ''; ?> >
                                        棋牌
                                    </option>
                                    <option value="2" <?php echo isset($info['business_type']) && $info['business_type'] == 2 ? "selected" : ''; ?> >
                                        金融
                                    </option>
                                    <option value="3" <?php echo isset($info['business_type']) && $info['business_type'] == 3 ? "selected" : ''; ?> >
                                        网赚
                                    </option>
                                    <option value="4" <?php echo isset($info['business_type']) && $info['business_type'] == 4 ? "selected" : ''; ?>>
                                        电商
                                    </option>
                                    <option value="5" <?php echo isset($info['business_type']) && $info['business_type'] == 5 ? "selected" : ''; ?>>
                                        其它
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">投放周期</label>
                            <div class="col-sm-9">
                                <input lay-ignore id="dateStart" readonly type="text" class="form-control "
                                       name="put_begin_date"
                                       value="<?php echo isset($info['put_begin_date'])?date('Y-m-d',$info['put_begin_date']):date('Y-m-d', strtotime('-7 days')); ?>"
                                       style="display: inline-block;width: 100px;">
                                -
                                <input lay-ignore id="dateEnd" readonly type="text" class="form-control "
                                       name="put_end_date" value="<?php echo isset($info['put_end_date'])?date('Y-m-d',$info['put_end_date']):date('Y-m-d', strtotime('-7 days')); ?>"
                                       style="display: inline-block;width: 100px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">上传广告图片</label>
                            <div class="col-sm-9">
                                <img class="layui-upload-img" id="picImg" width="100" height="50" src="<?php echo isset($info['put_pic'])?$info['put_pic']:''; ?>">
                                <button type="button" class="layui-btn  layui-btn-normal picBtn" id="picBtn">上传图片</button>
                                <input type="hidden" class="form-control" name="put_pic" id="pic" placeholder="" value="<?php echo isset($info['put_pic'])?$info['put_pic']:''; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">副图</label>
                            <div class="col-sm-9">
                                <img class="layui-upload-img" id="picImgThumb" width="100" height="50" src="<?php echo isset($info['put_pic_thumb'])?$info['put_pic_thumb']:''; ?>" >
                                <button type="button" class="layui-btn  layui-btn-normal picBtnThumb" id="picBtnThumb">上传副图</button>
                                <input type="hidden" class="form-control" name="put_pic_thumb" id="picThumb" placeholder="" value="<?php echo isset($info['put_pic_thumb'])?$info['put_pic_thumb']:''; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">投放时间点</label>
                            <div class="col-sm-9">
                                <!--                                <input type="text" class="form-control" name="put_time_point" placeholder="投放时间点">-->
                                <input type="hidden" id="demo" name="put_time_point" value="<?php echo  isset($info['put_time_point'])?$info['put_time_point']:''; ?>">
                                <button onclick="$('#periodTime').show()">选择时间点</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">点击地址</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="put_click_url" placeholder="点击地址"
                                       value="<?php echo isset($info['put_click_url'])?$info['put_click_url']:'';?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">有效期</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="adinfo_expire_date" placeholder="有效期:xxx~xxx"
                                       value="<?php echo isset($info['adinfo_expire_date'])?$info['adinfo_expire_date']:'';?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">出价</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="put_price" placeholder="出价:0.00" value="<?php echo isset($info['put_price'])?$info['put_price']:'';?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <a href="javascript:history.go(-1);" class="btn btn-default">返回</a>
                                <button type="submit" class="btn btn-info" lay-submit lay-filter="formCreateAccount">
                                    确定
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<input type="hidden"
       value="<?php echo  isset($info['put_time_point'])?$info['put_time_point']:'111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111|111111111111111111111111'; ?>"
       id="time_interval">
<link rel="stylesheet" href="/admin/css/prdTime.css">
<div class="modal fade" id="periodTime">
    <div class="modal-body" id="prdBody">
        <div id="prdTitle">
            <h2 class="c_r_title"><span class="c_r_text">选择时段</span></h2>

        </div>
        <div id="pbdCont">
            <div id="pdCntTop">
                <div id="checkTimeRadios">
                    <label class="oneRadio"><input id="nowSet" name="swhCheck" type="radio"
                                                   checked/><span>当前设置</span></label>
                    <label class="oneRadio"><input id="allDays" name="swhCheck" type="radio"/><span>整周全天</span></label>
                    <label class="oneRadio"><input id="workDays" name="swhCheck" type="radio"/><span>工作全天</span></label>
                    <label class="oneRadio"><input id="restDays" name="swhCheck"
                                                   type="radio"/><span>休息日全天</span></label>
                </div>
                <div id="checkTimeStatus">
                    <div class="oneStatus">
                        <div class="allow clr"></div>
                        <div class="text">投放时间段</div>
                    </div>
                    <div class="oneStatus">
                        <div class="stop clr"></div>
                        <div class="text">暂停时间段</div>
                    </div>
                    <div class="oneStatus">
                        <div class="not_allow clr"></div>
                        <div class="text">不可选</div>
                    </div>
                    <div class="oneStatus" style="display: none">
                        <div class="unable clr"></div>
                        <div class="text">不可选</div>
                    </div>
                </div>
            </div>
            <div id="pdCntTable">
                <div class="leftTb">
                    <div class="rq">日期</div>
                    <div class="wk">星期一</div>
                    <div class="wk">星期二</div>
                    <div class="wk">星期三</div>
                    <div class="wk">星期四</div>
                    <div class="wk">星期五</div>
                    <div class="wk">星期六</div>
                    <div class="wk">星期日</div>
                </div>
                <div class="rightTb">
                    <div class="top">
                        <div class="timeTxt">00:00-05:59</div>
                        <div class="timeTxt">06:00-11:59</div>
                        <div class="timeTxt">12:00-17:59</div>
                        <div class="timeTxt">18:00-23:59</div>
                    </div>
                    <div class="middle">
                        <script type="text/javascript">
                            var hourTxtHtmlStr = '';
                            for (var i = 0; i < 24; i++) {
                                hourTxtHtmlStr += ('<div class="hourTxt">' + i + '</div>');
                            }
                            document.write(hourTxtHtmlStr);
                            hourTxtHtmlStr = null;
                        </script>
                    </div>
                    <div class="bottom" id="rbwhs" onselectstart="return false">

                        <script type="text/javascript">
                            var weekAllHtmlStr = '';
                            for (var i = 0; i < 7; i++) {
                                weekAllHtmlStr += '<div class="week">';
                                for (var j = 0; j < 24; j++) {
                                    if (j < 8 || j >= 22) {
                                        weekAllHtmlStr += ('<div class="hour night" id="week' + i + 'hour' + j + '"></div>');
                                    } else {
                                        weekAllHtmlStr += ('<div class="hour playHour" id="week' + i + 'hour' + j + '"></div>');
                                    }
                                }
                                weekAllHtmlStr += '</div>';
                            }
                            document.write(weekAllHtmlStr);
                            weekAllHtmlStr = null;
                        </script>
                    </div>
                </div>
            </div>
            <div class="cue">拖曳鼠标可批量选择投放时间</div>
            <div class="refer">
                <button id="" class="gray_btn" onclick="$('#periodTime').hide()">取消</button>
                <button id="surwMyPrds" class="green_btn" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript" src="/admin/js/periodTime.js"></script>
<script type="text/javascript" src="/admin/js/app/report.js"></script>
<script>
    layui.use(['layer', 'form', 'upload'], function () {
        var layer = layui.layer
            , form = layui.form
            , upload = layui.upload;
        ;

        setMyPrdTime($('#time_interval').val(), true)

        $('#surwMyPrds').click(function () {
            $('#periodTime').hide()
            var t = getPagePrdDatas();
            $('#demo').val(t);
        })
        

        layui.use(['upload', 'form', "layer"], function () {
            var $ = layui.jquery, upload = layui.upload;
            var layer = layui.layer;
            upload.render({
                elem: '.picBtn'
                , url: '/admin/tpl/upload/'
                ,multiple: true
                , data:{type:1}
                , done: function (res) {
                    //如果上传失败
                    if (res.code > 0) {
                        return layer.msg(res.data.src);
                    } else {
                        $("#picImg").attr("src", res.data.src);
                        $("#pic").val(res.data.src);
                    }
                }
            });
            upload.render({
                elem: '.picBtnThumb',
                url: '/admin/tpl/upload/',
                multiple: true,
                data:{type:2},
                done: function (res) {
                    //如果上传失败
                    if (res.code > 0) {
                        return layer.msg(res.data.src);
                    } else {
                        $("#picImgThumb").attr("src", res.data.src);
                        $("#picThumb").val(res.data.src);
                    }
                }
            });
        })




        //监听提交
        form.on('submit(formCreateAccount)', function (data) {

            formdata = new FormData(document.getElementById("form1"));
            // formdata.append('name','fdipzone');  
            // formdata.append('gender','male');  

            console.log(formdata)
            // return

            $.ajax({
                url: '/admin/advert/advertH5Create',
                type: 'post',
//                data: formdata,
                data: formdata,
                processData: false,
                contentType: false,
                success: function (res) {
                    res = JSON.parse(res);
                    console.log(res);
                    if( res.ret == 1 ){
                        layer.msg(res.msg, function(){
                            window.location.href = '/admin/advert/advertH5List';
                        });
                    } else {
                        layer.msg(res.msg, function(){
                            //
                        });
                    }
                }
            })
            return false;
        });
    })
    
    //时间段
    $('#surwMyPrds').click(function () {
        $('#periodTime').hide()
        var t = getPagePrdDatas();
    })
</script>