

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
                    <li class="breadcrumb-item active" aria-current="page">Hướng dẫn mua hàng</li>
                </ol>
            </div><!-- End .container -->
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="light-title"><strong>Chính Sách Mua Hàng</strong></h2>
                    <h5> I. CAM KẾT</h5>
                    Bằng việc tạo đơn hàng và/hoặc tài khoản trên Gian hàng theo Chính sách chung này, Quý khách cam kết và đồng ý rằng:
                    <p></p>
                    - Quý khách luôn tuân thủ và chịu sự ràng buộc bởi Chính sách chung này trong suốt quá trình mua bán trên Gian hàng cũng như thực hiện các hoạt động, dịch vụ có liên quan khác.
                    <p></p>
                    - Quý khách có đầy đủ năng lực theo quy định pháp luật để thực thi tất cả các nghĩa vụ phát sinh từ các giao dịch trên Gian hàng theo Chính sách chung này bao gồm cả việc có được tất cả sự cho phép nội bộ và đáp ứng các quy định pháp luật hoặc của các cơ quan thẩm quyền khác (nếu có).
                    <p></p>
                    - Tất cả những thông tin Quý khách cung cấp cho LG Việt Nam thông qua Gian hàng là đầy đủ và chính xác.
                    <p></p>
                    - Tất cả Sản phẩm được mua trên Gian hàng chỉ nhằm mục đích phục vụ nhu cầu tiêu dùng của Quý khách. Việc chuyển giao Sản phẩm cho bên thứ 3 (nếu có) cũng không vì bất kỳ mục đích kinh doanh thương mại nào. Mọi hành vi mua đi bán lại các Sản phẩm trên Gian hàng đều là hành vi vi phạm Chính sách chung này.
                    <p></p>
                    - Việc thanh toán cho các đơn đặt hàng trên Gian hàng sẽ được thực hiện thông qua Bên thứ 3 có chức năng cung cấp dịch vụ trung gian thanh toán theo đúng quy định pháp luật hiện hành. Thông tin về các đơn vị cung cấp dịch vụ này sẽ được thể hiện trên Gian hàng tại bước Thanh toán và có thể được sửa đổi, bổ sung bởi LG OBS tùy từng thời điểm.
                    <p></p>

                    <h5>  II. ĐĂNG KÝ TÀI KHOẢN </h5>
                    <p></p>
                    - Quý khách có thể đăng ký tài khoản bằng cách vào mục "Đăng nhập/Đăng ký" ở đầu trang và chọn "Đăng ký ngay" sau đó làm theo hướng dẫn.
                    <p></p>
                    - Sau khi đăng ký thành công, Quý khách sẽ trở thành Thành viên LG và được tận hưởng các ưu đãi đặc biệt dành riêng cho Thành viên như khuyến mại, áp dụng phiếu mua hàng…
                    <p></p>
                    - Quý khách có thể quản lý và cập nhật thông tin tài khoản của mình tại mục "LG của tôi" sau khi đăng nhập.
                    <p></p>
                    <h5 style="color: red">  Lưu ý:</h5>
                    <p></p>
                    - Việc bảo mật thông tin cá nhân như tài khoản đăng nhập và mật khẩu luôn được LG Việt Nam khuyến nghị nhằm hạn chế các vấn đề rò rỉ thông tin cá nhân cũng như các bất lợi có thể ảnh hưởng đến quyền lợi Thành viên của Quý khách.
                    <p></p>
                    - Với mục đích tăng cường tính bảo mật [cho các giao dịch trên Gian hàng], bên cạnh việc xác thực tài khoản bằng tên đăng nhập và mật khẩu, LG Việt Nam áp dụng biện pháp xác thực 02 tầng thông qua mã xác thực (OTP – One Time Password). Theo đó, Quý khách đồng ý nhận mã xác thực qua tin nhắn được LG Việt Nam gửi đến số điện thoại mà Quý khách đã đăng ký mỗi khi Quý khách đăng nhập tài khoản.

                    <p></p>- LG Việt Nam bảo lưu quyền phong tỏa tài khoản và/hoặc hủy đơn hàng của Quý khách nếu Quý khách không đảm bảo được các cam kết quy định tại Chính sách chung này.
                    <P></P>
                    <h5>III. SẢN PHẨM</h5>
                    <P></P>
                    - Các Sản phẩm được kinh doanh trên Gian hàng đều là sản phẩm chính hãng LG được tập đoàn điện tử LG Hàn Quốc sản xuất tại các nhà máy trực thuộc ở nhiều quốc gia khác nhau trên toàn thế giới và được phân phối tại thị trường Việt Nam thông qua Công ty TNHH LG Electronics Việt Nam Hải Phòng.

                    <P></P>
                    - Sản phẩm luôn đảm bảo các tính năng và thông số kỹ thuật như đã công bố, phù hợp với các tiêu chuẩn, quy chuẩn (nếu có) của pháp luật Việt Nam.
                    <P></P>
                    - LG Việt Nam luôn cố gắng để các thông tin và hình ảnh về Sản phẩm được hiển thị chính xác nhất. Tuy nhiên, các sơ suất về thông tin cũng như sai khác về hình ảnh, màu sắc vẫn có thể xảy ra do thiết bị hiển thị của Quý khách hoặc các yếu tố khách quan.
                    <P></P>
                    <h5>   IV. GIÁ SẢN PHẨM </h5>
                    <P></P>
                    - Giá của các Sản phẩm sẽ được niêm yết trên Gian hàng và chỉ có hiệu lực trong thời gian hiển thị. Giá Sản phẩm đã bao gồm thuế GTGT. Trừ khi có quy định khác đi trong Thông báo giao Sản phẩm, giá niêm yết trên Gian hàng là giá đã bao gồm phí giao hàng.
                    <P></P>
                    - Giá của Sản phẩm có thể được cập nhật theo từng thời điểm, tuy nhiên những thay đổi này sẽ không được áp dụng trong trường hợp Chúng tôi đã gửi đến Quý khách “Thông báo xác nhận đặt hàng”.
                    <P></P>
                    - LG Việt Nam có thể phân phối cùng một sản phẩm với nhiều mức giá khác nhau vào cùng một thời điểm tùy theo đối tượng khách hàng và chương trình ưu đãi đang triển khai. Quý khách được quyền tự do lựa chọn mức giá phù hợp nhất đang có hiệu lực áp dụng với mình.
                    <P></P>
                    <h5> VI. MUA HÀNG</h5>
                    <p> 1. Đơn đặt hàng</p>
                    <P></P>
                    - Quý khách lựa chọn Sản phẩm phù hợp với nhu cầu và thêm vào giỏ hàng
                    <P></P>
                    - Cung cấp đầy đủ và chính xác thông tin giao hàng.
                    <P></P>
                    - Việc thanh toán sẽ được thực hiện trực tuyến thông qua hệ thống cổng thanh toán của đơn vị cung cấp dịch vụ trung gian thanh toán được tích hợp ngay trên Gian hàng.
                    Các hình thức thanh toán được chấp nhận bao gồm: ATM; JCB; Master card; Visa; QR code; Trả góp.
                    <P></P>
                    - Quý khách vui lòng kiểm tra kỹ mọi thông tin liên quan đến Đơn đặt hàng trước khi Thanh toán. Sau khi thanh toán thành công, Đơn đặt hàng sẽ được tự động gửi vào hệ thống quản lý đơn hàng của LG Việt Nam.
                    <P></P>
                    - Đơn đặt hàng được Quý khách tạo lập và gửi cho LG Việt Nam theo cách thức trên được xem là một đề nghị giao kết hợp đồng mua bán Sản phẩm của Quý khách theo Chính sách chung này.
                    <P></P>
                    2. Xác nhận đơn hàng
                    <P></P>
                    - Sau khi đặt hàng thành công, Quý khách sẽ nhận được thông báo xác nhận đơn hàng từ LG Việt Nam đã kèm theo số tham chiếu Đơn đặt hàng và chi tiết về Sản phẩm mà Quý khách đã đặt.
                    <P></P>
                    - Trường hợp một đơn hàng có nhiều sản phẩm sau khi đã hoàn tất việc thanh toán, nếu Quý khách muốn hủy một sản phẩm trong đơn hàng hoặc muốn đổi một sản phẩm khác, vui lòng hủy đơn hàng hiện tại và đặt một đơn hàng mới.
                    <P></P>
                    - Sau khi LG Việt Nam lên mã vận đơn, Quý khách sẽ không thể hủy đơn đặt hàng.
                    <P></P>
                    - Thông báo xác nhận đơn hàng được gửi cho Quý khách được xem là lời chấp nhận giao kết Hợp đồng mua bán Sản phẩm với Quý khách từ LG Việt Nam. Khi đó, Hợp đồng mua bán giữa Quý khách và LG OBS chính thức được xác lập theo các điều khoản và điều kiện quy định tại Chính sách chung này.
                    <P></P>
                    3. Kiểm tra tình trạng đơn hàng

                    <P></P>
                    Quý khách có thể kiểm tra đơn đặt hàng bằng cách:
                    <P></P>
                    - Bước 1: Đăng nhập
                    <P></P>
                    - Bước 2: Chọn "Đơn hàng của tôi"
                    <P></P>
                    - Bước 3: Chọn "Chi tiết" để xem tình trạng của đơn hàng mong muốn
                </div><!-- End .col-md-8 -->
            </div><!-- End .row -->
            <p></p>
            <h2 class="light-title"><strong STYLE="margin-left: 240PX">BITI'S STORE CHÂN THÀNH CẢM ƠN CÁC BẠN !</strong></h2>
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