<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apple-Store</title>
    <link rel="stylesheet" href="asset/style.css">
    <link rel="stylesheet" href="asset/font/themify-icons/themify-icons.css">
</head>
<body>
<div id="main">
    <div id="header">
        <div id="header-top">
            <div class="container">
                <div class="header-logo">
                    <a href="">
                        <img src="asset/img/logo.webp" alt="logo" class="max-width">
                    </a>
                </div>

                <div class="header-search">
                    <form action="">
                        <div class="form-search">
                            <i class="ti-search"></i>
                            <input type="text" class="search-input" placeholder="Bạn đang tìm sản phẩm, tin tức, ...">
                        </div>
                    </form>
                </div>

                <div class="header-cart">
                    <a href="./pages/cart/cart.jsp">
                        <div class="sec-icon">
                            <i class="ti-shopping-cart"></i>
                            <div class="icon-text">Giỏ hàng của bạn</div>
                        </div>
                    </a>
                </div>

                <div class="header-user">
                    <a href="./pages/user/user.jsp" class="user">
                        <div class="sec-icon">
                            <i class="ti-user"></i>
                            <div class="icon-text">Account</div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div id="header-bot">
            <div class="container">
                <div class="header-nav">
                    <div class="header-item">
                        <ul>
                            <li><a href="http://localhost:8080/Apple_store/iphone" class="nav-sub">iPhone</a></li>
                            <li><a href="http://localhost:8080/Apple_store/ipad" class="nav-sub">iPad</a></li>
                            <li><a href="http://localhost:8080/Apple_store/mac" class="nav-sub">Mac</a></li>
                            <li><a href="http://localhost:8080/Apple_store/applewatch" class="nav-sub">Apple Watch</a></li>
                            <li><a href="http://localhost:8080/Apple_store/phukien" class="nav-sub">Phụ Kiện</a></li>
                            <li><a href="pages/products/blog.jsp" class="nav-sub">Tin Tức - Thủ Thuật</a></li>
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

    <div id="slider">
        <a href="" class="slider-img">
            <img src="asset/img/br.webp" alt="">
        </a>
    </div>

    <div id="content">
        <section id="content-cate">
            <div class="container">
                <div class="container-item">
                    <div class="cate-item">
                        <a href="pages/products/iphone.jsp">
                            <div class="item-title">iPhone</div>
                            <div class="item-img">
                                <img src="asset/img/iphone.webp" alt="">
                            </div>
                            <div class="item-bot">
                                <span>Khám phá thêm</span>
                                <i class="ti-angle-right"></i>
                            </div>
                        </a>
                    </div>
                    <div class="cate-item">
                        <a href="pages/products/ipad.jsp">
                            <div class="item-title">iPad</div>
                            <div class="item-img">
                                <img src="asset/img/ipad.webp" alt="">
                            </div>
                            <div class="item-bot">
                                <span>Khám phá thêm</span>
                                <i class="ti-angle-right"></i>
                            </div>
                        </a>
                    </div>
                    <div class="cate-item">
                        <a href="pages/products/mac.jsp">
                            <div class="item-title">Mac</div>
                            <div class="item-img">
                                <img src="asset/img/mac.webp" alt="">
                            </div>
                            <div class="item-bot">
                                <span>Khám phá thêm</span>
                                <i class="ti-angle-right"></i>
                            </div>
                        </a>
                    </div>
                    <div class="cate-item">
                        <a href="pages/products/apple_watch.jsp">
                            <div class="item-title">Apple Watch</div>
                            <div class="item-img">
                                <img src="asset/img/Apple-watch.webp" alt="">
                            </div>
                            <div class="item-bot">
                                <span>Khám phá thêm</span>
                                <i class="ti-angle-right"></i>
                            </div>
                        </a>
                    </div>
                    <div class="cate-item">
                        <a href="pages/products/phu_kien.jsp">
                            <div class="item-title">Phụ Kiện</div>
                            <div class="item-img">
                                <img src="asset/img/airtag.webp" alt="">
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
                        <ul class="pro-list">
                            <li><a href="pages/detail_product/detail_product.jsp" class="pro-item">
                                <div class="item-top">
                                    <div class="pro-img">
                                        <img src="asset/img/iphone_14_PNG41.png" alt="">
                                    </div>
                                    <div class="pro-name">
                                        <h3>Tên sản phẩm</h3>
                                    </div>
                                </div>
                                <div class="pro-add">
                                    <span>Xem chi tiết</span>
                                </div>
                            </a></li>
                            <li><a href="pages/detail_product/detail_product.jsp" class="pro-item">
                                <div class="item-top">
                                    <div class="pro-img">
                                        <img src="asset/img/iphone_14_PNG12.png" alt="">
                                    </div>
                                    <div class="pro-name">
                                        <h3>Tên sản phẩm</h3>
                                    </div>
                                </div>
                                <div class="pro-add">
                                    <span>Xem chi tiết</span>
                                </div>
                            </a></li>
                            <li><a href="pages/detail_product/detail_product.jsp" class="pro-item">
                                <div class="item-top">
                                    <div class="pro-img">
                                        <img src="asset/img/iphone_14_PNG12.png" alt="">
                                    </div>
                                    <div class="pro-name">
                                        <h3>Tên sản phẩm</h3>
                                    </div>
                                </div>
                                <div class="pro-add">
                                    <span>Xem chi tiết</span>
                                </div>
                            </a></li>
                            <li><a href="pages/detail_product/detail_product.jsp" class="pro-item">
                                <div class="item-top">
                                    <div class="pro-img">
                                        <img src="asset/img/apple-iphone-14-pro-max-1-sim-1tb-01663058740 (1).png" alt="">
                                    </div>
                                    <div class="pro-name">
                                        <h3>Tên sản phẩm</h3>
                                    </div>
                                </div>
                                <div class="pro-add">
                                    <span>Xem chi tiết</span>
                                </div>
                            </a></li>
                            <li><a href="pages/detail_product/detail_product.jsp" class="pro-item">
                                <div class="item-top">
                                    <div class="pro-img">
                                        <img src="asset/img/iphone_14_PNG42.png" alt="">
                                    </div>
                                    <div class="pro-name">
                                        <h3>Tên sản phẩm</h3>
                                    </div>
                                </div>
                                <div class="pro-add">
                                    <span>Xem chi tiết</span>
                                </div>
                            </a></li>
                            <li><a href="pages/detail_product/detail_product.jsp" class="pro-item">
                                <div class="item-top">
                                    <div class="pro-img">
                                        <img src="asset/img/iphone_13_PNG9.png" alt="">
                                    </div>
                                    <div class="pro-name">
                                        <h3>Tên sản phẩm</h3>
                                    </div>
                                </div>
                                <div class="pro-add">
                                    <span>Xem chi tiết</span>
                                </div>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section id="content-blog">
            <div class="container">
                <div class="row">
                    <div class="col-6 padding-0-12">
                        <div class="card">
                            <div class="card-img">
                                <img src="asset/img/blog1.webp" alt="">
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

                    <div class="col-6 padding-0-12">
                        <div class="card">
                            <div class="card-img">
                                <img src="asset/img/bn1.webp" alt="">
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
                    <div class="col-6 padding-0-12">
                        <div class="card">
                            <div class="card-img">
                                <img src="asset/img/bn3.webp" alt="">
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
                    <div class="col-6 padding-0-12">
                        <div class="card">
                            <div class="card-img">
                                <img src="asset/img/bn4.webp" alt="">
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
                <ul>
                    <li>
                        <img src="asset/img/like.webp" alt="" class="top-img">
                        <div class="group-text">
                            <div class="group-title">Thương hiệu đảm bảo</div>
                            <div class="group-desc">Sản phẩm chính hãng Apple </div>
                        </div>
                    </li>
                    <li>
                        <img src="asset/img/shield.webp" alt="" class="top-img">
                        <div class="group-text">
                            <div class="group-title">Bảo hành chính hãng</div>
                            <div class="group-desc">Bảo hành theo chính sách Apple</div>
                        </div>
                    </li>
                    <li>
                        <img src="asset/img/deli.webp" alt="" class="top-img">
                        <div class="group-text">
                            <div class="group-title">Giao hàng tận nơi</div>
                            <div class="group-desc">Tại 63 tỉnh thành</div>
                        </div>
                    </li>
                    <li>
                        <img src="asset/img/crown.webp" alt="" class="top-img">
                        <div class="group-text">
                            <div class="group-title">Trải nghiệm Premium</div>
                            <div class="group-desc">Không gian trải nghiệm cao cấp</div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div id="footer-middle">
            <div class="container row">
                <div class="footer-content">
                    <div class="footer-info col-5">
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
                            <img src="asset/img/item.webp" alt="">
                        </div>
                    </div>

                    <div class="footer-category col-7">
                        <div class="category-item">
                            <div class="title">Sản Phẩm</div>
                            <ul>
                                <li><a href="">iPhone</a></li>
                                <li><a href="">iPad</a></li>
                                <li><a href="">Mac</a></li>
                                <li><a href="">Apple watch</a></li>
                                <li><a href="">Phụ Kiện</a></li>
                            </ul>

                        </div>
                        <div class="category-item">
                            <div class="title">Chính sách</div>
                            <ul>
                                <li><a href="">Chính sách bảo mật</a></li>
                                <li><a href="">Chính sách đổi trả sản phẩm</a></li>
                                <li><a href="">Chính sách bảo hành</a></li>
                                <li><a href="">Chính sách giao nhận</a></li>
                                <li><a href="">Chính sách thanh toán</a></li>
                            </ul>
                        </div>
                        <div class="category-item">
                            <div class="title">Về chúng tôi</div>
                            <ul>
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

    <div id="footer-bottom">
        <div class="container">
            <p>
                Copyright 2007 - 2022 Công Ty Cổ Phần Bán Lẻ Kỹ Thuật Số FPT. GPĐKKD số 0311609355 do Sở KHĐT TP.HCM cấp
                ngày
            </p>
            <p>08/03/2012. GP số 48/GP-TTĐT do sở TTTT TP HCM cấp ngày 02/07/2018. Người quản lý nội dung: Vũ Đức Hải</p>
            <p>Apple, the Apple logo are trademark of Apple inc, registered in the US, and other countries</p>
        </div>
    </div>
</div>
</div>

</body>
</html></html>