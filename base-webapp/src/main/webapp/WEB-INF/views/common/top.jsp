<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-header navbar navbar-fixed-top">
    <div class="page-header-inner">
        <div class="page-logo">
            <a href="<c:url value="/"/>"><img src="<c:url value="/img/logo-index.png"/>" alt="logo" class="logo-default"/></a>
            <div class="menu-toggler sidebar-toggler"></div>
        </div>
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">
                <li class="dropdown dropdown-user">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <span class="username username-hide-on-mobile">欢迎您: ${user.username} </span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-default">
                        <li>
                            <a href="javascript:;">
                                <i class="icon-lock"></i> 修改密码</a>
                        </li>
                        <li>
                            <a href="<c:url value="/logout"/> ">
                                <i class="icon-key"></i> 退出 </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="modal fade bs-modal-lg" id="updatePasswordModal" tabindex="-1" data-keyboard="false" aria-hidden="true" data-backdrop="static"></div>
<div class="clearfix"></div>