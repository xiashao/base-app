/**
 * Created by panzh on 2016/2/20.
 */
var roleListPage = function () {

    var dataTable;
    var $table = $("#dataTable");

    var setting = {
        check: {
            enable: true,
            chkStyle: "checkbox",
            radioType: "all"
        },
        view: {
            dblClickExpand: false,
            showIcon: true
        },
        data: {
            key: {
                name: "menuName"
            },
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "parentId"
            }
        }
    };

    var handleRecords = function () {
        dataTable = new Datatable();
        dataTable.init({
            src: $table,
            onQuery: function (data) {
            },
            dataTable: {
                "ajax": {
                    url: basePath + "b/role/getRoleListPage"
                },
                "columns": [
                    {data: 'roleName', orderable: true},
                    {data: 'roleDescription', orderable: true},
                    {
                        data: 'operate', orderable: false,
                        render: function (data, type, full) {
                            return template("actionBtn", {data: data, type: type, full: full});
                        }
                    }
                ]
            }
        });

    };

    var handleEvents = function () {

        $("#addRole").on('click', function () {
            $.get("b/role/getPermissionTree", function (data) {
                var htmlTemplate = customGlobal.remoteTemplate("templates/core/addRole.html", {});
                $("#modalDialog").html(htmlTemplate).modal('show');
                var zTreeObj = $.fn.zTree.init($("#permissionTree"), setting, data);
                zTreeObj.expandAll(true);
                initAddBtn();
            })
        });

        function initAddBtn() {
            $("#addBtn").on('click', function () {
                var zTree = $.fn.zTree.getZTreeObj("permissionTree"),
                    nodes = zTree.getCheckedNodes(true);
                var permissions = [];
                for (var i = 0; i < nodes.length; i++) {
                    var permId = nodes[i].permission.id;
                    var permission = {
                        id: permId
                    };
                    permissions.push(permission);
                }
                if (permissions.length == 0) {
                    toast.warning("请选择权限！");
                    return;
                }
                if ($("#dialogForm").validate().form()) {
                    var role = {
                        roleName: $("#roleName").val(),
                        roleDescription: $("#roleDescription").val(),
                        permissions: permissions
                    };
                    $.ajax({
                        url: "b/role",
                        type: "post",
                        data: JSON.stringify(role),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json"
                    }).done(function (data) {
                        if (custom.ajaxCallback(data)) {
                            dataTable.reloadTable(false);
                            $("#modalDialog").modal('hide');
                        }
                    });
                }
            });
        }

        $table.on('click', 'a.delete', function () {
            var $this = $(this);
            custom.showConfirm();
            $("#confirmBtn").off("click.deleteRow").on("click.deleteRow", function () {
                $.ajax({
                    url: "b/role/" + $table.DataTable().row($this.parents('tr')[0]).data().id,
                    dataType: "json",
                    type: "DELETE"
                }).done(function (data) {
                    if (custom.ajaxCallback(data)) {
                        $table.DataTable().draw();
                        $("#confirmDialog").modal("hide");
                    }
                })
            })
        });

        $table.on('click', 'a.edit', function () {
            var $this = $(this);
            $.get("b/role/" + $this.attr("roleId"), function (data) {
                var role = data.responseData.role;
                var permissionTree = data.responseData.permissionTree;
                for (var i = 0; i < role.permissions.length; i++) {
                    for (var j = 0; j < permissionTree.length; j++) {
                        if (role.permissions[i].id == permissionTree[j].permission.id) {
                            permissionTree[j].checked = true;
                        }
                    }
                }
                var htmlTemplate = customGlobal.remoteTemplate("templates/core/updateRole.html", {
                    role: role
                });
                $("#modalDialog").html(htmlTemplate).modal('show');
                var zTreeObj = $.fn.zTree.init($("#permissionTree"), setting, permissionTree);
                zTreeObj.expandAll(true);
                initUpdateBtn()
            })
        });

        function initUpdateBtn() {
            $("#updateBtn").on('click',function() {
                var zTree = $.fn.zTree.getZTreeObj("permissionTree"),
                    nodes = zTree.getCheckedNodes(true);
                var permissions = [];
                for (var i = 0; i < nodes.length; i++) {
                    var permId = nodes[i].permission.id;
                    var permission = {
                        id: permId
                    };
                    permissions.push(permission);
                }
                if (permissions.length == 0) {
                    toast.warning("请选择权限！");
                    return;
                }
                if ($("#dialogForm").validate().form()) {
                    var role = {
                        id: $("#roleId").val(),
                        roleName: $("#roleName").val(),
                        roleDescription: $("#roleDescription").val(),
                        permissions: permissions
                    };
                    $.ajax({
                        url: "b/role",
                        type: "put",
                        data: JSON.stringify(role),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json"
                    }).done(function (data) {
                        if (custom.ajaxCallback(data)) {
                            dataTable.reloadTable(false);
                            $("#modalDialog").modal('hide');
                        }
                    });
                }
            });
        }

    };

    return {
        init: function () {
            handleRecords();
            handleEvents();
        }
    }

}();
$(function () {
    roleListPage.init();
});