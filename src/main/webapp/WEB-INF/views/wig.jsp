<%@page import="com.mycompany.database.DBProduct"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.mycompany.config.Utils"%>
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--header area end-->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
                                <option  value="2">Xếp theo giá từ thấp đến cao</option>
                                <option value="3">Xếp theo giá từ cao xuống thấp</option>
                            </select>
                        </form>
                    </div>
                </div>
                <!--shop toolbar end-->
                <div class="row shop_wrapper grid_4">
                    <c:forEach items="${wigs}" var="wig">
                        <div class="col-lg-3 col-md-4 col-12 ">
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="./productDetail?idProduct=${wig.idProduct}"><img src="${wig.productUrlImage}" alt=""
                                                                                                                      style="width: 300px; height: 200px; object-fit: cover;"
                                                                                                                      ></a>
                                        <a class="secondary_img" href="./productDetail?idProduct=${wig.idProduct}"><img src="${wig.productUrlImage}" alt=""
                                                                                                                        style="width: 300px; height: 200px; object-fit: cover;"
                                                                                                                        ></a>
                                        <div class="action_links">
                                            <ul>
                                                <%if (session.getAttribute("user") != null) {%>
                                                <li class="add_to_cart">
                                                    <a href="javascript:" onclick="redirectAddToCart(${user.idUser},${wig.idProduct}, 1)" title="Add to cart">
                                                        <i class="zmdi zmdi-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <%}%>
                                                <li class="quick_button"><a href="./productDetail?idProduct=${wig.idProduct}" data-bs-toggle="modal" data-bs-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product_content grid_content">
                                        <h4 class="product_name">
                                            <a href="./productDetail?idProduct=${wig.idProduct}">
                                                <c:choose>
                                                    <c:when test="${fn:length(wig.productName) > 20}">
                                                        ${fn:substring(wig.productName, 0, 20)}...
                                                    </c:when>
                                                    <c:otherwise>
                                                        ${wig.productName}
                                                    </c:otherwise>
                                                </c:choose>
                                            </a>
                                        </h4>
                                        <div class="price_box"> 
                                            <span class="current_price">Giá thuê: ${wig.productRentalPrice} VND</span>
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
                        <ul>
                            <%                            DBProduct dbProduct = new DBProduct();
                                int pg = Utils.Page(request.getParameter("page"));
                                int end_page = (int) Math.ceil((double) dbProduct.getCountProductsById1() / Utils.LIMIT_ROWS);
                                for (int i = 1; i <= end_page; i++)
                                    if (Math.abs(pg - i) <= 3 || i == 1 || i == end_page) {
                            %>
                            <li><a href="javascript:" onclick="pagination(<%= i%>)" class="<%= pg == i ? "active" : ""%>"><%= i%></a>
                                <%
                                    }
                                %>
                        </ul>
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
