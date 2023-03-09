<%-- 
    Document   : menu
    Created on : Mar 10, 2023, 2:02:52 AM
    Author     : truongthanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/bootstrap/css/bootstrap.min.css"/>">
        <link href="<c:url value="/assets/admin/vendor/fonts/circular-std/style.css"/>" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/assets/admin/libs/css/style.css"/>">

        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/simple-line-icons/css/simple-line-icons.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/bootstrap-select/css/bootstrap-select.css"/>">

        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/fontawesome/css/fontawesome-all.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/charts/chartist-bundle/chartist.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/charts/morris-bundle/morris.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/charts/c3charts/c3.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/flag-icon-css/flag-icon.min.css"/>">

        <title>Wibu Cosplay</title>
    </head>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav flex-column">
            <li class="nav-divider">
                Menu
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false"
                   data-target="#submenu-2" aria-controls="submenu-2"><i
                        class="fa fa-fw fa-rocket"></i>Gì vậy ?</a>
                <div id="submenu-2" class="collapse submenu" style="">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="./adminAddProduct">Thêm sản phẩm <span
                                    class="badge badge-secondary">New</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./adminListProduct">Danh sách sản phẩm <span
                                    class="badge badge-secondary">New</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./adminListInvoices">Danh sách đơn hàng <span
                                    class="badge badge-secondary">New</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./adminListUsers">Danh sách khách hàng <span
                                    class="badge badge-secondary">New</span></a>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</html>

