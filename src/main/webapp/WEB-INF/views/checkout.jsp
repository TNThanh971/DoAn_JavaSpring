
<%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <input placeholder="Họ và tên" type="text" value="<%= user.getFirstName()%>" required>    
                            </div>
                            <div class="col-12 mb-20">
                                <label>Địa chỉ giao hàng<span>*</span></label>
                                <input placeholder="Số nhà, Phường/Xã, Phành phố/Tỉnh" type="text" value="<%= user.getAddress()%>" required>     
                            </div>
                            <div class="col-lg-8 mb-20">
                                <label>Số điện thoại<span>*</span></label>
                                <input type="text" value="<%= user.getPhoneNumber()%>" required> 
                            </div> 
                            <div class="col-4 mb-20">
                                <label>Số ngày thuê tối đa<span>*</span></label>
                                <input type="number" name="invoice_num_rental_days" value="3" min="3" max="7" id="rentalDays" required>
                            </div>
                            <div class="col-12 mb-20">
                                <label> Email<span>*</span></label>
                                <input type="text" value="<%= user.getEmail()%>" required> 
                            </div> 
                            <div class="col-12">
                                <div class="order-notes">
                                    <label for="order_note">Ghi Chú Đơn Hàng</label>
                                    <textarea id="order_note" placeholder="Size, thời gian giao hàng" required></textarea>
                                </div>    
                            </div>     	    	    	    	    	    	    
                        </div>
                    </form>    
                </div>
                <div class="col-lg-6 col-md-6">
                    <form action="" method="POST">    
                        <h3>Đơn Hàng</h3> 
                        <div class="order_table table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Tên sản phẩm</th>
                                        <th>Giá</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${userCarts}" var="userCart">
                                        <tr>
                                            <td> ${userCart.productName} <strong> × ${userCart.cartProductQuantity}</strong></td>
                                            <td> ${userCart.rentalPrice*userCart.cartProductQuantity}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Phí Vận Chuyển</th>
                                        <td><strong>${shipFee} VNĐ</strong></td>
                                    </tr>
                                    <tr>
                                        <th>Phí Đảm Bảo Tài Sản</th>
                                        <td><strong>${pondFee} VNĐ</strong></td>
                                    </tr>
                                    <tr class="order_total">
                                        <th>Tổng Thanh Toán</th>
                                        <td>
                                            <strong>
                                                ${totalInvoice} VNĐ
                                            </strong>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>     
                        </div>
                        <c:if test="${not empty userCarts}">
                            <div class="payment_method">
                                <div class="order_button">
                                    <a type="submit" href="javascript:" onclick="redirectCheckout(<%= user.getIdUser()%>)">Thanh Toán</a> 
                                </div>    
                            </div> 
                        </c:if> 
                    </form>         
                </div>
            </div> 
        </div> 
    </div>       
</div>
<!--Checkout page section end-->

<!--footer area start-->
<%@include file="footer.jsp" %>