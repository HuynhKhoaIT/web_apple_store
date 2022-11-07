<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value="/" var="root" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Apple-Store</title>
    <link rel="stylesheet" href="asset/style.css" />
    <link rel="stylesheet" href="asset/font/themify-icons/themify-icons.css" />
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <div id="main">
            <div id="header">
                <div id="header-top">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-md-3 col-sm-12 col-12">
                                <div class="row top-header">
                                    <a class="col-sm-1 col-1">
                                        <div id="js-menu-ticket" class="menu">
                                            <div class="sec-icon menu">
                                                <i class="ti-menu"></i>
                                            </div>
                                        </div>
                                    </a>

                                    <div class="col-md-12 col-sm-6 col-6">
                                        <a href="" class="logo">
                                            <img src="asset/img/logoPNG.png" alt="logo" class="max-width" />
                                        </a>
                                    </div>

                                    <div class="col-sm-1 col-1">
                                        <a href="./pages/cart/cart.jsp" class="cart-1">
                                            <div class="sec-icon cart">
                                                <i class="ti-shopping-cart"></i>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="col-sm-1 col-1">
                                        <a href="./pages/user/user.jsp" class="user-1">
                                            <div class="sec-icon user">
                                                <i class="ti-user"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="header-search col-md-5 col-sm-12 col-12">
                                <form action="search" method="get">
                                    <div class="form-search">
                                        <i class="ti-search"></i>
                                        <input name="txt" type="text" class="search-input" placeholder="Bạn đang tìm sản phẩm, tin tức, ..." />
                                    </div>
                                </form>
                            </div>

                            <div class="header-cart col-md-2">
                                <a href="./pages/cart/cart.jsp" class="cart">
                                    <div class="sec-icon align-items-center">
                                        <i class="ti-shopping-cart"></i>
                                        <div class="icon-text">Giỏ hàng</div>
                                    </div>
                                </a>
                            </div>

                            <div class="header-user col-md-2">
                                <a href="./pages/user/user.jsp" class="user">
                                    <div class="sec-icon">
                                        <i class="ti-user"></i>
                                        <div class="icon-text">Tài Khoản</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="header-bot">
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class="header-nav">
                                    <div class="header-item">
                                        <ul>
                                        <c:forEach items="${listlsp}" var="o" >
                                            <li><a href="loaisp?maloai=${o.maLoai}" class="nav-sub">${o.tenLoai}</a></li>
                                        </c:forEach>
                                            <li><a href="pages/products/blog.jsp" class="nav-sub">Tin Tức</a></li>
                                        </ul>
                                        <div class="header-call">
                                            <div class="call-btn">
                                                <a href="tel:0869950090">
                                                    <i class="ti-mobile"></i>
                                                    <span>0869950090</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="slider">
                <a href="" class="slider-img">
                    <img src="asset/img/br.webp" alt="" />
                </a>
            </div>

            <div id="content">
                <section id="content-cate">
                    <div class="container">
                        <div class="container-item">
                            <div class="cate-item">
                                <a href="">
                                    <div class="item-title">iPhone</div>
                                    <div class="item-img">
                                        <img src="asset/img/iphone.webp" alt="" />
                                    </div>
                                    <div class="item-bot">
                                        <span>Khám phá thêm</span>
                                        <i class="ti-angle-right"></i>
                                    </div>
                                </a>
                            </div>
                            <div class="cate-item">
                                <a href="">
                                    <div class="item-title">iPad</div>
                                    <div class="item-img">
                                        <img src="asset/img/ipad.webp" alt="" />
                                    </div>
                                    <div class="item-bot">
                                        <span>Khám phá thêm</span>
                                        <i class="ti-angle-right"></i>
                                    </div>
                                </a>
                            </div>
                            <div class="cate-item">
                                <a href="">
                                    <div class="item-title">Mac</div>
                                    <div class="item-img">
                                        <img src="asset/img/mac.webp" alt="" />
                                    </div>
                                    <div class="item-bot">
                                        <span>Khám phá thêm</span>
                                        <i class="ti-angle-right"></i>
                                    </div>
                                </a>
                            </div>
                            <div class="cate-item">
                                <a href="">
                                    <div class="item-title">Apple Watch</div>
                                    <div class="item-img">
                                        <img src="asset/img/Apple-watch.webp" alt="" />
                                    </div>
                                    <div class="item-bot">
                                        <span>Khám phá thêm</span>
                                        <i class="ti-angle-right"></i>
                                    </div>
                                </a>
                            </div>
                            <div class="cate-item">
                                <a href="">
                                    <div class="item-title">Phụ Kiện</div>
                                    <div class="item-img">
                                        <img src="asset/img/airtag.webp" alt="" />
                                    </div>
                                    <div class="item-bot">
                                        <span>Khám phá thêm</span>
                                        <i class="ti-angle-right"></i>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>

                <section id="content-pro">
                    <div class="container pd-bot-48">
                        <div class="container-pro">
                            <div class="pro-title">
                                <h2>Sản phẩm mới</h2>
                            </div>
                            <div class="pro-container">
                                <ul class="pro-list p-0">
                                <c:forEach items="${listNew}" var="o" >
                                    <li>
                                        <a href="pages/detail_product/detail_product.jsp" class="pro-item">
                                            <div class="item-top">
                                                <div class="pro-img">
                                                    <img src="${o.anh }" alt="" />
                                                </div>
                                                <div class="pro-name">
                                                    <h3>${o.tenSP}</h3>
                                                </div>
                                            </div>
                                            <div class="product-price">
		                                        <div class="text">Giá chỉ: </div>
		                                        <div class="price">${o.giaBanThuong}đ</div>
		                                    </div>
                                            <div class="pro-add">
                                                <span>Xem chi tiết</span>
                                            </div>
                                        </a>
                                    </li>
								</c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>

                <section id="content-blog">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-12 padding-0-12">
                                <div class="card">
                                    <div class="card-img">
                                        <img src="asset/img/blog1.webp" alt="" />
                                        <a href="" class="card-btn">
                                            Tin tức
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="">
                                            <div class="card-title line-clamp-2">
                                                Chương trình Workshop
                                            </div>
                                            <div class="card-info">
                                                <span>Xem ngay</span>
                                                <i class="ti-angle-right"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-sm-12 padding-0-12">
                                <div class="card">
                                    <div class="card-img">
                                        <img src="asset/img/bn1.webp" alt="" />
                                        <a href="" class="card-btn">
                                            Tin tức
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="">
                                            <div class="card-title line-clamp-2">
                                                Chế độ Always On Display của iPhone 14 Pro khác hoàn toàn với các máy Android
                                            </div>
                                            <div class="card-info">
                                                <span>Xem ngay</span>
                                                <i class="ti-angle-right"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 padding-0-12">
                                <div class="card">
                                    <div class="card-img">
                                        <img src="asset/img/bn3.webp" alt="" />
                                        <a href="" class="card-btn">
                                            Tin tức
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="">
                                            <div class="card-title line-clamp-2">
                                                Chương trình khách hàng thân thiết
                                            </div>
                                            <div class="card-info">
                                                <span>Xem ngay</span>
                                                <i class="ti-angle-right"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 padding-0-12">
                                <div class="card">
                                    <div class="card-img">
                                        <img src="asset/img/bn4.webp" alt="" />
                                        <a href="" class="card-btn">
                                            Tin tức
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="">
                                            <div class="card-title line-clamp-2">
                                                Hướng dẫn thanh toán trên trang F.Studio
                                            </div>
                                            <div class="card-info">
                                                <span>Xem ngay</span>
                                                <i class="ti-angle-right"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <div id="footer">
                <div id="footer-top">
                    <div class="container">
                        <div class="row">
                            <ul>
                                <li>
                                    <img src="asset/img/like.webp" alt="" class="top-img" />
                                    <div class="group-text">
                                        <div class="group-title">Thương hiệu đảm bảo</div>
                                        <div class="group-desc">Sản phẩm chính hãng Apple</div>
                                    </div>
                                </li>
                                <li>
                                    <img src="asset/img/shield.webp" alt="" class="top-img" />
                                    <div class="group-text">
                                        <div class="group-title">Bảo hành chính hãng</div>
                                        <div class="group-desc">Bảo hành theo chính sách Apple</div>
                                    </div>
                                </li>
                                <li>
                                    <img src="asset/img/deli.webp" alt="" class="top-img" />
                                    <div class="group-text">
                                        <div class="group-title">Giao hàng tận nơi</div>
                                        <div class="group-desc">Tại 63 tỉnh thành</div>
                                    </div>
                                </li>
                                <li>
                                    <img src="asset/img/crown.webp" alt="" class="top-img" />
                                    <div class="group-text">
                                        <div class="group-title">Trải nghiệm Premium</div>
                                        <div class="group-desc">Không gian trải nghiệm cao cấp</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div id="footer-middle">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="hotline">
                                    <div class="item">
                                        <div class="text">Giao hàng miễn phí</div>
                                        <a class="phone" href="">1800 6601 </a>
                                    </div>

                                    <div class="item">
                                        <div class="text">Chăm sóc khách hàng</div>
                                        <a class="phone" href="">1800 6601 </a>
                                    </div>
                                </div>

                                <div class="service">
                                    <div class="text">Dịch vụ và hỗ trợ:</div>
                                    <ul>
                                        <li>HCM: 121 Lê Lợi, Phường Bến Nghé, Quận 1, TP.HCM</li>
                                        <li>Hà Nội: 92 Hai Bà Trưng, P. Cửa Nam, Q. Hoàn Kiếm, TP. Hà Nội</li>
                                        <li>Đà Nẵng: 240 Hoàng Diệu, Q. Hải Châu, TP. Đà Nẵng</li>
                                        <li>Cần Thơ: 52 - 54 - 56 Đường 30/4, P. An Phú, Q. Ninh Kiều, Cần Thơ</li>
                                    </ul>
                                </div>

                                <div class="img">
                                    <img src="asset/img/item.webp" alt="" />
                                </div>
                            </div>

                            <div class="category col-md-7 col-sm-12">
                                <div class="row">
                                    <div class="category-item col-4">
                                        <div class="title">Sản Phẩm</div>
                                        <ul class="p-0">
                                            <li><a href="">iPhone</a></li>
                                            <li><a href="">iPad</a></li>
                                            <li><a href="">Mac</a></li>
                                            <li><a href="">Apple watch</a></li>
                                            <li><a href="">Phụ Kiện</a></li>
                                        </ul>
                                    </div>
                                    <div class="category-item col-4">
                                        <div class="title">Chính sách</div>
                                        <ul class="p-0">
                                            <li><a href="">Chính sách bảo mật</a></li>
                                            <li><a href="">Chính sách đổi trả sản phẩm</a></li>
                                            <li><a href="">Chính sách bảo hành</a></li>
                                            <li><a href="">Chính sách giao nhận</a></li>
                                            <li><a href="">Chính sách thanh toán</a></li>
                                        </ul>
                                    </div>
                                    <div class="category-item col-4">
                                        <div class="title">Về chúng tôi</div>
                                        <ul class="p-0">
                                            <li><a href="">Giới thiệu</a></li>
                                            <li><a href="">Tin tức - Thủ thuật</a></li>
                                            <li><a href="">Hệ thống cửa hàng</a></li>
                                            <li><a href="">Câu hỏi thường gặp</a></li>
                                            <li><a href="">Hướng dẫn mua hàng</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="footer-bottom">
                <div class="container">
                    <p>
                        Copyright 2007 - 2022 Công Ty Cổ Phần Bán Lẻ Kỹ Thuật Số FPT. GPĐKKD số 0311609355 do Sở KHĐT TP.HCM cấp ngày
                    </p>
                    <p>08/03/2012. GP số 48/GP-TTĐT do sở TTTT TP HCM cấp ngày 02/07/2018. Người quản lý nội dung: Vũ Đức Hải</p>
                    <p>Apple, the Apple logo are trademark of Apple inc, registered in the US, and other countries</p>
                </div>
            </div>
        </div>

        <div class="model">
            <div class="side-menu show">
                <div class="mn-content">
                    <div class="mn-top flex flex-between">
                        <div class="mn-logo">
                            <a href="/"><img src="asset/img/logo-fstu.webp" alt="logo-fstu" /> </a>
                        </div>
                        <span class="js-close-menu">
                            <i class="ti-close"> </i>
                        </span>
                    </div>
                    <div class="mn-body">
                        <ul>
                            <li class="b-b-600"><a href="/iphone">iPhone</a></li>
                            <li class="b-b-600"><a href="/ipad">iPad</a></li>
                            <li class="b-b-600"><a href="/mac">Mac</a></li>
                            <li class="b-b-600"><a href="/watch">Apple Watch</a></li>
                            <li class="b-b-600"><a href="/phu-kien">Phụ kiện</a></li>
                            <li class="b-b-600"><a href="/tin-tuc">Tin tức - Thủ thuật</a></li>
                            <li class="b-b-600"><a href="/tin-tuc">Workshop</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <script>
            const element = document.getElementById("js-menu-ticket");
            const sideMenu = document.querySelector(".model");
            const menuClose = document.querySelector(".js-close-menu");

            element.addEventListener("click", showMenuTicket);

            function showMenuTicket() {
                sideMenu.classList.add("open");
            }

            menuClose.addEventListener("click", closeMenuTicket);
            function closeMenuTicket() {
                sideMenu.classList.remove("open");
            }
        </script>
    </body>
</html>
