<jsp:include page="../../partial/headerlink.jsp"></jsp:include>


<!-- HK Wrapper -->
<div class="hk-wrapper hk-vertical-nav">

    <jsp:include page="../../partial/top-nav.jsp"></jsp:include>
    <jsp:include page="../../partial/sidebar.jsp"></jsp:include>
    <!-- /Vertical Nav -->


    <!-- Main Content -->
    <div class="hk-pg-wrapper">
        <!-- Breadcrumb -->
        <nav class="hk-breadcrumb" aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-light bg-transparent">
                <li class="breadcrumb-item"><a href="#">User Management ${title}</a></li>
                <li class="breadcrumb-item active" aria-current="page">User</li>
            </ol>
        </nav>
        <!-- /Breadcrumb -->


        <!-- Container -->
        <div class="container-fluid px-xxl-65 px-xl-20">


            <jsp:include page="../../partial/msg.jsp"></jsp:include>
            <!-- Title -->

            <div class="hk-pg-header mb-10">
                <div>
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="icon-user"></i></span>User
                    </h4>
                </div>
                <div class="d-flex">
                    <a href="#" class="text-secondary mr-15"><span class="feather-icon"><svg
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            class="feather feather-printer"><polyline points="6 9 6 2 18 2 18 9"></polyline><path
                            d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"></path><rect
                            x="6" y="14" width="12" height="8"></rect></svg></span></a>
                    <a href="#" class="text-secondary mr-15"><span class="feather-icon"><svg
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            class="feather feather-download"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline
                            points="7 10 12 15 17 10"></polyline><line x1="12" y1="15" x2="12"
                                                                       y2="3"></line></svg></span></a>
                    <button class="btn btn-gradient-primary btn-sm" data-toggle="modal"
                            data-target="#addUser">
                        + Add
                    </button>

                </div>
            </div>

            <!-- /Title -->


            <!-- Row -->
            <div class="row">
                <div class="col-xl-12">
                    <section class="hk-sec-wrapper">
                        <div class="row">
                            <div class="col-sm">
                                <div class="table-wrap">
                                    <div class="table-responsive">
                                        <table class="table table-hover w-100 display pb-30 " id="userTbl">
                                            <thead class="thead-primary">
                                            <tr>
                                                <%--                                                        <th>#</th>--%>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Username</th>
                                                <th>Role</th>
                                                <th>Role</th>
                                                <th>Role</th>
                                            </tr>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                </div>
            </div>
            <!-- /Row -->

        </div>
        <!-- /Container -->

        <jsp:include page="../../partial/footer.jsp"></jsp:include>
        <!-- /Footer -->

    </div>
    <!-- /Main Content -->

</div>


<!-- Add Modal forms-->
<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="addUser"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form name="f" action="saveUser" method="POST" modelAttribute="message">
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
                            <input type="text" name="name" class="form-control form-control-sm" placeholder="Enter Name"
                                   required>
                        </div>

                        <div class="col-md-12 mb-12 mt-10">
                            <label>Status </label>
                            <input type="checkbox" value="1" name="active">
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </form>
    </div>

</div>

<!-- Update Modal forms-->
<div class="modal fade" id="updateUser" tabindex="-1" role="dialog" aria-labelledby="updateUser"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document" id="userUpdateMdl">

    </div>

</div>


<!-- HK Wrapper -->
<jsp:include page="../../partial/footerlink.jsp"></jsp:include>

<script src="${pageContext.request.contextPath}/assets/custom/js/user/user.js"></script>