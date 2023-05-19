<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>GP I </title>
    <meta name="description" content="A responsive"/>

    <!-- Favicon -->
    <%--    <link rel="shortcut icon" href="favicon.ico">--%>
    <%--    <link rel="icon" href="favicon.ico" type="image/x-icon">--%>

    <!-- Bootstrap table CSS -->
    <link href="${pageContext.request.contextPath}/assets/plugins/bootstrap/bootstrap.min.css"
          rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/assets/plugins/bootstrap-table/bootstrap-table.min.css"
          rel="stylesheet"/>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/plugins/select2-bootstrap-5-theme-1.3.0/select2-bootstrap-5-theme.min.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/plugins/bootstrap-datepicker-1.9.0-dist/css/bootstrap-datepicker.min.css"/>


    <!-- Data Table CSS -->
    <link href="${pageContext.request.contextPath}/assets/plugins/datatables/datatables.min.css" rel="stylesheet"
          type="text/css">


    <!-- Toggles CSS -->
    <link href="${pageContext.request.contextPath}/assets/plugins/jquery-toggles/css/toggles.css" rel="stylesheet"
          type="text/css">
    <link href="${pageContext.request.contextPath}/assets/plugins/jquery-toggles/css/themes/toggles-light.css"
          rel="stylesheet" type="text/css">

    <!-- Template CSS -->

    <link href="${pageContext.request.contextPath}/assets/dist/css/style.css" rel="stylesheet" type="text/css">

</head>
<input type="hidden" id="domain_url" name="domain_url" value="${pageContext.request.contextPath}">

<body>