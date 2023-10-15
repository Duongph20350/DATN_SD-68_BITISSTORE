
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
    <link rel="stylesheet" href="/shop/css/bootstrap.css" type="text/css" >
    <link rel="stylesheet" href="/shop/css/style.css" type="text/css">
    <link rel="stylesheet" href="/shop/css/animate.css">
    <link rel="stylesheet" href="/shop/css/camera.css">
    <link rel="stylesheet" href="/shop/css/touchTouch.css">
    <link rel="stylesheet" href="/shop/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<p></p>

<div class="content">
    <main class="main" id="main-content">
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/homepageshop"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item active" aria-current="page">Chính sách Bao Mat</li>
                </ol>
            </div><!-- End .container -->
        </nav>
    </main>
    //
    <div class="container">
        <h5 class="light-title"><strong>Cửa hàng của Biti's !</strong></h5>
        <div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.8836968727605!2d105.74640787500061!3d21.03733908748429!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345515f14a641f%3A0xe7f2a647f98416cb!2sFPT%20Polytechnic!5e0!3m2!1sen!2s!4v1696820790226!5m2!1sen!2s" width="1200" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div><!-- End #map -->
<p></p>
        <div class="row">
            <div class="col-md-8">
                <h5 class="light-title">  <i class="icon-mail-alt"></i><strong>Để lại lời nhắn cho chúng tôi !</strong></h5>

                <form action="#">
                    <div class="form-group required-field">
                        <input type="text" class="form-control" placeholder="Họ Và Tên Của Bạn" aria-label="City">
                    </div><!-- End .form-group -->

                    <div class="form-group required-field">
                        <input type="text" class="form-control" placeholder="Số Điện Thoại Của Bạn" aria-label="City">
                    </div><!-- End .form-group -->

                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Email Của Bạn" aria-label="City">
                    </div><!-- End .form-group -->

                    <div class="form-group required-field">

                        <textarea cols="30" rows="1" id="contact-message" placeholder="Nội Dung..." class="form-control" name="contact-message" required></textarea>
                    </div><!-- End .form-group -->

                    <div class="form-footer">
                        <button type="submit" class="btn btn-primary">Gửi Lời Nhắn</button>
                    </div><!-- End .form-footer -->
                </form>
            </div><!-- End .col-md-8 -->

            <div class="col-md-4">
                <h5 class="light-title"><strong>Thông tin liên hệ</strong></h5>

                <div class="contact-info">
                    <div>
                        <i class="">Liên hệ :</i>
                        <p><a href="tel:">0398194211</a></p>
                    </div>
                    <div>
                        <i class="">Mail:</i>
                        <p><a href="mailto:#">sd68datn@fpt.edu.vn</a></p>
                    </div>
                </div><!-- End .contact-info -->
            </div><!-- End .col-md-4 -->
        </div><!-- End .row -->
    </div><!-- End .container -->
</div>

<p></p>
<!--footer-->
<jsp:include page="../layout/shop/footer.jsp" ></jsp:include>
<script src="../shop/js/bootstrap.min.js"></script>
<script src="../shop/js/tm-scripts.js"></script>
<script type="text/javascript">


</script>

</body>
</html>