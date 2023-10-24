
<!doctype html>
<html lang="en">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BITI'S STORE</title>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <meta name = "format-detection" content = "telephone=no" />
    <!--CSS-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/shop/css/bootstrap.css" type="text/css" >
    <link rel="stylesheet" href="/shop/css/style.css" type="text/css">
    <link rel="stylesheet" href="/shop/css/animate.css">
    <link rel="stylesheet" href="/shop/css/camera.css">
    <link rel="stylesheet" href="/shop/css/touchTouch.css">
    <link rel="stylesheet" href="/shop/css/font-awesome.css">

    <!--JS-->
    <script src="/shop/js/jquery.js"></script>
    <script src="../shop/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="../shop/js/jquery.easing.1.3.js"></script>
    <script src="../shop/js/jquery.mobilemenu.js"></script>
    <script src="../shop/js/jquery.equalheights.js"></script>
    <script src="../shop/js/camera.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <script src="../shop/js/jquery.mobile.customized.min.js"></script>
    <!--<![endif]-->
    <script src="../shop/js/touchTouch.jquery.js"></script>
    <script src="../shop/js/jquery.carouFredSel-6.1.0-packed.js"></script>
    <script src="../shop/js/jquery.touchSwipe.min.js"></script>
    <script>
        $(window).load(function() {
            $('#tab_preview a').click(function (e) {
                e.preventDefault();
                $(this).tab('show');
            })
        });
    </script>

    <script>
        $(window).load(function() {
            // Initialize the gallery
            $('.list_carousel1 figure a, .thumb-box4 figure a').touchTouch();
        });
    </script>

    <script>
        $(document).ready(function(){
            jQuery('.camera_wrap').camera();
        });
    </script>
    <script>
        $(window).load(function() {
            $(function() {
                $('#foo1').carouFredSel({
                    auto: false,
                    responsive: true,
                    width: '100%',
                    scroll: 2,
                    pagination  : "#foo2_pag",
                    items: {
                        height: 'auto',
                        width:390,
                        visible: {
                            min: 1,
                            max: 4
                        }
                    },
                    mousewheel: false,
                    swipe: {
                        onMouse: true,
                        onTouch: true
                    }
                });
                $('#foo2').carouFredSel({
                    auto: false,
                    responsive: true,
                    width: '100%',
                    scroll: 1,
                    prev: '#prev',
                    next: '#next',
                    items: {
                        height: 'auto',
                        width:370,
                        visible: {
                            min: 1,
                            max: 4
                        }
                    },
                    mousewheel: false,
                    swipe: {
                        onMouse: true,
                        onTouch: true
                    }
                });
            });
        });
    </script>

    <script src="../shop/js/wow/wow.js"></script>

    <script>
        $(document).ready(function () {
            if ($("html").hasClass("desktop")) {
                new WOW().init();
            }
        });
    </script>
</head>
<body>
<!--header-->
<jsp:include page="../layout/shop/header.jsp"></jsp:include>
<!--content-->
<div class="content">
    <main class="main" id="main-content">
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/homepageshop"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item active"  aria-current="page"><a href="/giohang">Gio Hàng<i ></i></a></li>
                    <li class="breadcrumb-item active" aria-current="page"> Hóa đơn</li>
                </ol>
            </div><!-- End .container -->
        </nav>
    </main>

<div class="container">
    <div class="main-panel">
        <div class="content">
            <!--  start   -->




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

        </main><!-- End .main -->

    </div>
</div>


<!--footer-->
<jsp:include page="../layout/shop/footer.jsp"></jsp:include>
<script src="../shop/js/bootstrap.min.js"></script>
<script src="../shop/js/tm-scripts.js"></script>
<script type="text/javascript">


</script>

</body>
</html>