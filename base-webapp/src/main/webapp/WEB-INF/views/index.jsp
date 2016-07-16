<%--
  Created by IntelliJ IDEA.
  User: pzw
  Date: 1/28/2016
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <%@include file="common/style.jsp" %>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
<%@include file="common/top.jsp" %>
<div class="page-container">
    <%@include file="common/menu.jsp" %>
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <!-- BEGIN PAGE HEADER-->
            <h3 class="page-title">
                欢迎
            </h3>
            <!-- END PAGE HEADER-->
        </div>
    </div>
    <!-- END CONTENT -->
</div>
<%@include file="common/footer.jsp"%>
<%@include file="common/scripts.jsp" %>
</body>
</html>
