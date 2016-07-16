<%--
  Created by IntelliJ IDEA.
  User: panzh
  Date: 2016/2/20
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
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
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/js/global/ztree_v3/css/zTreeStyle/zTreeStyle.css"/>"/>
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
                                <a href="javascript:;" class="btn default yellow-stripe" id="addRole"><i
                                        class="fa fa-plus-square-o"></i><span class="hidden-480"> 新增</span></a>
                                <div class="btn-group">
                                    <a class="btn default yellow-stripe" href="#" data-toggle="dropdown">
                                        <i class="fa fa-list"></i>
                                        <span class="hidden-480">选择列</span>
                                        <i class="fa fa-angle-down"></i>
                                    </a>

                                    <div class="dropdown-menu hold-on-click dropdown-checkboxes pull-right"
                                         id="dataTableToggleColumn">
                                        <label><input type="checkbox" checked="checked" data-column="0">用户名</label>
                                        <label><input type="checkbox" checked="checked" data-column="1">昵称</label>
                                        <label><input type="checkbox" checked="checked" data-column="2">操作</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-container">
                                <table class="table table-striped table-bordered table-hover" id="dataTable">
                                    <thead>
                                    <tr role="row" class="heading">
                                        <th>角色名</th>
                                        <th>描述</th>
                                        <th>操作</th>
                                    </tr>
                                    <tr role="row" class="filter">
                                        <td>
                                            <input type="text" class="form-control form-filter input-sm"
                                                   data-gautoflag="gAutoUsername" name="usernameQuery" id="usernameQuery"
                                                   placeholder="">
                                        </td>
                                        <td>
                                            <input type="text" class="form-control form-filter input-sm"
                                                   data-gautoflag="gAutoNickname" name="nicknameQuery" id="nicknameQuery"
                                                   placeholder="">
                                        </td>
                                        <td>
                                            <div class="margin-bottom-5">
                                                <button class="btn btn-sm green btn-outline filter-submit margin-bottom">
                                                    <i class="fa fa-search"></i> 查询
                                                </button>
                                            </div>
                                        </td>
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
<script type="text/javascript"
        src="<c:url value="/js/global/ztree_v3/js/jquery.ztree.core-3.5.min.js"/>"></script>
<script type="text/javascript"
        src="<c:url value="/js/global/ztree_v3/js/jquery.ztree.excheck-3.5.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/global/datatable.js"/> "></script>
<script type="text/javascript" src="<c:url value="/js/system/role.js"/> "></script>
<script id="actionBtn" type="text/html">
    <a class="edit btn default btn-xs purple btn-outline" roleId="{{full.id}}"><i class="fa fa-edit"></i> 编辑</a>
    <a class="delete btn default btn-xs red btn-outline"><i class="fa fa-times"></i> 删除</a>
</script>
</body>
</html>