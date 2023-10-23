<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <h2 class="card-title">Tạo Vocher</h2>
                        <br>


                    </header>
                    <div class="card-body ">
                        <!-- Main content -->
                        <div class="row">
                            <div class="col-lg-4 col-md-8 col-12">
                                <div class="card card-outline">
                                    <div class="card-body pad promotion-box">
                                        <form:form action="/add_voucher" method="post" modelAttribute="adddvoucher"
                                                   onsubmit="if(!confirm('Ban Muon Them?')){return false}else{alert('Them Thanh Cong');}"
                                                   id="formCategory">
                                            <div class="form-group">
                                                <div>
                                         <span style="color:red">(Mã kích hoạt chỉ bao gồm ký tự
                                        viết hoa từ A-Z và số từ 0-9 và dấu gạch ngang (độ dài từ 4 - 16 ký tự)]</span>
                                                    <br>
                                                    <label class="required-label" >Mã code</label>
                                                </div>
                                                <input type="text" class="form-control" name="code"
                                                       value="${adddvoucher.code}"
                                                       placeholder="Nhập code Voucher"><form:errors path="code"/> <br>
                                                <br>
                                            </div>
                                            <div class="form-group">
                                                <div>
                                                    <label class="required-label" >Tên chương trình</label>
                                                    <span class="invalid-feedback"
                                                    >Độ dài tiêu đề từ 1 - 300 ký tự</span>
                                                </div>
                                                <input type="text" class="form-control" name="name_"
                                                       value="${adddvoucher.name_}"
                                                       placeholder="Nhập Tên Chương Trình"><form:errors path="name_"/> <br>
                                                <br>
                                            </div>
                                            <div class="form-group">
                                                <div>
                                                    <label class="required-label" >Mức giảm</label>
                                                    <span class="invalid-feedback" ></span>
                                                </div>
                                                <input type="text" class="form-control" name="value_"
                                                       value="${adddvoucher.value_}"
                                                       placeholder="Nhập mức giảm"><form:errors path="value_"/> <br>
                                                <br>
                                            </div>
                                            <div class="form-group">
                                                <div>
                                                    <label class="required-label" >Mức giảm Tối đa</label>
                                                    <span class="invalid-feedback" ></span>
                                                </div>
                                                <input type="text" class="form-control" name="maximum_value"
                                                       value="${adddvoucher.maximum_value}"
                                                       placeholder="Nhập mức giảm tối đa"><form:errors path="maximum_value"/> <br>
                                                <br>
                                            </div>

                                            <div class="form-group">
                                                <div>
                                                    <label class="required-label" >Đơn tối Thiểu</label>
                                                    <span class="invalid-feedback" ></span>
                                                </div>
                                                <input type="text" class="form-control" name="condition"
                                                       value="${adddvoucher.condition}"
                                                       placeholder="Nhập mức giảm"><form:errors path="condition"/> <br>
                                                <br>
                                            </div>
                                            <div class="form-group">
                                                <div>
                                                    <label class="required-label" >Số Lượng</label>
                                                    <span class="invalid-feedback" ></span>
                                                </div>
                                                <input type="text" class="form-control" name="quantity"
                                                       value="${adddvoucher.quantity}"
                                                       placeholder="Nhập mức giảm"><form:errors path="quantity"/> <br>
                                                <br>
                                            </div>

                                            <div class="form-group">
                                                <div>
                                                    <label class="required-label" >Ngày bắt đầu</label>

                                                </div>
                                                <input type="date" class="form-control" name="start_date_" value="${adddvoucher.start_date_}" ><form:errors path="start_date_"/> <br>
                                            </div>
                                            <div class="form-group">
                                                <div>
                                                    <label class="required-label">Ngày hết hạn</label>

                                                </div>
                                                <input type="date" class="form-control " name="end_date" value="${adddvoucher.end_date}" ><form:errors path="end_date"/> <br>
                                            </div>
                                            <label>Trạng thái</label>
                                            <div class="form-group">
                                                <div class="custom-control custom-switch">
                                                    <input type="checkbox" class="custom-control-input" id="active"
                                                           checked>
                                                    <input type="hidden" id="status" name="status_">
                                                    <label class="custom-control-label" for="active">Kích hoạt
                                                        voucher</label>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <a type="button" class="btn btn-secondary" data-dismiss="modal"
                                                   href="/khuyenmai">Hủy</a>
                                                <button type="submit"   class="btn btn-primary btn-create-promotion">Tạo khuyến mại <i
                                                ></i></button>
                                            </div>
                                        </form:form>

                                    </div>
                                </div>
                            </div>
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
