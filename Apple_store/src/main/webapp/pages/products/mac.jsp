<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apple-Store</title>
    <link rel="stylesheet" href="${root}asset/style.css">
    <link rel="stylesheet" href="${root}asset/font/themify-icons/themify-icons.css">
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

    <div id="category">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="http://localhost:8080/Apple_store">Trang chủ</a>
                </li>
                <li class="breadcrumb-item">mac</li>
            </ol>
            <h1 class="h1">Mac</h1>
            <div class="products">
                <div class="products-body">
                    <div class="actions">
                        <div class="menu">
                            <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <a href="http://localhost:8080/Apple_store/mac" class="swiper-slide active">Tất cả</a>
                                    <a href="http://localhost:8080/Apple_store/mac/mac13" class="swiper-slide">Mac 13</a>
                                    <a href="http://localhost:8080/Apple_store/mac/mac14" class="swiper-slide">Mac 14</a>
                                    <a href="http://localhost:8080/Apple_store/mac/mac16" class="swiper-slide">Mac 16</a>
                                    <a href="http://localhost:8080/Apple_store/mac/imac" class="swiper-slide">iMac</a>
                                    <a href="http://localhost:8080/Apple_store/mac/macmini" class="swiper-slide">Mac mini</a>
                                    
                                </div>
                            </div>
                            <div class="swiper-button-next sw-button">
                            </div>
                            <div class="swiper-button-prev sw-button">
                            </div>
                        </div>
                        <div class="sort">
                            <div class="content-sort">
                                <div class="text">Sắp xếp theo:</div>
                                <div class="dropdown">
                                    <button class="btn btn-outline" type="button" data-toggle="dropdown">Bán chạy nhất
                                        <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Bán chạy nhất</a></li>
                                        <li><a href="#">Giá thấp đến cao</a></li>
                                        <li><a href="#">Giá cao đến thấp</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane">
                        <div class="product-list">
                            <c:forEach items="${listMac}" var="o" >
                        		<div class="product">
                                <div class="product-img">
                                    <a href="" class="img-a">
                                        <img src="${root}asset/img/ip14-s.webp" alt="">
                                    </a>
                                </div>
                                <div class="product-info">
                                    <div class="product-color">
                                        <span style="background-color:#51504E"></span>
                                        <span style="background-color:#F1F3F2"></span>
                                        <span style="background-color:#F4E8CE"></span>
                                        <span style="background-color:#675E6F"></span>
                                    </div>
                                    <h3 class="product-name">
                                        <div class="text">${o.tensp}</div>
                                    </h3>
                                    <div class="product-memory js-select">
                                        <div class="product-memory-item item btnchangegroup btnchangegroup-267 active" data-group="267" data-product="42725" data-cate="iphone">
                                            <strong>128GB</strong>
                                        </div>
                                        <div class="product-memory-item item btnchangegroup btnchangegroup-267 " data-group="267" data-product="42726" data-cate="iphone">
                                            <strong>256GB</strong>
                                        </div>
                                        <div class="product-memory-item item btnchangegroup btnchangegroup-267 " data-group="267" data-product="42727" data-cate="iphone">
                                            <strong>512GB</strong>
                                        </div>
                                        <div class="product-memory-item item btnchangegroup btnchangegroup-267 " data-group="267" data-product="42728" data-cate="iphone">
                                            <strong>1TB</strong>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <div class="text">Giá chỉ</div>
                                        <div class="price">${o.giaban}đ</div>
                                    </div>
                                </div>
                                <div class="product-detai">
                                    <a href="../../pages/detail_product/detail_product.jsp">
                                        <button  class="btn btn-outline-grayscale" type="button">XEM CHI TIÊT</button>
                                    </a>
                                </div>

                            </div>
                        	</c:forEach>

                            
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

<%--    <div id="footer">--%>
<%--        <div id="footer-top">--%>
<%--            <div class="container">--%>
<%--                <ul>--%>
<%--                    <li>--%>
<%--                        <img src="../../asset/img/like.webp" alt="" class="top-img">--%>
<%--                        <div class="group-text">--%>
<%--                            <div class="group-title">Thương hiệu đảm bảo</div>--%>
<%--                            <div class="group-desc">Sản phẩm chính hãng Apple </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <img src="../../asset/img/shield.webp" alt="" class="top-img">--%>
<%--                        <div class="group-text">--%>
<%--                            <div class="group-title">Bảo hành chính hãng</div>--%>
<%--                            <div class="group-desc">Bảo hành theo chính sách Apple</div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <img src="../../asset/img/deli.webp" alt="" class="top-img">--%>
<%--                        <div class="group-text">--%>
<%--                            <div class="group-title">Giao hàng tận nơi</div>--%>
<%--                            <div class="group-desc">Tại 63 tỉnh thành</div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <img src="../../asset/img/crown.webp" alt="" class="top-img">--%>
<%--                        <div class="group-text">--%>
<%--                            <div class="group-title">Trải nghiệm Premium</div>--%>
<%--                            <div class="group-desc">Không gian trải nghiệm cao cấp</div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div id="footer-middle">--%>
<%--            <div class="container row">--%>
<%--                <div class="footer-content">--%>
<%--                    <div class="footer-info col-5">--%>
<%--                        <div class="hotline">--%>
<%--                            <div class="item">--%>
<%--                                <div class="text">Giao hàng miễn phí</div>--%>
<%--                                <a class="phone" href="">1800 6601 </a>--%>
<%--                            </div>--%>

<%--                            <div class="item">--%>
<%--                                <div class="text">Chăm sóc khách hàng</div>--%>
<%--                                <a class="phone" href="">1800 6601 </a>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="service">--%>
<%--                            <div class="text">Dịch vụ và hỗ trợ:</div>--%>
<%--                            <ul>--%>
<%--                                <li>HCM: 121 Lê Lợi, Phường Bến Nghé, Quận 1, TP.HCM</li>--%>
<%--                                <li>Hà Nội: 92 Hai Bà Trưng, P. Cửa Nam, Q. Hoàn Kiếm, TP. Hà Nội</li>--%>
<%--                                <li>Đà Nẵng: 240 Hoàng Diệu, Q. Hải Châu, TP. Đà Nẵng</li>--%>
<%--                                <li>Cần Thơ: 52 - 54 - 56 Đường 30/4, P. An Phú, Q. Ninh Kiều, Cần Thơ</li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>

<%--                        <div class="img">--%>
<%--                            <img src="../../asset/img/item.webp" alt="">--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="footer-category col-7">--%>
<%--                        <div class="category-item">--%>
<%--                            <div class="title">Sản Phẩm</div>--%>
<%--                            <ul>--%>
<%--                                <li><a href="">iPhone</a></li>--%>
<%--                                <li><a href="">iPad</a></li>--%>
<%--                                <li><a href="">Mac</a></li>--%>
<%--                                <li><a href="">Apple watch</a></li>--%>
<%--                                <li><a href="">Phụ Kiện</a></li>--%>
<%--                            </ul>--%>

<%--                        </div>--%>
<%--                        <div class="category-item">--%>
<%--                            <div class="title">Chính sách</div>--%>
<%--                            <ul>--%>
<%--                                <li><a href="">Chính sách bảo mật</a></li>--%>
<%--                                <li><a href="">Chính sách đổi trả sản phẩm</a></li>--%>
<%--                                <li><a href="">Chính sách bảo hành</a></li>--%>
<%--                                <li><a href="">Chính sách giao nhận</a></li>--%>
<%--                                <li><a href="">Chính sách thanh toán</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                        <div class="category-item">--%>
<%--                            <div class="title">Về chúng tôi</div>--%>
<%--                            <ul>--%>
<%--                                <li><a href="">Giới thiệu</a></li>--%>
<%--                                <li><a href="">Tin tức - Thủ thuật</a></li>--%>
<%--                                <li><a href="">Hệ thống cửa hàng</a></li>--%>
<%--                                <li><a href="">Câu hỏi thường gặp</a></li>--%>
<%--                                <li><a href="">Hướng dẫn mua hàng</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>


<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div id="footer-bottom">--%>
<%--        <div class="container">--%>
<%--            <p>--%>
<%--                Copyright 2007 - 2022 Công Ty Cổ Phần Bán Lẻ Kỹ Thuật Số FPT. GPĐKKD số 0311609355 do Sở KHĐT TP.HCM cấp--%>
<%--                ngày--%>
<%--            </p>--%>
<%--            <p>08/03/2012. GP số 48/GP-TTĐT do sở TTTT TP HCM cấp ngày 02/07/2018. Người quản lý nội dung: Vũ Đức Hải</p>--%>
<%--            <p>Apple, the Apple logo are trademark of Apple inc, registered in the US, and other countries</p>--%>
<%--        </div>--%>
<%--    </div>--%>
    <%@include file="../include/footer2.jsp"%>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 6,
        spaceBetween: 0,
        slidesPerGroup: 3,
        loop: false,
        loopFillGroupWithBlank: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
</script>
</body>
</html>