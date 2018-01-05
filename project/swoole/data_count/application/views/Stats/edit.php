<div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <form class="layui-form" action="">
            <div class="layui-form-item">

                <label class="layui-form-label">日期</label>
                <div class="layui-input-inline">
                    <input type="text" name="date" id="date"  placeholder="" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="text"  placeholder="" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">展现量</label>
                <div class="layui-input-inline">
                    <input type="text" name="text"  placeholder="" autocomplete="off" class="layui-input">
                </div>
                <button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>

                <button class="layui-btn" type="button">添加</button>
            </div>

        </form>
        <table id="table" lay-filter="table"></table>
    </div>
</div>

<script>
    layui.use(['laydate', 'table'], function() {
        var laydate = layui.laydate,
            table = layui.table;

        //日期
        laydate.render({
            elem: '#date'
        });

        //表格
        table.render({
            elem: '#table',
            // height: 315,
            // url: 'data.json', //数据接口
            // page: true, //开启分页
            page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['prev', 'page', 'next', 'count'] //自定义分页布局
                //,curr: 5 //设定初始在第 5 页
                ,groups: 1 //只显示 1 个连续页码
                ,first: false //不显示首页
                ,last: false //不显示尾页

            },
            cols: [[ //表头
                // {field: 'id', title: 'ID'},
                {field: 'date', title: '日期'},
                {field: 'name', title: '名称'},
                {field: 'pv', title: '展现量'}
            ]],
            data:[
                {
                    date:'2017-11-24',
                    name:1,
                    pv:1
                },{
                    date:'2017-11-24',
                    name:1,
                    pv:1
                },{
                    date:'2017-11-24',
                    name:1,
                    pv:1
                },
            ]
        });

    })
</script>

