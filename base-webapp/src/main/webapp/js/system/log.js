/**
 * Created by panzh on 2016/3/5.
 */
var logListPage = function(){

    var dataTable;
    var $table = $("#dataTable");

    var handleRecords = function() {
        dataTable = new Datatable();
        dataTable.init({
            src: $table,
            onQuery: function (data) {
            },
            dataTable: {
                "ajax" : {
                    url: basePath + "b/log/getSystemLogListPage"
                },
                "columns": [
                    {data: 'url', orderable: true},
                    {data: 'ip', orderable: true},
                    {data: 'username', orderable: true},
                    {data: 'method', orderable: true},
                    {data: 'date', orderable: true},
                    {data: 'userAgent', orderable: true}
                ]
            }
        });
    };

    return {
        init: function() {
            handleRecords();
        }
    }

}();

$(function() {
   logListPage.init();
});
