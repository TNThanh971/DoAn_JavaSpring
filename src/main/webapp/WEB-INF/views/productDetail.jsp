<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Wibu Shop - Chi tiết sản phẩm</title>
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
                                <li>Chi tiết sản phẩm</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!--product details start-->
        <div class="product_details variable_product mt-60 mb-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="product-details-tab">
                            <div id="img-1" class="zoomWrapper single-zoom">
                                <a href="#">
                                    <img id="zoom1" src="${product.productUrlImage}" data-zoom-image="${product.productUrlImage}" alt="big-1">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="product_d_right">
                            <form action="#">

                                <h1>${product.productName}</h1>
                                <div class="product_nav">
                                </div>
                                <div class="price_box">
                                    <span class="current_price">${product.productPrice}</span>
                                </div>
                                <div class="product_desc">
                                    <p>${product.productDescription}</p>
                                </div>
                                <div class="product_variant color">
                                </div>

<!--                                <div class="product_variant size">
                                    <label>SIZE</label>
                                    <select class="niceselect_option" id="color2" name="produc_color2">
                                        <option selected value="1"> Size in option</option>        
                                        <option value="2">S</option>              
                                        <option value="3">M</option>              
                                        <option value="4">L</option>              
                                        <option value="5">XL</option>              
                                        <option value="6">XXL</option>              
                                    </select>   
                                </div>-->
                                <div class="product_variant quantity">
                                    <label>quantity</label>
                                    <input min="1" max="100" value="1" type="number">/${product.productQuantity}
                                    <button class="button" type="submit">add to cart</button>  

                                </div> 
                            </form>
                        </div>
                    </div>

                </div>
            </div>    
        </div>
        <!--product details end-->

        <!--product area start-->
<!--        <section class="product_area related_products">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title">
                            <h2>Sản Phẩm Liên Quan</h2>
                        </div>
                    </div>
                </div> 
                <div class="row">
                    <div class="product_carousel product_column4 owl-carousel">
                        <div class="col-lg-3">
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product1.webp" alt=""></a>
                                        <a class="secondary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product2.webp" alt=""></a>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                <li class="quick_button"><a href="#" data-bs-toggle="modal" data-bs-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="chi-tiet-san-pham.html">Donec Ac Tempus</a></h4>
                                        <div class="price_box"> 
                                            <span class="current_price">$180.00</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>        
                        <div class="col-lg-3">        
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product3.webp" alt=""></a>
                                        <a class="secondary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product4.webp" alt=""></a>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                <li class="quick_button"><a href="#" data-bs-toggle="modal" data-bs-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="chi-tiet-san-pham.html">Mauris vel tellus</a></h4>
                                        <div class="price_box"> 
                                            <span class="current_price">$130.00</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        <div class="col-lg-3">
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product7.webp" alt=""></a>
                                        <a class="secondary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product8.webp" alt=""></a>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                <li class="quick_button"><a href="#" data-bs-toggle="modal" data-bs-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="chi-tiet-san-pham.html">Proin Lectus Ipsum</a></h4>
                                        <div class="price_box"> 
                                            <span class="current_price">$180.00</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>    
                        <div class="col-lg-3">    
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product9.webp" alt=""></a>
                                        <a class="secondary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product10.webp" alt=""></a>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                <li class="quick_button"><a href="#" data-bs-toggle="modal" data-bs-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="chi-tiet-san-pham.html">Fusce Aliquam</a></h4>
                                        <div class="price_box"> 
                                            <span class="current_price">$130.00</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        <div class="col-lg-3">
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product5.webp" alt=""></a>
                                        <a class="secondary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product6.webp" alt=""></a>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                <li class="quick_button"><a href="#" data-bs-toggle="modal" data-bs-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="chi-tiet-san-pham.html">Aliquam Consequat</a></h4>
                                        <div class="price_box"> 
                                            <span class="current_price">$180.00</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>        
                        <div class="col-lg-3">        
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product7.webp" alt=""></a>
                                        <a class="secondary_img" href="chi-tiet-san-pham.html"><img src="assets/user/img/product/product8.webp" alt=""></a>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                <li class="quick_button"><a href="#" data-bs-toggle="modal" data-bs-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="chi-tiet-san-pham.html">Cas Meque Metus</a></h4>
                                        <div class="price_box"> 
                                            <span class="current_price">$130.00</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                    </div> 
                </div>  
            </div>
        </section>-->
        <!--product area end-->

        <!--footer area start-->
        <%@include file="footer.jsp" %>
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
                                                    <a href="#"><img src="assets/user/img/product/productbig6.webp" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab2" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets/user/img/product/productbig7.webp" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab3" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets/user/img/product/productbig8.webp" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab4" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets/user/img/product/productbig9.webp" alt=""></a>    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal_tab_button">    
                                            <ul class="nav product_navactive owl-carousel" role="tablist">
                                                <li >
                                                    <a class="nav-link active" data-bs-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false"><img src="assets/user/img/product/product1.webp" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" data-bs-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false"><img src="assets/user/img/product/product3.webp" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link button_three" data-bs-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false"><img src="assets/user/img/product/product7.webp" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" data-bs-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false"><img src="assets/user/img/product/product10.webp" alt=""></a>
                                                </li>

                                            </ul>
                                        </div>    
                                    </div>  
                                </div> 
                                <div class="col-lg-7 col-md-7 col-sm-12">
                                    <div class="modal_right">
                                        <div class="modal_title mb-10">
                                            <h2>Donec Ac Tempus</h2> 
                                        </div>
                                        <div class="modal_price mb-10">
                                            <span class="new_price">$64.99</span>    
                                        </div>
                                        <div class="modal_description mb-15">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam, reiciendis maiores quidem aperiam, rerum vel recusandae </p>    
                                        </div> 
                                        <div class="variants_selects">
                                            <div class="variants_size">
                                                <h2>SIZE</h2>
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
        <script src="assets/user/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/user/js/main.js"></script>



    </body>

</html>