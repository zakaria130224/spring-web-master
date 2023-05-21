<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Vertical Nav -->
<nav class="hk-nav hk-nav-dark">
    <a href="javascript:void(0);" id="hk_nav_close" class="hk-nav-close"><span class="feather-icon"><i
            data-feather="x"></i></span></a>
    <div class="nicescroll-bar">
        <div class="navbar-nav-wrap">
            <ul class="navbar-nav flex-column">
                <li class="nav-item">
                    <a class="nav-link" href="dashboard1.html">
                        <i class="ion ion-md-analytics"></i>
                        <span class="nav-link-text">Home</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" data-target="#pages_drp">
                        <i class="ion ion-md-document"></i>
                        <span class="nav-link-text">User Management</span>
                    </a>
                    <ul id="pages_drp" class="nav flex-column collapse collapse-level-1">
                        <li class="nav-item">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/menu"><i
                                            class="fa fa-list"></i><span>Menu</span> </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="invoice.html">Responsibility</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="gallery.html">User Role</a>
                                </li>
                                <li class="nav-item">

                                    <a class="nav-link" href="${pageContext.request.contextPath}/user"><i
                                            class="ion ion-md-contact"></i><span> User</span></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#auth_drp">
                        <i class="ion ion-md-contact"></i>
                        <span class="nav-link-text">Authentication</span>
                    </a>
                    <ul id="auth_drp" class="nav flex-column collapse collapse-level-1">
                        <li class="nav-item">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0);" data-toggle="collapse"
                                       data-target="#signup_drp">
                                        Sign Up
                                    </a>
                                    <ul id="signup_drp" class="nav flex-column collapse collapse-level-2">
                                        <li class="nav-item">
                                            <ul class="nav flex-column">
                                                <li class="nav-item">
                                                    <a class="nav-link" href="signup.html">Cover</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="signup-simple.html">Simple</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0);" data-toggle="collapse"
                                       data-target="#signin_drp">
                                        Login
                                    </a>
                                    <ul id="signin_drp" class="nav flex-column collapse collapse-level-2">
                                        <li class="nav-item">
                                            <ul class="nav flex-column">
                                                <li class="nav-item">
                                                    <a class="nav-link" href="login.html">Cover</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="login-simple.html">Simple</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0);" data-toggle="collapse"
                                       data-target="#recover_drp">
                                        Recover Password
                                    </a>
                                    <ul id="recover_drp" class="nav flex-column collapse collapse-level-2">
                                        <li class="nav-item">
                                            <ul class="nav flex-column">
                                                <li class="nav-item">
                                                    <a class="nav-link" href="forgot-password.html">Forgot Password</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="reset-password.html">Reset Password</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="lock-screen.html">Lock Screen</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="404.html">Error 404</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="maintenance.html">Maintenance</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>
    </div>
</nav>
