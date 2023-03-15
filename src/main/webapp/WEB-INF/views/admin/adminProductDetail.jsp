<%-- 
    Document   : adminAddProduct
    Created on : Mar 9, 2023, 2:05:45 AM
    Author     : truongthanh
--%>
<%@page import="com.mycompany.model.Product"%>
<%
    Product product = (Product) request.getAttribute("proDetail");

%>
<%@include file="header.jsp" %>

<div class="row">
    <!-- ============================================================== -->
    <!-- validation form -->
    <!-- ============================================================== -->
    <form method="POST" name="product">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="card">
                <h5 class="card-header">Nhập thông tin <br/> </h5>

                <div class="card-body">
                    <form class="needs-validation" novalidate>
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                <label for="validationCustom01">Tên sản phẩm</label>
                                <input name="productName" type="text" class="form-control" id="validationCustom01" placeholder="..." value="<%= product.getProductName()%>" required>
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
                                <input name="productPrice" type="text" class="form-control" id="validationCustom04" placeholder="..." value="<%= product.getProductPrice()%>" required>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                <label for="validationCustom05">Giá thuê *</label>
                                <input name="productRentalPrice" type="text" class="form-control" id="validationCustom05" placeholder="..." value="<%= product.getProductPrice()%>" required>
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
                                <input name="productQuantity" type="text" class="form-control" id="validationCustom06" placeholder="..." value="<%= product.getProductQuantity()%>" required>
                                <div class="invalid-feedback">
                                    Please provide a valid zip.
                                </div>
                            </div>

                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                <label for="validationCustom05">Khối lượng / Cân nặng (đơn vị: gram) *</label>
                                <input name="productWeight" type="text" class="form-control" id="validationCustom07" placeholder="..." value="<%= product.getProductWeight()%>" required>
                                <div class="invalid-feedback">
                                    Please provide a valid zip.
                                </div>
                            </div>                    
                        </div>
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                <label for="validationCustom01">Link ảnh</label>
                                <input name="productUrlImage" type="text" class="form-control" id="validationCustom08" placeholder="..." value="<%= product.getProductUrlImage()%>" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>                                     
                        </div>

                        <div class="row mt-3">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                <label class=""> Nội dung / Mô tả (có thể Enter xuống hàng) *</label>
                                <div class="">
                                    <textarea name="productDescription" required="" class="form-control h-100" > ${product.getProductDescription()}</textarea>
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
    </form>
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
<%@include file="footer.jsp" %>
