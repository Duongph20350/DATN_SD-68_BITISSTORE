<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<head>
    <meta charset="utf-8"/>
    <!--     logo web    -->
    <link rel="apple-touch-icon" sizes="76x76" href="">
    <!--     logo web    -->
    <link rel="icon" type="image/png" href="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>
        BITI'S STORE ADMIN
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
          name='viewport'/>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="/admin/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/admin/css/paper-dashboard.css?v=2.0.1" rel="stylesheet"/>
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="/admin/demo/demo.css" rel="stylesheet"/>
</head>

<body class="">
<div class="wrapper ">
    <div class="sidebar" data-color="white" data-active-color="danger">
        <div class="logo">
            <a href="/product" class="simple-text logo-mini">
                <div class="logo-image-small">
                    <img src="">
                    <!--     logo web    -->
                </div>
            </a>
            <a href="/homepageadmin" class="simple-text logo-normal">
                BITI'S STORE</a>
        </div>
        <jsp:include page="../../layout/admin/header.jsp"></jsp:include>

        <jsp:include page="../../layout/admin/headerngang.jsp"></jsp:include>
        <!--  start   -->
        <div class="main-panel">
            <div class="content">
                <!--  start   -->


                <section class="card">
                    <header class="card-header">
                        <div class="card-actions">
                            <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
                            <a href="#" class="card-action card-action-dismiss" data-card-dismiss></a>
                        </div>
                        <h2 class="card-title">Quản Lý Hóa Đơn</h2>
                    </header>
                    <div class="card">
                        <div class="card-body ">
                            <!-- Bordered Tabs -->
                            <ul class="nav nav-tabs nav-tabs-bordered">

                                <li class="nav-item">
                                    <button class="nav-link active" data-bs-toggle="tab"
                                            data-bs-target="#profile-overview"> Tạo Mới
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit"><a
                                            href="/hoadonhome">Danh Sách Hóa Đơn</a>
                                    </button>
                                </li>


                            </ul>
                            <div class="mb-3">
                                <button id="btn-search" class="btn btn-primary">Tạo Mới Hóa Đơn <i
                                ></i></button>
                            </div>
                            <ul class="nav nav-tabs nav-tabs-bordered">

                                <li class="nav-item">
                                    <button class="nav-link active" data-bs-toggle="tab"
                                            data-bs-target="#profile-overview"> Hóa Đơn 1
                                    </button>
                                </li>

                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Hóa Đơn
                                        2
                                    </button>
                                </li>


                            </ul>
                            <section class="section">
                                <div class="row">
                                    <div class="col-lg-6">

                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Thông Tin Khách Hàng</h5>

                                                <!-- General Form Elements -->
                                                <form>
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">Mã Hóa Đơn</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">Tên Khách Hàng</label>
                                                        <div class="col-sm-10">
                                                            <input type="email" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">Địa Chỉ</label>
                                                        <div class="col-sm-10">
                                                            <input type="password" class="form-control">
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">Địa chỉ chi tiết</label>
                                                        <div class="col-sm-10">
                                                            <textarea class="form-control"
                                                                      style="height: 100px"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">Số Điện Thoại</label>
                                                        <div class="col-sm-10">
                                                            <input type="number" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="input-group mb-3">

                                                        <input type="text" class="form-control" placeholder="Khuyến mại"
                                                               aria-label="Username">
                                                        <span class="input-group-text"></span>

                                                        <input type="text" class="form-control" placeholder="Tổng Tiền"
                                                               aria-label="Server">
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">Phương Thức Mua
                                                            Hàng</label>
                                                        <div class="col-sm-10">
                                                            <select class="form-select"
                                                                    aria-label="Default select example">
                                                                <option selected>Online</option>
                                                                <option value="1">Bán Tại Quầy</option>

                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">Phương Thức Thanh
                                                            Toán</label>
                                                        <div class="col-sm-10">
                                                            <select class="form-select"
                                                                    aria-label="Default select example">
                                                                <option selected>PAY</option>
                                                                <option value="1">Tiền Mặt</option>

                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">Ghi Chú</label>
                                                        <div class="col-sm-10">
                                                            <textarea class="form-control"
                                                                      style="height: 100px"></textarea>
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">Tạo hóa Đơn</label>
                                                        <div class="col-sm-10">
                                                            <button type="submit" class="btn btn-primary">Tạo Hóa Đơn
                                                            </button>
                                                        </div>
                                                    </div>

                                                </form><!-- End General Form Elements -->

                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-6">

                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">Giỏ Hàng</h5>

                                                <!-- Advanced Form Elements -->
                                                <form>
                                                    <div class="row mb-5">
                                                        <label class="col-sm-2 col-form-label">Sản Phẩm</label>
                                                        <div class="form-floating mb-3">
                                                            <input type="password" class="form-control" id="floatingPassword" placeholder="Tìm Kiếm Sản Phẩm">

                                                        </div>
                                                        <table class="table table-bordered table-striped mb-0" id="datatable-editable">
                                                            <thead>
                                                            <tr>
                                                                <th width="15%">STT</th>
                                                                <th width="15%">Sản Phẩm</th>
                                                                <th>Số Lượng</th>
                                                                <th>Đơn Gía</th>
                                                                <th>Thuế(%)</th>
                                                                <th>Thành Tiền(VND)</th>
                                                                <th>Thao Tác</th>
                                                            </tr>

                                                            </thead>
                                                            <tbody>
                                                            <Td>1</Td>
                                                            <Td>NIKE ARI FORD ONE</Td>
                                                            <Td>2</Td>
                                                            <Td>1.000.000</Td>
                                                            <Td>10</Td>
                                                            <Td>2.000.00</Td>
                                                            <Td><a>Delete</a></Td>

                                                            </TBODY>


                                                        </table>
                                                       </div>

                                                </form><!-- End General Form Elements -->

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>


                </section>

                </section>

                <!--end-->
            </div>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="../admin/js/core/jquery.min.js"></script>
    <script src="../admin/assets/js/core/popper.min.js">

    </script>
    <script src="../admin/assets/js/core/bootstrap.min.js"></script>
    <script src="../admin/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Chart JS -->
    <script src="../admin/js/plugins/chartjs.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="../admin/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="../admin/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script>
    <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
    <script src="../admin/demo/demo.js"></script>
    <script>
        $(document).ready(function () {
            // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
            demo.initChartsPages();
        });

        function initializeStatus() {
            var isActive = document.getElementById('active').checked ? 1 : 0;
            document.getElementById('status').value = isActive;
        }

        document.getElementById('active').addEventListener('change', initializeStatus);

        // Gọi hàm khởi tạo khi trang tải
        initializeStatus();

    </script>
</body>

</html>
