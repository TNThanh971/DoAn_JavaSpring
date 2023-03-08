<%-- 
    Document   : adminDetailsUser
    Created on : Mar 9, 2023, 2:06:40 AM
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

    <link rel="stylesheet" href="../assetsAdmin/vendor/fonts/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="../assetsAdmin/vendor/bootstrap-select/css/bootstrap-select.css">

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
            <div class="container-fluid  dashboard-content" style="padding-bottom: 0;">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Form Validations </h2>
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
                            <div class="detailsInvoicesUser d-inline mt-2 badge-info">
                                <h2 class="card-header d-inline badge-info">Tổng đơn đã đặt: 3</h2>
                                <h2 class="card-header d-inline badge-info " style="margin-left: 250px;">Tổng đơn huỷ: 0</h2>
                            </div>
                           
                            <div class="card-body">
                                <form id="form" data-parsley-validate="" novalidate="">
                                    <div class="form-group row">
                                        <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Họ tên:</label>
                                        <div class="col-9 col-lg-10">
                                            <p class="ml-5 mt-2">Nguyễn Văn A</p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Email:</label>
                                        <div class="col-9 col-lg-10">
                                            <p class="ml-5 mt-2">a@gmail.com</p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Số điện thoại:</label>
                                        <div class="col-9 col-lg-10">
                                            <p class="ml-5 mt-2">0123456789</p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Địa chỉ giao hàng mặc định:</label>
                                        <div class="col-9 col-lg-10">
                                            <p class="ml-5 mt-2">Ung văn Khiên, quận Bình Thạnh ,thành phố HCM</p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Số tài khoản ngân hàng hoàn tiền:</label>
                                        <div class="col-9 col-lg-10">
                                            <p class="ml-5 mt-2">0234923498234</p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail2" class="col-3 col-lg-2 col-form-label text-right">Tên ngân hàng:</label>
                                        <div class="col-9 col-lg-10">
                                            <p class="ml-5 mt-2">AA Bank</p>
                                        </div>
                                    </div>
                                 
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
          

                <!-- ============================================================== -->
                <!-- footer -->
                <!-- ============================================================== -->
                <div class="footer mt-3">
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
