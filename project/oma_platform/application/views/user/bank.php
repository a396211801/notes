<div class="userSection section fl">
    <!--头部-->
    <div class="top">
        <h2>添加银行</h2>
    </div>
    <!--内容部分-->
    <div class="userCont editCont cont fontSize_12 backWhite">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;联系人</label>
                <div class="layui-input-inline">
                    <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">联系人不能为空</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">地址</label>
                <div class="layui-input-inline">
                    <input type="text" name="demo1" autocomplete="off" placeholder="" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">邮编</label>
                <div class="layui-input-inline">
                    <input type="text" name="demo1" autocomplete="off" placeholder="" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;E-mail</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" lay-verify="email" autocomplete="off" placeholder="" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">电子邮件不能为空</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;手机号码</label>
                <div class="layui-input-inline">
                    <input type="text" name="phone" lay-verify="required|phone" autocomplete="off" placeholder="" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">手机号码不能为空</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;QQ</label>
                <div class="layui-input-inline">
                    <input type="text" name="qq" lay-verify="required" autocomplete="off" placeholder="" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">QQ不能为空</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;开户地区</label>
                <div class="layui-input-inline">
                    <select name="quiz1">
                        <option value="">请选择省</option>
                        <option value="浙江" selected="">浙江省</option>
                        <option value="你的工号">江西省</option>
                        <option value="你最喜欢的老师">福建省</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz2">
                        <option value="">请选择市</option>
                        <option value="杭州">杭州</option>
                        <option value="宁波" disabled="">宁波</option>
                        <option value="温州">温州</option>
                        <option value="温州">台州</option>
                        <option value="温州">绍兴</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz3">
                        <option value="">请选择县/区</option>
                        <option value="西湖区">西湖区</option>
                        <option value="余杭区">余杭区</option>
                        <option value="拱墅区">临安市</option>
                    </select>
                </div>
                <div class="layui-form-mid layui-word-aux">开户地区不能为空</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;支行</label>
                <div class="layui-input-inline">
                    <input type="text" name="qq" lay-verify="required" autocomplete="off" placeholder="" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">支行不能为空</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;收款银行</label>
                <div class="layui-input-inline">
                    <select name="quiz1" lay-search="">
                        <option value="">请选择省</option>
                        <option value="浙江" selected="">浙江省</option>
                        <option value="你的工号">江西省</option>
                        <option value="你最喜欢的老师">福建省</option>
                    </select>
                </div> 
                <div class="layui-form-mid layui-word-aux">收款银行不能为空</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;银行账号</label>
                <div class="layui-input-inline">
                    <input type="text" name="qq" lay-verify="required" autocomplete="off" placeholder="" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">银行账号不能为空</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;开户人</label>
                <div class="layui-input-inline">
                    <input type="text" name="qq" lay-verify="required" autocomplete="off" placeholder="" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">开户人不能为空</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><em class="mark">*</em>&nbsp;身份证号码</label>
                <div class="layui-input-inline">
                    <input type="text" name="qq" lay-verify="required" autocomplete="off" placeholder="" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">身份证号码不能为空</div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-danger" lay-submit="" lay-filter="formBank">保存</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript" src="/js/app/user.js"></script>