<%-- 
    Document   : adminListInvoices
    Created on : Mar 9, 2023, 2:07:17 AM
    Author     : truongthanh
--%>
<%@page import="com.mycompany.config.Utils"%>
<%@include file="header.jsp" %>
<div class="dashboard-wrapper" style="min-height:0 !important;">
    <div class="container-fluid  dashboard-content " style="padding-bottom:0 !important;">
        <!-- ============================================================== -->
        <!-- pageheader -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Đơn hàng </h2>
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
                        <h3>Lọc hoá đơn</h3>
                        <p>Tìm kiếm nhanh hoá đơn theo trạng thái hoá đơn.</p>
                        <div class="form-row d-flex">
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2 mt-3">
                                <label for="validationCustom04">Mã hóa đơn</label>
                                <input type="text" class="form-control" id="validationCustom04"
                                       placeholder="..." required>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2 ml-3">
                                <h5 class="card-title">Phân loại *</h5>
                                <select name="InvoiceType" class="selectpicker">
                                    <option data-content="<span class='badge badge-dark'>Tất cả</span>">Tất cả</option>
                                    <c:forEach items="${invoicetypes}" var="invoicetype">
                                            <option value="${invoicetype.invoiceStatusId}">${invoicetype.invoiceStatusName}</option>
                                    </c:forEach>
                                    <!--<option value="1">Wig</option>-->
                                </select>
                            </div>
                            <button class="badge badge-info h-100 mt-2 px-5 border-0"
                                    style="width: 165px; height:40px !important;"  type="submit">Tìm kiếm <i
                                    class="ml-2 icon-paper-plane"></i></button>
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
                                        <th>ID Đơn</th>
                                        <th>Tên khách hàng</th>
                                        <th>Số điện thoại</th>
                                        <th>Email</th>
                                        <th>Tổng tiền (gồm các phí)</th>
                                        <th>Ngày đặt</th>
                                        <th>Trạng thái</th>
                                        <th>Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${adminInvoices}" var="adminInvoice">
                                        <tr class="mt-5">   
                                            <td>${adminInvoice.idInvoice}</td>
                                            <td>${adminInvoice.userFullName}</td>
                                            <td>${adminInvoice.phoneNumber}</td>
                                            <td>${adminInvoice.email}</td>
                                            <td>${adminInvoice.totalPrice}</td>
                                            <td>${adminInvoice.createAt}</td>
                                            <c:forEach items="${invoicetypes}" var="invoicetype">
                                                <c:if test="${invoicetype.invoiceStatusId == adminInvoice.idInvoiceStatus}">
                                                    <td class="badge badge-info">${invoicetype.invoiceStatusName}</td>
                                                </c:if>
                                            </c:forEach>
                                            <td>
                                                <a class="" href="./adminUserDetail?idUser=${adminInvoice.idUser}">
                                                    <i class="text-xl m-r-10 mdi mdi-account-plus">
                                                    </i>
                                                </a>
                                                <a href="./adminInvoiceDetail?idInvoice=${adminInvoice.idInvoice}">
                                                    <i class="m-r-10 mdi mdi-layers"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
