<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                            <h2 class="card-title">Danh sách Voucher</h2>
                        </header>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="mb-3">
                                        <a href="/view_addkm" id="addToTable" class="btn btn-info">Thêm mới Voucher <i
                                               ></i></a>

                                        <button id="btn-search" class="btn btn-primary">Tìm kiếm <i
                                                ></i></button>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-bordered table-striped mb-0" id="datatable-editable">
                                <thead>
                                <tr>
                                    <th width="15%">STT</th>
                                    <th width="15%">Mã khuyến mại</th>
                                    <th>Tên khuyến mại</th>

                                    <th>Trạng thái</th>
                                    <th>Giá trị</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày hết hạn</th>
                                    <th>Thao Tác</th>
                                </tr>
                                <tr class="heading-search">
                                    <form  method="GET" id="search-form">
                                        <th>

                                        </th>
                                        <th>
                                            <input type="text" name="name" id="name" class="form-control search-input">
                                        </th>

                                     <th></th>
                                        <th>
                                            <select name="publish" class="form-control search-select" id="publish">
                                                <option value="">Tất cả</option>
                                                <option value="0">Ẩn</option>
                                                <option value="1">Công khai</option>
                                            </select>
                                        </th>
                                        <th></th>
                                        <th></th>
                                        <input type="hidden" name="page" id="page">
                                    </form>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${page.getContent()}"  var="pgg" varStatus="stt">
                                    <tr >
                                        <td>${stt.index+1}</td>
                                        <td>${pgg.code}</td>
                                        <td>${pgg.name_}</td>
                                        <td>${pgg.status_ == 1 ? "Đã kích hoạt" : "Đã khóa"}</td>
                                        <td>${pgg.value_}</td>
                                        <td>${pgg.start_date_}</td>
                                        <td>${pgg. end_date}</td>
                                        <td>
                                            <button  class="btn btn-primary"><a style="color: aliceblue"
                                                                                href="/deletevc/${pgg.id}">Delete</a>
                                            </button>
                                            <p></p>
                                            <button  class="btn btn-primary"><a style="color: aliceblue"
                                                                                href="/view_updatekm/${pgg.id}">Update</a>
                                            </button>
                                        </td>

                                    </tr>
                                </c:forEach>
                                </TBODY>

                                <p>Số Lượng voucher: ${page.getTotalElements()} </p>
                                <div class="text-center">
                                    <c:if test="${ page.getNumber() + 1 > 1}">
                                        <a href="?page=${page.getNumber() + 1 - 1}&name_=${param.name_}">
                                            Previous
                                        </a>
                                    </c:if>
                                    <span> ${page.getNumber() + 1} / ${ page.getTotalPages()} </span>
                                    <c:if test="${page.getNumber() + 1 <  page.getTotalPages()}">
                                        <a href="?page=${page.getNumber() + 1 + 1} &name_=${param.ten}">
                                            Next
                                        </a>
                                    </c:if>
                                </div>
                            </table>
                            <br>
                            <!-- Pagination -->
                            <nav aria-label="Page navigation">
                                <ul class="pagination" id="pagination"></ul>
                            </nav>
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
    <script src="../admin/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script><!-- Paper Dashboard DEMO methods, don't include it in your project! -->
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
