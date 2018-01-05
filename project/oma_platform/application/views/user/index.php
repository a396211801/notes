<div class="userSection section fl">
    <!--头部-->
    <div class="top">
        <h2>用户信息</h2>
    </div>
    <!--内容部分-->
    <div class="userCont editCont cont fontSize_12 backWhite">
        <form action="" class="layui-form" >
            <!--详细信息-->
            <div>
                <h5 class="fontSize_14">详细信息</h5>
                <ul class="clearfix">
                    <li class="fl">
                        <span class="block fontSize_14">用户名</span>
                        <input type="text" name="user_name" disabled value="<?php echo $userInfo['user_name'] ?>"  class="radius_5 H_30"/>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">电子邮箱</span>
                        <input type="text" name="email" lay-verify="required" value="<?php echo $userInfo['email'] ?>"  class="radius_5 H_30"/>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">腾讯QQ</span>
                        <input type="text" name="qq" lay-verify="required" value="<?php echo $userInfo['qq'] ?>"  class="radius_5 H_30"/>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">手机号码</span>
                        <input type="text" name="phone" lay-verify="required" value="<?php echo $userInfo['phone'] ?>"  class="radius_5 H_30"/>
                    </li>
                </ul>
            </div>
            <!--更改密码-->
            <div>
                <h5 class="fontSize_14">更改密码</h5>
                <ul class="clearfix">
                    <li class="fl">
                        <span class="block fontSize_14">修改密码</span>
                        <input type="password"  name="new_password" class="radius_5 H_30"/>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">确认密码</span>
                        <input type="password"  name="new_password_again" class="radius_5 H_30"/>
                    </li>
                </ul>
            </div>
            <!--财务信息-->
            <div>
                <h5 class="fontSize_14">财务信息</h5>
                <ul class="clearfix">
                    <li class="fl">
                        <span class="block fontSize_14">财务对象</span>
                        <select class="radius_5 H_30" lay-ignore name="fc_type" lay-verify="required">
                            <?php
                                foreach($base_info['user']['fc_type'] as $k=>$v) {
                            ?>
                                <option value="<?php echo $k ?>" <?php if($k == $userInfo['fc_type']){ echo ' selected="selected"';}  ?>>
                                    <?php echo $v ?>
                                </option>
                            <?php
                                }
                            ?>
                        </select>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">是否有发票</span>
                        <select class="radius_5 H_30" lay-ignore name="fc_has_invoice" lay-verify="required">
                            <?php
                            foreach($base_info['user']['fc_has_invoice'] as $k=>$v) {
                                ?>
                                <option value="<?php echo $k ?>" <?php if($k == $userInfo['fc_has_invoice']){ echo ' selected="selected"';}  ?>>
                                    <?php echo $v ?>
                                </option>
                                <?php
                            }
                            ?>
                        </select>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">收款银行 <a style="float: right;" href="/user/bank">添加银行</a></span>
                        <input type="text" name="fc_bank" lay-verify="required" class="radius_5 H_30" value="<?php echo $userInfo['fc_bank'] ?>"/>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">银行账号</span>
                        <input type="text" name="fc_account" lay-verify="required" class="radius_5 H_30" value="<?php echo $userInfo['fc_account'] ?>"/>
                    </li>
                    <li class="fl">
                        <span class="block fontSize_14">收款人</span>
                        <input type="text" name="fc_payee" lay-verify="required" value="<?php echo $userInfo['fc_payee'] ?>"  class="radius_5 H_30"/>
                    </li>
                </ul>
            </div>
            <!--按钮-->
            <a href="javascript:;" lay-submit lay-filter="formUser" class="radius_5 Btn Btnback textCenter colorWhite">保存</a>
        </form>
    </div>
</div>
<script type="text/javascript" src="/js/app/user.js"></script>