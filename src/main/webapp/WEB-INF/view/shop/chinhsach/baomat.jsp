
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
                    <li class="breadcrumb-item active" aria-current="page">Chính sách Bao Mat</li>
                </ol>
            </div><!-- End .container -->
        </nav>
        </main>
<hr>
    <div class="container ">
        <div class="row">
            <div class="col-md-12">
                <h2 class="light-title"><strong>Chính sách Bảo Mật</strong></h2>

                <h5 style="color: red"> BITI'S STORE chúng tôi cung cấp các phương thức Bảo mật thế nào?</h5>
                <p></p>
                1. Mục đích và phạm vi thu thập
                <p></p>

                Việc thu thập dữ liệu chủ yếu trên website TMĐT Biti's bao gồm: email, điện thoại, tên đăng nhập, mật khẩu đăng nhập, địa chỉ của khách hàng. Đây là các thông tin mà yêu cầu Thành Viên cung cấp bắt buộc khi đăng ký sử dụng dịch vụ và để HOL.com.vn liên hệ xác nhận khi Thành Viên đăng ký sử dụng dịch vụ trên website TMĐT nhằm đảm bảo quyền lợi cho người tiêu dùng.
                chỉ lưu giữ thông tin chi tiết về đơn hàng đã thanh toán của khách hàng, các thông tin về số tài khoản ngân hàng của khách hàng sẽ không được lưu giữ.
                <p></p>
                Biti's cũng sẽ sử dụng cả thông tin nhận diện cá nhân của Thành Viên và một số thông tin nhận diện phi cá nhân (như cookies, địa chỉ IP, loại trình duyệt, ngày tổng số, v.v.) để gia tăng khả năng đáp ứng của HOL.com.vn.
                <p></p>
                Về phương diện các trang và dịch vụ, cũng như về phát triển những chức năng, tính năng và các dịch vụ mới theo những xu hướng và sở thích đang diễn tiến.
                <p></p>
                Các Thành Viên sẽ tự chịu trách nhiệm về bảo mật và lưu giữ mọi hoạt động sử dụng dịch vụ dưới tên đăng ký, mật khẩu và hộp thư điện tử của mình. Ngoài ra, Thành Viên có trách nhiệm thông báo kịp thời cho HOL.com.vn về những hành vi sử dụng trái phép, lạm dụng, vi phạm bảo mật, lưu giữ tên đăng ký và mật khẩu của bên thứ ba để có biện pháp giải quyết phù hợp.
                <p></p>
                2. Phạm vi sử dụng thông tin
                <p></p>
                Website TMĐT HOL.com.vn sử dụng thông tin Thành Viên cung cấp để:
                <p></p>
                Cung cấp các dịch vụ đến Thành Viên.
                <p></p>
                Gửi các thông báo về các hoạt động trao đổi thông tin giữa Thành Viên và website TMĐT HOL.com.vn.
                <p></p>
                Ngăn ngừa các hoạt động phá hủy tài khoản người dùng của Thành Viên hoặc các hoạt động giả mạo Thành Viên.
                <p></p>
                Liên lạc và giải quyết với Thành Viên trong những trường hợp đặc biệt.
                <p></p>
                Không sử dụng thông tin cá nhân của Thành Viên ngoài mục đích xác nhận và liên hệ có liên quan đến giao dịch tại website TMĐT HOL.com.vn.
                <p></p>
                Trong trường hợp có yêu cầu của pháp luật: website Bitis có trách nhiệm hợp tác cung cấp thông tin Thành Viên khi có yêu cầu từ cơ quan tư pháp bao gồm: Viện kiểm sát, tòa án, cơ quan công an điều tra liên quan đến hành vi vi phạm pháp luật nào đó của khách hàng. Ngoài ra, không ai có quyền xâm phạm vào thông tin của Thành Viên.
                <p></p>
                3. Thời gian lưu trữ thông tin
                <p></p>
                Dữ liệu cá nhân của Thành Viên sẽ được lưu trữ cho đến khi có yêu cầu hủy bỏ hoặc tự Thành Viên đăng nhập và thực hiện hủy bỏ. Còn lại trong mọi trường hợp thông tin cá nhân của Thành Viên sẽ được bảo mật trên máy chủ của HOL.com.vn.
                <p></p>
                Địa chỉ của đơn vị thu thập và quản lý thông tin:
                <p></p>

                4. Phương tiện và công cụ để người dùng tiếp cận và chỉnh sửa dữ liệu cá nhân của mình
                <p></p>
                Thành Viên có quyền tự kiểm tra, cập nhật, điều chỉnh hoặc hủy bỏ thông tin cá nhân của mình bằng cách đăng nhập vào tài khoản và chỉnh sửa thông tin cá nhân hoặc yêu cầu website TMĐT HOL.com.vn thực hiện việc này.
                <p></p>
                Thành Viên có quyền gửi khiếu nại về việc bị tiết lộ thông tin các nhân cho bên thứ 3 đến Ban quản trị của website TMĐT HOL.com.vn. Khi tiếp nhận những phản hồi này, HOL.com.vn sẽ xác nhận lại thông tin và có trách nhiệm trả lời lý do, đồng thời hướng dẫn Thành Viên khôi phục và bảo mật lại thông tin.
                <p></p>
                5. Cam kết bảo mật thông tin cá nhân khách hàng
                <p></p>
                Thông tin cá nhân của Thành Viên trên website TMĐT HOL.com.vn được HOL.com.vn cam kết bảo mật tuyệt đối theo chính sách bảo vệ thông tin cá nhân của website TMĐT HOL.com.vn. Việc thu thập và sử dụng thông tin của mỗi Thành Viên chỉ được thực hiện khi có sự đồng ý của khách hàng đó trừ những trường hợp pháp luật có quy định khác. HOL.com.vn cam kết rằng:
                <p></p>
                Không sử dụng, không chuyển giao, cung cấp hay tiết lộ cho bên thứ 3 nào về thông tin cá nhân của Thành Viên khi không có sự cho phép đồng ý từ Thành Viên.
                <p></p>
                Trong trường hợp máy chủ lưu trữ thông tin bị hacker tấn công dẫn đến mất mát dữ liệu cá nhân Thành Viên, HOL.com.vn sẽ có trách nhiệm thông báo vụ việc cho cơ quan chức năng điều tra xử lý kịp thời và thông báo cho Thành Viên được biết.
                <p></p>
                Bảo mật tuyệt đối mọi thông tin giao dịch trực tuyến của Thành Viên bao gồm thông tin hóa đơn kế toán chứng từ số hóa tại khu vực dữ liệu trung tâm an toàn cấp 1 của HOL.com.vn. Ban quản lý HOL.com.vn yêu cầu các cá nhân khi đăng ký/mua hàng là Thành Viên, phải cung cấp đầy đủ thông tin cá nhân có liên quan như: họ và tên, địa chỉ liên lạc, email, số chứng minh nhân dân, điện thoại, số tài khoản, số thẻ thanh toán…, và chịu trách nhiệm về tính pháp lý của những thông tin trên. Ban quản lý HOL.com.vn không chịu trách nhiệm cũng như không giải quyết mọi khiếu nại có liên quan đến quyền lợi của Thành Viên đó nếu xét thấy tất cả thông tin cá nhân của Thành Viên đó cung cấp khi đăng ký ban đầu là không chính xác.
                <p></p>
                Bạn có thể quản lý và xóa cookie tại trình duyệt và phần cài đặt của thiết bị. Để biết thêm thông tin về cách thực hiện, vui lòng truy cập phần trợ giúp của trình duyệt hoặc thiết bị của bạn.
                <p></p>
                6. Cơ chế giải quyết khiếu nại, tranh chấp
                <p></p>
                Biti's có trách nhiệm tiếp nhận khiếu nại và hỗ trợ Khách Hàng liên quan đến giao dịch tại website TMĐT HOL.com.vn. Khi phát sinh tranh chấp, HOL.com.vn đề cao giải pháp thương lượng, hòa giải giữa các bên nhằm duy trì sự tin cậy của Thành Viên vào chất lượng dịch vụ của website TMĐT HOL.com.vn và thực hiện theo các bước sau:
                <p></p>
                Bước 1: Khách Hàng khiếu nại về hàng hóa của Nhà Bán Hàng qua Liên hệ, Khách Hàng có thể phản ánh trực tiếp đến đến ban quản trị.
                <p></p>
                Bước 2: Bộ phận Chăm Sóc Khách Hàng của HOL.com.vn sẽ tiếp nhận các khiếu nại của Khách Hàng, tùy theo tính chất và mức độ của khiếu nại thì bên HOL.com.vn sẽ có những biện pháp cụ thể hỗ trợ Khách Hàng để giải quyết tranh chấp đó. Bộ phận này chủ động giải quyết nhanh chóng và trả lời ngay kết quả giải quyết các khiếu nại trên cơ sở các Chính sách mà HOL.com.vn đã công bố trong thời hạn 7 ngày làm việc.
                <p></p>
                Bước 3: Trong trường hợp nằm ngoài khả năng và thẩm quyền của HOL.com.vn thì HOL.com.vn sẽ yêu cầu Khách Hàng đưa vụ việc này ra cơ quan nhà nước có thẩm quyền giải quyết theo pháp luật.
                <p></p>
                Biti's tôn trọng và nghiêm túc thực hiện các quy định của pháp luật về bảo vệ quyền lợi của Khách Hàng (người tiêu dùng). Vì vậy, đề nghị Khách Hàng cung cấp các thông tin về hàng hóa, dịch vụ một cách đầy đủ, chính xác, trung thực và chi tiết. Mọi hành vi lừa đảo, gian lận trong kinh doanh đều bị lên án và phải chịu hoàn toàn trách nhiệm trước pháp luật.
                <p></p>
                Nếu thông qua hình thức thỏa thuận mà vẫn không thể giải quyết được mâu thuẫn phát sinh từ giao dịch giữa 02 (hai) bên Khách Hàng và HOL.com.vn, thì một trong 02 (hai) bên Khách Hàng và HOL.com.vn sẽ có quyền nhờ đến cơ quan pháp luật có thẩm quyền can thiệp nhằm đảm bảo lợi ích hợp pháp của các bên nhất là cho khách hàng.
                <p></p>
                <p>Cảm ơn Quý Khách hàng đã tin tưởng và cho BITI'S cơ hội được phục vụ Quý Khách!</p>
            </div><!-- End .col-md-8 -->
        </div><!-- End .row -->
    </div><!-- End .container -->
</div>
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