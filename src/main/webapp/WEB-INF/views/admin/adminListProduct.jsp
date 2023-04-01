<%-- 
    Document   : adminListProduct
    Created on : Mar 9, 2023, 2:07:34 AM
    Author     : truongthanh
--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.mycompany.database.DBProduct"%>
<%@page import="com.mycompany.model.Product"%>
<%@page import="com.mycompany.config.Utils"%>
<%@include file="header.jsp" %>
<div class="dashboard-wrapper" style="min-height:0 !important;">
    <div class="container-fluid  dashboard-content " style="padding-bottom:0 !important;">
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

        <div class="row">
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
                            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12 mt-4 ">
                                <div class="card card-figure row m-0">
                                    <figure class="figure ">
                                        <div class="figure-img ">
                                            <img class="img-fluid" src="${product.productUrlImage}" style="width: 300px; height: 200px; object-fit: cover; background-color: red" alt="Card image cap">

                                            <div class="figure-tools">
                                                <a href="" class="tile tile-circle tile-sm mr-auto">
                                                    <span class="oi-data-transfer-download"></span>
                                                </a>
                                                <c:forEach items="${producttypes}" var="producttype">
                                                    <c:if test="${producttype.idType == product.idProductType}">
                                                        <span class="badge badge-danger">${producttype.typeName}</span>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                            <div class="figure-action">
                                                <a href="./adminProductDetail?idProduct=${product.idProduct}" class="btn btn-block btn-sm btn-primary">Xem chi tiết</a>
                                            </div>
                                        </div>
                                        <figcaption class="figure-caption">
                                            <h3 class="figure-title text-center btn-light"><a 
                                                    href="">
                                                    <c:choose>
                                                        <c:when test="${fn:length(product.productName) > 20}">
                                                            ${fn:substring(product.productName, 0, 20)}...
                                                        </c:when>
                                                        <c:otherwise>
                                                            ${product.productName}
                                                        </c:otherwise>
                                                    </c:choose>
                                                </a></h3>
                                            <div class="divPriceProduct mt-3 text-right text-dark">
                                                <p class="d-inline text-dark" >
                                                <h4 class=" mt-3 d-inline text-dark">${product.productPrice}</h4> vnđ 
                                            </div>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <div class="pagination"class="pagination">
            <ul>
                <%                            DBProduct dbProduct = new DBProduct();
                    int pg = Utils.Page(request.getParameter("page"));
                    int end_page = (int) Math.ceil((double) dbProduct.getCountProductsAdmin() / Utils.LIMIT_ROWS);
                    for (int i = 1; i <= end_page; i++)
                        if (Math.abs(pg - i) <= 3 || i == 1 || i == end_page) {
                %>
                <li><a href="javascript:" onclick="pagination(<%= i%>)" class="<%= pg == i ? "active" : ""%>"><%= i%></a>
                    <%
                        }
                    %>
            </ul>
        </div>
        <%@include file="footer.jsp" %>
