<%--
  Created by IntelliJ IDEA.
  User: lelon
  Date: 21/10/2022
  Time: 00:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../asset/css/cart.css" />

    <link
            rel="stylesheet"
            href="../../asset/font/themify-icons/themify-icons.css"
    />
    <title>Document</title>
</head>
<body>
<div class="main">
    <%@include file="../include/header1.jsp"%>
    <div class="content">
        <div class="subcontainer">
            <div class="subheading">
                <button class="check_add">Add</button>
                <h3 class="inline-block">
                    GIỎ HÀNG CỦA BẠN
                    <!-- <span>(1 sản phẩm)</span>-->
                </h3>
                <a href="" class="float-right home-link">Mua thêm sản phẩm khác</a>
            </div>
            <div class="container">
                <div class="list-items">
                     <div class="items">
                      <div class="pic float-left">
                        <img
                          id="items-pic"
                          src="../../asset/img/ip13-pro-max.jpeg"
                          alt="Sản phẩm"
                        />
                      </div>

                      <div class="float-left">
                        <div class="items-type float-left">
                          <h3 class="items-name">iPhone 13 128GB</h3>
                          <div class="colors">
                            <span>Màu</span>
                            <ul class="ordercolorful"></ul>
                          </div>
                        </div>
                        <div class="items-price float-left">
                          <p class="end-price">
                            <span>19.190.000</span> <sup>đ</sup>
                          </p>
                          <p class="price"><span>24.990.000</span> <sup>đ</sup></p>
                          <p class="discount inline-block">Giảm -30 %</p>
                        </div>

                        <div class="items-amount float-left">
                          <div class="wrapper">
                            <span class="minus">-</span>
                            <span class="num inline-block">01</span>
                            <span class="plus">+</span>
                          </div>
                        </div>
                      </div>
                      <div class="remove_item float-right">
                        <i class="close-icon ti-close"></i>
                        <div class="clear"></div>
                      </div>
                    </div>

                <div class="bill-total">
                    <!-- <div class="voucher inline-block">
                              <p class="">Sử dụng mã giảm giá:</p>
                              <div class="voucher-code">
                                  <input type="text" placeholder="Nhập mã giảm giá" class="input voucher-input">
                                  <button id="check-voucher">Áp dụng</button>
                              </div>
                          </div> -->
                    <div class="price float-right">
                        <ul class="bill-detal">
                            <li class="temp-price">
                                <label>Tạm tính:</label>
                                <p><span>24.990.000 </span><sup>đ</sup></p>
                            </li>
                            <li class="promo-price">
                                <label>Khuyến mãi:</label>
                                <p> <span>-5.800.000</span><sup>đ</sup></p>
                            </li>
                            <li class="last-price">
                                <label>Tổng tiền:</label>
                                <p><span>19.190.000 </span><sup>đ</sup></p>
                            </li>
                        </ul>
                    </div>
                </div>
                <form action="" class="cus-form">
                    <p class="sub-title">Thông tin khách hàng</p>
                    <ul class="form">
                        <li class="row">
                            <label class="label">Họ và tên: <sup>*</sup></label>
                            <div class="float-right">
                                <input
                                        class="input"
                                        type="text"
                                        placeholder="Nhập họ và tên"
                                        id="name"
                                />
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="row">
                            <label class="label">Số điện thoại: <sup>*</sup></label>
                            <div class="float-right">
                                <input
                                        class="input"
                                        type="text"
                                        placeholder="Số điện thoại"
                                        id="phone"
                                />
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="row" class="email">
                            <label class="label"
                            >Email:
                                <span class="inline-block">(không bắt buộc)</span>
                            </label>
                            <div class="float-right">
                                <input
                                        class="input"
                                        type="email"
                                        placeholder="Email"
                                        class="email"
                                />
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li class="row">
                            <div class="btn-container">
                                <div>
                                    <button
                                            type="button"
                                            class="btn"
                                            id="next-step"
                                            onclick="send()"
                                    >
                                        <strong>Tiếp tục</strong>
                                        <span>(Chọn hình thức nhận hàng)</span>
                                    </button>
                                </div>

                                <div id="or">
                                    <p>Hoặc</p>
                                </div>
                                <div>
                                    <button type="button" class="btn" id="order-fast">
                                        <strong>Đặt hàng luôn</strong>
                                        <span>FPT Shop sẽ gọi cho quý khách</span>
                                    </button>
                                </div>
                            </div>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
        <%@include file="../include/footer1.jsp"%>
</div>
<script src="../../asset/js/cart.js"></script>
</body>
</html>

