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
            <div class="form-row">

                <div class="col-md-12 mb-12">
                    <label>Name <span class="red-dark-2">*</span></label>
                    <input type="text" name="name" id="name" class="form-control form-control-sm"
                           placeholder="Enter Name"
                           required
                           value="${info.name}"
                    >
                </div>

                <div class="col-md-12 mb-12 mt-10">
                    <label>Status </label>
                    <input type="checkbox" id="active"
                           <c:if test="${info.active==true}">checked=checked</c:if> name="active">
                </div>

            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
    </div>
</form>