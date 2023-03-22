
<%@include file="header.jsp" %>
<div class="dashboard-wrapper">
    <div class="container-fluid  dashboard-content py-0" style="padding-bottom:0px;">
        <!-- ============================================================== -->
        <!-- pageheader -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Form Validations </h2>
                    <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce
                        sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                    <div class="page-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a>
                                </li>
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

        <div class="row" style="">
            <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12 position-relative" style="margin-left: 225px;">
                <div class="card " style="margin-left: 50px;">
                    <div class="card-header p-4">
                        <h2 class="pt-2 d-inline-block">Hóa đơn</h2>

                        <div class="float-right">
                            <h3 class="mb-0">Mã ${invDetail.idInvoice}</h3>
                            <span>Ngày: ${invDetail.createAt}</span>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row mb-4">
                            <div class="col-sm-6">
                                <h5 class="mb-3">Từ:</h5>
                                <h3 class="text-dark mb-1">Cửa hàng cho thuê đồ cosplay</h3>

                                <div>Ung Văn Khiêm, quận Bình Thạnh, tp Hồ Chí Minh</div>

                                <div>Email: tt@gmail.com</div>
                                <div>Phone: 09232840924</div>
                            </div>
                            <div class="col-sm-6">
                                <h5 class="mb-3">Đến:</h5>
                                <h3 class="text-dark mb-1">${invDetail.userFullName}</h3>
                                <div>${invDetail.userAddress}</div>

                                <div>Email: ${invDetail.email}</div>
                                <div>Phone: ${invDetail.phoneNumber}</div>
                            </div>
                        </div>
                        <div class="table-responsive-sm">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th class="center">#</th>
                                        <th>Sản phẩm</th>
                                        <th>Đơn giá</th>
                                        <th class="right">Số lượng</th>
                                        <th class="center">Số tiền</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="center">1</td>
                                        <td class="left strong">Phi tiêu Naruto</td>
                                        <td class="left">20.000</td>
                                        <td class="right">3</td>
                                        <td class="right">150.000</td>
                                    </tr>
                                    <tr>
                                        <td class="center">2</td>
                                        <td class="left">Phi tiêu Naruto</td>
                                        <td class="left">20.000</td>
                                        <td class="right">2</td>
                                        <td class="right">150.000</td>
                                    </tr>
                                    <tr>
                                        <td class="center">3</td>
                                        <td class="left">Áo chùng Harry Potter</td>
                                        <td class="left">60.000</td>
                                        <td class="right">23</td>
                                        <td class="right">150.000</td>
                                    </tr>
                                    <tr>
                                        <td class="center">4</td>
                                        <td class="left">Áo chùng Harry Potter</td>
                                        <td class="left">80.000</td>
                                        <td class="right">2</td>
                                        <td class="right">200.000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-sm-5">
                            </div>
                            <div class="col-lg-4 col-sm-5 ml-auto mt-5" style="margin-right: 20px;">
                                <table class="table table-clear">
                                    <tbody>
                                        <tr>
                                            <td class="left">
                                                <strong class="text-dark">Phí giao hàng</strong>
                                            </td>
                                            <td class="right">${invDetail.invoiceFeeTransport}</td>
                                        </tr>
                                        <tr>
                                            <td class="left ">
                                                <strong class="text-dark">Phí đảm bảo tài sản (20%)</strong>
                                            </td>
                                            <td class="right">${invDetail.invoiceFeePond}</td>
                                        </tr>
                                        <tr>
                                            <td class="left" style="">
                                                <strong class="text-dark">Tổng tiền</strong>
                                            </td>
                                            <td class="right">
                                                <strong class="text-dark "> <span
                                                        class="d-inline position-relative mr-2">${invDetail.totalPrice}</span>
                                                    <span class="position-absolute">vnđ</span> </strong>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="card position-absolute" style="top: 0px;
                     width: 35%;
                     left: -210px;">
                    <h5 class="card-header">Horizontal Form</h5>
                    <div class="card-body" style="width: 200%;">
                        <form id="form" data-parsley-validate="" novalidate="">
                            <div class="col-sm-6 pl-0">
                                <p class="text-right d-flex flex-xl-column">
                                    <button type="submit" class="btn btn-space btn-dark mt-3">In đơn</button>
                                    <button class="btn btn-space btn-secondary mt-3 mdi mdi-check"> Đánh dấu
                                        chưa thanh toán</button>
                                    <button class="btn btn-space btn-secondary mt-3 mdi mdi-check"> Đánh dấu đã
                                        trả hàng</button>
                                    <button class="btn btn-space btn-secondary mt-3 mdi mdi mdi-check"> Đánh dấu
                                        đã thanh toán</button>
                                    <button type="submit"
                                            class="btn btn-outline-dark btn-primary mt-3 mdi mdi-checkbox-marked-circle ">
                                        Hủy đơn</button>


                                </p>
                                <p>Khi chọn Huỷ đơn hàng, sẽ không thể đổi trạng thái đơn hàng được nữa (Chỉnh
                                    sửa tại CSDL).</p>
                            </div>
                        </form>
                    </div>

                </div>
            </div>

            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">

            </div>
        </div>
        <%@include file="footer.jsp" %>
