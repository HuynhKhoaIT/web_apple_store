<%-- Created by IntelliJ IDEA. User: lelon Date: 21/10/2022 Time: 00:53 To change this template use File | Settings | File Templates. --%> <%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
      <!-- Latest compiled JavaScript -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
   </head>
   <body>
    <div id="main">
     	<jsp:include page="./header2.jsp" />
	    <div id="title-blog">
	        <div class="container">
	            <div class="row">
	                <p>THÔNG TIN</p>
	            </div>
	        </div>
	    </div>
	    <div id="content-blog">
	        <div class="container">
	            <div class="row">
	                <div class="img-blog col-md-6 col-12">
	                    <div class="blog-main">
	                        <a href="${root}shop/detail_blog.jsp">
	                            <img class="avatar-blog" src="${root}asset/img/bn3.webp" alt="">
	                            <div class="title1-blog">
	                                <h3>Apple Watch Ultra chiếc đồng hồ thông minh không dành cho số đông</h3>
	                            </div>
	                        </a>
	                    </div>
	                    <div class="blog-item">
	                        <ul>
	                            <li>
	                                <div class="item row">
	                                    <a class="col-md-4 col-4" href="${root}shop/detail_blog.jsp">
	                                        <img class="avatar-blog" src="${root}asset/img/bn1.webp" alt="">
	                                    </a>
	                                    <div class="title2-blog col-md-8 col-8">
	                                        <a  href="${root}shop/detail_blog.jsp">Giấc mơ iPhone đã có type-C sẽ thành sự thật nhưng có tốt như nhiều người nghĩ?</a>
	                                    </div>
	                                </div>
	                            </li>
	                            <li>
	                                <div class="item  row">
	                                    <a class="col-md-4 col-4" href="${root}shop/detail_blog.jsp">
	                                        <img class="avatar-blog" src="${root}asset/img/bn3.webp" alt="">
	                                    </a>
	                                    <div class="title2-blog col-md-8 col-8">
	                                        <a href="${root}shop/detail_blog.jsp">iPhone 14 Pro Max vượt xa các đối thủ Android trong thử nghiệm pin</a>
	                                    </div>
	                                </div>
	                            </li>
	                            <li>
	                                <div class="item  row">
	                                    <a class="col-md-4 col-4" href="#">
	                                        <img class="avatar-blog" src="${root}asset/img/blog1.webp" alt="">
	                                    </a>
	                                    <div class="title2-blog col-md-8 col-8">
	                                        <a href="#">iPad Gen 10: Nhiều màu sắc, USB-C, màn hình lớn hơn, viền mỏng, vẫn dùng Apple Pencil 1</a>
	                                    </div>
	                                </div>
	                            </li>
	                            <li>
	                                <div class="item  row">
	                                    <a class="col-md-4 col-4" href="#">
	                                        <img class="avatar-blog" src="${root}asset/img/blog1.webp" alt="">
	                                    </a>
	                                    <div class="title2-blog col-md-8 col-8">
	                                        <a href="#">Tất tần tật những điều cần biết về iPad Pro M2 2022: Hiệu năng siêu mạnh, cải tiến nhiều tính năng</a>
	                                    </div>
	                                </div>
	                            </li>
	                            <li>
	                                <div class="item  row">
	                                    <a class="col-md-4 col-4" href="#">
	                                        <img class="avatar-blog" src="${root}asset/img/blog1.webp" alt="">
	                                    </a>
	                                    <div class="title2-blog col-md-8 col-8">
	                                        <a href="#">Apple khóa sync iOS 16.0.2 sau khi phát hành iOS 16.0.3</a>
	                                    </div>
	                                </div>
	                            </li>
	                            <li>
	                                <div class="item row">
	                                    <a class="col-md-4 col-4" href="#">
	                                        <img class="avatar-blog" src="${root}asset/img/blog1.webp" alt="">
	                                    </a>
	                                    <div class="title2-blog col-md-8 col-8">
	                                        <a href="#">Giấc mơ iPhone đã có type-C sẽ thành sự thật nhưng có tốt như nhiều người nghĩ?</a>
	                                    </div>
	                                </div>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	                
	            </div>
	        </div>
	    </div>
	    <%@include file="./footer2.jsp"%>
    </div>
</body>
</html>