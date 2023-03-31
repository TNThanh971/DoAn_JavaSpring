    
<jsp:include page="header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="breadcrumbs_area">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <ul>
                        <li><a href="index.html">Trang Chủ</a></li>
                        <li>Giỏ Hàng</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>         
</div>
<!--breadcrumbs area end-->

<!--shopping cart area start -->
<div class="shopping_cart_area mt-60">
    <div class="container">  
        <form action="#"> 
            <div class="row">
                <div class="col-12">
                    <div class="table_desc">
                        <div class="cart_page table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product_remove">Xóa</th>
                                        <th class="product_thumb">Hình ảnh</th>
                                        <th class="product_name">Tên sản phẩm</th>
                                        <th class="product-price">Giá thuê</th>
                                        <th class="product-price">Giá gốc</th>
                                        <th class="product_quantity">Số lượng</th>
                                        <th class="product_total">Tổng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${userCarts}" var="userCart">
                                        <tr>
                                            <td class="product_remove"><a href="javascript:" onclick="redirectRemoveFromCart(${user.idUser}, ${userCart.idProduct})"><i class="fa fa-trash-o"></i></a></td>
                                            <td class="product_thumb"><a href=""><img src="${userCart.image}" alt=""></a></td>
                                            <td class="product_name"><a href="">${userCart.productName}</a></td>
                                            <td class="product-price">${userCart.rentalPrice}</td>
                                            <td class="product-price">${userCart.productPrice}</td>
                                            <td class="product_quantity"><label></label><input min="0" max="100" value="${userCart.cartProductQuantity}" type="number" /></td>
                                            <td class="product_total">${userCart.rentalPrice*userCart.cartProductQuantity}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>   
                        </div>  
                        <div class="cart_submit">
                            <button type="submit">cập nhật giỏ hàng</button>
                        </div>      
                    </div>
                </div>
            </div>
            <!--coupon code area start-->
            <div class="coupon_area">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="coupon_code left">
                            <h3>Coupon</h3>
                            <div class="coupon_inner">   
                                <p>Enter your coupon code if you have one.</p>                                
                                <input placeholder="Coupon code" type="text">
                                <button type="submit">Apply coupon</button>
                            </div>    
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="coupon_code right">
                            <h3>Tổng giỏ hàng</h3>
                            <div class="coupon_inner">
                                <div class="cart_subtotal">
                                    <p>Tổng giá thuê</p>
                                    <p class="cart_amount">${subtotalInvoice} VNĐ</p>
                                </div>
                                <div class="cart_subtotal">
                                    <p>Cân nặng</p>
                                    <p class="cart_amount">${weightOfCart} KG </p>
                                </div>
                                <div class="cart_subtotal ">
                                    <p>Phí vận chuyển</p>
                                    <p class="cart_amount"> ${shipFee} VNĐ</p>
                                </div>
                                <div class="cart_subtotal">
                                    <p>Tổng</p>
                                    <p class="cart_amount">${total} VNĐ</p>
                                </div>
                                <c:if test="${not empty userCarts}">
                                    <div class="checkout_btn">
                                        <a href="./checkout?idUser=${user.idUser}">Thanh Toán</a>
                                    </div>
                                </c:if>
                                <c:if test="${empty userCarts}">
                                    <div class="checkout_btn">
                                        <a href="">Vui lòng chọn sản phẩm</a>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--coupon code area end-->
        </form> 
    </div>     
</div>
<!--shopping cart area end -->   

<!--footer area start-->
<%@include file="footer.jsp" %>