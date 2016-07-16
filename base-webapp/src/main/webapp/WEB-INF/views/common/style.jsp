<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
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
<link href="<c:url value="/assets/global/plugins/select2/css/select2.min.css"/> " rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/global/plugins/select2/css/select2-bootstrap.min.css"/> " rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="<c:url value="/assets/global/css/components.min.css"/> " rel="stylesheet" id="style_components" type="text/css" />
<link href="<c:url value="/assets/global/css/plugins.min.css"/> " rel="stylesheet" type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="<c:url value="/assets/layouts/layout/css/layout.min.css"/> " rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/layouts/layout/css/themes/darkblue.min.css"/> " rel="stylesheet" type="text/css" id="style_color" />
<link href="<c:url value="/assets/layouts/layout/css/custom.min.css"/> " rel="stylesheet" type="text/css" />
<link href="<c:url value="/js/global/autoComplete/autoComplete.css"/> " rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/global/plugins/jquery-notific8/jquery.notific8.min.css"/> " rel="stylesheet" type="text/css" />
<base href="<%=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()%><c:url value="/"/>"/>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="menu" value="${applicationScope.menuMap[param.menuId]}"/>