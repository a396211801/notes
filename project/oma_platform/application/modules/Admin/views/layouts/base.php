<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>启冠移动联盟后台管理</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
     <link rel="stylesheet" href="/admin/css/layui.css">
    <link rel="stylesheet" href="/admin/css/bootstrap.min.css">
    <link rel="stylesheet" href="/admin/css/font-awesome.min.css">
    <link rel="stylesheet" href="/admin/css/ionicons.min.css">
    <link rel="stylesheet" href="/admin/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/admin/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/admin/css/style.css">
   
    <link rel="stylesheet" href="/admin/css/modules/layer/default/layer.css">

    <link rel="stylesheet" href="/admin/css/bootstrap-datepicker.css">


    <script src="/admin/lib/jquery.min.js"></script>
    <script src="/admin/lib/jquery-ui.min.js"></script>
    <script src="/admin/lib/bootstrap.min.js"></script>
    <script src="/admin/lib/bootstrap-paginator.min.js"></script>
    <script src="/admin/lib/bootstrap-datepicker.min.js"></script>
    <script src="/admin/lib/adminlte.min.js"></script>
    <script src="/admin/lay/modules/layer.js"></script>
    <script src="/admin/layui.js"></script>
    <script src="/admin/lib/clipboard.min.js"></script>

    <script src="/admin/js/common.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <a href="/admin/Report/reportAdvertposition" class="logo">
            <span class="logo-mini">联盟</span>
            <span class="logo-lg">启冠移动联盟</span>
        </a>
        <nav class="navbar navbar-static-top">
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only"></span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
<!--                    <li class="user">-->
<!--                        <a href="#" >ROOT</a>-->
<!--                    </li>-->
                    <li>
                        <a href="/admin/member/logout"><i class="fa fa-sign-out"></i> 退出登录</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <aside class="main-sidebar">
        <section class="sidebar">
            <ul class="sidebar-menu" data-widget="tree">
                <li class="treeview  <?php if($controller_name == 'user') { echo ' active';}?>">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>网站主管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
						</span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/admin/user/list"><i class="fa fa-user"></i> 网站主管理</a></li>
                    </ul>
                </li>
                <li class="treeview <?php if($controller_name == 'admin') { echo ' active';}?> ">
                    <a href="#">
                        <i class="fa fa-users"></i> <span>后台用户管理</span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                    </a>
                    <ul class="treeview-menu" >
                        <li><a href="/admin/admin/accountList"><i class="fa fa-user"></i> 后台账号管理</a></li>
<!--                        <li><a href="/admin/role/roleList"><i class="fa fa-key"></i> 权限管理</a></li>-->
                    </ul>
                </li>
<!--                <li class="treeview">-->
<!--                    <a href="#">-->
<!--                        <i class="fa fa-file-video-o"></i> <span>媒体管理</span>-->
<!--                    </a>-->
<!--                </li>-->
                <li class="treeview <?php if($controller_name == 'advertposition') { echo ' active';}?>">
                    <a href="#">
                        <i class="fa fa-adn"></i> <span>广告位管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
						</span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/Admin/AdvertPosition/index"><i class="fa fa-circle-o"></i> 广告位列表</a></li>
                    </ul>
                </li>
                <li class="treeview <?php if($controller_name == 'report') { echo ' active';}?>">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>数据报表</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
						</span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/Admin/Report/reportAdvertposition"><i class="fa fa-circle-o"></i> 广告位总表</a></li>
                        <li><a href="/Admin/Report/reportAdvert"><i class="fa fa-circle-o"></i> 广告总表</a></li>
                        <li><a href="/Admin/Report/reportTpl"><i class="fa fa-circle-o"></i> 模板汇总表</a></li>
                    </ul>
                </li>

                <li class="treeview <?php if($controller_name == 'advert') { echo ' active';}?>">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>广告管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
						</span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/Admin/Advert/advertH5List"><i class="fa fa-circle-o"></i> H5活动广告管理</a></li>
<!--                        <li><a href="/Admin/Advert/advertJsList"><i class="fa fa-circle-o"></i> JS广告管理</a></li>-->
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>运营管理</span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                    </a>
                    <ul class="treeview-menu" style="display: none;">
                        <li><a href="/admin/tpl/add"><i class="fa fa-circle-o"></i> 活动模板上传</a></li>
                        <li><a href="/admin/tpl/list"><i class="fa fa-circle-o"></i> 活动模板列表</a></li>
                        <li><a href="/admin/Shield/list"><i class="fa fa-circle-o"></i> 屏蔽管理</a></li>
                    </ul>
                </li>

                <li class="treeview <?php if($controller_name == 'about') { echo ' active';}?>">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>预约管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
						</span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/Admin/About/list"><i class="fa fa-circle-o"></i> 预约列表</a></li>
                        <!--                        <li><a href="/Admin/Advert/advertJsList"><i class="fa fa-circle-o"></i> JS广告管理</a></li>-->
                    </ul>
                </li>

<!--                <li class="treeview">-->
<!--                    <a href="#">-->
<!--                        <i class="fa fa-dashboard"></i> <span>广告管理</span>-->
<!--                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>-->
<!--                    </a>-->
<!--                    <ul class="treeview-menu">-->
<!--                        <li><a href=""><i class="fa fa-circle-o"></i> H5活动广告管理</a></li>-->
<!--                        <li><a href=""><i class="fa fa-circle-o"></i> JS广告管理</a></li>-->
<!--                    </ul>-->
<!--                </li>-->

                <li class="treeview  <?php if($controller_name == 'finance') { echo ' active';}?>">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>财务管理</span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/admin/finance/financeInfo"><i class="fa fa-circle-o"></i> 财务信息</a></li>
                        <li><a href="/admin/finance/financeManage"><i class="fa fa-circle-o"></i> 财务管理</a></li>
                        <li><a href="/admin/finance/settlement"><i class="fa fa-circle-o"></i> 结算报表</a></li>

                    </ul>
                </li>
            </ul>
        </section>
    </aside>

    <div class="content-wrapper">
        <?php echo $_content_; ?>
    </div>
</div>

</body>
</html>
