<%@page import="com.mycompany.database.DBUser"%>
<%@page import="com.mycompany.config.Utils"%>
<%@include file="header.jsp" %> 
<div class="dashboard-wrapper" style="min-height:0 !important;">
    <div class="container-fluid  dashboard-content " style="padding-bottom:0 !important;">
        <!-- ============================================================== -->
        <!-- pageheader -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Khách hàng </h2>
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

                <div class="card" style="height:195px;">
                    <div class="contentListProduct ml-3 mt-3">
                        <h3>Lọc khách hàng</h3> 
                        <p>Tìm kiếm nhanh theo tên, email hoặc số điện thoại.</p>
                        <div class="form-row d-flex position-relative" >
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                    <label for="validationCustom01">Thông tin</label>
                                    <input type="text" class="form-control" style="width:125%;" id="validationCustom08" placeholder="..." value="" required>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>                                      
                                </div>                                                                      
                            </div>
                            <button class="badge badge-info border-0 h-100 mt-2 px-5 mb-5 position-absolute" style="left: 550px;
                                    top: 5px;
                                    height: 45px !important;" type="submit">Tìm kiếm <i
                                    class="ml-2 icon-paper-plane"></i></button>  
                        </div>
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
                                    <th>ID khách hàng</th>
                                    <th>Tên khách hàng</th>
                                    <th>Số điện thoại</th>
                                    <th>Email</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${adminUserLists}" var="adminUserList">
                                    <tr class="mt-5">
                                        <td>${adminUserList.idUser}</td>
                                        <td>${adminUserList.firstName}</td>
                                        <td>${adminUserList.phoneNumber}</td>
                                        <td>${adminUserList.email}</td>   
                                        <td>                                                                               
                                            <a class="ml-4" href="./adminUserDetail?idUser=${adminUserList.idUser}">
                                                <i class="text-xl m-r-10 mdi mdi-account-plus">
                                                </i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>    
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pagination"class="pagination">
            <ul>
                <%                            DBUser dbInovoice = new DBUser();
                    int pg = Utils.Page(request.getParameter("page"));
                    int end_page = (int) Math.ceil((double) dbInovoice.getCountUsers() / Utils.LIMIT_ROWS);
                    for (int i = 1; i <= end_page; i++)
                        if (Math.abs(pg - i) <= 3 || i == 1 || i == end_page) {
                %>
                <li><a href="javascript:" onclick="pagination(<%= i%>)" class="<%= pg == i ? "active" : ""%>"><%= i%></a>
                    <%
                        }
                    %>
            </ul>
        </div>
    <%@include file="footer.jsp" %>