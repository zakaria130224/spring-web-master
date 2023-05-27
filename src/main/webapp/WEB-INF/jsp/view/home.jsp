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
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
            </ol>
        </nav>
        <!-- /Breadcrumb -->

        <!-- Container -->
        <div class="container-fluid px-xxl-65 px-xl-20">
            <!-- Title -->
            <div class="hk-pg-header">
                <h4 class="hk-pg-title"><span class="pg-title-icon"><span class="feather-icon"><svg
                        xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-bar-chart-2"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12"
                                                                                                               y1="20"
                                                                                                               x2="12"
                                                                                                               y2="4"></line><line
                        x1="6" y1="20" x2="6" y2="14"></line></svg></span></span>Dashboard
                </h4>
            </div>
            <!-- /Title -->

            <!-- Row -->
            <div class="row">
                <div class="col-md-4">
                    <section class="hk-sec-wrapper">
                        <h6 class="hk-sec-title mb-30">Line Chart</h6>
                        <div class="row">
                            <div class="col-sm">
                                <div id="sparkline_1">
                                    <canvas width="343" height="50"
                                            style="display: inline-block; width: 343.462px; height: 50px; vertical-align: top;"></canvas>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="hk-sec-wrapper">
                        <h6 class="hk-sec-title mb-30">Multiple Line Chart</h6>
                        <div class="row">
                            <div class="col-sm">
                                <div id="sparkline_7">
                                    <canvas width="343" height="50"
                                            style="display: inline-block; width: 343.462px; height: 50px; vertical-align: top;"></canvas>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-md-4">
                    <section class="hk-sec-wrapper">
                        <h6 class="hk-sec-title mb-30">Bar Chart</h6>
                        <div class="row">
                            <div class="col-sm">
                                <div id="sparkline_2">
                                    <canvas width="115" height="50"
                                            style="display: inline-block; width: 115px; height: 50px; vertical-align: top;"></canvas>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="hk-sec-wrapper">
                        <h6 class="hk-sec-title mb-30">Donut Chart</h6>
                        <div class="row">
                            <div class="col-sm">
                                <span class="donut"
                                      data-peity="{ &quot;fill&quot;: [&quot; #eff9f2&quot;, &quot;#90d7a3&quot;]}"
                                      style="display: none;">3/5</span>
                                <svg class="peity" height="50" width="50">
                                    <path d="M 25 0 A 25 25 0 1 1 10.305368692688175 45.22542485937369 L 17.65268434634409 35.112712429686844 A 12.5 12.5 0 1 0 25 12.5"
                                          data-value="3" fill=" #eff9f2"></path>
                                    <path d="M 10.305368692688175 45.22542485937369 A 25 25 0 0 1 24.999999999999996 0 L 24.999999999999996 12.5 A 12.5 12.5 0 0 0 17.65268434634409 35.112712429686844"
                                          data-value="2" fill="#90d7a3"></path>
                                </svg>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-md-4">
                    <section class="hk-sec-wrapper">
                        <h6 class="hk-sec-title mb-30">Pie Chart</h6>
                        <div class="row">
                            <div class="col-sm">
                                <div id="sparkline_3">
                                    <canvas width="50" height="50"
                                            style="display: inline-block; width: 50px; height: 50px; vertical-align: top;"></canvas>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="hk-sec-wrapper">
                        <h6 class="hk-sec-title mb-30">Easy Pie Chart</h6>
                        <div class="row">
                            <div class="col-sm">
                                    <span id="pie_chart_1" class="easy-pie-chart" data-percent="86">
											<span class="percent head-font">86</span>
                                    <canvas height="62" width="62" style="height: 50px; width: 50px;"></canvas></span>
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