// let base_url = $("#domain_url").val();
$(document).ready(function () {
    var dataTable;

    function loadDatatable() {
        dataTable = $("#userTbl").DataTable({
            lengthMenu: [
                [5, 10, 25, -1],
                [5, 10, 25, 'All'],
            ],
            processing: true,
            serverSide: true,
            ordering: true,
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
                url: base_url + "/user/DtData"
            },
            columns: [
                {data: "name"},
                {data: "name"},
                {data: "name"},
                {data: "loginName"},
                {data: "email"},
                {
                    data: "id",
                    render: function (data) {
                        //return '<span data-toggle="modal" data-target="#updateUser" class="btn badge badge-dark badge-pill cursor-pointer" onclick="viewEditModal(' + data + ')" ><span class="glyphicon glyphicon-pencil"></span> Edit</span>'
                        return '<button data-toggle="modal" data-target="#updateUser" class="btn btn-icon btn-icon-only btn-secondary btn-icon-style-4" onclick="viewEditModal(' + data + ')"><span class="btn-icon-wrap"><i class="fa fa-pencil"></i></span></button>'
                    },
                    className: ""
                },
            ]
        });
    }


    loadDatatable();
});

function viewEditModal(id) {
    console.log(id);

    $.ajax({
        type: 'GET',
        url: base_url + "/user/update/" + id,
        success: function (data) {
            console.log(data)
            $("#userUpdateMdl").html(data);
            // $(".spinner-overlay").hide();
            // $("#id").val(id);
            // $("#name").val(data.name);
            // if (data.active == 1) {
            //     $("#active").prop('checked', true);
            // } else {
            //     $("#active").prop('checked', false);
            // }

        },
        error: function (data) {
            console.log(data)
        }
    });

}