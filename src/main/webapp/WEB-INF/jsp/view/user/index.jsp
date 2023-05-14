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
                <li class="breadcrumb-item"><a href="#">Tables</a></li>
                <li class="breadcrumb-item active" aria-current="page">Basic Table</li>
            </ol>
        </nav>
        <!-- /Breadcrumb -->

        <!-- Container -->
        <div class="container-fluid px-xxl-65 px-xl-20">
            <!-- Title -->
            <div class="hk-pg-header">
                <h4 class="hk-pg-title"><span class="pg-title-icon"><span class="feather-icon"><i
                        data-feather="archive"></i></span></span>Basic Tables</h4>
            </div>
            <!-- /Title -->

            <!-- Row -->
            <div class="row">
                <div class="col-xl-12">
                    <section class="hk-sec-wrapper">
                        <h5 class="hk-sec-title">Regular Table</h5>
                        <div class="row">
                            <div class="col-sm">
                                <div class="table-wrap">
                                    <div class="table-responsive">
                                        <table class="table mb-0" id="user-tbl">
                                            <thead>
                                            <tr>
                                                <%--                                                        <th>#</th>--%>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Username</th>
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
<!-- HK Wrapper -->
<jsp:include page="../../partial/footerlink.jsp"></jsp:include>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/assets/plugins/spring_friendly_js/jquery.spring-friendly.js"></script>
<script src="${pageContext.request.contextPath}/assets/custom/js/user/user.js"></script>