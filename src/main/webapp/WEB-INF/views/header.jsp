<%@page import="com.mycompany.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Wibu Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/user/img/favicon.ico">

    <!-- CSS 
    ========================= -->

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="./assets/user/css/plugins.css">

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="./assets/user/css/styleHome.css">

</head>
<header>
    <div class="main_header header-mobile-m">
        <div class="header_top">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="header_account">
                            <ul>
                                <li class="language"><a href="#"><img src="assets/user/img/icon/vietnam.png" alt=""> VN
                                        <i class="zmdi zmdi-chevron-down zmdi-hc-fw"></i></a>
                                    <ul class="dropdown_language">
                                        <li><a href="#">English</a></li>
                                    </ul>
                                </li>
                                <%
                                    if (session.getAttribute("user") == null) {
                                %>
                                <li class="top_links"><a href="#"> Tài Khoản</a></li>
                                <%
                                } else {
                                    User user = (User) session.getAttribute("user");
                                %>
                                <li class="top_links"><a href="#"> Xin chào <%= user.getFirstName()%></a></li>
                                <%
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header_social text-right">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="header_container sticky-header">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3">
                        <div class="logo">
                            <a href="./"><img src="./assets/user/img/logo/logo.webp" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="header_container_right">
                            <!--main menu start-->
                            <div class="main_menu menu_position">
                                <nav>
                                    <ul>
                                        <li><a class="active" href="./">Trang Chủ</a></li>


                                        <li><a href="#">Sản Phẩm <i class="fa fa-angle-down"></i></a>
                                            <ul class="sub_menu pages">
                                                <li><a href="./wig">Wig</a></li>
                                                <li><a href="./accessory">Phụ Kiện</a></li>
                                                <li><a href="./cloth">Trang Phục</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <%
                                                if (session.getAttribute("user") == null) {
                                            %>
                                            <a href="./signIn">Đăng nhập</a>
                                            <%
                                            } else {
                                                User user = (User) session.getAttribute("user");
                                            %>
                                            <a href="#">Tài khoản <i class="fa fa-angle-down"></i></a>
                                            <ul class="sub_menu pages">
                                                <li><a href="./checkout">Thanh toán </a></li>
                                                <li><a href="./profile">Thông tin tài khoản</a></li>
                                                <li><a href="./cart">Giỏ hàng</a></li>
                                                <li><a href="./logout">Đăng xuất</a></li>

                                            </ul>
                                            <%
                                                }
                                            %>
                                        </li>
                                        <li><a href="about.html">Giới Thiệu</a></li>
                                        <li><a href="contact.html">Liên Hệ</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <!--main menu end-->
                            <div class="header_right_info">
                                <ul>
                                    <li class="search_box"><a href="javascript:void(0)"><i
                                                class="zmdi zmdi-search zmdi-hc-fw"></i></a>
                                        <div class="search_widget">
                                            <form action="#">
                                                <input placeholder="Search our catalog" type="text">
                                                <button type="submit"><i
                                                        class="zmdi zmdi-search zmdi-hc-fw"></i></button>
                                            </form>
                                        </div>
                                    </li>

                                    <li class="mini_cart_wrapper"><a href="javascript:void(0)"><i
                                                class="zmdi zmdi-shopping-cart zmdi-hc-fw"></i> <span
                                                class="item_count">2</span></a>
                                        <!--mini cart-->
                                        <div class="mini_cart">
                                            <div class="cart_gallery">
                                                <div class="cart_item">
                                                    <div class="cart_img">
                                                        <a href="#"><img src="assets/user/img/s-product/product.webp"
                                                                         alt=""></a>
                                                    </div>
                                                    <div class="cart_info">
                                                        <a href="#">Quisque In Arcu</a>
                                                        <p><span> $65.00 </span> X 1</p>
                                                    </div>
                                                    <div class="cart_remove">
                                                        <a href="#"><i class="ion-android-close"></i></a>
                                                    </div>
                                                </div>
                                                <div class="cart_item">
                                                    <div class="cart_img">
                                                        <a href="#"><img src="assets/user/img/s-product/product2.webp"
                                                                         alt=""></a>
                                                    </div>
                                                    <div class="cart_info">
                                                        <a href="#">Donec Ac Tempus</a>
                                                        <p><span> $60.00 </span> X 1</p>
                                                    </div>
                                                    <div class="cart_remove">
                                                        <a href="#"><i class="ion-android-close"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mini_cart_table">
                                                <div class="cart_table_border">
                                                    <div class="cart_total">
                                                        <span>Sub total:</span>
                                                        <span class="price">$125.00</span>
                                                    </div>
                                                    <div class="cart_total mt-10">
                                                        <span>total:</span>
                                                        <span class="price">$125.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mini_cart_footer">
                                                <div class="cart_button">
                                                    <a href="./cart">View cart</a>
                                                </div>
                                                <div class="cart_button">
                                                    <a href="./checkout"> Checkout</a>
                                                </div>

                                            </div>
                                        </div>
                                        <!--mini cart end-->
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
