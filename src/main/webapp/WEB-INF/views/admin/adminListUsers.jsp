<%-- 
    Document   : adminListUsers
    Created on : Mar 9, 2023, 2:07:52 AM
    Author     : truongthanh
--%>

<%@include file="header.jsp" %> 
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
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
<div class="dashboard-wrapper" style="min-height:0px !important;" >
    <div class="container-fluid  dashboard-content py-2" >
        <!-- ============================================================== -->
        <!-- pageheader -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Khách hàng </h2>
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

                <div class="card" style="height:195px;">
                    <div class="contentListProduct ml-3 mt-3">
                        <h3>Lọc khách hàng</h3> 
                        <p>Tìm kiếm nhanh theo tên, email hoặc số điện thoại.</p>
                        <div class="form-row d-flex position-relative" >
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                    <label for="validationCustom01">Thông tin</label>
                                    <input type="text" class="form-control" style="width:125%;" id="validationCustom08" placeholder="..." value="" required>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>                                      
                                </div>                                                                      
                            </div>
                            <button class="badge badge-info border-0 h-100 mt-2 px-5 mb-5 position-absolute" style="left: 550px;
                                    top: 5px;
                                    height: 45px !important;" type="submit">Tìm kiếm <i
                                    class="ml-2 icon-paper-plane"></i></button>  
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">Đây là danh sách thanh toán của cửa hàng.</h5>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="example" class="table table-striped table-bordered second"
                               style="width:100%">
                            <thead>
                                <tr>
                                    <th>ID khách hàng</th>
                                    <th>Tên khách hàng</th>
                                    <th>Số điện thoại</th>
                                    <th>Email</th>

                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="mt-5">
                                    <td>NV-01</td>
                                    <td>Nguyễn Văn A</td>
                                    <td>0123456789</td>
                                    <td>a@gmail.com</td>   
                                    <td>                                                                               
                                        <a class="ml-4" href="./adminDetailsUser">
                                            <i class="text-xl m-r-10 mdi mdi-account-plus">
                                            </i>
                                        </a>

                                    </td>
                                </tr>
                                <tr class="mt-5">
                                    <td>NV-02</td>
                                    <td>Nguyễn Văn B</td>
                                    <td>0123456789</td>
                                    <td>b@gmail.com</td>  
                                    <td>                                
                                        <a class="ml-4" href="./adminDetailsUser">
                                            <i class="text-xl m-r-10 mdi mdi-account-plus">
                                            </i>
                                        </a>

                                    </td>
                                </tr>
                                <tr class="mt-5">
                                    <td>NV-03</td>
                                    <td>Nguyễn Văn C</td>
                                    <td>0123456789</td>
                                    <td>c@gmail.com</td>    
                                    <td>                                      
                                        <a class="ml-4" href="./adminDetailsUser">
                                            <i class="text-xl m-r-10 mdi mdi-account-plus">
                                            </i>
                                        </a>

                                    </td>
                                </tr>

                            </tbody>

                        </table>
                    </div>
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