
<!DOCTYPE html>
<!--
Template Name: dashgrin - Responsive Bootstrap 4 Admin Dashboard Template
Author: Hencework

License: You must have a valid license purchased only from themeforest to legally use the template for your project.
-->
<html lang="en">

<!-- Mirrored from hencework.com/theme/dashgrin/login-simple.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 22 Dec 2019 09:14:52 GMT -->
<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>GP | Login</title>
		<meta name="description" content="A responsive bootstrap 4 admin dashboard template by hencework" />

		<!-- Favicon -->
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="icon" href="favicon.ico" type="image/x-icon">

		<!-- Toggles CSS -->
		<link href="${pageContext.request.contextPath}/assets/vendors4/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/assets/vendors4/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">

		<!-- Custom CSS -->
		<link href="${pageContext.request.contextPath}/assets/dist/css/style.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/assets/custom/css/custom.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<!-- HK Wrapper -->
		<div class="hk-wrapper">

			<!-- Main Content -->
			<div class="hk-pg-wrapper hk-auth-wrapper">

				<div class="container-fluid">
					<div class="row">
						<div class="col-xl-12 pa-0">
							<div class="auth-form-wrap pt-xl-0 pt-70">
								<div class="auth-form w-xl-35 w-lg-65 w-sm-85 w-100 card-login pa-25 shadow-lg">
									<a class="auth-brand text-center d-block mb-20" href="#">

										<svg width="51" height="48" viewBox="0 0 51 48" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M25.221 14.4173C25.9354 14.5299 26.0799 14.3816 26.1746 13.6882C26.3296 12.6303 26.699 10.8466 27.5622 9.01821C28.4969 7.04658 29.9854 4.88017 32.0673 3.42958C33.8208 2.22364 36.6948 0.887949 38.9198 0.403463C40.7399 0.00162001 42.4453 -0.0750825 43.9085 0.0638832C46.9155 0.3412 48.5789 1.22057 49.4138 2.35871C49.7235 2.7839 49.8929 3.30843 49.8998 3.64801C49.9237 4.21411 49.6828 4.95287 48.89 5.67812C48.1186 6.37674 46.473 7.26061 44.2289 8.03459C41.8995 8.83009 38.7163 9.67013 35.5433 10.419C32.8864 11.0468 31.3747 11.581 30.1125 12.02C28.013 12.75 27.3802 14.8935 28.6885 15.5481C30.5794 16.494 31.7621 17.4831 32.77 18.324C34.2818 19.596 36.0375 21.0927 38.2173 23.792C40.1922 26.2673 43.4229 30.9916 44.5857 35.5772C45.8727 40.6117 45.0685 45.3861 42.2923 46.7193C39.5703 48.0286 35.943 46.1393 33.3967 43.4301C30.9742 40.8589 29.2834 37.8303 27.6936 33.1588C26.3148 29.1435 25.7559 23.3209 25.7582 20.275C25.7582 19.2603 25.7422 19.0438 25.7822 18.1275C25.8746 17.329 23.7764 16.6685 21.5213 18.1573C18.955 19.8514 16.4408 22.9217 14.9565 24.7048C14.3108 25.4831 13.4355 26.6269 12.5081 27.8264C11.2854 29.3999 9.93574 31.0385 8.70537 31.9546C6.85373 33.3395 3.8788 33.912 1.79502 32.3869C0.636703 31.5373 0.0201208 29.9332 0.000758975 28.3024C-0.0165069 27.1543 0.260945 26.1156 0.819642 25.091C1.51766 23.8332 2.6669 22.4833 4.4888 20.9374C6.37278 19.3488 9.38024 17.552 12.3941 16.3098C16.9912 14.411 21.9409 13.8136 25.221 14.4173" fill="#19AAF8"></path></svg>
									</a>
									<jsp:include page="../partial/msg.jsp"></jsp:include>
									<form action="${pageContext.request.contextPath}/login"
                                                            modelAttribute="usermodel" method="POST">
										<h2 class="display-4 text-center mb-10">grameenphone</h2>
										<div class="form-group">
											<input class="form-control" placeholder="User Name" name="username" type="text">
										</div>
										<div class="form-group">
											<div class="input-group">
												<input class="form-control" placeholder="Password" type="password" name="password">
												<div class="input-group-append">
													<span class="input-group-text"><span class="feather-icon"><i data-feather="eye-off"></i></span></span>
												</div>
											</div>
										</div>
										<div class="custom-control custom-checkbox mb-25">
											<input class="custom-control-input" id="same-address" type="checkbox" checked>
											<label class="custom-control-label font-14" for="same-address">Keep me logged in</label>
										</div>
										<button class="btn btn-success btn-block" type="submit" id="submitBtn">Log In</button>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Main Content -->

		</div>
		<!-- /HK Wrapper -->

		<!-- JavaScript -->

		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/assets/vendors4/jquery/dist/jquery.min.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${pageContext.request.contextPath}/assets/vendors4/popper.js/dist/umd/popper.min.js"></script>
		<script src=".${pageContext.request.contextPath}/assets/vendors4/bootstrap/dist/js/bootstrap.min.js"></script>

		<!-- Slimscroll JavaScript -->
		<script src="${pageContext.request.contextPath}/assets/dist/js/jquery.slimscroll.js"></script>

		<!-- Fancy Dropdown JS -->
		<script src="${pageContext.request.contextPath}/assets/dist/js/dropdown-bootstrap-extended.js"></script>

		<!-- FeatherIcons JavaScript -->
		<script src="${pageContext.request.contextPath}/assets/dist/js/feather.min.js"></script>

		<!-- Init JavaScript -->
		<script src="${pageContext.request.contextPath}/assets/dist/js/init.js"></script>
	</body>

<!-- Mirrored from hencework.com/theme/dashgrin/login-simple.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 22 Dec 2019 09:14:52 GMT -->
</html>