<%-- 
    Document   : login
    Created on : Mar 10, 2023, 3:49:43 AM
    Author     : truongthanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Wibu Shop - Đăng Nhập</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/user/img/favicon.ico">

        <!-- CSS 
        ========================= -->


        <!-- Plugins CSS -->
        <link rel="stylesheet" href="assets/user/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/user/css/style.css">

    </head>

    <body>

        <!--header area start-->
        <%@include file="header.jsp" %>
        <!--header area end-->

        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">Trang Chủ</a></li>
                                <li>Đăng Nhập</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--breadcrumbs area end-->
        <!-- customer login start -->
        <div class="customer_login mt-60">
            <div class="container">
                <div class="row">
                    <!--login area start-->
                    <div class="col-lg-7 col-md-6">
                        <div class="account_form">
                            <h2>login</h2>
                            <form action="" method="POST">
                                <c:if test="${not empty msg}">
                                    <div class="form-group"><p>${msg}</p></div>
                                        </c:if>
                                <label>Email <span>*</span></label>
                                <div class="group input-group">
                                    <input type="email" name="email" placeholder="Email"  required>
                                </div>
                                <label>Mật Khẩu <span>*</span></label>
                                <div class="group input-group">
                                    <input type="password" name="password" placeholder="Password"  required pattern=".{8,}">
                                </div>
                                <div class="alert-text signup__alert">
                                    <span class="help__text">At least 8 character</span>
                                </div>
                                <div class="login_submit">
                                    <a href="./signUp">Đăng Ký</a>

                                    <button type="submit">Đăng Nhập</button>

                                </div>

                            </form>
                        </div>
                    </div>
                    <!--login area start-->
                </div>
            </div>
        </div>
        <!-- customer login end -->


        <!--footer area start-->
        <%@include file="footer.jsp" %>
        <!--footer area end-->
        <!-- JS
    ============================================ -->

        <!-- Plugins JS -->
        <script src="assets/user/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/user/js/main.js"></script>



    </body>

</html>
