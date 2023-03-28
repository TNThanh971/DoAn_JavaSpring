<%@page import="com.mysql.cj.util.Util"%>
<%@page import="com.mycompany.config.Utils"%>
<%@page import="com.mycompany.model.User"%>
<%
    User user1 = (User) session.getAttribute("user");
%>

<jsp:include page="header.jsp" />
<div class="breadcrumbs_area">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <ul>
                        <li><a href="./">Trang Chủ</a></li>
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
                            <li><a href="./logout" class="nav-link">logout</a></li>
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
                                            <td><a href="./invoiceDetail" class="view">Xem Chi Tiết</a></td>
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
                                            <input type="text" name="firstName"  value="<%= user1.getFirstName()%>" required="">
                                            <label>Địa chỉ Email *</label>
                                            <input type="email" name="email"  value="<%= user1.getEmail()%>" required="">
                                            <label>Số điện thoại *</label>
                                            <input type="text" name="phoneNumber"  pattern="(84|0[3|5|7|8|9])+([0-9]{8})" value="<%= user1.getPhoneNumber()%>" required="">
                                            <label>Địa chỉ giao hàng mặc định *</label>
                                            <input type="text" name="address"  value="<%= user1.getAddress()%>" required="">
                                            <p>Thông tin ngân hàng được dùng để HOÀN LẠI phí đảm bảo tài sản:</p>
                                            <label>Số tài khoản ngân hàng *</label>
                                            <input type="text" name="bankAccountNumber"  value="<%= user1.getBankAccountNumber()%>" >
                                            <label>Tên ngân hàng *</label>
                                            <input type="text" name="bankName"  value="<%= user1.getBankName()%>" >
                                            <div class="save_button primary_btn default_button">
                                                <button type="submit" name="submit" value="update_info">Lưu</button>
                                            </div>
                                        </form>
                                    </div>
                                    <hr style="background: #180000;">
<!--                                    <div class="account_login_form">
                                        <form method="POST" action="">
                                            <label>Mật khẩu mới</label>
                                            <input type="password" name="password" value="<%= Utils.SHA1(user1.getPassword()) %>" minlength="6" required="">
                                            <label>Nhập lại mật khẩu mới</label>
                                            <input type="password" name="password2" minlength="6" required="">
                                            <div class="save_button primary_btn default_button">
                                                <button type="submit" name="submit" value="change_pass">Đổi mật khẩu</button>
                                            </div>
                                        </form>
                                    </div>-->
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