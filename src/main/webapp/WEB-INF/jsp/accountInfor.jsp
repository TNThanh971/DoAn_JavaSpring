<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Ventur - my account</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="./assetsUser/img/favicon.ico">

        <!-- CSS 
        ========================= -->


        <!-- Plugins CSS -->
        <link rel="stylesheet" href="./assetsUser/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="./assetsUser/css/style.css">


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
                                <li>My account</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!-- my account start  -->
        <section class="main_content_area">
            <div class="container">   
                <div class="account_dashboard">
                    <div class="row">
                        <div class="col-sm-12 col-md-3 col-lg-3">
                            <!-- Nav tabs -->
                            <div class="dashboard_tab_button">
                                <ul role="tablist" class="nav flex-column dashboard-list">
                                    <li><a href="#dashboard" data-bs-toggle="tab" class="nav-link active">Tổng Quan</a></li>
                                    <li> <a href="#orders" data-bs-toggle="tab" class="nav-link">Đơn Hàng</a></li>
                                    <li><a href="#account-details" data-bs-toggle="tab" class="nav-link">Thông Tin Tài Khoản</a></li>
                                    <li><a href="login.html" class="nav-link">logout</a></li>
                                </ul>
                            </div>    
                        </div>
                        <div class="col-sm-12 col-md-9 col-lg-9">
                            <!-- Tab panes -->
                            <div class="tab-content dashboard_content">
                                <div class="tab-pane fade active show" id="dashboard">
                                    <h3>Tổng Quan</h3>
                                    <p>Bạn có thể dễ dàng kiểm tra và xem các đơn đặt hàng gần đây của mình, 
                                        quản lý địa chỉ vận chuyển và thanh toán và chỉnh sửa mật khẩu và chi 
                                        tiết tài khoản của bạn.</p>
                                </div> 
                                <div class="tab-pane fade" id="orders">
                                    <h3>Đơn Hàng</h3>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Mã Đơn Hàng</th>
                                                    <th>Ngày</th>
                                                    <th>Trạng Thái</th>
                                                    <th>Tổng Tiền</th>
                                                    <th>Actions</th>	 	 	 	
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>May 10, 2018</td>
                                                    <td><span class="success">Completed</span></td>
                                                    <td>$25.00 for 1 item </td>
                                                    <td><a href="./chi-tiet-don-hang.html" class="view">Xem Chi Tiết</a></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>May 10, 2018</td>
                                                    <td>Processing</td>
                                                    <td>$17.00 for 1 item </td>
                                                    <td><a href="./chi-tiet-don-hang.html" class="view">Xem Chi Tiết</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-details">
                                    <h3>Chi tiết tài khoản</h3>
                                    <div class="login">
                                        <div class="login_form_container">
                                            <div class="account_login_form">
                                                <form method="POST" action="">
                                                    <label>Họ tên *</label>
                                                    <input type="text" name="user_fullname" id="user_fullname" required="">
                                                    <label>Địa chỉ Email *</label>
                                                    <input type="email" name="user_email" id="user_email" required="">
                                                    <label>Số điện thoại *</label>
                                                    <input type="text" name="user_phone_number" id="user_phone_number" pattern="(84|0[3|5|7|8|9])+([0-9]{8})" required="">
                                                    <label>Địa chỉ giao hàng mặc định *</label>
                                                    <input type="text" name="user_address" id="user_address" required="">
                                                    <p>Thông tin ngân hàng được dùng để HOÀN LẠI phí đảm bảo tài sản:</p>
                                                    <label>Số tài khoản ngân hàng *</label>
                                                    <input type="text" name="user_bank_account_number" id="user_bank_account_number" pattern="[0-9]+" required="">
                                                    <label>Tên ngân hàng *</label>
                                                    <input type="text" name="user_bank_name" id="user_bank_name" required="">
                                                    <div class="save_button primary_btn default_button">
                                                        <button type="submit" name="submit" value="update_info">Lưu</button>
                                                    </div>
                                                </form>
                                            </div>
                                            <hr style="background: #180000;">
                                            <div class="account_login_form">
                                                <form method="POST" action="">
                                                    <label>Mật khẩu mới</label>
                                                    <input type="password" name="user_password" minlength="6" required="">
                                                    <label>Nhập lại mật khẩu mới</label>
                                                    <input type="password" name="user_password_again" minlength="6" required="">
                                                    <div class="save_button primary_btn default_button">
                                                        <button type="submit" name="submit" value="change_pass">Đổi mật khẩu</button>
                                                    </div>
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
        </section>			
        <!-- my account end   --> 

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