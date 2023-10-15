

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
                    <li class="breadcrumb-item active" aria-current="page">Chính sách Thanh Toán</li>
                </ol>
            </div><!-- End .container -->
        </nav>

            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="light-title"><strong>Chính sách thanh toán</strong></h2>
                        <h5 style="color: red"> BITI'S STORE chúng tôi cung cấp các phương thức thanh toán nào?</h5>
                        <p></p>
                        Nhằm mang đến Quý khách những trải nghiệm mua sắm trực tuyến tuyệt vời nhất, tại hol.com.vn, chúng tôi đưa ra 4 phương thức thanh toán để Quý khách dễ dàng lựa chọn:
                        <p></p>
                        1. Thanh toán bằng tiền mặt khi nhận hàng (COD)
                        <p></p>
                        COD là gì?
                        <p></p>
                        COD là viết tắt của Cash On Delivery, nghĩa là thanh toán khi nhận hàng. Với phương thức thanh toán này, quý khách thanh toán bằng tiền mặt cho nhân viên giao hàng ngay khi nhận được đơn hàng của mình. Chúng tôi chấp nhận hình thức thanh toán khi nhận hàng (COD) cho hầu hết đơn hàng trên toàn quốc. Trừ những trường hợp sau:
                        <p></p>
                        Chỉ áp dụng COD cho đơn hàng có tổng giá trị nhỏ hơn năm triệu đồng (5.000.000 đồng). Nếu đơn hàng trên năm triệu đồng, quý khách vui lòng chọn hình thức thanh toán khác.
                        Không hỗ trợ phương thức Thanh toán bằng tiền mặt khi nhận hàng (COD) đối với đơn hàng có sản phẩm bắt buộc lưu chuyển trực tiếp từ cửa hàng để giao hàng, hoặc đơn hàng có từ 2 kiện hàng cùng size. Quý khách vui lòng chọn hình thức thanh toán trước bằng hình thức chuyển khoản. Nhân viên hỗ trợ đơn hàng sẽ liên hệ xác nhận thông tin đơn hàng cho quý khách.
                        <p></p>
                        2. Thanh toán chuyển khoản:
                        <p></p>
                        Trong quá trình đặt hàng, Quý khách không muốn thanh toán bằng tiền mặt hoặc không thể thanh toán trực tiếp, Quý khách có thể chọn hình thức thanh toán chuyển khoản trong phần Phương thức thanh toán
                        Điều kiện để chọn hình thức thanh toán chuyển khoản là tài khoản ngân hàng của Quý khách đã được đăng ký sử dụng Internet Banking.
                        <p></p>
                        Quý khách thanh toán vào tài khoản:
                        <p></p>
                        CHỦ TÀI KHOẢN:
                        <p></p>

                        * Nội dung chuyển khoản: GB_[Mã đơn hàng]
                        <p></p>
                        Ví dụ: Quý khách thanh toán chuyển khoản cho đơn hàng 19xxxxxxx đặt hàng trên website http://localhost:8080/shop/index, cú pháp ghi chú khi chuyển khoản là GB_19xxxxxxx
                        <p></p>
                        3. Thanh toán bẳng thẻ ATM nội địa:
                        <p></p>
                        Trong quá trình đặt hàng, quý khách chọn hình thức Thanh toán bằng thẻ ATM nội địa, quý khách sẽ được chuyển đến Cổng thanh toán trực tuyến bảo mật Onepay để thanh toán. Thẻ ATM của quý khách bắt buộc phải sử dụng Internet Banking để thực hiện phương thức thanh toán này.
                        <p></p>
                        4. Thanh toán bằng Visa/Master card:
                        <p></p>
                        Trong quá trình đặt hàng, quý khách chọn hình thức Thanh toán bằng thẻ Visa/Master card, quý khách sẽ được chuyển đến Cổng thanh toán trực tuyến bảo mật Onepay để thanh toán.
                        <p></p>
                        Giá trị đơn hàng là bao nhiêu thì tôi sẽ được xuất hóa đơn?
                        <p></p>
                        Trong mọi trường hợp, trừ khi có yêu cầu khác đi, Quý khách hàng sẽ nhận được hoá đơn theo thông tin cá nhân đã đăng ký khi mua hàng tại hol.com.vn.
                        <p></p>
                        <p>Cảm ơn Quý Khách hàng đã tin tưởng và cho BITI'S cơ hội được phục vụ Quý Khách!</p>
                    </div><!-- End .col-md-8 -->
                </div><!-- End .row -->
            </div><!-- End .container -->

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