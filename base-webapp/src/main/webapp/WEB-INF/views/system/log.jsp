<%--
  Created by IntelliJ IDEA.
  User: pzw
  Date: 2/9/2016
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../common/style.jsp" %>
    <title>${menu.menuName}</title>
    <link href="<c:url value="/assets/global/plugins/datatables/datatables.min.css"/> " rel="stylesheet"
          type="text/css"/>
    <link href="<c:url value="/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css"/> "
          rel="stylesheet" type="text/css"/>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
<%@include file="../common/top.jsp" %>
<div class="page-container">
    <%@include file="../common/menu.jsp" %>
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <%@include file="../common/current.jsp" %>
            <!-- BEGIN PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light portlet-fit portlet-datatable bordered">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="${menu.icon}"></i>${menu.menuName}
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"></a>
                            </div>
                            <div class="actions">
                                <div class="btn-group">
                                    <a class="btn default yellow-stripe" href="#" data-toggle="dropdown">
                                        <i class="fa fa-list"></i>
                                        <span class="hidden-480">选择列</span>
                                        <i class="fa fa-angle-down"></i>
                                    </a>

                                    <div class="dropdown-menu hold-on-click dropdown-checkboxes pull-right"
                                         id="dataTableToggleColumn">
                                        <label><input type="checkbox" checked="checked" data-column="0">请求地址</label>
                                        <label><input type="checkbox" checked="checked" data-column="1">IP地址</label>
                                        <label><input type="checkbox" checked="checked" data-column="2">请求人</label>
                                        <label><input type="checkbox" checked="checked" data-column="3">请求方式</label>
                                        <label><input type="checkbox" checked="checked" data-column="4">请求时间</label>
                                        <label><input type="checkbox" checked="checked" data-column="5">浏览器标识</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-container">
                                <table class="table table-striped table-bordered table-hover" id="dataTable">
                                    <thead>
                                    <tr role="row" class="heading">
                                        <th>请求地址</th>
                                        <th>IP地址</th>
                                        <th>用户</th>
                                        <th>方式</th>
                                        <th>时间</th>
                                        <th>浏览器</th>
                                    </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END CONTENT -->
</div>
<div class="modal fade bs-modal-lg" id="modalDialog" tabindex="-1" data-keyboard="false" aria-hidden="true"
     data-backdrop="static">
</div>
<%@include file="../common/footer.jsp" %>
<%@include file="../common/scripts.jsp" %>
<script src="<c:url value="/assets/global/plugins/datatables/datatables.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"/> "
        type="text/javascript"></script>
<script type="text/javascript" src="<c:url value="/js/global/datatable.js"/> "></script>
<script type="text/javascript" src="<c:url value="/js/system/log.js"/> "></script>
</body>
</html>
