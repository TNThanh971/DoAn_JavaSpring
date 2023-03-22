<%@page import="com.mycompany.model.User"%>
<%@include file="header.jsp" %>
<div class="dashboard-wrapper" style="min-height:0 !important;">
    <div class="container-fluid  dashboard-content" style="padding-bottom: 0;">
        <!-- ============================================================== -->
        <!-- pageheader -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Form Validations </h2>
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
                    <div class="detailsInvoicesUser d-inline mt-2 badge-info">
                        <h2 class="card-header d-inline badge-info">Tổng đơn đã đặt: ${invoiceTotalCountByIdUser}</h2>
                        <h2 class="card-header d-inline badge-info " style="margin-left: 250px;">Tổng đơn huỷ: ${invoiceCancelCountByIdUser}</h2>
                    </div>

                    <div class="card-body">
                        <form id="form" data-parsley-validate="" novalidate="">
                            <div class="form-group row">
                                <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Họ tên:</label>
                                <div class="col-9 col-lg-10">
                                    <p class="ml-5 mt-2">${userDetail.firstName}</p>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Email:</label>
                                <div class="col-9 col-lg-10">
                                    <p class="ml-5 mt-2">${userDetail.email}</p>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Số điện thoại:</label>
                                <div class="col-9 col-lg-10">
                                    <p class="ml-5 mt-2">${userDetail.phoneNumber}</p>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Địa chỉ giao hàng mặc định:</label>
                                <div class="col-9 col-lg-10">
                                    <p class="ml-5 mt-2">${userDetail.address}</p>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Số tài khoản ngân hàng:</label>
                                <div class="col-9 col-lg-10">
                                    <p class="ml-5 mt-2">${userDetail.bankAccountNumber}</p>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Tên ngân hàng:</label>
                                <div class="col-9 col-lg-10">
                                    <p class="ml-5 mt-2">${userDetail.bankName}</p>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
