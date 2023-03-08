<%-- 
    Document   : adminListInvoices
    Created on : Mar 9, 2023, 2:07:17 AM
    Author     : truongthanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assetsAdmin/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assetsAdmin/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assetsAdmin/libs/css/style.css">

    <link rel="stylesheet" href="./assetsAdmin/vendor/fonts/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="./assetsAdmin/vendor/bootstrap-select/css/bootstrap-select.css">

    <link rel="stylesheet" href="assetsAdmin/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assetsAdmin/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assetsAdmin/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assetsAdmin/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assetsAdmin/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assetsAdmin/vendor/fonts/flag-icon-css/flag-icon.min.css">

    <title>Wibu Cosplay</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="index.html">Cosplay</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search" class="top-search-bar">
                                <input class="form-control" type="text" placeholder="Search..">
                            </div>
                        </li>
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span
                                    class="indicator"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                <li>
                                    <div class="notification-title"> Notification</div>
                                    <div class="notification-list">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action active">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img
                                                            src="assetsAdmin/images/avatar-2.jpg" alt=""
                                                            class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span
                                                            class="notification-list-user-name">Jeremy
                                                            Rakestraw</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img
                                                            src="assetsAdmin/images/avatar-3.jpg" alt=""
                                                            class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span
                                                            class="notification-list-user-name">John Abraham </span>is
                                                        now following you
                                                        <div class="notification-date">2 days ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img
                                                            src="assetsAdmin/images/avatar-4.jpg" alt=""
                                                            class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span
                                                            class="notification-list-user-name">Monaan Pechi</span> is
                                                        watching your main repository
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img
                                                            src="assetsAdmin/images/avatar-5.jpg" alt=""
                                                            class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span
                                                            class="notification-list-user-name">Jessica
                                                            Caruso</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-footer"> <a href="#">View all notifications</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown connection">
                            <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                            <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                                <li class="connection-list">
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assetsAdmin/images/github.png"
                                                    alt=""> <span>Github</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assetsAdmin/images/dribbble.png"
                                                    alt=""> <span>Dribbble</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assetsAdmin/images/dropbox.png"
                                                    alt=""> <span>Dropbox</span></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assetsAdmin/images/bitbucket.png"
                                                    alt=""> <span>Bitbucket</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assetsAdmin/images/mail_chimp.png"
                                                    alt=""><span>Mail chimp</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assetsAdmin/images/slack.png"
                                                    alt=""> <span>Slack</span></a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="conntection-footer"><a href="#">More</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
                                    src="assetsAdmin/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown"
                                aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">John Abraham </h5>
                                    <span class="status"></span><span class="ml-2">Available</span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false"
                                    data-target="#submenu-2" aria-controls="submenu-2"><i
                                        class="fa fa-fw fa-rocket"></i>Gì vậy ?</a>
                                <div id="submenu-2" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="./adminAddProduct">Thêm sản phẩm <span
                                                    class="badge badge-secondary">New</span></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="./adminListProduct">Danh sách sản phẩm <span
                                                    class="badge badge-secondary">New</span></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="./adminListInvoices">Danh sách đơn hàng <span
                                                    class="badge badge-secondary">New</span></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="./adminListUsers">Danh sách khách hàng <span
                                                    class="badge badge-secondary">New</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                       

                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->\
        <div class="dashboard-wrapper" style="min-height:0 !important;">
            <div class="container-fluid  dashboard-content " style="padding-bottom:0 !important;">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Đơn hàng </h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Forms</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Form Validations</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->

                <div class="row">
                    <!-- ============================================================== -->
                    <!-- validation form -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

                        <div class="card">
                            <div class="contentListProduct ml-3 mt-3">
                                <h3>Lọc hoá đơn</h3>
                                <p>Tìm kiếm nhanh hoá đơn theo trạng thái hoá đơn.</p>
                                <div class="form-row d-flex">

                                    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2 ml-3">
                                        <h5 class="card-title">Phân loại *</h5>
                                        <select class="selectpicker">
                                            <option data-content="<span class='badge badge-dark'>Tất cả</span>">Tất cả
                                            </option>
                                            <option data-content="<span class='badge badge-danger'>Wig</span>">Wig
                                            </option>
                                            <option data-content="<span class='badge badge-success'>Trang phục</span>">
                                                Trang phục</option>
                                            <option data-content="<span class='badge badge-brand'>Phụ kiện</span>">Phụ
                                                kiện</option>
                                        </select>
                                    </div>
                                    <button class="badge badge-info h-100 mt-2 px-5 border-0"
                                    style="width: 165px; height:40px !important;"  type="submit">Tìm kiếm <i
                                            class="ml-2 icon-paper-plane"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">Đây là danh sách thanh toán của cửa hàng.</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second"
                                        style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>ID Đơn</th>
                                                <th>Tên khách hàng</th>
                                                <th>Số điện thoại</th>
                                                <th>Email</th>
                                                <th>Tổng tiền (gồm các phí)</th>
                                                <th>Ngày đặt</th>
                                                <th>Trạng thái</th>
                                                <th>Hành động</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="mt-5">
                                                <td>NV-01</td>
                                                <td>Nguyễn Văn A</td>
                                                <td>0123456789</td>
                                                <td>a@gmail.com</td>
                                                <td>200.000</td>
                                                <td>2/2/2023</td>
                                                <td class="badge badge-info">Chờ thanh toán</td>
                                                <td>
                                                    <a class="" href="./adminDetailsUser">
                                                        <i class="text-xl m-r-10 mdi mdi-account-plus">
                                                        </i>
                                                    </a>
                                                    <a href="./adminDetailsInvoices">
                                                        <i class="m-r-10 mdi mdi-layers"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr class="mt-5">
                                                <td>NV-02</td>
                                                <td>Nguyễn Văn B</td>
                                                <td>0123456789</td>
                                                <td>b@gmail.com</td>
                                                <td>200.000</td>
                                                <td>2/2/2023</td>
                                                <td class="badge badge-dark">Đã hủy</td>
                                                <td>
                                                    <a class="" href="detailsUser.html">
                                                        <i class="text-xl m-r-10 mdi mdi-account-plus">
                                                        </i>
                                                    </a>
                                                    <a href="detailsInvoices.html">
                                                        <i class="m-r-10 mdi mdi-layers"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr class="mt-5">
                                                <td>NV-03</td>
                                                <td>Nguyễn Văn C</td>
                                                <td>0123456789</td>
                                                <td>c@gmail.com</td>
                                                <td>200.000</td>
                                                <td>2/2/2023</td>
                                                <td class="badge badge-success">Đã thanh toán</td>
                                                <td>
                                                    <a class="" href="detailsUser.html">
                                                        <i class="text-xl m-r-10 mdi mdi-account-plus">
                                                        </i>
                                                    </a>
                                                    <a href="detailsInvoices.html">
                                                        <i class="m-r-10 mdi mdi-layers"></i>
                                                    </a>
                                                </td>
                                            </tr>

                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ============================================================== -->
                <!-- footer -->
                <!-- ============================================================== -->
                <div class="footer" style="margin-top:0px;">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                . All rights reserved. Dashboard by Wibu
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="text-md-right footer-links d-none d-sm-block">
                                    <a href="javascript: void(0);">About</a>
                                    <a href="javascript: void(0);">Support</a>
                                    <a href="javascript: void(0);">Contact Us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end footer -->
                <!-- ============================================================== -->
            </div>

            <!-- ============================================================== -->
            <!-- end wrapper  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end main wrapper  -->
        <!-- ============================================================== -->
        <!-- Optional JavaScript -->
        <!-- jquery 3.3.1 -->
        <script src="assetsAdmin/vendor/jquery/jquery-3.3.1.min.js"></script>
        <!-- bootstap bundle js -->
        <script src="assetsAdmin/vendor/bootstrap/js/bootstrap.bundle.js"></script>
        <!-- slimscroll js -->
        <script src="assetsAdmin/vendor/slimscroll/jquery.slimscroll.js"></script>
        <!-- main js -->
        <script src="assetsAdmin/libs/js/main-js.js"></script>
        <!-- chart chartist js -->
        <script src="assetsAdmin/vendor/charts/chartist-bundle/chartist.min.js"></script>
        <!-- sparkline js -->
        <script src="assetsAdmin/vendor/charts/sparkline/jquery.sparkline.js"></script>
        <!-- morris js -->
        <script src="assetsAdmin/vendor/charts/morris-bundle/raphael.min.js"></script>
        <script src="assetsAdmin/vendor/charts/morris-bundle/morris.js"></script>
        <!-- chart c3 js -->
        <script src="assetsAdmin/vendor/charts/c3charts/c3.min.js"></script>
        <script src="assetsAdmin/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
        <script src="assetsAdmin/vendor/charts/c3charts/C3chartjs.js"></script>
        <script src="assetsAdmin/libs/js/dashboard-ecommerce.js"></script>

        <script src="./assetsAdmin/vendor/bootstrap-select/js/bootstrap-select.js"></script>
</body>

</html>
