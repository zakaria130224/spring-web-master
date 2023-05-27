<%@ page import="com.xyz.bd.webmaster.Models.UserManagement.Entities.Menu" %>
<%@ page import="com.xyz.bd.webmaster.Models.UserManagement.DTOs.MenuTree" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<MenuTree> navTree = (List<MenuTree>) request.getAttribute("sideMenu");


%>

<!-- Vertical Nav -->
<nav class="hk-nav hk-nav-dark">
    <a href="javascript:void(0);" id="hk_nav_close" class="hk-nav-close"><span class="feather-icon"><i
            data-feather="x"></i></span></a>
    <div class="nicescroll-bar">
        <div class="navbar-nav-wrap">
            <ul class="navbar-nav flex-column">

                <%if (navTree.size() > 0) {%>
                <% for (MenuTree item : navTree) {%>
                <%if (item.getChild().size() == 0) {%>
                <%if (item.isHasLink()) {%>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/<%=item.getMenuUrl()%>">
                        <i class="<%=item.getIconClass()%>"></i>
                        <span class="nav-link-text"><%=item.getName()%></span>
                    </a>
                </li>
                <%} else { %>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="<%=item.getIconClass()%>"></i>
                        <span class="nav-link-text"><%=item.getName()%></span>
                    </a>
                </li>
                <%} %>
                <%} %>

                <%if (item.getChild().size() > 0) {%>
                <li class="nav-item">
                    <a class="nav-link" aria-expanded="true" href="#" data-toggle="collapse"
                       data-target="#tt<%=item.getId()%>">
                        <i class="<%=item.getIconClass()%>"></i>
                        <span class="nav-link-text"><%=item.getName()%></span>
                    </a>
                    <ul id="tt<%=item.getId()%>" class="nav flex-column collapse collapse-level-1">
                        <li class="nav-item">
                            <ul class="nav flex-column">
                                <% for (MenuTree child1 : item.getChild()) {%>
                                <%if (child1.getChild().size() == 0) {%>
                                <%if (child1.isHasLink()) {%>
                                <li class="nav-item">
                                    <a class="nav-link"
                                       href="${pageContext.request.contextPath}/<%=child1.getMenuUrl()%>">
                                        <i class="<%=child1.getIconClass()%>"></i>
                                        <span class="nav-link-text"><%=child1.getName()%></span>
                                    </a>
                                </li>
                                <%} else { %>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">
                                        <i class="<%=child1.getIconClass()%>"></i>
                                        <span class="nav-link-text"><%=child1.getName()%></span>
                                    </a>
                                </li>
                                <%} %>
                                <%} %>
                                <!--2nd Child-->
                                <%if (child1.getChild().size() > 0) {%>
                                <li class="nav-item">
                                    <a class="nav-link" aria-expanded="true" href="#" data-toggle="collapse"
                                       data-target="#tt<%=child1.getId()%>">
                                        <i class="<%=child1.getIconClass()%>"></i>
                                        <span class="nav-link-text"><%=child1.getName()%></span>
                                    </a>
                                    <ul id="tt<%=child1.getId()%>" class="nav flex-column collapse collapse-level-1">
                                        <li class="nav-item">
                                            <ul class="nav flex-column">
                                                <% for (MenuTree child2 : child1.getChild()) {%>
                                                <%--                                                <%if (child2.getChild().size() == 0) {%>--%>
                                                <%if (child2.isHasLink()) {%>
                                                <li class="nav-item">
                                                    <a class="nav-link"
                                                       href="${pageContext.request.contextPath}/<%=child2.getMenuUrl()%>">
                                                        <i class="<%=child2.getIconClass()%>"></i>
                                                        <span class="nav-link-text"><%=child2.getName()%></span>
                                                    </a>
                                                </li>
                                                <%} else { %>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="#">
                                                        <i class="<%=child2.getIconClass()%>"></i>
                                                        <span class="nav-link-text"><%=child2.getName()%></span>
                                                    </a>
                                                </li>
                                                <%} %>
                                                <%--                                                <%} %>--%>


                                                <%} %>

                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <%}%>

                                <%} %>

                            </ul>
                        </li>
                    </ul>
                </li>
                <%}%>


                <%} %>
                <%}%>
            </ul>

        </div>
    </div>
</nav>
