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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                                                <a href="/product" class="btn btn-primary"><i
                                                ></i> Trở về</a>
                                                <a href="/view_addproductdetail" class="btn btn-primary"><i
                                                ></i> Thêm sản phẩm</a>
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <table class="table table-bordered table-striped mb-0" id="datatable-editable">
                                        <thead>
                                        <tr>

                                            <th>STT</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Giá Nhập</th>
                                            <th>Giá Bán</th>
                                            <th>Số Lượng</th>
                                            <th>Thuế(%)</th>
                                            <th> Được Khuyến mãi</th>
                                            <th>Trạng Thái</th>
                                            <th>Mô Tả</th>
                                            <th>Thao tác</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${page.getContent()}"  var="pgg" varStatus="stt">
                                            <tr >
                                                <td>${stt.index+1}</td>
                                                <td>${pgg.product.name_}(${pgg.size.name}-${pgg.mauSac.name_}-${pgg.kieuDang.name_})</td>
                                                <td>${pgg.gianhap}</td>
                                                <td>${pgg.giaban}</td>
                                                <td>${pgg.soluong}</td>
                                                <td>${pgg.thue}</td>
                                                <td>${pgg.status_ == 1 ? "Được Khuyến mãi" : "Không Khuyến Mãi"}</td>
                                                <td>${pgg.status_ == 1 ? "Mở Bán" : "Không Mở Bán"}</td>
                                                <td>${pgg.mota}</td>

                                              <td> <button  class="btn btn-primary"><a style="color: aliceblue"
                                                                                       href="/detailproductview/${pgg.id}">Xem Chi Tiết</a>
                                              </button></td>
                                            </tr>
                                        </c:forEach>
                                        </TBODY>

                                        <p>Số Lượng Giay: ${page.getTotalElements()} </p>
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
                                        </tbody>
                                    </table>
                                    <br>
                                    <!-- Pagination -->
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination" id="pagination"></ul>
                                    </nav>
                                </div>
                            </section>
                        </section>

                    </form>
                </section>
                            <!--end-->
            </div>
        </div>
    </div>
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
