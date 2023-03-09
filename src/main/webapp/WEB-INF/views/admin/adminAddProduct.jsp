<%-- 
    Document   : adminAddProduct
    Created on : Mar 9, 2023, 2:05:45 AM
    Author     : truongthanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->

        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/bootstrap/css/bootstrap.min.css" />"/>
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/circular-std/style.css"/>" />
        <link rel="stylesheet" href="<c:url value="/assets/admin/libs/css/style.css"/> "/>

        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/simple-line-icons/css/simple-line-icons.css"/> "/>
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/bootstrap-select/css/bootstrap-select.css"/> ">

        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/fontawesome/css/fontawesome-all.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/charts/chartist-bundle/chartist.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/charts/morris-bundle/morris.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/charts/c3charts/c3.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/flag-icon-css/flag-icon.min.css"/>"/>

        <title>Concept - Bootstrap 4 Admin Dashboard Template</title>
    </head>

    <body>
        <!-- ============================================================== -->
        <!-- main wrapper -->
        <!-- ============================================================== -->
        <div class="dashboard-main-wrapper">
            <!-- ============================================================== -->
            <!-- navbar -->
            <!-- ============================================================== -->
            <div class="dashboard-header">
                <nav class="navbar navbar-expand-lg bg-white fixed-top">
                    <a class="navbar-brand" href="./adminIndex">Concept</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto navbar-right-top">
                            <li class="nav-item">
                                <div id="custom-search" class="top-search-bar">
                                    <input class="form-control" type="text" placeholder="Search..">
                                </div>
                            </li>
                            <!--admin image-->
                            <li class="nav-item dropdown nav-user">
                                <a class="nav-link nav-user-img" href="" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="<c:url value="/assets/admin/images/avatar-1.jpg"/>" alt="" class="user-avatar-md rounded-circle"></a>
                                <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                    <div class="nav-user-info">
                                        <h5 class="mb-0 text-white nav-user-name">John Abraham </h5>
                                        <span class="status"></span><span class="ml-2">Available</span>
                                    </div>
                                    <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>  
            <!-- ============================================================== -->
            <!-- end navbar -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- left sidebar -->
            <!-- ============================================================== -->
            <div class="nav-left-sidebar sidebar-dark">
                <div class="menu-list">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <%@include file ="menu.jsp"%> 
                    </nav>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end left sidebar -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- wrapper  -->
            <!-- ============================================================== -->\
            <div class="dashboard-wrapper">
                <div class="container-fluid  dashboard-content py-0">
                    <!-- ============================================================== -->
                    <!-- pageheader -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">Sản phẩm </h2>
                                <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Forms</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Form Validations</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader -->
                    <!-- ============================================================== -->

                    <div class="row">
                        <!-- ============================================================== -->
                        <!-- validation form -->
                        <!-- ============================================================== -->
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Nhập thông tin <br/> </h5>

                                <div class="card-body">
                                    <form class="needs-validation" novalidate>
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <label for="validationCustom01">Tên sản phẩm</label>
                                                <input type="text" class="form-control" id="validationCustom01" placeholder="..." value="" required>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>                                     
                                        </div>
                                        <div class="form-row">
                                            <div class="card-body border-top">
                                                <h5 class="card-title">Phân loại *</h5>
                                                <select class="selectpicker">
                                                    <option data-content="<span class='badge badge-danger'>Wig</span>">Wig</option>
                                                    <option data-content="<span class='badge badge-success'>Trang phục</span>">Trang phục</option>
                                                    <option data-content="<span class='badge badge-brand'>Phụ kiện</span>">Phụ kiện</option>
                                                </select>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom04">Giá mua gốc *</label>
                                                <input min = "1" type="number" class="form-control" id="validationCustom04" placeholder="..." required>
                                                <div class="invalid-feedback">
                                                    Please provide a valid state.
                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Giá thuê *</label>
                                                <input min="1" type="number" class="form-control" id="validationCustom05" placeholder="..." required>
                                                <div class="invalid-feedback">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>
                                            <div class="card-body border-top">
                                                <h5 class="card-title">Kích cỡ *</h5>
                                                <select class="selectpicker" multiple>
                                                    <option>S</option>
                                                    <option>M</option>
                                                    <option>L</option>
                                                    <option>XL</option>
                                                    <option>XXL</option>
                                                    <option>XXXL</option>
                                                </select>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Số lượng *</label>
                                                <input min="1" type="number" class="form-control" id="validationCustom06" placeholder="..." required>
                                                <div class="invalid-feedback">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>

                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Khối lượng / Cân nặng (đơn vị: gram) *</label>
                                                <input min="1" type="number" class="form-control" id="validationCustom07" placeholder="..." required>
                                                <div class="invalid-feedback">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>                    
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <label for="validationCustom01">Link ảnh</label>
                                                <input type="text" class="form-control" id="validationCustom08" placeholder="..." value="" required>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>                                     
                                        </div>

                                        <div class="row mt-3">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <label class=""> Nội dung / Mô tả (có thể Enter xuống hàng) *</label>
                                                <div class="">
                                                    <textarea required="" class="form-control h-100"></textarea>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                                                    <label class="form-check-label" for="invalidCheck">
                                                        Agree to terms and conditions
                                                    </label>
                                                    <div class="invalid-feedback">
                                                        You must agree before submitting.
                                                    </div>
                                                </div>
                                            </div>
                                        </div> -->
                                        <div class="mt-5 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 text-right">
                                            <button class="badge badge-info border-0 " style="width: 125px; height:30px" type="submit">Hoàn tất <i class="ml-2 icon-paper-plane"></i></button>

                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end validation form -->
                        <!-- ============================================================== -->


                    </div>
                    <!-- ============================================================== -->
                    <!-- footer -->
                    <!-- ============================================================== -->
                    <div class="footer">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                    Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                    <div class="text-md-right footer-links d-none d-sm-block">
                                        <a href="javascript: void(0);">About</a>
                                        <a href="javascript: void(0);">Support</a>
                                        <a href="javascript: void(0);">Contact Us</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end footer -->
                    <!-- ============================================================== -->
                </div>

                <!-- ============================================================== -->
                <!-- end wrapper  -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- end main wrapper  -->
            <!-- ============================================================== -->
            <!-- Optional JavaScript -->
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
    </body>

</html>
