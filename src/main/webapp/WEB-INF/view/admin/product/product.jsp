
<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8" />
    <!--     logo web    -->
    <link rel="apple-touch-icon" sizes="76x76" href="">
    <!--     logo web    -->
    <link rel="icon" type="image/png" href="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        BITI'S STORE ADMIN
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="/admin/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/admin/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="/admin/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
<div class="wrapper ">
    <div class="sidebar" data-color="white" data-active-color="danger">
        <div class="logo">
            <a href="/homepageadmin" class="simple-text logo-mini">
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

                <section role="main" class="content-body" id="main-content">

                    <form action="" id="formProduct">
                        <section class="card">
                            <header class="card-header">
                                <div class="card-actions">
                                    <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
                                    <a href="#" class="card-action card-action-dismiss" data-card-dismiss></a>
                                </div>
                                <h2 class="card-title">Danh sách sản phẩm</h2>
                                <br>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-3">
                                            <a href="/homepageadmin" class="btn btn-primary"><i
                                                   ></i> Trở về</a>
                                            <a href="/creat" class="btn btn-primary"><i
                                            ></i> Thêm sản phẩm</a>

                                            <a href="/thuoctinh" class="btn btn-primary"><i
                                                    ></i> Thuộc Tính</a>
                                        </div>
                                    </div>
                                </div>
                            </header>
                            <section class="card">
                                <header class="card-header">
                                    <div class="card-actions">
                                        <a href="#" class="card-action card-action-toggle" data-card-toggle></a>
                                        <a href="#" class="card-action card-action-dismiss" data-card-dismiss></a>
                                    </div>
                                    <h2 class="card-title">Danh sách sản phẩm</h2>
                                </header>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="mb-3">
                                                <a href="/admin/products/create" class="btn btn-info">Thêm mới sản phẩm <i
                                                        class="fas fa-plus"></i></a>
                                                <a href="/admin/products" class="btn btn-primary">Refresh <i
                                                        class="fas fa-redo-alt"></i></a>
                                                <button id="btn-search" class="btn btn-success">Tìm kiếm <i
                                                        class="fas fa-search"></i></button>
                                                <button class="btn btn-warning btn_export"><a th:href="@{/api/products/export/excel}">Xuất dữ liệu</a>
                                                    <i class="fas fa-file-export"></i></button>
                                                <!--                        <button id="btn-delete" onclick="warningBeforeDelete()" type="button" class="btn btn-danger" disabled>Xóa sản phẩm  <i-->
                                                <!--                                class="fas fa-trash-alt"></i></button>-->
                                            </div>
                                        </div>
                                    </div>
                                    <table class="table table-bordered table-striped mb-0" id="datatable-editable">
                                        <thead>
                                        <tr>
                                            <!--                    <th><input type="checkbox" id="checkAll"></th>-->
                                            <th width="8%">Mã sản phẩm</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Ảnh</th>
                                            <th>Nhãn hiệu</th>
                                            <th>Danh mục</th>
                                            <th>Giá nhập</th>
                                            <th>Giá bán</th>
                                            <th>Ngày tạo</th>
                                            <th>Ngày sửa</th>
                                            <th>Đã bán</th>
                                            <th>Thao tác</th>
                                        </tr>
                                        <tr>
                                            <form method="GET" id="search-form">
                                                <!--                        <th></th>-->
                                                <th>
                                                    <input type="text" name="id" id="id" class="form-control search-input">
                                                </th>
                                                <th>
                                                    <input type="text" name="name" id="name" class="form-control search-input">
                                                </th>
                                                <th></th>
                                                <th>
                                                    <select name="brand" class="form-control search-select" id="brand">
                                                        <option value="">Tất cả</option>

                                                    </select>
                                                </th>
                                                <th>
                                                    <select name="category" class="form-control search-select" id="category">
                                                        <option value="">Tất cả</option>

                                                    </select>
                                                </th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <input type="hidden" name="page" id="page">
                                            </form>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                    <br>
                                    <!-- Pagination -->
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination" id="pagination"></ul>
                                    </nav>
                                </div>
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
<script src="../admin/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script><!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="../admin/demo/demo.js"></script>
<script>
    $(document).ready(function() {
        // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
        demo.initChartsPages();
    });
</script>
</body>

</html>
