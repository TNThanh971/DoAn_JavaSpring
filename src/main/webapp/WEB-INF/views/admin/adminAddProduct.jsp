<%-- 
    Document   : adminAddProduct
    Created on : Mar 9, 2023, 2:05:45 AM
    Author     : truongthanh
--%>

<%@include file="header.jsp" %>
<div class="dashboard-wrapper">
    <div class="container-fluid  dashboard-content py-0">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Thêm sản phẩm </h2>
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
            <form method="POST" name="adminAddProduct">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="card">
                        <h5 class="card-header">Nhập thông tin <br/> </h5>

                        <div class="card-body">
                            <form class="needs-validation" novalidate>
                                <div class="row">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                        <label for="validationCustom01">Tên sản phẩm</label>
                                        <input name="productName" type="text" class="form-control" id="validationCustom01" placeholder="..." value="" required>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                    </div>                                     
                                </div>
                                <div class="form-row">
                                    <div class="card-body border-top">
                                        <!--// import data from db-->
                                        <h5 class="card-title">Phân loại *</h5>
                                        <select name="ProductType" class="selectpicker">
                                            <c:forEach items="${producttypes}" var="producttype">
                                                <option value="${producttype.idType}">${producttype.typeName}</option>
                                            </c:forEach>
                                            <!--<option value="1">Wig</option>-->
                                        </select>
                                        <!--// end dropdown list-->
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                        <label for="validationCustom04">Giá mua gốc *</label>
                                        <input name="productPrice" min = "1" type="number" class="form-control" id="validationCustom04" placeholder="..." required>
                                        <div class="invalid-feedback">
                                            Please provide a valid state.
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                        <label for="validationCustom05">Giá thuê *</label>
                                        <input name="productRentalPrice" min="1" type="number" class="form-control" id="validationCustom05" placeholder="..." required>
                                        <div class="invalid-feedback">
                                            Please provide a valid zip.
                                        </div>
                                    </div>
                                    <div class="card-body border-top">
                                        <h5 class="card-title">Kích cỡ *</h5>
                                        <select name="productSize" class="selectpicker" multiple>
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
                                        <input name="productQuantity" min="1" type="number" class="form-control" id="validationCustom06" placeholder="..." required>
                                        <div class="invalid-feedback">
                                            Please provide a valid zip.
                                        </div>
                                    </div>

                                    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                        <label for="validationCustom05">Khối lượng / Cân nặng (đơn vị: gram) *</label>
                                        <input name="productWeight" min="1" type="number" class="form-control" id="validationCustom07" placeholder="..." required>
                                        <div class="invalid-feedback">
                                            Please provide a valid zip.
                                        </div>
                                    </div>                    
                                </div>
                                <div class="row">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                        <label for="validationCustom01">Link ảnh</label>
                                        <input name="productUrlImage" type="text" class="form-control" id="validationCustom08" placeholder="..." value="" required>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                    </div>                                     
                                </div>

                                <div class="row mt-3">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                        <label class=""> Nội dung / Mô tả (có thể Enter xuống hàng) *</label>
                                        <div class="">
                                            <textarea name="productDescription" required="" class="form-control h-100"></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="mt-5 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 text-right">
                                    <button class="badge badge-info border-0 " style="width: 125px; height:30px" type="submit">Hoàn tất <i class="ml-2 icon-paper-plane"></i></button>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </form>
            <!-- ============================================================== -->
            <!-- end validation form -->
            <!-- ============================================================== -->


        </div>
        <%@include file="footer.jsp" %>

