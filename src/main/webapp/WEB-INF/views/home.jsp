
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--header area end-->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!--slider area start-->
<section class="slider_section slider_s_one mb-40">
    <div class="slider_area owl-carousel">
        <div class="single_slider d-flex align-items-center" data-bgimg="assets/user/img/slider/slider1.webp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="slider_content content_left">
                            <h1> fashion sale preview</h1>
                            <h2>50% off</h2>
                            <p> Look good with fall's fresh take on white shirts with cool blue swaters </p>

                            <a class="button" href="./products">shop Now <i
                                    class="zmdi zmdi-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="single_slider d-flex align-items-center" data-bgimg="assets/user/img/slider/slider2.webp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-6 col-md-6 offset-md-6">
                        <div class="slider_content content_right">
                            <h1> fashion sale preview</h1>
                            <h2>50% off</h2>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                            <a class="button" href="">shop Now <i
                                    class="zmdi zmdi-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--slider area end-->
<div class="banner_area mb-66">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <figure class="single_banner">
                    <div class="banner_thumb">
                        <img src="assets/user/img/bg/banner1.webp" alt="">
                        <div class="banner_conent">
                            <h3>sale up to</h3>
                            <h2>50%</h2>
                            <p>Hoodies <span> & </span> Sweatshirts</p>
                        </div>
                    </div>
                </figure>
            </div>
            <div class="col-lg-4 col-md-4">
                <figure class="single_banner">
                    <div class="banner_thumb">
                        <img src="assets/user/img/bg/banner2.webp" alt="">
                        <div class="banner_conent">
                            <h3>sale up to</h3>
                            <h2>70%</h2>
                            <p>Caps & Hats</p>
                        </div>
                    </div>
                </figure>
            </div>
            <div class="col-lg-4 col-md-4">
                <figure class="single_banner">
                    <div class="banner_thumb">
                        <img src="assets/user/img/bg/banner3.webp" alt="">
                        <div class="banner_conent">
                            <h3>model & Trending</h3>
                            <h2>2021</h2>
                            <p>winter collections</p>
                        </div>
                    </div>
                </figure>
            </div>
        </div>
    </div>
</div>
<!--product area start-->
<div class="product_area mb-65">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section_title">
                    <h2>Sản Phẩm</h2>
                </div>
            </div>
        </div>
        <div class="tab-content">
            <div class="tab-pane fade show active" id="Men" role="tabpanel">
                <div class="row">
                    <div class="product_carousel product_column4 owl-carousel">
                        <c:forEach items="${products}" var="product">
                            <!--item product-->
                            <div class="col-lg-3">
                                <div class="product_items">

                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a class="primary_img" href="./productDetail?idProduct=${product.idProduct}">
                                                    <img width="50%" height="50%" src="${product.productUrlImage}"
                                                         
                                                         alt=""
                                                         style="width: 300px; height: 200px; object-fit: cover;"
                                                         >
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <%if (session.getAttribute("user") != null) {%>
                                                        <li class="add_to_cart">
                                                            <a href="javascript:" onclick="redirectAddToCart(${user.idUser},${product.idProduct}, 1)" title="Add to cart">
                                                                <i class="zmdi zmdi-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <%}%>
                                                        <li class="wishlist"><a href="" title="Add to Wishlist">
                                                                <i class="zmdi zmdi-favorite-outline"></i>
                                                            </a>
                                                        </li>

                                                        <li class="compare"><a href="" title="Add to Compare"><i
                                                                    class="zmdi zmdi-shuffle"></i></a></li>

                                                        <li class="quick_button"><a href="" data-bs-toggle="modal"
                                                                                    data-bs-target="#modal_box" title="quick view"> <i
                                                                    class="zmdi zmdi-eye"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name"><a href="./productDetail?idProduct=${product.idProduct}">
                                                        <c:choose>
                                                        <c:when test="${fn:length(product.productName) > 20}">
                                                            ${fn:substring(product.productName, 0, 20)}...
                                                        </c:when>
                                                        <c:otherwise>
                                                            ${product.productName}
                                                        </c:otherwise>
                                                    </c:choose>
                                                    </a></h4>
                                                <div class="price_box">
                                                    <span class="current_price">${product.productRentalPrice} VNĐ</span>
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </article>
                                </div>
                            </div>
                            <!--item product-->
                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--product area end-->

<!--footer area start-->
<%@include file ="footer.jsp"%>
<!--footer area end-->

