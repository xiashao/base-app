<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3 class="page-title">${menu.menuName}
    <small>${menu.memo}</small>
</h3>
<div class="page-bar">
    <ul class="page-breadcrumb">
        <li>
            <i class="fa fa-home"></i>
            <a href="<c:url value="/"/>">Home</a>
            <i class="fa fa-angle-right"></i>
        </li>
        <c:import url="/develop/menu/current?id=${param.menuId}"/>
    </ul>
</div>