<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Ventur - my account</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assetsUser/img/favicon.ico">
    
    <!-- CSS 
    ========================= -->


    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assetsUser/css/plugins.css">
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assetsUser/css/style.css">
    

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
                            <li>Chi Tiết Đơn Hàng</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
    
    <!-- chitietdonhang start  -->
    <div class="shopping_cart_area mt-60">
        <div class="container">
            <form action="#">
                <div class="checkout_form">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <h3>Thông tin người nhận</h3>
                            <div class="row">
                                <div class="col-lg-4 mb-20">
                                    <label>Họ tên</label>
                                    <input type="text" name="user_fullname" disabled="">
                                </div>
                                <div class="col-lg-4 mb-20">
                                    <label>SĐT</label>
                                    <input type="text" name="user_phone_number" pattern="(84|0[3|5|7|8|9])+([0-9]{8})" disabled="">
                                </div>
                                <div class="col-lg-4 mb-20">
                                    <label>Email</label>
                                    <input type="email" name="user_email" disabled="">
                                </div>
                                <div class="col-8 mb-20">
                                    <label>Địa chỉ giao hàng</label>
                                    <input type="text" name="user_address" disabled="">
                                </div>
                                <div class="col-4 mb-20">
                                    <label>Số ngày thuê tối đa</label>
                                    <input type="number" name="invoice_num_rental_days" value="" min="3" max="10" disabled="">
                                </div>
                                <div class="col-12">
                                    <div class="order-notes">
                                        <label for="order_note">Ghi chú đơn hàng</label>
                                        <textarea id="order_note" name="order_note" style="height: 100px;" disabled=""></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc">
                            <div class="cart_page table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product_thumb">Ảnh sản phẩm</th>
                                            <th class="product_name">Tên sản phẩm</th>
                                            <th class="product-price">Đơn giá</th>
                                            <th class="product_quantity">Số lượng</th>
                                            <th class="product_total">Số tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr id="product_12">
                                                    <td class="product_thumb"><a target="_blank" href="product-details.html?product_id=12"><img src="https://ae01.alicdn.com/kf/Hed5ef96829b5453ba094238219974dbfS/2017-Anime-M-i-Th-y-Th-M-t-Tr-ng-Trang-Ph-c-H-a.jpg_Q90.jpg_.webp" alt=""></a></td>
                                                    <td class="product_name"><a target="_blank" href="product-details.html?product_id=12"> Thủy Thủ Sao Thủy</a></td>
                                                    <td class="product-price product_price" id="product_price_12">56.000đ</td>
                                                    <td class="product_quantity">3</td>
                                                    <td class="product_total">168.000đ</td>
                                                </tr>								</tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!--coupon code area start-->
                <div class="coupon_area">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                                                        <div class="coupon_code left">
                                    <h3>CÁCH THANH TOÁN</h3>
                                    <div class="coupon_inner">
                                        <p>Chuyển khoản vào một trong những kênh <b>ví điện tử hoặc ngân hàng</b> bên dưới với nội dung: <b>WIBUSHOP INV34</b></p>
                                        <p>Shop sẽ kiểm tra trong ngày cho bạn. Nếu có trục trặc shop sẽ liên hệ qua số điện thoại trên tài khoản/đơn hàng để giải quyết.</p>
                                        <div class="cart_page table-responsive" style="overflow-x: hidden;">
                                            <table style="width: 100%;">
                                                <thead>
                                                    <tr>
                                                        <th>Kênh thanh toán</th>
                                                        <th>Số điện thoại / Số tài khoản</th>
                                                        <th>Quét mã</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td><b>MOMO</b></td>
                                                        <td>0358xxxxxx</td>
                                                        <td><img src="assetsUser/payment/momo.jpg" alt=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>ACB</b></td>
                                                        <td>123456</td>
                                                        <td><img src="assetsUser/payment/vcb.jpg" alt=""></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                                </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="coupon_code right">
                                <h3>Tổng giỏ hàng</h3>
                                <div class="coupon_inner">
                                    <div class="cart_subtotal">
                                        <p>Số tiền</p>
                                        <p class="cart_amount">168.000đ</p>
                                    </div>
                                    <div class="cart_subtotal">
                                        <p>Phí vận chuyển</p>
                                        <p class="cart_amount">15.000đ</p>
                                    </div>
                                    <div class="cart_subtotal">
                                        <p>Phí đảm bảo tài sản</p>
                                        <p class="cart_amount">500.000đ</p>
                                    </div>
                                    <a target="_blank" href="faq.html">Ấn vào đây để xem Câu hỏi thường gặp!</a>
                                    <div class="cart_subtotal">
                                        <p>Tổng cộng</p>
                                        <p class="cart_amount" id="cart_subtotal">683.000đ</p>
                                    </div>
                                    <div class="cart_subtotal">
                                        <p>Trạng thái đơn hàng</p>
                                        <p class="cart_amount">Chờ thanh toán</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--coupon code area end-->
            </form>
        </div>
    </div>
    <!-- chitietdonhangt end   --> 
    
    <!--footer area start-->
    <%@include file="footer.jsp" %>
    <!--footer area end-->

<!-- JS
============================================ -->

<!-- Plugins JS -->
<script src="assetsUser/js/plugins.js"></script>

<!-- Main JS -->
<script src="assetsUser/js/main.js"></script>



</body>

</html>