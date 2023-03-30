
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
                        <a href="">
                            <img id="zoom1" src="${product.productUrlImage}" data-zoom-image="${product.productUrlImage}" alt="big-1">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product_d_right">
                    <form action="" method="POST" name="AddProductToCart">

                        <h1>${product.productName}</h1>
                        <div class="product_nav">
                        </div>
                        <div class="price_box">
                            <span class="current_price">Giá gốc: ${product.productPrice}</span>
                        </div>
                        <div class="product_desc">
                            <span class="current_price">Giá thuê: ${product.productRentalPrice}</span>
                        </div>
                        <div class="product_desc">
                            <p>Cân nặng: ${product.productWeight} g /sản phẩm</p>
                        </div>
                        <div class="product_desc">
                            <p>Mô tả: ${product.productDescription}</p>
                        </div>
                        <div class="product_variant color">
                        </div>
                        <div class="product_variant quantity">
                            <label>Số lượng</label>
                            <input min="1" max="100" value="1" type="number" id="productDetailQuantity">
                            <%if (session.getAttribute("user") != null) {%>
                            <button class="button" href="javascript:" onclick="addProductsToCart(${user.idUser},${wig.idProduct})" type="submit">add to cart</button>
                            <%}%>
                        </div> 
                        <label>Số lượng hiện có: ${product.productQuantity} </label>
                    </form>
                </div>
            </div>

        </div>
    </div>    
</div>
<!--footer area start-->
<%@include file="footer.jsp" %>
<!--footer area end-->
