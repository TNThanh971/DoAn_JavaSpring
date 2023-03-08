<%@page import="com.mycompany.config.Utils"%>
<%@page import="com.mycompany.database.DBQuery"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Wibu Shop - Thanh Toán</title>
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
                            <li>Thanh Toán</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
    
    <!--Checkout page section-->
    <div class="Checkout_section mt-60">
       <div class="container">
            <div class="checkout_form">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <form action="#">
                            <h3>Thông Tin Người Nhận</h3>
                            <div class="row">
                                <div class="col-12 mb-20">
                                    <label>Họ và tên <span>*</span></label>
                                    <input placeholder="Họ và tên" type="text">    
                                </div>
                                <div class="col-12 mb-20">
                                    <label>Địa chỉ giao hàng<span>*</span></label>
                                    <input placeholder="Số nhà, Phường/Xã, Phành phố/Tỉnh" type="text">     
                                </div>
                                <div class="col-lg-8 mb-20">
                                    <label>Số điện thoại<span>*</span></label>
                                    <input type="text"> 
                                </div> 
                                <div class="col-4 mb-20">
                                    <label>Số ngày thuê tối đa<span>*</span></label>
                                    <input type="number" name="invoice_num_rental_days" value="3" min="3" max="10" required="">
                                </div>
                                 <div class="col-12 mb-20">
                                    <label> Email<span>*</span></label>
                                      <input type="text"> 
                                </div> 
                                <div class="col-12 mb-20">
                                    <input id="address" type="checkbox" data-bs-target="createp_account" />
                                    <label class="righ_0" for="address" data-bs-toggle="collapse" data-bs-target="#collapsetwo" aria-controls="collapseOne">Địa Chỉ Giao Hàng Khác</label>

                                    <div id="collapsetwo" class="collapse one" data-parent="#accordion">
                                       <div class="row">
                                        <div class="col-12 mb-20">
                                            <label>Họ và tên <span>*</span></label>
                                            <input placeholder="Họ và tên" type="text">    
                                        </div>
                                        <div class="col-12 mb-20">
                                            <label>Địa chỉ giao hàng<span>*</span></label>
                                            <input placeholder="Số nhà, Phường/Xã, Phành phố/Tỉnh" type="text">     
                                        </div>
                                        <div class="col-lg-8 mb-20">
                                            <label>Số điện thoại<span>*</span></label>
                                            <input type="text"> 
                                        </div> 
                                        <div class="col-4 mb-20">
                                            <label>Số ngày thuê tối đa <span>*</span></label>
                                            <input type="number" name="invoice_num_rental_days" value="3" min="3" max="10" required="">
                                        </div>
                                         <div class="col-12 mb-20">
                                            <label> Email<span>*</span></label>
                                              <input type="text"> 
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="order-notes">
                                         <label for="order_note">Ghi Chú Đơn Hàng</label>
                                        <textarea id="order_note" placeholder="Size, thời gian giao hàng"></textarea>
                                    </div>    
                                </div>     	    	    	    	    	    	    
                            </div>
                        </form>    
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <form action="#">    
                            <h3>Đơn Hàng</h3> 
                            <div class="order_table table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td> Handbag  fringilla <strong> × 2</strong></td>
                                            <td> $165.00</td>
                                        </tr>
                                        <tr>
                                            <td>  Handbag  justo	 <strong> × 2</strong></td>
                                            <td> $50.00</td>
                                        </tr>
                                        <tr>
                                            <td>  Handbag elit	<strong> × 2</strong></td>
                                            <td> $50.00</td>
                                        </tr>
                                        <tr>
                                            <td> Handbag Rutrum	 <strong> × 1</strong></td>
                                            <td> $50.00</td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Tạm tính</th>
                                            <td>$215.00</td>
                                        </tr>
                                        <tr>
                                            <th>Phí Vận Chuyển</th>
                                            <td><strong>$5.00</strong></td>
                                        </tr>
                                        <tr>
                                            <th>Phí Đảm Bảo Tài Sản</th>
                                            <td><strong>$5.00</strong></td>
                                        </tr>
                                        <tr class="order_total">
                                            <th>Tổng Thanh Toán</th>
                                            <td><strong>$220.00</strong></td>
                                        </tr>
                                    </tfoot>
                                </table>     
                            </div>
                            <div class="payment_method">
                                <div class="order_button">
                                    <button  type="submit">Thanh Toán</button> 
                                </div>    
                            </div> 
                        </form>         
                    </div>
                </div> 
            </div> 
        </div>       
    </div>
    <!--Checkout page section end-->

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