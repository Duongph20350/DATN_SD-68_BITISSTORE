
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
    <link rel="stylesheet" href="/static/shop/css/cart.css">
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
                    <li class="breadcrumb-item active"  aria-current="page"><a href="/sanpham">Sản Phẩm<i ></i></a></li>
                    <li class="breadcrumb-item active" aria-current="page"> Ten Sản Phẩm</li>
                </ol>

            </div><!-- End .container -->
        </nav>
    </main>
    <div class="container">
        <section class="py-5">
            <div class="container">
                <div class="row gx-5">
                    <aside class="col-lg-6">
                        <div class="border rounded-4 mb-3 d-flex justify-content-center">
                            <a data-fslightbox="mygalley" class="rounded-4" target="_blank" data-type="image" href="">
                                <img style="max-width: 100%; max-height: 100vh; margin: auto;" class="rounded-4 fit" src="/shop/img/Screenshot 2023-10-14 110052.png" />
                            </a>
                        </div>
<%--                        <div class="d-flex justify-content-center mb-3">--%>
<%--                            <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big1.webp" class="item-thumb">--%>
<%--                                <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big1.webp" />--%>
<%--                            </a>--%>
<%--                            <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big2.webp" class="item-thumb">--%>
<%--                                <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big2.webp" />--%>
<%--                            </a>--%>
<%--                            <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big3.webp" class="item-thumb">--%>
<%--                                <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big3.webp" />--%>
<%--                            </a>--%>
<%--                            <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big4.webp" class="item-thumb">--%>
<%--                                <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big4.webp" />--%>
<%--                            </a>--%>
<%--                            <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big.webp" class="item-thumb">--%>
<%--                                <img width="60" height="60" class="rounded-2" src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big.webp" />--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <!-- thumbs-wrap.// -->--%>

                    </aside>
                    <main class="col-lg-6">
                        <div class="ps-lg-3">
                            <h4 class="title text-dark">
                                Quality Men's Hoodie for Winter, Men's Fashion <br />
                                Casual Hoodie
                            </h4>
                            <p></p>
                            <td  style="width: 50px" height="10px">
                                <input type="number" class="form-control text-center" value="1">
                            </td>
                            <p></p>
                            <a href="payment" class="btn btn-warning shadow-0"> Buy now </a>
                            <a href="giohang" class="btn btn-primary shadow-0"> <i class="me-1 fa fa-shopping-basket"></i> Add to cart </a>
                            <a href="yeuthich" class="btn btn-light border border-secondary py-2 icon-hover px-3"> <i class="me-1 fa fa-heart fa-lg"></i> Save </a>
                        </div>
                    </main>
                </div>
            </div>
        </section>
        <!-- content -->


            </div>
        </main>
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