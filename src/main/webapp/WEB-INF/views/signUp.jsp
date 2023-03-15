  
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
                        <li>Đăng Ký Tài Khoản</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>         
</div>
<!--breadcrumbs area end-->

<!-- customer login start -->
<div class="customer_login mt-60">
    <div class="container">
        <div class="row">
            <!--register area start-->
            <div class="col-lg-6 col-md-6">
                <div class="account_form register">
                    <h2>Register</h2>
                    <form action="" method="POST" name="signUp">
                        <c:if test="${not empty msg}">
                            <div class="form-group"><p>${msg}</p></div>
                                </c:if>
                        <label>Họ và tên <span>*</span></label>
                        <div class="group input-group">
                            <input type="text" name="firstName" placeholder="Họ Tên"  required>
                        </div>
                        <label>Email <span>*</span></label>
                        <div class="group input-group">
                            <input type="email" name="email" placeholder="Email"  required>
                        </div>
                        <label>Mật Khẩu <span>*</span></label>
                        <div class="group input-group">
                            <input type="password" name="password" placeholder="Password"  required pattern=".{8,}">
                        </div>
                        <label>Nhập Lại Mật Khẩu <span>*</span></label>
                        <div class="group input-group">
                            <input type="password" name="password2" placeholder="Password"  required pattern=".{8,}">
                        </div>
                        <div class="alert-text signup__alert">
                            <span class="help__text">At least 8 character</span>
                        </div>
                        <div class="login_submit">
                            <button type="submit">Đăng Ký</button>
                        </div>
                    </form>
                </div>    
            </div>
            <!--register area end-->
        </div>
    </div>    
</div>
<%@include file="footer.jsp" %>
