<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 17/10/2022
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apple-Store</title>
    <link rel="stylesheet" href="../../asset/style.css">
    <link rel="stylesheet" href="../../asset/font/themify-icons/themify-icons.css">
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div id="main">
    <%@include file="../include/header2.jsp"%>
    <div id="detail">
        <div class="detail-heading">
            <div class="detail-breadcrumb">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="../../index.jsp">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="../product/iphone.jsp">iphone</a>
                        </li>
                        <li class="breadcrumb-item">iPhone 13 128gb</li>
                    </ol>
                </div>
            </div>
            <div class="detail-gallery">
                <div class="container">
                    <div class="row">
                        <div class="col-6 padding-0-12">
                            <div class="slider-gallery">
                                <div
                                        style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
                                        class="swiper mySwiper2"
                                >
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip13slider1.webp" />
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip13%20slider%202.webp" />
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip13%20slider%203.webp" />
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip%2013%20slider%20.webp" />
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip%2013%20slider%205.webp" />
                                        </div>
                                    </div>
                                    <div class="swiper-button-next"></div>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-pagination"></div>
                                </div>
                                <div thumbsSlider="" class="swiper mySwiper">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip13slider1.webp" />
                                        </div>

                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip13%20slider%202.webp" />
                                        </div>

                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip13%20slider%203.webp" />
                                        </div>

                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip%2013%20slider%20.webp" />
                                        </div>

                                        <div class="swiper-slide">
                                            <img src="../../asset/img/ip%2013%20slider%205.webp" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6 padding-0-12">
                            <div class="wrapper">
                                <h1 class="h1 name">iPhone 13 128GB</h1>
                                <div class="price">
                                    <div class="text text-primary txtprice">18.990.000đ</div>
                                    <!-- <div class="sub">
                                    <div class="text">Trả góp chỉ từ</div>
                                    <div class="text"> <strong>2.030.000đ</strong>/tháng</div>
                                    </div> -->
                                </div>
                                <div class="types choose-group-dt">
                                    <a class="item active" href="/iphone/iphone-13?dung-luong=128gb">
                                        <div class="radio" style="pointer-events:none">
                                            <input type="radio" value="0" name="group-0">
                                            <label>128GB</label>
                                        </div>
                                        <p>18.990.000</p>
                                    </a>
                                    <a class="item " href="/iphone/iphone-13?dung-luong=256gb">
                                        <div class="radio" style="pointer-events:none">
                                            <input type="radio" value="0" name="group-0">
                                            <label>256GB</label>
                                        </div>
                                        <p>21.490.000</p>
                                    </a>
                                    <a class="item " href="/iphone/iphone-13?dung-luong=512gb">
                                        <div class="radio" style="pointer-events:none">
                                            <input type="radio" value="0" name="group-0">
                                            <label>512GB</label>
                                        </div>
                                        <p>26.490.000</p>
                                    </a>
                                </div>
                                <input hidden="" type="text" name="idproduct" id="id-product" value="36690">
                                <input hidden="" type="text" name="product-variant" id="product-variant" value="641711">
                                <input hidden="" type="text" name="product-sku" id="product-sku" value="00773146">
                                <input hidden="" type="text" name="product-url" id="product-url" value="iphone-13-128gb">
                                <input hidden="" type="text" name="nameproduct" id="name-product" value="iPhone 13 128GB">
                                <div class="colors select-color">
                                    <div class="item active" data-price="18990000.0000" data-pricemarket="24990000.0000" data-stock="1639" data-id="641711" data-urlbuy="/gio-hang-v2/them-vao-don-hang?product=36690_1_641711" data-urltragop="https://fptshop.com.vn/dien-thoai/iphone-13-128gb/641711/tra-gop" data-sku="00773146" data-varian="641711" data-productid="36690" ,="" data-productname="iPhone 13 128GB" data-catenameascii="iphone" data-isbusiness="False" data-isnerverbusiness="False" data-iscommingsoon="False" data-ispreorder="False" data-isinstallment="True" data-stockquantity="1639" data-priceonline="18990000.0000" data-producturl="iphone-13-128gb">
                                        <span style="background-color:#FADDD7"></span>
                                        <div>Hồng</div>
                                    </div>
                                    <div class="item " data-price="18990000.0000" data-pricemarket="24990000.0000" data-stock="1583" data-id="663983" data-urlbuy="/gio-hang-v2/them-vao-don-hang?product=36690_1_663983" data-urltragop="https://fptshop.com.vn/dien-thoai/iphone-13-128gb/663983/tra-gop" data-sku="00800302" data-varian="663983" data-productid="36690" ,="" data-productname="iPhone 13 128GB" data-catenameascii="iphone" data-isbusiness="False" data-isnerverbusiness="False" data-iscommingsoon="False" data-ispreorder="False" data-isinstallment="True" data-stockquantity="1583" data-priceonline="18990000.0000" data-producturl="iphone-13-128gb">
                                        <span style="background-color:#394C38"></span>
                                        <div>Xanh lá</div>
                                    </div>
                                    <div class="item " data-price="18990000.0000" data-pricemarket="24990000.0000" data-stock="774" data-id="641706" data-urlbuy="/gio-hang-v2/them-vao-don-hang?product=36690_1_641706" data-urltragop="https://fptshop.com.vn/dien-thoai/iphone-13-128gb/641706/tra-gop" data-sku="00773149" data-varian="641706" data-productid="36690" ,="" data-productname="iPhone 13 128GB" data-catenameascii="iphone" data-isbusiness="False" data-isnerverbusiness="False" data-iscommingsoon="False" data-ispreorder="False" data-isinstallment="True" data-stockquantity="774" data-priceonline="18990000.0000" data-producturl="iphone-13-128gb">
                                        <span style="background-color:#276787"></span>
                                        <div>Xanh</div>
                                    </div>
                                    <div class="item " data-price="18990000.0000" data-pricemarket="24990000.0000" data-stock="548" data-id="629153" data-urlbuy="/gio-hang-v2/them-vao-don-hang?product=36690_1_629153" data-urltragop="https://fptshop.com.vn/dien-thoai/iphone-13-128gb/629153/tra-gop" data-sku="00773147" data-varian="629153" data-productid="36690" ,="" data-productname="iPhone 13 128GB" data-catenameascii="iphone" data-isbusiness="False" data-isnerverbusiness="False" data-iscommingsoon="False" data-ispreorder="False" data-isinstallment="True" data-stockquantity="548" data-priceonline="18990000.0000" data-producturl="iphone-13-128gb">
                                        <span style="background-color:#232A31"></span>
                                        <div>Đen</div>
                                    </div>
                                    <div class="item " data-price="18990000.0000" data-pricemarket="24990000.0000" data-stock="286" data-id="641705" data-urlbuy="/gio-hang-v2/them-vao-don-hang?product=36690_1_641705" data-urltragop="https://fptshop.com.vn/dien-thoai/iphone-13-128gb/641705/tra-gop" data-sku="00773148" data-varian="641705" data-productid="36690" ,="" data-productname="iPhone 13 128GB" data-catenameascii="iphone" data-isbusiness="False" data-isnerverbusiness="False" data-iscommingsoon="False" data-ispreorder="False" data-isinstallment="True" data-stockquantity="286" data-priceonline="18990000.0000" data-producturl="iphone-13-128gb">
                                        <span style="background-color:#f0142d"></span>
                                        <div>Đỏ</div>
                                    </div>
                                    <div class="item " data-price="18990000.0000" data-pricemarket="24990000.0000" data-stock="225" data-id="641704" data-urlbuy="/gio-hang-v2/them-vao-don-hang?product=36690_1_641704" data-urltragop="https://fptshop.com.vn/dien-thoai/iphone-13-128gb/641704/tra-gop" data-sku="00773150" data-varian="641704" data-productid="36690" ,="" data-productname="iPhone 13 128GB" data-catenameascii="iphone" data-isbusiness="False" data-isnerverbusiness="False" data-iscommingsoon="False" data-ispreorder="False" data-isinstallment="True" data-stockquantity="225" data-priceonline="18990000.0000" data-producturl="iphone-13-128gb">
                                        <span style="background-color:#FAF6F2"></span>
                                        <div>Trắng</div>
                                    </div>
                                </div>
                                <div class="renderboxbtn">
                                    <div class="action" style="display:flex">
                                        <a class="btn btn-link btn-xl btn-buy" href="/gio-hang-v2/them-vao-don-hang?product=36690_1_641711">
                                            <div>MUA NGAY</div>
                                        </a>
                                        <a class="btn btn-outline-grayscale btn-xl btn-tragop" href="https://fptshop.com.vn/dien-thoai/iphone-13-128gb/641711/tra-gop">
                                            <div>THÊM VÀO GIỎ HÀNG</div>
                                        </a>
                                    </div>
                                </div>
                                <div class="f-s-ui-14 text-center">
                                    Gọi <a class="medium text-primary" href="tel:18006601">
                                    1800 6601
                                </a> để được tư vấn mua hàng (Miễn phí)
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="detail-content">
            <div class="other-products">
                <div class="container">
                    <div class="card-body">
                        <div class="row no-gutter title">
                            <span>Sản phẩm khác</span>
                        </div>
                        <div class="row no-gutter pro-list">
                            <div class="col-3">
                                <a href="/" class="product-item">
                                    <div class="product-img">
                                        <img src="../../asset/img/ip13%20slider%203.webp" alt="">
                                    </div>
                                    <div class="product-info">
                                        <div class="product-name">iPhone 14 Pro Max</div>
                                        <div class="product-price">2000000đ</div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-3">
                                <a href="/" class="product-item">
                                    <div class="product-img">
                                        <img src="../../asset/img/ip13%20slider%202.webp" alt="">
                                    </div>
                                    <div class="product-info">
                                        <div class="product-name">iPhone 14 Pro Max</div>
                                        <div class="product-price">2000000đ</div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-3">
                                <a href="/" class="product-item">
                                    <div class="product-img">
                                        <img src="../../asset/img/ip%2013%20slider%20.webp" alt="">
                                    </div>
                                    <div class="product-info">
                                        <div class="product-name">iPhone 14 Pro Max</div>
                                        <div class="product-price">2000000đ</div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-3">
                                <a href="/" class="product-item">
                                    <div class="product-img">
                                        <img src="../../asset/img/ip%2013%20slider%205.webp" alt="">
                                    </div>
                                    <div class="product-info">
                                        <div class="product-name">iPhone 14 Pro Max</div>
                                        <div class="product-price">2000000đ</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="detail-properties">
                <div class="container">
                    <div class="properties-detail">
                        <div class="row no-gutter">
                            <div class="col-6">
                                <div class="row no-gutter properties-title">
                                    <div class="text">
                                        <span>Thông số kỹ thuật</span>
                                    </div>
                                </div>
                                <div class="row no-gutter properties-content">
                                    <div class="properties">
                                        <table class="table-box">
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                            <tr>
                                                <td class="td-name">name</td>
                                                <td class="td-content">chi tiết</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="detail-post">
                <div class="container">
                    <div class="post-text">
                        <div class="row no-gutter">
                            <div class="col-9">
                                <div class="content">
                                    <p style="text-align: justify;"><strong><a href="https://fptshop.com.vn/dien-thoai/iphone-11-64gb" target="_blank">iPhone 11</a> với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời dành cho bạn.</strong></p>
                                    <p style="text-align: center;"><strong><img alt="Điện thoại iPhone 11 chính hãng" class="Điện thoại iPhone 11 chính hãng" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-1.jpg" title="Điện thoại iPhone 11 chính hãng" data-pagespeed-url-hash="234210219" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></strong></p>
                                    <h3 style="text-align: justify;"><strong>Rực rỡ sắc màu, thể hiện cá tính</strong></h3>
                                    <p style="text-align: justify;">Có tới 6 sự lựa chọn màu sắc cho iPhone 11 64GB, bao gồm Tím, Vàng, Xanh lục, Đen, Trắng và Đỏ, tha hồ để bạn lựa chọn màu phù hợp với sở thích, cá tính riêng của bản thân. Vẻ đẹp của iPhone 11 đến từ thiết kế cao cấp khi được làm từ khung nhôm nguyên khối và mặt lưng liền lạc với một tấm kính duy nhất. Ở mặt trước, bạn sẽ được chiêm ngưỡng màn hình Liquid Retina lớn 6,1 inch, màu sắc vô cùng chân thực. Tất cả tạo nên chiếc <a href="https://fptshop.com.vn/dien-thoai">điện thoại</a> tràn đầy hứng khởi.</p>
                                    <p style="text-align: center;"><img alt="Rực rỡ sắc màu, thể hiện cá tính | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-2.jpg" data-pagespeed-url-hash="528710140" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Hệ thống camera kép mới</strong></h3>
                                    <p style="text-align: justify;">Apple iPhone 11 sở hữu cụm camera kép mặt sau, bao gồm camera góc rộng và camera góc siêu rộng. Cảm biến camera góc rộng 12MP có khả năng lấy nét tự động nhanh gấp 3 lần trong điều kiện thiếu sáng. Bên cạnh đó cảm biến góc siêu rộng cho khả năng chụp cảnh rộng gấp 4 lần, là phương tiện ghi hình tuyệt vời cho những chuyến du lịch, chụp hình nhóm. Nhanh chóng chụp ảnh, quay video, chỉnh sửa và chia sẻ ngay trên <a href="https://fptshop.com.vn/dien-thoai/apple-iphone">iPhone</a>, bạn sẽ không bỏ lỡ bất cứ khoảnh khắc đáng nhớ nào.</p>
                                    <p style="text-align: center;"><img alt="Hệ thống camera kép mới | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-3.jpg" data-pagespeed-url-hash="823210061" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Quay video chưa bao giờ chuyên nghiệp đến thế</strong></h3>
                                    <p style="text-align: justify;">Điện thoại iPhone 11 64GB có khả năng quay những đoạn video tuyệt đẹp với độ phân giải 4K 60fps siêu sắc nét. Camera góc siêu rộng mang đến nhiều khung cảnh hơn, đồng thời khả năng quay chuyển động cực ấn tượng sẽ tạo nên những thước phim hoàn hảo. Ngoài ra bạn còn có thể tập trung thu âm vào một chủ thể khi quay video bằng cách phóng to, zoom hình ảnh – đồng thời zoom âm thanh hết sức thú vị. Tất nhiên sau khi quay video, việc chỉnh sửa và xuất bản sẽ diễn ra hết sức tiện lợi, nhanh chóng trên iPhone 11.</p>
                                    <p style="text-align: center;"><img alt="Quay video trên iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-4.jpg" data-pagespeed-url-hash="1117709982" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Night Mode, chuyên gia chụp ảnh thiếu sáng</strong></h3>
                                    <p style="text-align: justify;">Chụp ảnh thiếu sáng không còn là vấn đề trên iPhone 11. Với chế độ chụp đêm chuyên dụng Night Mode hoàn toàn mới, máy ảnh sẽ nhìn thấy rõ ràng từng chi tiết trong đêm tối. Không cần phải bật đèn flash, hình ảnh vẫn trở nên sống động nhờ ánh sáng tự nhiên, màu sắc chính xác và chất ảnh sáng rõ.</p>
                                    <p style="text-align: center;"><img alt="Night Mode, chuyên gia chụp ảnh thiếu sáng | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-5.jpg" data-pagespeed-url-hash="1412209903" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Hiệu ứng xóa phông “ảo diệu”</strong></h3>
                                    <p style="text-align: justify;">Những bức ảnh chân dung xóa phông của bạn sẽ trở nên “ảo diệu” hơn trên iPhone 11. Với cơ chế xóa phông và ánh sáng mới, giờ đây bạn có thể chụp ảnh xóa phông cùng người bạn thân; thêm hiệu ứng ánh sáng Studio; thay đổi độ mờ phông nền. Các bức ảnh xóa phông sẽ có độ làm mờ tuyệt hảo, phân tách chủ thể chính xác và ánh sáng đẹp mắt.</p>
                                    <p style="text-align: center;"><img alt="Hiệu ứng xóa phông “ảo diệu” | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-6.jpg" data-pagespeed-url-hash="1706709824" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Smart HDR thế hệ mới, chụp ảnh tốt hơn trong điều kiện ánh sáng phức tạp</strong></h3>
                                    <p style="text-align: justify;">Nhờ trí tuệ nhân tạo Machine Learning, tính năng Smart HDR trên camera iPhone 11 thông minh hơn bao giờ hết. Camera sẽ tự động nhận diện người và cảnh, sau đó đưa ra các tinh chỉnh riêng biệt. Trong cùng một bức ảnh, khuôn mặt sẽ có điểm nhấn đẹp hơn, tông màu da tự nhiên – trong khi đó phần khung cảnh nền hoàng hôn vẫn tuyệt đẹp theo một cách khác. Smart HDR sẽ giúp điện thoại xử lý bức ảnh xuất sắc, đặc biệt là trong điều kiện ánh sáng phức tạp.</p>
                                    <p style="text-align: center;"><img alt="Smart HDR thế hệ mới | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-7.jpg" data-pagespeed-url-hash="2001209745" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Camera trước 12MP, hơn cả chụp ảnh selfie</strong></h3>
                                    <p style="text-align: justify;">Camera trước của iPhone 11 đã được nâng cấp lên 12MP, mang đến những bức ảnh selfie sắc nét và chất lượng cao hơn. Apple còn bổ sung thêm tính năng mới mang tên slofie – quay một đoạn video chuyển động siêu chậm 120 fps bằng chính camera trước. Lưu giữ những khoảnh khắc thú vị theo cách của riêng bạn.</p>
                                    <p style="text-align: center;"><img alt="Camera trước 12MP, hơn cả chụp ảnh selfie | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-8.jpg" data-pagespeed-url-hash="2295709666" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Chiếc iPhone bền bỉ và thân thiện</strong></h3>
                                    <p style="text-align: justify;">Không chỉ có vẻ ngoài hấp dẫn, iPhone 11 còn rất vững chắc khi sử dụng kính cường lực cứng nhất trong thế giới smartphone. Nước cũng không phải là vấn đề với khả năng <a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823">chống nước chuẩn IP68</a>, cho phép bạn ngâm thiết bị dưới 2m trong vòng 30 phút, điện thoại vẫn hoàn toàn sống khỏe dưới nước. Tuyệt vời hơn nữa, tất cả vật liệu chế tạo nên iPhone 11 đều có khả năng tái chế, cực kỳ thân thiện với môi trường.</p>
                                    <p style="text-align: center;"><img alt="Chiếc iPhone bền bỉ và thân thiện | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-9.jpg" data-pagespeed-url-hash="2590209587" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Màn hình Liquid Retina sống động đến từng chi tiết</strong></h3>
                                    <p style="text-align: justify;">Màn hình 6,1 inch Liquid Retina trên điện thoại iPhone 11 mang cả thế giới đến trước mắt bạn khi mọi thứ đều chân thực một cách tuyệt vời. Cân bằng trắng được điều chỉnh dựa theo ánh sáng xung quanh, để nhiệt độ màu luôn luôn dễ chịu. Với cảm ứng xúc giác Haptic Touch hoàn toàn mới, bạn có thể thao tác nhanh chóng trên màn hình cảm ứng.</p>
                                    <p style="text-align: center;"><img alt="Màn hình Liquid Retina sống động đến từng chi tiết | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-10.jpg" data-pagespeed-url-hash="1070780315" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Thoải mái sử dụng cả ngày</strong></h3>
                                    <p style="text-align: justify;">Thời lượng pin của iPhone 11 64GB trên cả mong đợi, cho phép bạn sử dụng thoải mái trong cả ngày dài. Đây là kết quả của sự tương thích tuyệt đối giữa phần cứng và phần mềm. Hơn nữa, với tính năng sạc nhanh, chỉ cần 30 phút cho 50% pin, nhanh chóng nạp đầy năng lượng.</p>
                                    <p style="text-align: center;"><img alt="Thoải mái sử dụng cả ngày | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-12.jpg" data-pagespeed-url-hash="1659780157" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Sức mạnh đẳng cấp khác biệt</strong></h3>
                                    <p style="text-align: justify;">Cả iPhone 11 và iPhone 11 Pro đều được trang bị bộ vi xử lý mạnh nhất thế giới smartphone hiện tại.<a href="https://fptshop.com.vn/tin-tuc/danh-gia/con-chip-apple-a13-bionic-tren-iphone-11-manh-co-nao-101678"> Apple A13 Bionic</a> mang đến hiệu năng đẳng cấp khác biệt, mọi thứ đều diễn ra nhanh chóng, mượt mà một cách hoàn hảo. Kể cả những tựa game nặng nhất, có đồ họa chân thực đến khó tin vẫn được thể hiện cực đỉnh trên iPhone 11. Sử dụng iPhone 11 64GB nghĩa là bạn sẽ có chiếc máy hiệu năng đảm bảo dùng tốt trong nhiều năm nữa.</p>
                                    <p style="text-align: center;"><img alt="Sức mạnh đẳng cấp khác biệt | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-11.jpg" data-pagespeed-url-hash="1365280236" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                    <h3 style="text-align: justify;"><strong>Nhận diện khuôn mặt nhanh hơn bao giờ hết</strong></h3>
                                    <p style="text-align: justify;">Face ID mới được cải tiến cho phép bạn mở khóa iPhone 11 64GB nhanh chóng và dễ dàng hơn bao giờ hết. Thậm chí Face ID còn tiện lợi và bảo mật hơn cả phương án truyền thống là cảm biến vân tay Touch ID. Bạn có thể dùng tính năng này để đăng nhập vào ứng dụng, tài khoản, ngân hàng và thanh toán với Apple Pay. Tất cả thông tin đều được bảo mật tuyệt đối khi Face ID không hề lưu trữ hay chia sẻ hình ảnh của bạn. Kể cả khi gửi ảnh hay gọi FaceTime, hình ảnh của bạn cũng được mã hóa an toàn.</p>
                                    <p style="text-align: center;"><img alt="Nhận diện khuôn mặt nhanh hơn bao giờ hết | iPhone 11" src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-13.jpg" data-pagespeed-url-hash="1954280078" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="../include/footer2.jsp"%>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".mySwiper", {
        loop: false,
        spaceBetween: 10,
        slidesPerView: 3,
        freeMode: true,
        watchSlidesProgress: true,
    });
    var swiper2 = new Swiper(".mySwiper2", {
        loop: true,
        spaceBetween: 10,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        thumbs: {
            swiper: swiper,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });
</script>
</body>
</html>