
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
                    <li class="breadcrumb-item"><a href="/homepageshop"><i class=" fa fa-home"></i></a></li>
                    <li class="breadcrumb-item active" aria-current="page">Chính sách đổi trả</li>
                </ol>
            </div><!-- End .container -->
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="light-title"><strong>Chính sách đổi trả</strong></h2>
                    <h5 style="color: red">Đối với khách hàng ở Hà Nội hoặc mua hàng trực tiếp tại cửa hàng của BITI'S</h5>
                    <p>- Trong vòng 7 ngày kể từ ngày mua hàng (Theo thời gian ghi trong hoá đơn), quý khách được phép đổi size, đổi mẫu hoặc trả hàng và nhận lại tiền.</p>
                    <p>- Khi đến đổi, quý khách vui lòng mang theo sản phẩm trong tình trạng chưa qua sử dụng.</p>
                    <h5 style="color:red;">Đối với khách hàng ở các tỉnh ngoài Hà Nội khi đặt hàng của BITIS</h5>
                    <p>- Trong vòng 7 ngày kể từ ngày nhận hàng (Theo thời gian ghi trong hoá đơn, hoặc mã đơn hàng), quý khách được phép đổi size, đổi mẫu hoặc trả lại hàng và nhận lại tiền.</p>
                    <p>- Quý khách vui lòng thông báo trước về tình trạng sản phẩm, nguyên do đổi hàng qua inbox  Sau đó sẽ nhận được hướng dẫn từ đội ngũ hỗ trợ của Tu Shoes.</p>
                    <p>- Trường hợp Sản phẩm lỗi do nhà sản xuất hoặc bên phía cửa hàng gửi nhầm Sản phẩm của Quý khách. Prince xin chịu hoàn toàn Phí Vận Chuyển để đảm bảo quý khách có một Sản phẩm tốt nhất.</p>
                    <h5 style="color: red">Lưu ý:</h5>
                    <p>-Thời gian hoàn tiền:.</p>
                    <p>-+ Đối với thẻ thanh toán thẻ ATM, phương thức QRcode: trong vòng 15 ngày làm việc.
                    <P></P>
                    + Đối với thẻ quốc tế: trong kỳ sao kê gần nhất nhưng tối đa là 45 ngày (tùy loại thẻ và ngân hàng phát hành)
                    <P></P>
                    - Việc hủy đơn hàng có sử dụng dịch vụ trả góp có thể phát sinh phí chuyển đổi trả góp cho Quý khách, tương đương 3% giá trị đơn hàng trả góp, tùy theo quy định của ngân hàng cho vay.</p>
                    <p>- Điều kiện: Sản phẩm còn mới 100%</p>
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