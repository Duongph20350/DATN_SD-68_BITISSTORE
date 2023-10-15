

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
<jsp:include page="../../layout/shop/header.jsp"></jsp:include>
<!--content-->
<p></p>

<div class="content">

    <main class="main" id="main-content">
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/homepageshop"><i class="fa fa-home"></i></a></li>
                    <li class="breadcrumb-item active" aria-current="page">Hành trình của Biti's</li>
                </ol>
            </div><!-- End .container -->
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="light-title"><strong>Hành Trình của Biti's</strong></h2>

                    <h5 style="color: red"> NHỮNG BƯỚC CHÂN KHÔNG MỎI?</h5>
                    <p></p>

                </div><!-- End .col-md-8 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
        <img class="owl-lazy slide-bg" th:src="@{/shop/images/z4766672381538_a4de2d96e59f4915c3c7964aa5d73110.jpg}" data-src="shop/z4766672381538_a4de2d96e59f4915c3c7964aa5d73110.jpg" alt="slider image">
        <p></p>

        Từ một cơ sở sản xuất nhỏ khởi nghiệp từ năm 1982 chỉ với 20 công nhân nhưng có sự quyết tâm cao độ, ý chí và luôn tự khiêm tốn để cải cách tiến lên, Biti's đã trải qua giai đoạn của nền kinh tế bao cấp với nhiều khó khăn để khẳng định vị trí của mình.
        <p></p>
        Hơn một phần ba thế kỉ trôi qua, như một "bước chân không mỏi", Biti's đã cải tiến và đổi mới không ngừng, từng bước xây dựng cho mình một thương hiệu giày dép rất đa dạng về hình thức và mẫu mã, cùng với đó là chiến lược sản xuất và xuất nhập khẩu mang tầm thời đại, nguồn vật lực - tài lực - nhân lực năng động, nhiệt huyết, đủ sức để cạnh tranh với các thương hiệu lớn trên thế giới


        </div>
        <p>Cảm ơn Quý Khách hàng đã tin tưởng và cho BITI'S cơ hội được phục vụ Quý Khách!</p>
        <div class="mb-8"></div><!-- margin -->
    </main><!-- End .main -->

</div>

<p></p>
<!--footer-->
<jsp:include page="../../layout/shop/footer.jsp"></jsp:include>
<script src="../shop/js/bootstrap.min.js"></script>
<script src="../shop/js/tm-scripts.js"></script>
<script type="text/javascript">

</script>

</body>
</html>