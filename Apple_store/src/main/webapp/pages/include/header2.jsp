<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root" />
<div id="header">
  <div id="header-top">
    <div class="container">
      <div class="header-logo">
        <a href="${root}index.jsp">
          <img src="${root}asset/img/logo.webp" alt="logo" class="max-width">
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
        <a href="../cart/cart.jsp">
          <div class="sec-icon">
            <i class="ti-shopping-cart"></i>
            <div class="icon-text">Giỏ hàng của bạn</div>
          </div>
        </a>
      </div>

      <div class="header-user">
        <a href="${root}user/user.jsp" class="user">
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
            <li><a href="#" class="nav-sub">Tin Tức - Thủ Thuật</a></li>
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