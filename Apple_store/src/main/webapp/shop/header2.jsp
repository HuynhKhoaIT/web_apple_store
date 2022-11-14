<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root" />
<div id="header">
  <div id="header-top">
    <div class="container">
      <div class="row align-items-center">
      <div class="col-md-3 col-sm-12">
	      <div class="row top-header">
	          <div class="col-1">
	              <a id="js-menu-ticket" class="menu ">
	                  <div class="sec-icon menu">
	                      <i class="ti-menu"></i>
	                  </div>
	              </a>
	          </div>
	          <div class="col-md-12 col-6">
	          	  <a href="http://localhost:8080/Apple_store" class="logo">
	          	  <img src="${root}asset/img/logo.webp" alt="logo" class="max-width">
	        	  </a>
	          </div>
	          <div class="col-1">
	              <a href="${root}cart.jsp" class="cart-1">
	                   <div class="sec-icon cart">
	                       <i class="ti-shopping-cart"></i>
	                   </div>
	               </a>
	          </div>
	          <div class="col-1">
	              <a href="${root}user.jsp" class="user-1">
	                  <div class="sec-icon user">
	                      <i class="ti-user"></i>
	                  </div>
	              </a>
	          </div>
	          
	       </div>
      </div>

      <div class="header-search col-md-5 col-sm-12">
        <form action="search" method="get">
          <div class="form-search">
            <i class="ti-search"></i>
            <input name="txt" type="text" class="search-input" placeholder="Bạn đang tìm sản phẩm, tin tức, ...">
          </div>
        </form>
      </div>

      <div class="header-cart col-md-2">
        <a href="../cart/cart.jsp" class="cart">
          <div class="sec-icon align-items-center">
            <i class="ti-shopping-cart"></i>
            <div class="icon-text">Giỏ hàng</div>
          </div>
        </a>
      </div>

      <div class="header-user col-md-2">
      <c:if test="${sessionScope.acc!=null}">
        <a href="${root}user/user.jsp" class="user">
          <div class="sec-icon">
            <i class="ti-user"></i>
            <div class="icon-text">
            <button>Tài Khoản</button>
            </div>
          </div>
        </a>
      </c:if>
      <c:if test="${sessionScope.acc==null}">
          <div class="sec-icon">
            <i class="ti-user"></i>
            <div class="icon-text">
            <button class="js-login">Đăng nhập</button>
            </div>
      </c:if>
          </div>
        </a>
      </div>
      </div>
    </div>
  </div>

  <div id="header-bot">
    <div class="container">
      <div class="header-nav">
        <div class="header-item">
          <ul>
             <c:forEach items="${requestScope.items}" var="o">
                 <li><a href="http://localhost:8080/Apple_store/loaisp?maloai=${o.maLoai}" class="nav-sub">${o.tenLoai}</a></li>
             </c:forEach>
            <li><a href="#" class="nav-sub">Tin Tức</a></li>
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
<div class="model">
	<div class="side-menu show">
       <div class="mn-content">
           <div class="mn-top flex flex-between">
               <div class="mn-logo">
                   <a href="/"><img src="${root}asset/img/logo-fstu.webp" alt="logo-fstu" /> </a>
               </div>
               <span class="js-close-menu">
                   <i class="ti-close"> </i>
               </span>
           </div>
           <div class="mn-body">
               <ul>
               <c:forEach items="${listlsp}" var="o" >
                <li><a class="b-b-600" href="loaisp?maloai=${o.maLoai}" class="nav-sub">${o.tenLoai}</a></li>
            	</c:forEach>
                   <li class="b-b-600"><a href="/tin-tuc">Tin tức - Thủ thuật</a></li>
                   <li class="b-b-600"><a href="/tin-tuc">Workshop</a></li>
               </ul>
           </div>
       </div>
   </div>
 </div>
 
 
        <!-- Đăng nhập -->

        <div class="modal-login js-modal-log">
            <div class="modal-container-login js-container-log">
                <div class="modal-close-login js-modal-close-log">
                    X
                </div>
                <header class="modal-header-login">
                    <div class="brg-img">

                    </div>                  
                </header>
                <div class="modal-body-login">
                    <form action="login" method="POST" class="form" id="form-2">
                    	<div class="text-danger"> <p> ${mess} </p> </div>
                        <div class="log-name form-group">
                            <label for="username-log" class="modal-label-login form-label">
                                Tên đăng nhập
                            </label>
                            <input id="username-log" name="username-log" type="text" class="input-log" placeholder="Tên đăng nhập">
                            <span class="form-message"></span>
                        </div>
    
                        <div class="log-name form-group">
                            <label for="password-log" class="modal-label-login form-label">
                                Mật khẩu
                            </label>
                            <input id="password-log" name="password-log" type="password" class="input-log" placeholder="Mật khẩu">
                            <span class="form-message"></span>
                        </div>

                        <button class="login">
                            Login
                        </button>

                        <div class="or"> Hoặc</div>


                    </form>

                    <button class="login js-sign-up" type="submit">
                        Sign-up
                    </button>

                    <footer class="modal-footer-sign_up">
                        <p class="sign_up-help">Need <a href="">help ?</a></p>
                    </footer>
        
                </div>
            </div>
        </div>

        <!-- Đăng nhập -->

        <!-- Đăng ký  -->
        <div class="modal-sign_up js-modal">
            <div class="modal-container-sign_up js-container">
                <div class="modal-close-sign_up js-modal-close">
                    X
                </div>
                <header class="modal-header-sign_up">
                    <div class="brg-img">

                    </div>                  
                </header>
                <div class="modal-body-sign_up">
                    <form action="sign" method="POST" class="form" id="form-1">
                    <div class="text-danger"> <p> ${mess} </p> </div>
                        <div class="sign-name form-group">
                            <label for="fullname" class="modal-label-sign_up form-label">
                                Tên người dùng
                            </label>
                            <input id="fullname" name="fullname" type="text" class="input-sign" placeholder="Tên của bạn">
                            <span class="form-message"></span>
                        </div>
    
                        <div class="sign-name form-group">
                            <label for="username" class="modal-label-sign_up form-label">
                                Tên đăng nhập
                            </label>
                            <input id="username" name="username" type="text" class="input-sign" placeholder="Tên đăng nhập">
                            <span class="form-message"></span>
                        </div>
                        
                        <div class="sign-name form-group">
                            <label for="email" class="modal-label-sign_up form-label">
                                Email
                            </label>
                            <input id="email" name="email" type="email" class="input-sign" placeholder="Email">
                            <span class="form-message"></span>
                        </div>
    				
                        <div class="sign-name form-group">
                            <label for="phone" class="modal-label-sign_up form-label">
                               Số điện thoại
                            </label>
                            <input id="phone" name="phone" type="tel" class="input-sign" placeholder="Số điện thoại">
                            <span class="form-message"></span>
                        </div>
    
                        <div class="sign-name form-group">
                            <label for="password" class="modal-label-sign_up form-label">
                                Mật khẩu
                            </label>
                            <input id="password" name="password" type="password" class="input-sign" placeholder="Mật khẩu">
                            <span class="form-message"></span>
                        </div>

                        <div class="sign-name form-group">
                            <label for="password-confirmation" class="modal-label-sign_up form-label">
                                Nhập lại mật khẩu
                            </label>
                            <input id="password-confirmation" name="password-confirmation" type="password" class="input-sign" placeholder="Nhập lại mật khẩu">
                            <span class="form-message"></span>
                        </div>

                        <button class="sign-up" type="submit">
                            Sign-up
                        </button>
                    </form>
        
                </div>

                <footer class="modal-footer-sign_up">
                    <p class="sign_up-help">Need <a href="">help ?</a></p>
                </footer>
            </div>
        </div>
        <!-- Đăng ký -->

 

 <script>
     const element = document.getElementById("js-menu-ticket");
     const sideMenu = document.querySelector('.model')
     const menuClose = document.querySelector('.js-close-menu')
     
     element.addEventListener("click", showMenuTicket);

     function showMenuTicket() {
     	sideMenu.classList.add('open')
     }
     
     menuClose.addEventListener("click", closeMenuTicket);
     function closeMenuTicket() {
     	sideMenu.classList.remove('open')
     }
     
 </script>
 
 
 
        <script src="./Js/Validator.js"></script>

        <script>

            document.addEventListener('DOMContentLoaded', function () {
              // Mong muốn của chúng ta
            //   Đăng ký
              Validator({
                form: '#form-1',
                formGroupSelector: '.form-group',
                errorSelector: '.form-message',
                rules: [
                  Validator.isRequired('#fullname', 'Vui lòng nhập tên đầy đủ của bạn'),
                  Validator.isRequired('#username', 'Vui lòng nhập tên đầy đủ của bạn'),
                  Validator.isRequired('#email'),
                  Validator.isRequired('#phone'),
                  Validator.isPhone('#phone'),
                  Validator.isEmail('#email'),
                  Validator.minLength('#password', 6),
                  Validator.isRequired('#password-confirmation'),
                  Validator.isConfirmed('#password-confirmation', function () {
                    return document.querySelector('#form-1 #password').value;
                  }, 'Mật khẩu nhập lại không chính xác')
                ],
                /*
                onSubmit: function (data) {
                  // Call API
                  console.log(data);
                }
              */
              });
            //   Đăng ký


            //   Đăng nhập
              Validator({
                form: '#form-2',
                formGroupSelector: '.form-group',
                errorSelector: '.form-message',
                rules: [
                  Validator.isRequired('#username-log'),
                  Validator.isRequired('#password-log'),
                ],
                /*
                onSubmit: function (data) {
                  // Call API
                  console.log(data);
                } */
              });
            //   Đăng nhập

            });
      
          </script>

        <script>

            // Đăng nhập

            const logBtts = document.querySelectorAll('.js-login')

            const logModal = document.querySelector('.js-modal-log')

            const logModalClose = document.querySelector('.js-modal-close-log')

            const logModalContainer = document.querySelector('.js-container-log')
            // Hàm hiển thị Đăng nhập
            function showLogin() {
                logModal.classList.add('open')
            }

            // Hàm ẩn đăng nhập
            function hideLogin() {
                logModal.classList.remove('open')
            }

            for (const logBtt of logBtts) {
                logBtt.addEventListener('click', showLogin)
            }

            logModalClose.addEventListener('click', hideLogin)

            logModal.addEventListener('click', hideLogin)

            logModalContainer.addEventListener('click', function(event) {
                event.stopPropagation()
            })

            // Đăng nhập


            // Đăng ký
            const signBtts = document.querySelectorAll('.js-sign-up')

            const signModal = document.querySelector('.js-modal')

            const signModalClose = document.querySelector('.js-modal-close')

            const signModalContainer = document.querySelector('.js-container')
            // Hàm hiển thị đăng ký
            function showSign_up() {
                signModal.classList.add('open')
            }

            // Hàm ẩn đăng ký
            function hideSign_up() {
                signModal.classList.remove('open')
            }

            for (const signBtt of signBtts) {
                signBtt.addEventListener('click', hideLogin)
                signBtt.addEventListener('click', showSign_up)
            }

            signModalClose.addEventListener('click', hideSign_up)

            signModal.addEventListener('click', hideSign_up)

            signModalContainer.addEventListener('click', function(event) {
                event.stopPropagation()
            })
            // Đăng ký
        </script>
 