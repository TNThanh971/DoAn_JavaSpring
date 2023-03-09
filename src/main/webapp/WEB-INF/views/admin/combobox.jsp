<%-- 
    Document   : combobox
    Created on : Mar 10, 2023, 2:37:53 AM
    Author     : truongthanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!DOCTYPE html>
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
    <div class="card-body border-top">
        <h5 class="card-title">Phân loại *</h5>
        <select class="selectpicker">
            <option data-content="<span class='badge badge-dark'>Tất cả</span>">Tất cả
            </option>
            <option data-content="<span class='badge badge-danger'>Wig</span>">Wig
            </option>
            <option data-content="<span class='badge badge-success'>Trang phục</span>">
                Trang phục</option>
            <option data-content="<span class='badge badge-brand'>Phụ kiện</span>">Phụ
                kiện</option>
        </select>
    </div>
<!-- jquery 3.3.1 -->
    <script src="<c:url value="/assets/admin/vendor/jquery/jquery-3.3.1.min.js"/>"></script>
    <!-- bootstap bundle js -->
    <script src="<c:url value="/assets/admin/vendor/bootstrap/js/bootstrap.bundle.js"/>"></script>
    <!-- slimscroll js -->
    <script src="<c:url value="/assets/admin/vendor/slimscroll/jquery.slimscroll.js"/>"></script>
    <!-- main js -->
    <script src="<c:url value="/assets/admin/libs/js/main-js.js"/>"></script>
    <!-- chart chartist js -->
    <script src="<c:url value="/assets/admin/vendor/charts/chartist-bundle/chartist.min.js"/>"></script>
    <!-- sparkline js -->
    <script src="<c:url value="/assets/admin/vendor/charts/sparkline/jquery.sparkline.js"/>"></script>
    <!-- morris js -->
    <script src="<c:url value="/assets/admin/vendor/charts/morris-bundle/raphael.min.js"/>"></script>
    <script src="<c:url value="/assets/admin/vendor/charts/morris-bundle/morris.js"/>"></script>
    <!-- chart c3 js -->
    <script src="<c:url value="/assets/admin/vendor/charts/c3charts/c3.min.js"/>"></script>
    <script src="<c:url value="/assets/admin/vendor/charts/c3charts/d3-5.4.0.min.js"/>"></script>
    <script src="<c:url value="/assets/admin/vendor/charts/c3charts/C3chartjs.js"/>"></script>
    <script src="<c:url value="/assets/admin/libs/js/dashboard-ecommerce.js"/>"></script>

    <script src="<c:url value="/assets/admin/vendor/bootstrap-select/js/bootstrap-select.js"/>"></script>
</html>
