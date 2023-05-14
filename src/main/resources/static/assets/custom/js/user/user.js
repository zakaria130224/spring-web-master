$(document).ready(function () {
    var dataTable;
    var searchQuery = "";
    var searchText = "";
    var searchCol = "";
    let base_url = $("#domain_url").val();

    function loadDatatable(searchText) {
        if (searchText == null) {
            searchText = "";
        }
        dataTable = $("#user-tbl").DataTable({
            search: {
                return: true,
            },
            processing: true,
            serverSide: true,
            ordering: false,
            initComplete: function () {
                $('.dataTables_filter input').unbind();
                $('.dataTables_filter input').bind('keyup', function (e) {
                    var code = e.keyCode || e.which;
                    if (code == 13) {
                        dataTable.search(this.value).draw();
                    }
                });
            },

            ajax: {
                url: base_url + "/user/DtData",
                data: function (d) {
                    d.searchText = searchText;
                    d.searchCol = searchCol;
                }
            },
            columns: [
                {data: "name"},
                {data: "loginName"},
                {data: "email"},
                {
                    data: "id",
                    render: function (data) {
                        return '<a class="btn btn-sm btn-info rounded-0" href="${pageContext.request.contextPath}/user/' + data + '">Edit</a>'
                    },
                    className: ""
                },
            ]
        });
    }


    loadDatatable(searchQuery);
});