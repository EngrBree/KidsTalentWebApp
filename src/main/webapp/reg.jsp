<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
<link rel="stylesheet"href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<script src="js/swal.js"></script>
<link rel="stylesheet" href="CSS/sign.css">
  <link rel="stylesheet" href="css/swal.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">

<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
				<h2 class="form-title">Sign up</h2>
					
				<form method="post" action="Register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="uname" id="name" placeholder=" UserName" required="required"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" required="required"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="text" name="kid" id="kidname" placeholder="Your Kids Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="number" name="age" id="age" placeholder="Your Kids Age" required="required"/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="tel" name="contact" id="contact"
									placeholder="Contact no" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" required="required"/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required="required"/>
							</div>
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="css/images/signupk.jpeg" alt="sing up image">
						</figure>
						<a href="Login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>

	</div>
	<!-- JS -->
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">

var status=document.getElementById("status").value;
if(status==Success){
	swal({
		title:"Congrats",
		text:"Account created succesfully",
		icon:"success"
	}
	);
	
}

</script>
</body>
</html>