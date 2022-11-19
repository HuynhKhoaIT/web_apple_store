<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<c:url value="/" var="root" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root}asset/css/cart.css" />
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

	<!-- /.row -->
	<div class="content">
		<div class="pro-container">
			<div class="user-profile">
				<div class="subnav">
					<div class="avatar-user navcard" style="background: #000;">
						<img src="https://flaticons.net/icon.php?slug_category=people&slug_icon=customer" alt="User">
					</div>
					<ul style="padding-left: 0px;">
						<li class="js-content-btn font-bold"><a>Thông tin cá nhân</a></li>
						<li class="js-password-btn"><a>Thay đổi mật khẩu</a></li>
						<li class="js-orders-btn"><a>Đơn hàng</a></li>
						<form action="logout" method="POST">
							<li class="js-logout-btn">
								<button type="submit" style="margin: 0;background-color: #000;color: #fff;padding: 9px 58px;" >Đăng xuất</button>
							</li>
						</form>
					</ul>

				</div>
				<div class="tab-content js-content-tab">


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
		</div>
	</div>
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