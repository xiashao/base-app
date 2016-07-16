/**
 * Created by pzw on 2/9/2016.
 */
var userListPage = function() {

    var dataTable;
    var $table = $("#dataTable");
    var handleRecords = function () {
        dataTable = new Datatable();
        dataTable.init({
            src: $table,
            onQuery: function (data) {
            },
            dataTable: {
                "ajax" : {
                    url: basePath + "b/user/getUserListPage"
                },
                "columns": [
                    {data: 'username', orderable: true},
                    {data: 'nickname', orderable: true},
                    {
                        data: 'operate', orderable: false,
                        render: function (data, type, full) {
                            return template("actionBtn",{data:data,type:type,full:full});;
                        }
                    }
                ]
            }
        });

    };

    var handleEvents = function() {

        $("#addUser").on('click',function() {
            $.get(basePath + "b/user/getRoleList",function(data) {
                var htmlTemplate = custom.remoteTemplate("templates/core/addUser.html",{
                    roleList: data.responseData.roleList
                });
                $("#modalDialog").html(htmlTemplate).modal('show');
                $("#roleList").select2();
                initAddBtn();
            })
        });

        function initAddBtn() {
            $("#addBtn").on('click',function() {
                if ($("#dialogForm").validate().form()) {
                    var role = {
                        id : $("#roleList").val()
                    };
                    var user = {
                        username : $("#username").val(),
                        nickname : $("#nickname").val(),
                        password : $("#password").val().md5(),
                        role : role
                    };
                    App.blockUI();
                    $.ajax({
                        url : basePath + "b/user",
                        type: "post",
                        data: JSON.stringify(user),
                        contentType : "application/json; charset=utf-8",
                        dataType: "json"
                    }).done(function(data) {
                        if (custom.ajaxCallback(data)) {
                            $("#modalDialog").modal('hide');
                            dataTable.reloadTable(false);
                            App.unblockUI();
                        }
                    })
                }
            });
        }

        $table.on('click','a.delete',function() {
            var $this = $(this);
            custom.showConfirm();
            $("#confirmBtn").off("click.deleteRow").on("click.deleteRow", function () {
                $.ajax({
                    url: basePath + "b/user/" + $table.DataTable().row($this.parents('tr')[0]).data().id,
                    dataType: "json",
                    type: "DELETE"
                }).done(function(data) {
                    if(custom.ajaxCallback(data)) {
                        $table.DataTable().draw();
                        $("#confirmDialog").modal("hide");
                    }
                })
            })
        });

        $table.on('click', 'a.edit', function() {
            var $this = $(this);
            $.get(basePath + "b/user/" + $this.attr("userId"),function(data) {
                var htmlTemplate = custom.remoteTemplate("templates/core/updateUser.html", {
                    user: data.responseData.user,
                    roleList: data.responseData.roleList,
                    roleId : data.responseData.user.role.id
                });
                var $template = $(htmlTemplate);
                var $roleList = $template.find("#roleList");
                $roleList.find("option").removeAttr("selected");
                var roleListData = data.responseData.roleList;
                for (var i = 0; i < roleListData.length; i++) {
                    var str = "option[value=" + roleListData[i].roleId + "]";
                    $roleList.find(str).attr("selected", "selected")
                }
                $("#modalDialog").html(htmlTemplate).modal('show');
                $roleList.select2();
                initUpdateBtn();
            });

            function initUpdateBtn() {
                $("#updateBtn").on('click',function() {
                    if ($("#dialogForm").validate().form()) {
                        var $password = $("#password");
                        var role = {
                            id : $("#roleList").val()
                        };
                        var user = {
                            id : $("#userId").val(),
                            username : $("#username").val(),
                            nickname : $("#nickname").val(),
                            role : role
                        };
                        if ($password.val() != "") {
                            user.password = $("#password").val().md5();
                        }

                        App.blockUI();
                        $.ajax({
                            url : basePath + "b/user",
                            type: "put",
                            data: JSON.stringify(user),
                            contentType : "application/json; charset=utf-8",
                            dataType: "json"
                        }).done(function(data) {
                            if (custom.ajaxCallback(data)) {
                                $("#modalDialog").modal('hide');
                                dataTable.reloadTable(false);
                                App.unblockUI();
                            }
                        })
                    }
                })
            }

        })
    };

    return {
        init: function() {
            handleRecords();
            handleEvents();
        }
    }

}();
$(function () {
    userListPage.init();
});