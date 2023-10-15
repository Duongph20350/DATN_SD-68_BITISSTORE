
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
                <div class="row">
                    <div class="col-lg-6">
                        <div class="order-summary">
                            <h3>Đơn hàng</h3>
                            <div class="collapse show" id="order-cart-section">
                                <table class="table table-mini-cart">
                                    <tbody>
                                    <tr>
                                        <td class="product-col">
                                            <figure class="product-image-container">
                                                <!--                                        <a href="product.html" class="product-image">-->

                                                <!--                                        </a>-->
                                            </figure>
                                            <div>
                                                <h2 class="product-title">

                                                </h2>

                                            </div>
                                        </td>
                                        <td class="price-col"></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <!-- Pricing Section-->
                                <div class="pricing childs">

                                    <div class="size-btn" data-toggle="modal" data-target="#modal-size-Choose">
                                        <button class="btn btn-primary size trans-btn"><span class="size-text">Size</span><i class="fas dropdown-arrow"></i></button>
                                    </div>
                                    <div class="input-group" style="margin-top:30px">
                                        <input type="text" class="form-control" placeholder="Nhập mã khuyến mãi" id="in-coupon">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button" id="btn-apply-coupon">Áp dụng</button>
                                        </div>
                                    </div>
                                    <div class="coupon price-include">
                                        <div class="text">Tạm tính</div>
                                        <input class="form-control text-price-input" id="in-price" type="text" readonly/>
                                    </div>
                                    <div class="coupon price-include">
                                        <div class="text">Khuyến mãi</div>
                                        <input class="form-control text-price-input" id="in-promotion-value" type="text" readonly/>
                                    </div>
                                    <div class="coupon price-include">
                                        <div class="text">Tổng thanh toán</div>
                                        <input class="form-control text-price-input" id="in-total-price" type="text" readonly/>
                                    </div>
                                    <div class="size-btn" data-toggle="modal" data-target="#modal-size-Choose">
                                        <button class="btn btn-primary size trans-btn"><span class="size-text">Thanh Toán Bằng</span><span  class="size-details">Khi Nhận hàng</span>


                                            <i class="fas dropdown-arrow"></i></button>
                                    </div>
                                </div>

                                <button type="button" class="btn btn-primary confirm-btn red-btn" id="btn-buy-now" >ĐẶT HÀNG</button>
                            </div><!-- End #order-cart-section -->
                        </div><!-- End .order-summary -->
                    </div><!-- End .col-lg-4 -->

                    <div class="col-lg-6 order-lg-first">
                        <div class="checkout-payment">
                            <h2 class="step-title">Thông tin nhận hàng</h2>
                            <div id="new-checkout-address" class="show">
                                <form action="#">
                                    <div class="form-group required-field">
                                        <label>Tên người nhận </label>
                                        <input type="text" class="form-control"  name="receiver_name" id="receiver_name" required>
                                        <div class="invalid-feedback"></div>
                                    </div><!-- End .form-group -->

                                    <div class="form-group required-field">
                                        <label>Số điện thoại </label>
                                        <input type="text" class="form-control"  name="receiver_phone" id="receiver_phone">
                                        <div class="invalid-feedback"></div>
                                    </div><!-- End .form-group -->

                                    <div class="form-group required-field">
                                        <label>Địa chỉ nhận hàng</label>
                                        <textarea type="text" class="form-control"  name="receiver_address" id="receiver_address" required></textarea>
                                        <div class="invalid-feedback"></div>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label>Ghi chú </label>
                                        <textarea type="text" class="form-control" id="notes"></textarea>
                                    </div><!-- End .form-group -->
                                </form>
                            </div><!-- End #new-checkout-address -->
                        </div><!-- End .checkout-payment -->
                    </div><!-- End .col-lg-8 -->
                </div><!-- End .row -->
            </div><!-- End .container -->

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