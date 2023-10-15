
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
            <a href="/product" class="simple-text logo-mini">
                <div class="logo-image-small">
                    <img src="">
                    <!--     logo web    -->
                </div>
            </a>
            <a href="/homepageadmin" class="simple-text logo-normal">
                BITI'S STORE</a>
        </div>
        <jsp:include page="../../../layout/admin/header.jsp"></jsp:include>

        <jsp:include page="../../../layout/admin/headerngang.jsp"></jsp:include>
        <!--  start   -->
        <div class="main-panel">
            <div class="content">
                <!--  start   -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-outline">
                                <div class="card-body pad">

                                    <div class="modal-body">
                                        <form id="formCategory">
                                            <input type="text" class="form-control" name="new_category" id="new_category"
                                                   placeholder="Nhập tên Nhãn hiệu mới">
                                            <br>
                                            <label>Trạng thái</label>
                                            <div class="form-group">
                                                <div class="custom-control custom-switch">
                                                    <input type="checkbox" class="custom-control-input" id="active" checked>
                                                    <label class="custom-control-label" for="active">Kích hoạt nhãn hiệu</label>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <a type="button" class="btn btn-secondary" data-dismiss="modal" href="/listnh">Hủy</a>
                                                <button type="submit" class="btn btn-primary">Thêm</button>
                                            </div>
                                        </form>



                                    </div>
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
