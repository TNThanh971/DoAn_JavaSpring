<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.config.Utils"%>
<%@page import="com.mycompany.database.DBQuery"%>

<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Ventur - shop fullwidth</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="./assets/user/img/favicon.ico">

        <!-- CSS 
        ========================= -->


        <!-- Plugins CSS -->
        <link rel="stylesheet" href="./assets/user/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="./assets/user/css/styleHome.css">

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
                                <li>Sản Phẩm</li>
                                <li>Wig</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!--shop  area start-->
        <div class="shop_area shop_fullwidth mt-60 mb-60">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!--shop wrapper start-->
                        <!--shop toolbar start-->
                        <div class="shop_toolbar_wrapper">
                            <div class="shop_toolbar_btn">

                                <button data-role="grid_3" type="button" class=" btn-grid-3" data-bs-toggle="tooltip" title="3"></button>

                                <button data-role="grid_4" type="button"  class="active btn-grid-4" data-bs-toggle="tooltip" title="4"></button>

                                <button data-role="grid_list" type="button"  class="btn-list" data-bs-toggle="tooltip" title="List"></button>
                            </div>
                            <div class=" niceselect_option">
                                <form class="select_option" action="#">
                                    <select name="orderby" id="short">

                                        <option selected value="1">Xếp theo mới nhất</option>
                                        <option  value="2">Xếp theo giá từ thấp đến cao</option>
                                        <option value="3">Xếp theo giá từ cao xuống thấp</option>
                                    </select>
                                </form>
                            </div>
                            <div class="page_amount">
                                <p>Showing 1–9 of 21 results</p>
                            </div>
                        </div>
                        <!--shop toolbar end-->
                        <div class="row shop_wrapper grid_4">
                            <c:forEach items="${wigs}" var="wig">
                                <div class="col-lg-3 col-md-4 col-12 ">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a class="primary_img" href="./productDetail?idProduct=${wig.idProduct}"><img src="${wig.productUrlImage}" alt=""></a>
                                                <a class="secondary_img" href="./productDetail?idProduct=${wig.idProduct}"><img src="${wig.productUrlImage}" alt=""></a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart"><a href="./cart" title="Add to cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                        <li class="quick_button"><a href="" data-bs-toggle="modal" data-bs-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a></li>

                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product_content grid_content">
                                                <h4 class="product_name"><a href="./productDetail?idProduct=${wig.idProduct}">${wig.productName}</a></h4>
                                                <div class="price_box"> 
                                                    <span class="current_price">${wig.productPrice} VND</span>
                                                </div>
                                            </div>
                                            <div class="product_content list_content">
                                                <h4 class="product_name"><a href="./productDetail?idProduct=${wig.idProduct}">${wig.productName}</a></h4>
                                                <div class="price_box"> 
                                                    <span class="current_price">${wig.productPrice} VND</span>
                                                </div>
                                                <div class="product_desc">

                                                    <p>${wig.productDescription} </p>
                                                </div>
                                            </div>
                                        </figure>
                                    </article>
                                </div>
                            </c:forEach>


                        </div>

                        <div class="shop_toolbar t_bottom">
                            <div class="pagination">
                                <!--                                <ul>
                                                                    <li class="current">1</li>
                                                                    <li><a href="#">2</a></li>
                                                                    <li><a href="#">3</a></li>
                                                                    <li class="next"><a href="#">next</a></li>
                                                                    <li><a href="#">>></a></li>
                                                                </ul>-->
                                <%    DB dbFilm = new DBFilm();
                                    int pg = Utils.Page(request.getParameter("page"));
                                    int end_page = (int) Math.ceil((double) dbFilm.GetCountFilms() / Utils.LIMIT_ROWS);
                                    for (int i = 1; i <= end_page; i++)
                                        if (Math.abs(pg - i) <= 3 || i == 1 || i == end_page) {
                                %>
                                <a href="javascript:" onclick="pagination(<%= i%>)" class="<%= pg == i ? "active" : ""%>"><%= i%></a>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <!--shop toolbar end-->
                        <!--shop wrapper end-->
                    </div>
                </div>
            </div>
        </div>
        <!--shop  area end-->

        <!--footer area start-->
        <%@include file="footer.jsp"%>
        <!--footer area end-->

        <!-- modal area start-->
        <div class="modal fade" id="modal_box" tabindex="-1" role="dialog"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal_body">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5 col-md-5 col-sm-12">
                                    <div class="modal_tab">  
                                        <div class="tab-content product-details-large">
                                            <div class="tab-pane fade show active" id="tab1" role="tabpanel" >
                                                <div class="modal_tab_img">
                                                    <a href=""><img src="./assets/user/img/product/productbig6.webp" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab2" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="./assets/user/img/product/productbig7.webp" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab3" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="./assets/user/img/product/productbig8.webp" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab4" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="./assets/user/img/product/productbig9.webp" alt=""></a>    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal_tab_button">    
                                            <ul class="nav product_navactive owl-carousel" role="tablist">
                                                <li >
                                                    <a class="nav-link active" data-bs-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false"><img src="./assets/user/img/product/product1.webp" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" data-bs-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false"><img src="./assets/user/img/product/product3.webp" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link button_three" data-bs-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false"><img src="./assets/user/img/product/product7.webp" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" data-bs-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false"><img src="./assets/user/img/product/product10.webp" alt=""></a>
                                                </li>

                                            </ul>
                                        </div>    
                                    </div>  
                                </div> 
                                <div class="col-lg-7 col-md-7 col-sm-12">
                                    <div class="modal_right">
                                        <%--<c:forEach items="productsById" var="productById">--%>
                                        <div class="modal_title mb-10">
                                            <h2>${productById.productName}</h2> 
                                        </div>
                                        <div class="modal_price mb-10">
                                            <span class="new_price">$64.99</span>    
                                        </div>
                                        <div class="modal_description mb-15">
                                            <p>${productById.productDescription} </p>    
                                        </div> 
                                        <div class="variants_selects">
                                            <div class="variants_size">
                                                <h2>size</h2>
                                                <select class="select_option">
                                                    <option selected value="1">S</option>
                                                    <option value="1">M</option>
                                                    <option value="1">L</option>
                                                    <option value="1">XL</option>
                                                    <option value="1">XXL</option>
                                                </select>
                                            </div>
                                            <div class="modal_add_to_cart">
                                                <form action="#">
                                                    <input min="1" max="100" step="2" value="1" type="number">
                                                    <button type="submit">add to cart</button>
                                                </form>
                                            </div>   
                                        </div>    
                                        <%--</c:forEach>--%>
                                    </div>    
                                </div>    
                            </div>     
                        </div>
                    </div>    
                </div>
            </div>
        </div>
        <!-- modal area end-->


        <!-- JS
        ============================================ -->

        <!-- Plugins JS -->
        <script src="./assets/user/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="./assets/user/js/main.js"></script>



    </body>

</html>
