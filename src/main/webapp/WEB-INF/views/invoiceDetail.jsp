<%@page import="com.mycompany.model.Invoice"%>
<%
    Invoice invoiceUserInfo = (Invoice) request.getAttribute("invoiceUserInfo");
%>
<%@include file="header.jsp" %>
<!--header area end-->

<!--breadcrumbs area start-->
<div class="breadcrumbs_area">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <ul>
                        <li><a href="./">Trang Chủ</a></li>
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
                                <input type="text" name="user_fullname" value="${invoiceUserInfo.userFullName}" disabled="">
                            </div>
                            <div class="col-lg-4 mb-20">
                                <label>SĐT</label>
                                <input type="text" name="user_phone_number" pattern="(84|0[3|5|7|8|9])+([0-9]{8})" value="${invoiceUserInfo.userFullName}" disabled="">
                            </div>
                            <div class="col-lg-4 mb-20">
                                <label>Email</label>
                                <input type="email" name="user_email" value="${invoiceUserInfo.email}" disabled="">
                            </div>
                            <div class="col-8 mb-20">
                                <label>Địa chỉ giao hàng</label>
                                <input type="text" name="user_address" value="${invoiceUserInfo.userAddress}" disabled="">
                            </div>
                            <div class="col-4 mb-20">
                                <label>Số ngày thuê tối đa</label>
                                <input type="text   " name="invoice_num_rental_days" value="${invoiceUserInfo.amountOfDay}" disabled="">
                            </div>
                            <div class="col-12">
                                <div class="order-notes">
                                    <label for="order_note">Ghi chú đơn hàng</label>
                                    <textarea id="order_note" name="order_note" style="height: 100px;" value="${invoiceUserInfo.invoiceNote}" disabled=""></textarea>
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
                                        <th class="product-price">Giá thuê</th>
                                        <th class="product-price">Giá gốc</th>
                                        <th class="product_quantity">Số lượng</th>
                                        <th class="product_total">Số tiền</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${UserInvoiceDetail}" var="userInvoiceDetail">
                                        <tr id="product_12">
                                            <td class="product_thumb"><a target="_blank" href=""><img src="${userInvoiceDetail.image}" alt=""></a></td>
                                            <td class="product_name"><a target="_blank" href=""> ${userInvoiceDetail.productName}</a></td>
                                            <td class="product-price product_price" id="product_price_12">${userInvoiceDetail.productRentalPrice} VNĐ</td>
                                            <td class="product-price product_price" id="product_price_12">${userInvoiceDetail.productPrice} VNĐ</td>
                                            <td class="product_quantity">${userInvoiceDetail.quantity}</td>
                                            <td class="product_total">${userInvoiceDetail.quantity*userInvoiceDetail.productRentalPrice} VNĐ</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
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
                                                <td><img src="assets/user/payment/momo.jpg" alt=""></td>
                                            </tr>
                                            <tr>
                                                <td><b>ACB</b></td>
                                                <td>123456</td>
                                                <td><img src="assets/user/payment/vcb.jpg" alt=""></td>
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
                                    <p class="cart_amount">${cartSum} VNĐ</p>
                                </div>
                                <div class="cart_subtotal">
                                    <p>Phí vận chuyển</p>
                                    <p class="cart_amount">${invoiceUserInfo.invoiceFeeTransport} VNĐ</p>
                                </div>
                                <div class="cart_subtotal">
                                    <p>Phí đảm bảo tài sản</p>
                                    <p class="cart_amount">${invoiceUserInfo.invoiceFeePond} VNĐ</p>
                                </div>
                                <a target="_blank" href="./faq">Ấn vào đây để xem Câu hỏi thường gặp!</a>
                                <div class="cart_subtotal">
                                    <p>Tổng cộng</p>
                                    <p class="cart_amount" id="cart_subtotal">${invoiceUserInfo.totalPrice} VNĐ</p>
                                </div>
                                <div class="cart_subtotal">
                                    <p>Trạng thái đơn hàng</p>
                                    <p class="cart_amount">${invoiceUserInfo.idInvoiceStatus}</p>
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