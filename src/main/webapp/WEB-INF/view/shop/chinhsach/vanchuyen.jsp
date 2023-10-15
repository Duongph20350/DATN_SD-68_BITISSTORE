

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
                    <li class="breadcrumb-item active" aria-current="page">Chính sách Vận chuyển</li>
                </ol>
            </div><!-- End .container -->
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="light-title"><strong>Chính sách Vận chuyển</strong></h2>

                    <h5 style="color: red"> BITI'S STORE chúng tôi cung cấp các phương thức vận chuyển nào?</h5>
                    <p></p>
                    I. QUY ĐỊNH VỀ PHẠM VI GIAO HÀNG
                    <p></p>
                    Với mục tiêu mang lại sự tiện lợi cho Khách hàng khi mua hàng trực tuyến trên website hol.com.vn, House Of Luggage thực hiện chính sách GIAO HÀNG TRÊN TOÀN QUỐC cho tất cả các đơn hàng.
                    <p></p>
                    II. QUY ĐỊNH VỀ PHÍ GIAO HÀNG
                    <p></p>
                    Tất cả các đơn hàng sẽ được Giao Hàng và Tính Phí Theo Từng Khu Vực, Khách hàng sẽ thanh toán tiền đơn hàng, cộng với phí vận chuyển theo từng khu vực và chi phí này được xác nhận bởi nhân viên bán hàng.
                    <p></p>


                    <p></p>

                    Hotline: 18006063 sẽ giải quyết các vấn đề của khách hàng trong quá trình nhận hàng.
                    <p></p>
                    III. QUY ĐỊNH VỀ THỜI GIAN GIAO HÀNG DỰ KIẾN
                    <P></P>
                    Thời gian giao hàng dự kiến:
                    <P></P>
                    Khu vực Hồ Chí Minh 1-2 ngày.
                    <P></P>
                    Thành phố trực thuộc Trung Ương các tỉnh miền Nam/ miền Tây 2-3 ngày.
                    <P></P>
                    Thị xã, các huyện thuộc các tỉnh miền Nam/miền Tây 3-4 ngày.
                    <P></P>
                    Vùng sâu vùng xa thuộc các tỉnh miền Nam/miền Tây 3-5 ngày.
                    <P></P>
                    Khu vực Đà Nẵng 1-2 ngày.
                    <P></P>
                    Thành phố trực thuộc Trung Ương các tỉnh miền Trung 2-3 ngày.
                    <P></P>
                    Thị xã, các huyện thuộc các tỉnh miền Trung 3-4 ngày.
                    <P></P>
                    Khu vực vùng sâu vùng xa thuộc các tỉnh miền Trung 3-5 ngày.
                    <P></P>
                    Khu vực Hà Nội 1-2 ngày.
                    <P></P>
                    Khu vực thành phố trực thuộc Trung Ương các tỉnh miền Bắc 2-3 ngày.
                    <P></P>
                    Khu vực thi xã, các huyện thuộc các tỉnh miền Bắc 3-4 ngày.
                    <P></P>
                    Khu vực vùng sâu vùng xa thuộc các tỉnh miền Bắc 3-5 ngày.

                    <P></P>

                    <h5 style="color: red"> * Ghi chú: Thời gian giao hàng không tính ngày lễ và chủ nhật.</h5>
                    <p>Cảm ơn Quý Khách hàng đã tin tưởng và cho BITI'S cơ hội được phục vụ Quý Khách!</p>
                </div><!-- End .col-md-8 -->
            </div><!-- End .row -->
        </div><!-- End .container -->

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