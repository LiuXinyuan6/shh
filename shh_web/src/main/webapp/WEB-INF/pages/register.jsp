<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎使用爱慕课OA</title>
    <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
    <meta name="description" content="AbsoluteAdmin - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="AbsoluteAdmin">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="assets/img/favicon.ico">
</head>
<body class="external-page external-alt sb-l-c sb-r-c">
<div id="main" class="animated fadeIn">
    <section id="content_wrapper">
        <section id="content">
            <div class="admin-form theme-info mw500" id="login">
                <div class="content-header">
                    <h1> 商城SHH</h1>
                    <p class="lead">欢迎使用商城后台管理系统</p>
                </div>
                <div class="panel mt30 mb25">
                    <form method="post" action="register" id="contact">
                        <div class="panel-body bg-light p25 pb15">
                            <div class="section">
                                <label for="sn" class="field-label text-muted fs18 mb10">帐号</label>
                                <label for="sn" class="field prepend-icon">
                                    <input type="text" name="id" id="sn" class="gui-input" placeholder="请输入帐号...">
                                    <label for="sn" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="section">
                                <label for="name" class="field-label text-muted fs18 mb10">用户名</label>
                                <label for="name" class="field prepend-icon">
                                    <input type="text" name="name" id="name" class="gui-input" placeholder="请输入用户名...">
                                    <label for="name" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="section">
                                <label for="password" class="field-label text-muted fs18 mb10">密码</label>
                                <label for="password" class="field prepend-icon">
                                    <input type="password" name="password" id="password" class="gui-input" placeholder="请输入密码...">
                                    <label for="password" class="field-icon">
                                        <i class="fa fa-lock"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="section">
                                <label for="address" class="field-label text-muted fs18 mb10">地址</label>
                                <label for="address" class="field prepend-icon">
                                    <input type="text" name="address" id="address" class="gui-input" placeholder="请输入地址...">
                                    <label for="address" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="section">
                                <label for="phone" class="field-label text-muted fs18 mb10">电话</label>
                                <label for="phone" class="field prepend-icon">
                                    <input type="text" name="phone" id="phone" class="gui-input" placeholder="请输入电话...">
                                    <label for="phone" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="panel-footer clearfix">
                            <button type="submit" class="button btn-primary mr10 pull-right">注册</button>
                            <label class="switch ib switch-primary mt10">
                                <input type="checkbox" name="remember" id="remember" checked="true">
                                <label for="remember" data-on="是" data-off="否"></label>
                                <span>记住我</span>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </section>
</div>
<script src="vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="vendor/jquery/jquery_ui/jquery-ui.min.js"></script>
<script src="assets/js/utility/utility.js"></script>
<script src="assets/js/demo/demo.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
