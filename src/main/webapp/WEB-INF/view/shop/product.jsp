
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
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/shop/css/bootstrap.css" type="text/css" >
    <link rel="stylesheet" href="/shop/css/style.css" type="text/css">
    <link rel="stylesheet" href="/shop/css/animate.css">
    <link rel="stylesheet" href="/shop/css/camera.css">
    <link rel="stylesheet" href="/shop/css/touchTouch.css">
    <link rel="stylesheet" href="/shop/css/font-awesome.css">
    <link rel="stylesheet" href="/static/shop/css/cart.css">
    <link rel="stylesheet" href="/shop/css/product.css">

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

                </ol>

            </div><!-- End .container -->
        </nav>
    </main>
    <div class="container">

        <div class="container bootdey">
            <div class="col-md-3">
                <section class="panel">
                    <div class="panel-body">
                        <input type="text" placeholder="Keyword Search" class="form-control" />
                    </div>
                </section>
                <section class="panel">
                    <header class="panel-heading">
                        Category
                    </header>
                    <div class="panel-body">
                        <ul class="nav prod-cat">
                            <li>
                                <a href="#" class="active"><i class="fa fa-angle-right"></i> Dress</a>
                                <ul class="nav">
                                    <li class="active"><a href="#">- Shirt</a></li>
                                    <li><a href="#">- Pant</a></li>
                                    <li><a href="#">- Shoes</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Bags &amp; Purses</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Beauty</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Coat &amp; Jacket</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Jeans</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Jewellery</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Electronics</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Sports</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Technology</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Watches</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-angle-right"></i> Accessories</a>
                            </li>
                        </ul>
                    </div>
                </section>
                <section class="panel">
                    <header class="panel-heading">
                        Price Range
                    </header>
                    <div class="panel-body sliders">
                        <div id="slider-range" class="slider"></div>
                        <div class="slider-info">
                            <span id="slider-range-amount"></span>
                        </div>
                    </div>
                </section>
                <section class="panel">
                    <header class="panel-heading">
                        Filter
                    </header>
                    <div class="panel-body">
                        <form role="form product-form">
                            <div class="form-group">
                                <label>Brand</label>
                                <select class="form-control hasCustomSelect" style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                                    <option>Wallmart</option>
                                    <option>Catseye</option>
                                    <option>Moonsoon</option>
                                    <option>Textmart</option>
                                </select>
                                <span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 209px; display: inline-block;">Wallmart</span></span>
                            </div>
                            <div class="form-group">
                                <label>Color</label>
                                <select class="form-control hasCustomSelect" style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                                    <option>White</option>
                                    <option>Black</option>
                                    <option>Red</option>
                                    <option>Green</option>
                                </select>
                                <span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 209px; display: inline-block;">White</span></span>
                            </div>
                            <div class="form-group">
                                <label>Type</label>
                                <select class="form-control hasCustomSelect" style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                                    <option>Small</option>
                                    <option>Medium</option>
                                    <option>Large</option>
                                    <option>Extra Large</option>
                                </select>
                                <span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 209px; display: inline-block;">Small</span></span>
                            </div>
                            <button class="btn btn-primary" type="submit">Filter</button>
                        </form>
                    </div>
                </section>
                <section class="panel">
                    <header class="panel-heading">
                        Best Seller
                    </header>
                    <div class="panel-body">
                        <div class="best-seller">
                            <article class="media">
                                <a class="pull-left thumb p-thumb">
                                    <img src="https://www.bootdey.com/image/250x220/FFB6C1/000000" />
                                </a>
                                <div class="media-body">
                                    <a href="#" class="p-head">Item One Tittle</a>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </article>
                            <article class="media">
                                <a class="pull-left thumb p-thumb">
                                    <img src="https://www.bootdey.com/image/250x220/A2BE2/000000" />
                                </a>
                                <div class="media-body">
                                    <a href="#" class="p-head">Item Two Tittle</a>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </article>
                            <article class="media">
                                <a class="pull-left thumb p-thumb">
                                    <img src="https://www.bootdey.com/image/250x220/6495ED/000000" />
                                </a>
                                <div class="media-body">
                                    <a href="#" class="p-head">Item Three Tittle</a>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </article>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-md-9">
                <section class="panel">
                    <div class="panel-body">
                        <div class="pull-right">
                            <ul class="pagination pagination-sm pro-page-list">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                        </div>
                    </div>
                </section>

                <div class="row product-list">
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/FFB6C1/000000" alt="" />
                                <a href="/productdetail" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/6495ED/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/FF7F50/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/00BFFF/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/00CED1/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/9400D3/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/FFD700/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/ADD8E6/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/20B2AA/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/3CB371/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/FFB6C1/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/C71585/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/191970/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/87CEEB/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4">
                        <section class="panel">
                            <div class="pro-img-box">
                                <img src="https://www.bootdey.com/image/250x220/FFB6C1/000000" alt="" />
                                <a href="#" class="adtocart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>

                            <div class="panel-body text-center">
                                <h4>
                                    <a href="#" class="pro-title">
                                        Leopard Shirt Dress
                                    </a>
                                </h4>
                                <p class="price">$300.00</p>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>



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