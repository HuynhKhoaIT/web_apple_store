
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<c:url value="/" var="root" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="../../asset/css/cart.css" /> -->
<link rel="stylesheet" href="${root}asset/style.css">
<link rel="stylesheet"
	href="${root}asset/font/themify-icons/themify-icons.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="${root}asset/dist/css/adminlte.min.css">
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Document</title>
</head>
<body>
	<div class="main">
		<c:set var="items" value="${listlsp}" scope="request" />
		<jsp:include page="./header2.jsp" />


		<section class="content">
			<div class="container-fluid">
				<!-- Small boxes (Stat box) -->
				<div class="row">
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-info">
							<div class="inner">
								<h3>150</h3>
								<p>Thông tin cá nhân</p>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="Customer?maTK=1"
								class="small-box-footer">Xem chi tiết <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-success">
							<div class="inner">
								<h3>
									53<sup style="font-size: 20px">%</sup>
								</h3>
								<p>Thông tin tài khoản</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="Account?maTK=1" class="small-box-footer">Xem chi tiết <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-warning">
							<div class="inner">
								<h3>44</h3>
								<p>Danh sách đơn hàng</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="User_OrderControl?maTK=1" class="small-box-footer">Xem chi tiết <i class="fas fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-danger">
							<div class="inner">
								<h3>65</h3>
								<p>Unique Visitors</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer">Xem chi tiết <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
				</div>
				<!-- /.row -->

			</div>
		</section>
		<!-- /.row -->
		<!--     <div class="content">
        <div class="pro-container">
            <div class="user-profile">
                <div class="subnav">
                    <div class="avatar-user navcard">
                        <img src="../../asset/img/user-icon-trendy-flat-style-isolated-grey-background-user-symbol-user-icon-trendy-flat-style-isolated-grey-background-123663211.jpg" alt="User">
                    </div>
                    <ul>
                        <li class="js-content-btn font-bold"><a>General</a></li>
                        <li class="js-password-btn"><a>Change password</a></li>
                        <li class="js-orders-btn"><a>My orders</a></li>
                    </ul>
                </div>
                <div class="tab-content js-content-tab">
                    <div class="card-body">
                        <div class="avatar-user">
                            <img src="../../asset/img/user-icon-trendy-flat-style-isolated-grey-background-user-symbol-user-icon-trendy-flat-style-isolated-grey-background-123663211.jpg" alt="User">
                        </div>
                        <div class="media-body">
                            <button class="upload">
                                <i class="ti-upload"></i> Upload <i class="fa fa-file" aria-hidden="true"></i>
                                <input type="file" name="myfile" />
                            </button>

                            <button class="reset">Reset</button>
                            <p>Allowed JPG, GIF or PNG</p>
                        </div>
                    </div>

                    <form action="" class="cus-form">
                        <ul class="form">
                            <li class="row">
                                <label class="label">Họ và Tên</label>
                                <div  class ="float-right">
                                    <input class="input" type="text"  value="jfkajsf">
                                </div>
                            </li>
                            <li class="row">
                                <label class="label">Số điện thoại </label>
                                <div  class ="float-right">
                                    <input class="input" type="text" value="0123456789" >
                                    <div class="note">Vui lòng nhập đúng </div>
                                </div>
                                <div class="clear"></div>
                            </li>
                            <li class="row" id="email" >
                                <label class="label">Email
                                </label>
                                <div  class ="float-right">
                                    <input class="input" type="email" value="@gmail.com" >
                                </div>
                                <div class="clear"></div>
                            </li>
                            <li class="row">
                                <label class="label">Địa chỉ</label>
                                <div  class ="float-right">
                                    <input class="input" type="text"  value="Hồ Chí Minh">
                                </div>
                            </li>
                        </ul>
                    </form>
                    <div class="pro-btn-container">
                        <button class="save">Save changes</button>
                        <button class="cancel">Cancel</button>
                    </div>
                </div>
                <div class="tab-password display-off js-password-tab">
                    <form action="" class="cus-form">
                        <ul class="form">
                            <li class="row">
                                <label class="label">Mật khẩu hiện tại</label>
                                <div  class ="float-right">
                                    <input class="input password" type="password">
                                </div>
                                <div class="clear"></div>
                            </li>
                            <li class="row">
                                <label class="label ">Mật khẩu mới</label>
                                <div  class ="float-right">
                                    <input class="input  password" type="password">
                                    <div class="note-text js-password-info">Long đây</div>
                                </div>
                                <div class="clear"></div>
                            </li>
                            <li class="row">
                                <label class="label">Nhập lại mật khẩu mới</label>
                                <div  class ="float-right">
                                    <input class="input password" type="password" >
                                    <div class="note">Vui lòng nhập đúng </div>
                                </div>
                                <div class="clear"></div>
                            </li>
                        </ul>

                        <div class="show-password"><input type="checkbox" onclick="show_password()"> <p>Hiện mật khẩu</p></div>

                    </form>
                    <div class="pro-btn-container">
                        <button class="save">Save changes</button>
                        <button class="cancel">Cancel</button>
                    </div>
                </div>
                <div class="tab-orders display-off js-orders-tab">
                    <div class="list-items">
                        <div class="items">

                            <div class="pic float-left">
                                <p>
                                    <img id ="items-pic" src="../../asset/img/ip13-pro-max.jpeg" alt="Sản phẩm">
                                </p>
                            </div>

                            <div class="items-info float-left">
                                <div class="items-type float-left">
                                    <h3 class="items-name">iPhone 13 128GB</h3>
                                    <div class="colors">
                                        <span>Color</span>
                                        <ul class="ordercolorful">
                                           
                                        </ul>
                                    </div>
                                </div>

                                <div class="items-price float-left">
                                    <p class = "end-price">19.190.000 đ</p>
                                    <p class = "price">24.990.000 đ</p>
                                    <p class = "discount inline-block">Giảm -30 %</p>
                                </div>

                                <div class="items-amount float-left">
                                    <p>Amount: </p>
                                    <p>Day: 20/02/2002</p>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
 -->
		<%@include file="./footer2.jsp"%>
	</div>
	<script>
		const content_tab = document.querySelector('.js-content-tab')
		const password_tab = document.querySelector('.js-password-tab')
		const orders_tab = document.querySelector('.js-orders-tab')

		const btn_content = document.querySelector('.js-content-btn')
		const btn_password = document.querySelector('.js-password-btn')
		const btn_order = document.querySelector('.js-orders-btn')

		function show_content() {

			btn_content.classList.add('font-bold')
			btn_password.classList.remove('font-bold')
			btn_order.classList.remove('font-bold')

			content_tab.classList.remove('display-off')
			password_tab.classList.add('display-off')
			orders_tab.classList.add('display-off')
		}

		function show_password() {

			btn_password.classList.add('font-bold')
			btn_content.classList.remove('font-bold')
			btn_order.classList.remove('font-bold')

			password_tab.classList.remove('display-off')
			content_tab.classList.add('display-off')
			orders_tab.classList.add('display-off')
		}

		function show_orders() {

			btn_order.classList.add('font-bold')
			btn_password.classList.remove('font-bold')
			btn_content.classList.remove('font-bold')

			orders_tab.classList.remove('display-off')
			password_tab.classList.add('display-off')
			content_tab.classList.add('display-off')
		}

		btn_content.addEventListener('click', show_content)
		btn_password.addEventListener('click', show_password)
		btn_order.addEventListener('click', show_orders)
	</script>
	<script src="./assets/js/main.js"></script>
</body>
</html>
