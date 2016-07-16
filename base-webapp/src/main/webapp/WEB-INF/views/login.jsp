<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<head>
    <title>登录</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="<c:url value="/assets/global/plugins/font-awesome/css/font-awesome.min.css"/> " rel="stylesheet" type="text/css" />
    <link href="<c:url value="/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"/> " rel="stylesheet" type="text/css" />
    <link href="<c:url value="/assets/global/plugins/bootstrap/css/bootstrap.min.css"/> " rel="stylesheet" type="text/css" />
    <link href="<c:url value="/assets/global/plugins/uniform/css/uniform.default.css"/> " rel="stylesheet" type="text/css" />
    <link href="<c:url value="/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"/> " rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <link href="<c:url value="/js/global/autoComplete/autoComplete.css"/> " rel="stylesheet" type="text/css" />
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="<c:url value="/assets/global/plugins/select2/css/select2.min.css"/> " rel="stylesheet" type="text/css" />
    <link href="<c:url value="/assets/global/plugins/select2/css/select2-bootstrap.min.css"/> " rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="<c:url value="/assets/global/css/components.min.css"/> " rel="stylesheet" id="style_components" type="text/css" />
    <link href="<c:url value="/assets/global/css/plugins.min.css"/> " rel="stylesheet" type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="<c:url value="/assets/pages/css/login-5.min.css"/> " rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="favicon.ico" />
</head>
<body class="login">

<!-- BEGIN : LOGIN PAGE 5-1 -->
<div class="user-login-5">
    <div class="row bs-reset">
        <div class="col-md-6 bs-reset">
            <div class="login-bg">
                <img class="login-logo" src="<c:url value="/img/logo.png"/> " />
            </div>
        </div>
        <div class="col-md-6 login-container bs-reset">
            <div class="login-content">
                <h1>登录</h1>
                <form action="<c:url value="/login"/> " class="login-form" method="post">
                    <div class="alert alert-danger display-hide">
                        <button class="close" data-close="alert"></button>
                        <span>请输入用户名和密码. </span>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <input class="form-control form-control-solid placeholder-no-fix form-group" type="text" autocomplete="off" placeholder="用户名" name="username" id="username" required/> </div>
                        <div class="col-xs-6">
                            <input class="form-control form-control-solid placeholder-no-fix form-group" type="password" autocomplete="off" placeholder="密码" name="password" id="password" required/> </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="rem-password">
                                <p>记住我
                                    <input type="checkbox" class="rem-checkbox" id="rememberMe" name="rememberMe"/>
                                </p>
                            </div>
                        </div>
                        <div class="col-sm-8 text-right">
                            <%--<div class="forgot-password">--%>
                                <%--<a href="javascript:;" id="forget-password" class="forget-password">Forgot Password?</a>--%>
                            <%--</div>--%>
                            <button class="btn blue" id="loginBtn">登录</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="login-footer">
                <div class="row bs-reset">
                    <div class="col-xs-7 bs-reset">
                        <div class="login-copyright text-right">
                            <p>Copyright &copy; CCUT 2016</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!--[if lt IE 9]>
<script src='<c:url value="/assets/global/plugins/respond.min.js"/>'></script>
<script src='<c:url value="/assets/global/plugins/excanvas.min.js"/>'></script>
<![endif]-->
<!-- BEGIN CORE PLUGINS -->
<script src="<c:url value="/assets/global/plugins/jquery.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/bootstrap/js/bootstrap.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/js.cookie.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/jquery.blockui.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/uniform/jquery.uniform.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"/> " type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<c:url value="/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/jquery-validation/js/additional-methods.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/select2/js/select2.full.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/backstretch/jquery.backstretch.min.js"/> " type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="<c:url value="/assets/global/scripts/app.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/js/global/autoComplete/autoComplete.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/js/global/common.js"/> " type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<c:url value="/js/login.js"/> " type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<!-- END THEME LAYOUT SCRIPTS -->
</body>
</html>
