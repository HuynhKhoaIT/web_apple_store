<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verify</title>
<link rel="stylesheet" href="Verify.css">
</head>
<body>
	<!-- Verify  -->
	<div class="modal-verify js-modal-verify">
		<div class="modal-container-verify js-container-verify">
			<div class="modal-close-verify js-modal-close-verify">X</div>
			<header class="modal-header-verify">
				<div class="brg-img"></div>
			</header>
			<div class="modal-body-sign_up">
				<form action="verify" method="POST" class="form" id="form-3">
					<div class="sign-name form-group">
						<label for="verify" class="modal-label-sign_up form-label">
							Nhập mã xác nhận </label> <input id="verify" name="verify" type="text"
							class="input-verify" placeholder="Nhập mã xác nhận"> <span
							class="form-message"></span>
					</div>

					<button class="verify " type="submit">Verify</button>
				</form>

			</div>
		</div>
	</div>
	<!-- Verify -->

	<script src="./Js/Validator.js"></script>

	<script>
        //   Verify
        Validator({
                form: '#form-3',
                formGroupSelector: '.form-group',
                errorSelector: '.form-message',
                rules: [
                  Validator.isRequired('#verify'),
                ]
            //     onSubmit: function (data) {
            //       // Call API
            //       console.log(data);
            //     }
            });
            //   Verify

            // Verify
            const verifyBtts = document.querySelectorAll('.js-verify')

            const verifyModal = document.querySelector('.js-modal-verify')

            const verifyModalClose = document.querySelector('.js-modal-close-verify')

            const verifyModalContainer = document.querySelector('.js-container-verify')
            // Hàm hiển thị Verify
            function showverify() {
                verifyModal.classList.add('open')
            }

            // Hàm ẩn Verify
            function hideverify() {
                verifyModal.classList.remove('open')
            }

            showverify();

            verifyModalClose.addEventListener('click', hideverify)

            verifyModal.addEventListener('click', hideverify)

            verifyModalContainer.addEventListener('click', function(event) {
                event.stopPropagation()
            })
            // Verify
    </script>
</body>
</html>