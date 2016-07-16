/**
 * Created by pzw on 2/9/2016.
 */
var toast = function () {
    var successSetting = {
        theme: "teal",
        sticky: false,
        horizontalEdge: "top",
        verticalEdge: "right"
    };

    var errorSetting = {
        theme: "ruby",
        sticky: false,
        horizontalEdge: "top",
        verticalEdge: "right"
    };

    var warningSetting = {
        theme: "lemon",
        sticky: false,
        horizontalEdge: "top",
        verticalEdge: "right"
    };

    return {
        success: function (msg) {
            msg = msg || "操作成功";
            $.notific8('zindex', 11500);
            $.notific8(msg, successSetting);
        },
        error: function (msg) {
            msg = msg || "操作失败";
            $.notific8('zindex', 11500);
            $.notific8(msg, errorSetting);
        },
        warning: function (msg) {
            msg = msg || "警告,风险操作";
            $.notific8('zindex', 11500);
            $.notific8(msg, warningSetting);
        }
    }
}();
