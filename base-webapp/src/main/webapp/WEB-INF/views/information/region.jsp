<%--@elvariable id="roleList" type="java.util.List<com.infitecs.lamb.core.security.model.Role>"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <%@include file="../common/style.jsp" %>
    <title>${menu.menuName}</title>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/js/global/ztree_v3/css/zTreeStyle/zTreeStyle.css"/>"/>
</head>
<body class="page-header-fixed page-quick-sidebar-over-content">
<%@include file="../common/top.jsp" %>
<div class="page-container">
    <%@include file="../common/menu.jsp" %>
    <div class="page-content-wrapper">
        <div class="page-content">
            <%@include file="../common/current.jsp" %>
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="${menu.icon}"></i>${menu.menuName}
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"></a>
                            </div>
                            <div class="actions">
                                <a href="javascript:;" class="btn default yellow-stripe" id="treeReload"><i
                                        class="fa fa-refresh"></i><span class="hidden-480">刷新</span></a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="ztree col-md-12 col-sm-12 col-xs-12">

                                <ul id="organTree" class="ztree"></ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="dropdown open" id="treeContextMenu" style="display: none;position: absolute">
    <ul class="dropdown-menu">
        <li><a href="javascript:;" id="addChildOrgan">新增</a></li>
        <li><a href="javascript:;" id="toUpdateBtn">编辑</a></li>
        <li><a href="javascript:;" id="deleteBtn">删除</a></li>
    </ul>
</div>
<div class="modal fade bs-modal-lg" id="modalDialog" tabindex="-1" data-keyboard="false" aria-hidden="true"
     data-backdrop="static">
</div>
<%@include file="../common/footer.jsp" %>
<%@include file="../common/scripts.jsp" %>
<script type="text/javascript"
        src="<c:url value="/js/global/ztree_v3/js/jquery.ztree.core-3.5.min.js"/>"></script>
<script type="text/javascript"
        src="<c:url value="/js/global/ztree_v3/js/jquery.ztree.excheck-3.5.min.js"/>"></script>
<script src="<c:url value="/js/system/region.js"/>"></script>
<script type="text/javascript">
    $(function () {
        organTree.init();
    });
</script>
</body>
</html>