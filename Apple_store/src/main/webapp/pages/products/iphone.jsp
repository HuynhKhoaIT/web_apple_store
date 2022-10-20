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
</head>
<body>
<div id="main">
    <%@include file="../include/header2.jsp"%>

    <div id="category">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="../../index.jsp">Trang chủ</a>
                </li>
                <li class="breadcrumb-item">iPhone</li>
            </ol>
            <h1 class="h1">iphone</h1>
            <div class="products">
                <div class="products-body">
                    <div class="actions">
                        <div class="menu">
                            <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <a href="#" class="swiper-slide active">Tất cả</a>
                                    <a href="#" class="swiper-slide">iphone 14 Pro Max</a>
                                    <a href="#" class="swiper-slide">iphone 14 Pro</a>
                                    <a href="#" class="swiper-slide">iphone 14 Plus</a>
                                    <a href="#" class="swiper-slide">iphone 14</a>
                                    <a href="#" class="swiper-slide">iphone 13 Pro Max</a>
                                    <a href="#" class="swiper-slide">iphone 13 Pro</a>
                                    <a href="#" class="swiper-slide">iphone 13</a>
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
                                    <button class="btn btn-outline dropdown-toggle" type="button" data-toggle="dropdown">Bán chạy nhất
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
                            <div class="product">
                                <div class="product-img">
                                    <a href="" class="img-a">
                                        <img src="../../asset/img/ip14-s.webp" alt="">
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
                                        <div class="text">iPhone 14 Pro Max</div>
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
                                        <div class="price">33.990.000đ</div>
                                    </div>
                                </div>
                                <div class="product-detai">
                                    <a href="../../pages/detail_product/detail_product.jsp">
                                        <button  class="btn btn-outline-grayscale" type="button">XEM CHI TIÊT</button>
                                    </a>
                                </div>

                            </div>
                            <div class="product">
                                <div class="product-img">
                                    <a href="" class="img-a">
                                        <img src="../../asset/img/ip14-s.webp" alt="">
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
                                        <div class="text">iPhone 14 Pro Max</div>
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
                                        <div class="price">33.990.000đ</div>
                                    </div>
                                </div>
                                <div class="product-detai">
                                    <a href="../../pages/detail_product/detail_product.jsp">
                                        <button  class="btn btn-outline-grayscale" type="button">XEM CHI TIÊT</button>
                                    </a>
                                </div>

                            </div>
                            <div class="product">
                                <div class="product-img">
                                    <a href="" class="img-a">
                                        <img src="../../asset/img/ip14-s.webp" alt="">
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
                                        <div class="text">iPhone 14 Pro Max</div>
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
                                        <div class="price">33.990.000đ</div>
                                    </div>
                                </div>
                                <div class="product-detai">
                                    <a href="../../pages/detail_product/detail_product.jsp">
                                        <button  class="btn btn-outline-grayscale" type="button">XEM CHI TIÊT</button>
                                    </a>
                                </div>

                            </div>
                            <div class="product">
                                <div class="product-img">
                                    <a href="" class="img-a">
                                        <img src="../../asset/img/ip14-s.webp" alt="">
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
                                        <div class="text">iPhone 14 Pro Max</div>
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
                                        <div class="price">33.990.000đ</div>
                                    </div>
                                </div>
                                <div class="product-detai">
                                    <a href="../../pages/detail_product/detail_product.jsp">
                                        <button  class="btn btn-outline-grayscale" type="button">XEM CHI TIÊT</button>
                                    </a>
                                </div>

                            </div>
                            <div class="product">
                                <div class="product-img">
                                    <a href="" class="img-a">
                                        <img src="../../asset/img/ip14-s.webp" alt="">
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
                                        <div class="text">iPhone 14 Pro Max</div>
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
                                        <div class="price">33.990.000đ</div>
                                    </div>
                                </div>
                                <div class="product-detai">
                                    <a href="../../pages/detail_product/detail_product.jsp">
                                        <button  class="btn btn-outline-grayscale" type="button">XEM CHI TIÊT</button>
                                    </a>
                                </div>

                            </div>
                            <div class="product">
                                <div class="product-img">
                                    <a href="" class="img-a">
                                        <img src="../../asset/img/ip14-s.webp" alt="">
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
                                        <div class="text">iPhone 14 Pro Max</div>
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
                                        <div class="price">33.990.000đ</div>
                                    </div>
                                </div>
                                <div class="product-detai">
                                    <a href="../../pages/detail_product/detail_product.jsp">
                                        <button  class="btn btn-outline-grayscale" type="button">XEM CHI TIÊT</button>
                                    </a>
                                </div>

                            </div>
                            <div class="product">
                                <div class="product-img">
                                    <a href="" class="img-a">
                                        <img src="../../asset/img/ip14-s.webp" alt="">
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
                                        <div class="text">iPhone 14 Pro Max</div>
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
                                        <div class="price">33.990.000đ</div>
                                    </div>
                                </div>
                                <div class="product-detai">
                                    <a href="../../pages/detail_product/detail_product.jsp">
                                        <button  class="btn btn-outline-grayscale" type="button">XEM CHI TIÊT</button>
                                    </a>
                                </div>

                            </div>
                            <div class="product">
                                <div class="product-img">
                                    <a href="" class="img-a">
                                        <img src="../../asset/img/ip14-s.webp" alt="">
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
                                        <div class="text">iPhone 14 Pro Max</div>
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
                                        <div class="price">33.990.000đ</div>
                                    </div>
                                </div>
                                <div class="product-detai">
                                    <a href="../../pages/detail_product/detail_product.jsp">
                                        <button  class="btn btn-outline-grayscale" type="button">XEM CHI TIÊT</button>
                                    </a>
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