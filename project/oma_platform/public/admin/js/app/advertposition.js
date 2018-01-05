/**
 * advertposition.js
 */

layui.use(['laytpl', 'form', 'upload'], function(){
    var laytpl = layui.laytpl
        , form = layui.form
        , upload = layui.upload
        ;

	var curPage = urlArgs()['p'] || 1
		, totalPage = $('#totalpage').data('totalpage') || 1
    	;
	// 这里是总数，要换成页数

    $('.pagination').bootstrapPaginator({
        currentPage: curPage,
        totalPages: totalPage,
        size:"small",
        bootstrapMajorVersion: 3,
        alignment:"right",
        numberOfPages:5,
        itemTexts: function (type, page, current) {
            switch (type) {
                case "first": return "首页";
                case "prev": return "上一页";
                case "next": return "下一页";
                case "last": return "末页";
                case "page": return page;
            }
        },
        onPageClicked: function (event, originalEvent, type, page) { //异步换页
            // 有条件
            if(!!location.search){
            	if( !!location.search.match(/([?|&]p=)\d{1,}/) )
                	window.location.href = location.search.replace(/([?|&]p=)\d{1,}/,'$1'+page)
                else
                	window.location.href = location.search + '&p=' + page
                return false;
            }
            window.location.href = '?p='+ page;
        },
    });

	$('.examine').click(function(){
        var id = $(this).data('id')
            , status
            ;
     
        layer.confirm('是否通过？', {
                btn: ['通过','不通过'] //按钮
            }, function(){
                status = 1;
                send({
                        id: id,
                        status: status
                    })
            }, function(){
                status = 2;
                layer.prompt({
                    formType: 2,
                    value: '',
                    title: '请填写不通过原因',
                    area: ['400px', '350px'] 
                }, function(value, index, elem){
                    send({
                        id: id,
                        status: status,
                        audit_fail_reason: value
                    })
                }
            );
        });
        
        function send( data ){
            $.ajax({
                url: '/admin/advertPosition/examine',
                type: 'post',
                data: data,
                success: function(res){
                    res = JSON.parse(res);
                    if( res.ret == 1){
                        layer.msg(res.msg, function(){
                            layer.closeAll();
                            location.href = '/admin/advertPosition/index';
                        });
                    } else {
                        layer.msg(res.msg, function(){
                            layer.closeAll();
                        });
                    }
                   
                },error:function(){
                    layer.closeAll()
                }
            })
        }
        
    })

    $('.setAdvertPositionShield').click(function(){
        var id = $(this).data('id');
        layer.open({
          type: 1,
          area: ['200px', '200px'],
          title: '选择屏蔽包',
          content: $('#tpl-shield')
        });
    
        if( !id ){
            return false;
        }
        $('body').on('click','.sureShield',function(){
            var shield_id = $('#shield option:selected').val();
            $.ajax({
                url: '/admin/advertPosition/setAdvertPositionShield',
                type: 'post',
                data:{
                    id: id,
                    shield_id: shield_id
                },
                success: function(res){
                    res = JSON.parse(res);
                    layer.msg(res.msg);
                    setTimeout(function(){
                        layer.closeAll()
                    },1000);
                    location.href = '/admin/advertPosition/index';
                },error:function(){
                    layer.closeAll()
                }
            })
        })
       

    })
    
    



    $('.del').click(function(){
        var id = $(this).data('id');
        var status = $(this).data('status');
        var parent = $(this).parent().parent();
        if( !id ){
            return false;
        }
        layer.confirm('删除不可恢复，是否继续？', function(index){
            $.ajax({
                url: '/admin/advertPosition/delAdvertPosition',
                type: 'post',
                data:{
                    id: id,
                },
                success: function(res){
                    res = JSON.parse(res);
                    layer.msg(res.msg);
                    parent.remove();
                    location.href = '/admin/advertPosition/index';
                }
            }) 
  
            layer.close(index);
        });   
        
    })
   


    $(".popBox").click(function(){
        var info = $(this).data('info');
        
        var html = $('#tpl-pop').html()

      
        var string =  laytpl(html).render(info);
        layer.open({
            type: 1,
            area: ['400px', '330px'],
            title: '详情',
            content: string
        });
        $('.copyLink').click(function(){
            
        })
        $('.closePop').click(function(){
            layer.closeAll()
        })
        var clipboard = new Clipboard('.copyLink', {
            text: function(trigger) {
                return $('#linkText').text().trim();
            }
        });
        clipboard.on('success', function(e) {
            layer.msg('复制成功')
        });
        clipboard.on('error', function(e) {
             layer.msg('复制失败')
        });

    })

    $('.pb').click(function(){
        var info = $(this).data('info');
        var id = $(this).data('id');
        
        var html = $('#tpl-pb').html()

      
        var string =  laytpl(html).render(info);
        layer.open({
            type: 1,
            area: ['400px', '400px'],
            title: '详情',
            content: string
        });
        $('.modify').click(function(){
            $(this).parent().parent().find('input').removeAttr('readonly');
            $(this).parent().parent().find('textarea').removeAttr('readonly');
            $(this).parent().parent().find('select').removeAttr('disabled');
            $(this).next().show()
            $(this).hide();
            
        })
        // 取消屏蔽包
        $('.canal').click(function(){
            $.ajax({
                url: '/Admin/Advertposition/cancelSetShield',
                type: 'post',
                data:{
                    id: id,
                },
                success: function(res){
                    res = JSON.parse(res);
                    if( res.ret == 1){
                        layer.msg(res.msg);
                        location.reload();
                    }else{
                        layer.msg(res.msg);
                    }
                },error:function(){

                }
            })
        })
        
    })

    //监听提交
    form.on('submit(formSubmit)', function(data){

        $.ajax({
            url: '/Admin/Advertposition/updateSetShield',
            type: 'post',
            data: data.field,
            success: function(res){
                res = JSON.parse(res);
                if( res.ret == 1){
                    layer.msg(res.msg);
                    location.reload();
                }else{
                    layer.msg(res.msg);
                }
            },error:function(){

            }
        })
    });
    

    var sanfangID;
   
    // 打开三方
    $('body').on('click', '.third', function(){
        var tpl = $('#tpl-sanfang').html();
        sanfangID = $(this).data('id');
        third_rate = $(this).data('third_rate');
        third_tpl_url = $(this).data('third_tpl_url');
        var info = {}
        info.third_rate = third_rate;
        info.third_tpl_url = third_tpl_url;
        var html =  laytpl(tpl).render(info);
        layer.open({
            type: 1,
            area: ['400px', '222px'],
            title: '调用三方',
            content: html
        });
    })
    // 关闭三方窗口
    $('body').on('click', '.closeSanfang', function(){
        layer.closeAll()
    })
    // 取消三方
    $('body').on('click', '.canalSanfang', function(){
        var _this = $(this);
        _this.attr('disabled','disabled');
        $.ajax({
            url: '/Admin/Advertposition/unsetThirdInfo',
            type: 'post',
            data: {id:sanfangID},
            success: function(res){
                res = JSON.parse(res);
                _this.removeAttr('disabled');
                if( res.ret == 1){
                    layer.msg(res.msg, function(){
                        location.reload();
                    });
                }else{
                    layer.msg(res.msg);
                }
            },error:function(){
                _this.removeAttr('disabled');
            }
        })
    })

     //自定义验证规则
    form.verify({
        third_rate: function(value){
            value = parseInt(value)
            if(value < 0 || value > 100){
                return '请填写0-100之间的数';
            }
        }
        // , third_tpl_url: function(value){
        //     if(value.indexOf('http') == -1){
        //         return '请填写正确的URL';
        //     }
        // }
    });
    
    //监听提交
    form.on('submit(formSanfang)', function(data){
        
        data.field.id = sanfangID
        $.ajax({
            url: '/Admin/Advertposition/setThirdInfo',
            type: 'post',
            data: data.field,
            success: function(res){
                res = JSON.parse(res);
               
                if( res.ret == 1){
                    layer.msg(res.msg, function(){
                        layer.closeAll();
                    });
                    $('.third_rate'+sanfangID).html(data.field.third_rate+'%')
                    $('.third'+sanfangID)
                        .data('third_rate',data.field.third_rate)
                        .data('third_tpl_url',data.field.third_tpl_url)
                    
                }else{
                    layer.msg(res.msg);
                }
            },error:function(){
                
            }
        })

        return false;
    });


    // 列表中上传图片按钮
    $('.upload-pic').click(function(){
        var info = $(this).data('info');
        if(!info){
            layer.msg("error!");
            return false;
        }
        //绑定原始文件域
        upload.render({
            elem: '#onlyUpload'
            ,url: '/admin/tpl/upload/'
            ,data: {
                js_type: info.js_type
            }
            ,done: function(res){
                if(res.code == 0){
                    $("#pic").val(res.data.src);
                    $("#preview-pic").attr("src", res.data.src).show();
                    success('图片上传成功');
                }else{
                    error(res.msg);
                }
            }
        });
        var tpl = document.getElementById('tpl-upload-pic').innerHTML;
        var html =  laytpl(tpl).render(info);
        layer.open({
            type: 1,
            area: ['444px', '444px'],
            title: '上传图片',
            content: html,
            success: function(){
                form.render();
            }
        });
    })
    $('body').on('click', '.choose-pic', function(){
        $('#onlyUpload').click()
    })

    //监听提交
    form.on('submit(formUploadPic)', function(data){
       

        if(data.field.pic == ""){
            warning('请先上传图片！');
            return false;
        }
        $.ajax({
            url: '/Admin/Advertposition/adwUploadImg',
            type: 'post',
            data: data.field,
            success: function(res){
                res = JSON.parse(res);
               
                if( res.ret == 1){
                    layer.msg(res.msg, function(){
                        layer.closeAll();
                    });
                }else{
                    layer.msg(res.msg);
                }
            },error:function(){
                
            }
        })

        return false;
    });

})