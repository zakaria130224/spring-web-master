    <jsp:include page="../partial/headerlink.jsp"></jsp:include>


   <!-- HK Wrapper -->
    <div class="hk-wrapper hk-vertical-nav">

        <jsp:include page="../partial/top-nav.jsp"></jsp:include>
        <jsp:include page="../partial/sidebar.jsp"></jsp:include>
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
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><span class="feather-icon"><i data-feather="archive"></i></span></span>Basic Tables</h4>
                </div>
                <!-- /Title -->

                <!-- Row -->
                <div class="row">
                    <div class="col-xl-12">
                        <section class="hk-sec-wrapper">
                            <h5 class="hk-sec-title">Regular Table</h5>
                            <p class="mb-40">Add class <code>.table</code> in table tag.</p>
                            <div class="row">
                                <div class="col-sm">
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>First Name</th>
                                                        <th>Last Name</th>
                                                        <th>Username</th>
                                                        <th>Role</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Jens</td>
                                                        <td>Brincker</td>
                                                        <td>Brincker123</td>
                                                        <td><span class="badge badge-danger">admin</span> </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Mark</td>
                                                        <td>Hay</td>
                                                        <td>Hay123</td>
                                                        <td><span class="badge badge-info">member</span> </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Anthony</td>
                                                        <td>Davie</td>
                                                        <td>Davie123</td>
                                                        <td><span class="badge badge-warning">developer</span> </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">4</th>
                                                        <td>David</td>
                                                        <td>Perry</td>
                                                        <td>Perry123</td>
                                                        <td><span class="badge badge-success">supporter</span> </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">5</th>
                                                        <td>Anthony</td>
                                                        <td>Davie</td>
                                                        <td>Davie123</td>
                                                        <td><span class="badge badge-info">member</span> </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">6</th>
                                                        <td>Alan</td>
                                                        <td>Gilchrist</td>
                                                        <td>Gilchrist123</td>
                                                        <td><span class="badge badge-success">supporter</span> </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="hk-sec-wrapper">
                            <h5 class="hk-sec-title">Table head options</h5>
                            <p class="mb-40">Similar to tables and dark tables, use the modifier classes <code>.thead-light</code> or <code>.thead-dark</code> to make <code>&lt;thead&gt;</code>s appear light or dark gray.</p>
                            <div class="row">
                                <div class="col-sm">
                                    <div class="table-wrap mb-5">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead class="thead-primary">
                                                    <tr>
                                                        <th>#</th>
                                                        <th class="w-30">thead-primary</th>
                                                        <th>Last Name</th>
                                                        <th>Username</th>
                                                        <th>Role</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="table-wrap mb-5">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead class="thead-secondary">
                                                    <tr>
                                                        <th>#</th>
                                                        <th class="w-30">thead-secondary</th>
                                                        <th>Last Name</th>
                                                        <th>Username</th>
                                                        <th>Role</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="table-wrap mb-5">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead class="thead-success">
                                                    <tr>
                                                        <th>#</th>
                                                        <th class="w-30">thead-success</th>
                                                        <th>Last Name</th>
                                                        <th>Username</th>
                                                        <th>Role</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="table-wrap mb-5">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead class="thead-warning">
                                                    <tr>
                                                        <th>#</th>
                                                        <th class="w-30">thead-warning</th>
                                                        <th>Last Name</th>
                                                        <th>Username</th>
                                                        <th>Role</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="table-wrap mb-5">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead class="thead-info">
                                                    <tr>
                                                        <th>#</th>
                                                        <th class="w-30">thead-info</th>
                                                        <th>Last Name</th>
                                                        <th>Username</th>
                                                        <th>Role</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="table-wrap mb-5">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead class="thead-danger">
                                                    <tr>
                                                        <th>#</th>
                                                        <th class="w-30">thead-danger</th>
                                                        <th>Last Name</th>
                                                        <th>Username</th>
                                                        <th>Role</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="table-wrap mb-5">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead class="thead-dark">
                                                    <tr>
                                                        <th>#</th>
                                                        <th class="w-30">thead-dark</th>
                                                        <th>Last Name</th>
                                                        <th>Username</th>
                                                        <th>Role</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="table-wrap mb-5">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th>#</th>
                                                        <th class="w-30">thead-light</th>
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

            <jsp:include page="../partial/footer.jsp"></jsp:include>
            <!-- /Footer -->

        </div>
        <!-- /Main Content -->

    </div>
    <!-- HK Wrapper -->
<jsp:include page="../partial/footerlink.jsp"></jsp:include>