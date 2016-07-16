var custom = function() {

    return {
        templateCache: {},
        remoteTemplate: function (url, data) {
            var render = custom.templateCache[url];
            if (render == undefined || render == null) {
                $.ajax({
                    url: basePath + url,
                    dataType:"html",
                    type: "get",
                    async: false
                }).done(function (html) {
                    render = template.compile(html);
                    custom.templateCache[url] = render;
                });
            }
            return render(data);
        },
        showConfirm: function(param) {
            var defaultData = {
                confirmTitle: "确认",
                confirmContent: "确认删除这条记录?",
                confirmBtn: "删除",
                cancelBtn: "取消",
                confirmDialogId: "confirmDialog",
                confirmBtnId: "confirmBtn",
                confirmDialogWrapperId: "confirmDialogWrapper"
            };
            var data = $.extend(true, {}, defaultData, param);
            if ($("#"+data.confirmDialogWrapperId).size() == 0) {
                $("body").append("<div id='"+data.confirmDialogWrapperId+"'></div>")
            }
            $("#"+data.confirmDialogWrapperId).html(custom.remoteTemplate("templates/common/confirm.html", data));
            $("#"+data.confirmDialogId).modal("show")
        },
        ajaxCallback: function (data) {
            App.unblockUI();
            if (data.success) {
                toast.success(data.returnMsg);
                return true;
            } else if (data.error) {
                toast.error(data.returnMsg);
                return false;
            } else if (data.warn) {
                toast.warn(data.returnMsg);
                return true;
            } else {
                toast.error("请求错误！");
                return false;
            }
        }
    }

}();
