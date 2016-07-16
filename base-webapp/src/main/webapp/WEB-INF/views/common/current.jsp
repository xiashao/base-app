<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-bar">
    <ul class="page-breadcrumb">
        <li>
            <a href="<c:url value="/"/>">主页</a>
            <i class="fa fa-circle"></i>
        </li>
        <c:import url="/develop/menu/current?id=${param.menuId}"/>
    </ul>
</div>
<h3 class="page-title">
</h3>
