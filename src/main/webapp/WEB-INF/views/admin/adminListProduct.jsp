<%-- 
    Document   : adminListProduct
    Created on : Mar 9, 2023, 2:07:34 AM
    Author     : truongthanh
--%>
<%@page import="com.mycompany.config.Utils"%>
<%@page import="com.mycompany.database.DBProduct"%>
<%@include file="header.jsp" %>
<div class="dashboard-wrapper" style="min-height:0 !important;">
    <div class="container-fluid  dashboard-content " style="padding-bottom:0 !important;">
        <!-- ============================================================== -->
        <!-- pageheader -->
        <!-- ============================================================== -->
         <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Danh sách sản phẩm </h2>
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
                    <div class="contentListProduct ml-3 mt-3">
                        <h3>Lọc sản phẩm</h3>
                        <p>Tìm kiếm nhanh sản phẩm theo tên hoặc loại sản phẩm.</p>
                        <div class="form-row d-flex">
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2 mt-3">
                                <label for="validationCustom04">Tên sản phẩm *</label>
                                <input type="text" class="form-control" id="validationCustom04"
                                       placeholder="..." required>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2 ml-3">
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
                            <button class="badge badge-info border-0 h-100 mt-2 px-5" 
                                    style="width: 165px; height:40px !important;" type="submit">Tìm kiếm <i
                                    class="ml-2 icon-paper-plane"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card">
                    <div class="row justify-content-around">
                        <c:forEach items="${products}" var="product">
                            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12 mt-4">
                                <!-- .card -->  
                                <div class="card card-figure row m-0">
                                    <!-- .card-figure -->
                                    <figure class="figure ">
                                        <!-- .figure-img -->
                                        <div class="figure-img">
                                            <img class="img-fluid" src="${product.productUrlImage}" alt="Card image cap">
                                            <div class="figure-tools">
                                                <a href="#" class="tile tile-circle tile-sm mr-auto">
                                                    <span class="oi-data-transfer-download"></span></a>
                                                <span class="badge badge-danger">Wig</span>
                                            </div>
                                            <div class="figure-action">
                                                <a href="./adminProductDetail?idProduct=${product.idProduct}" class="btn btn-block btn-sm btn-primary">Xem chi tiết</a>
                                            </div>
                                        </div>
                                        <!-- /.figure-img -->
                                        <!-- .figure-caption -->
                                        <figcaption class="figure-caption">
                                            <h3 class="figure-title text-center btn-light"><a href="">${product.productName}</a></h3>
                                            <div class="divPriceProduct mt-3 text-right text-dark">
                                                <p class="d-inline text-dark" >
                                                <h4 class=" mt-3 d-inline text-dark">${product.productPrice}</h4> 
                                                vnđ 
                                            </div>

                                        </figcaption>
                                        <!-- /.figure-caption -->
                                    </figure>
                                    <!-- /.card-figure -->
                                </div>
                                <!-- /.card -->
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <div class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                        . All rights reserved. Dashboard by Wibu
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
<%@include file="footer.jsp" %>
