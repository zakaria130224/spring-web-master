<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 5/16/2023
  Time: 11:51 PM
  To change this template use File | Settings | File Templates.
--%>
<form name="f" action="updateUser" method="POST" modelAttribute="message">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">Modal title</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div id="modalMsg"></div>
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>Name <span class="red-dark-2">*</span></label>
                    <input type="text" id="name" name="name" class="form-control form-control-sm"
                           placeholder="Enter Name"
                           required
                           value="${user.name}"
                    >
                </div>
                <div class="col-md-6 form-group">
                    <label>Login Name <span class="red-dark-2">*</span></label>
                    <input type="text" id="loginName" name="loginName" class="form-control form-control-sm"
                           placeholder="Enter Login Name"
                           required
                           value="${user.loginName}"
                    >
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 form-group">
                    <label>Email <span class="red-dark-2">*</span></label>
                    <input type="email" id="email" name="email" class="form-control form-control-sm"
                           placeholder="Enter Email"
                           required
                           value="${user.email}"
                    >
                </div>
                <div class="col-md-6 form-group">
                    <label>Phone <span class="red-dark-2">*</span></label>
                    <input type="tel" name="phone" id="phone" class="form-control form-control-sm"
                           placeholder="8801XXXXXXXXX"
                           pattern="^(880)?1\d{9}$"
                           required
                           value="${user.phone}"
                    >
                </div>
            </div>
            <div class="row">
                <div class="col-md-2 mt-5">
                    <input
                            type="checkbox"
                            id="active"
                            name="active"
                            <c:if test="${user.active == true}">checked </c:if>
                    />
                    <label for="active">Status</label>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>Responsibility <span class="red-dark-2"></span></label>
                    <select class="form-control form-control-sm select2" name="responsibility"
                            id="responsibilityUpdate">
                        <option class="form-control form-control-sm"></option>
                        <c:forEach var="item" items="${responsibility}">
                            <option class="form-control form-control-sm"
                                    value="${item.id}">${item.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-2 mt-30">
                    <input
                            type="checkbox"
                            id="primaryUpdate"
                            name="primary"

                    />
                    <label for="primaryUpdate">Is Primary?</label>
                </div>
                <div class="col-md-2 mt-30">
                    <button type="button" class="btn btn-gradient-primary btn-sm" id="addResUpdate">
                        +
                    </button>
                </div>
            </div>
            <hr>
            <div class="table-responsive">
                <table class="table table-hover w-100 display pb-30 " id="responsibilityUpdateTbl">
                    <thead>
                    <tr>
                        <th hidden="">ID</th>
                        <th>Name</th>
                        <th>Is Primary</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="item" varStatus="status" items="${user.userResponsibilityMaps}">
                        <tr>
                            <td hidden class="map-id">${item.id}</td>
                            <td>${item.responsibilityName}</td>
                            <td class="map-active">${item.primary}</td>
                            <td>
                                <button type='button'
                                        class='btn btn-icon btn-icon-only btn-secondary btn-icon-style-4 removeBtn'>
                                    <span class='btn-icon-wrap'><i class='fa fa-trash'></i></span>
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
        </div>
    </div>
</form>

<script>
    $(document).ready(function () {
        enableSelect2();
        addModalScript();
    });

    function addModalScript() {
        let DTable = $("#responsibilityUpdateTbl").DataTable({
            lengthMenu: [
                [5, 10, 25, -1],
                [5, 10, 25, 'All'],
            ],
            searching: true,
            order: false,
            columns: [
                {
                    visible: false,
                    searching: false
                },
                null,
                null,
                null
            ]
        });

        // add items to table and remove from select box
        $("#addResUpdate").on("click", function (e) {
            console.log("Inside addRes")
            if ($("#responsibilityUpdate").val() == "") {
                alert("Please select a menu!!");
            } else {
                // add rows
                DTable.row.add([
                    $("#responsibilityUpdate").val(),
                    $("#responsibilityUpdate option:selected").text(),
                    $("#primaryUpdate").prop("checked") ? true : false,
                    `<button type='button' class='btn btn-icon btn-icon-only btn-secondary btn-icon-style-4 removeBtn'> <span class='btn-icon-wrap'><i class='fa fa-trash'></i></span> </button>`
                ]).draw(false);
                //delete item from dropdown
                $("#responsibilityUpdate option:selected").remove();
            }
            clearMapBlock();
        })

        // remove items from table and add to select box
        DTable.on("click", ".removeBtn", function () {
            // add to select box
            $("#responsibilityUpdate").append(`<option value="` + DTable.row($(this).parents("tr")).data()[0] + `"> ` + DTable.row($(this).parents("tr")).data()[1] + ` </option>`)

            // remove row from table
            DTable.row($(this).parents("tr")).remove().draw();
            clearMapBlock();

        });

        function clearMapBlock() {
            $("#primaryUpdate").prop('checked', false);
            $("#responsibilityUpdate").val("").change();
        }
    }
</script>