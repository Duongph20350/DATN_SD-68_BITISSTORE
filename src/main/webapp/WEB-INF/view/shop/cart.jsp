
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
                    <li class="breadcrumb-item active" aria-current="page">Gio Hang</li>
                </ol>
            </div><!-- End .container -->
        </nav>
    </main>
    <div class="container">
        <table id="cart" class="table table-hover table-condensed">
            <thead>
            <tr>
                <th style="width:50%">Sản Phẩm</th>
                <th style="width:10%">Gía Tiền</th>
                <th style="width:8%">Số Lượng</th>
                <th style="width:22%" class="text-center">Thành Tiền</th>
                <th style="width:10%"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td data-th="Product">
                    <div class="row">
                        <div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive" /></div>
                        <div class="col-sm-10">
                            <h4 class="nomargin">Product 1</h4>
                            <p>Màu sắc</p>
                            <p>sie</p>
                        </div>
                    </div>
                </td>
                <td data-th="Price">$5.11</td>
                <td data-th="Quantity">
                    <input type="number" class="form-control text-center" value="1">
                </td>
                <td data-th="Subtotal" class="text-center">$5.11</td>
                <td class="actions" data-th="">
                    <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                    <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                </td>
            </tr>
            </tbody>
            <tfoot>
            <tr class="visible-xs">
                <td class="text-center"><strong>Thành Tiền $ 5.11</strong></td>
            </tr>
            <tr>
                <td><a href="/sanpham" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
                <td colspan="2" class="hidden-xs"></td>
                <td class="hidden-xs text-center"><strong>Thành Tiền $ 5.11</strong></td>
                <td><a href="/payment" class="btn btn-success btn-block">Thanh Toán <i class="fa fa-angle-right"></i></a></td>
            </tr>
            </tfoot>
        </table>
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