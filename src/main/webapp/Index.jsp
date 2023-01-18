 <% 
if(session.getAttribute("username")==null){
	
	response.sendRedirect("Login.jsp");
}

%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kids Space</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css">

	<link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="js/con.js"></script>
</head>
<body >
<!----hero Section start---->

	<div class="hero">
		<nav>
			<h2 class="logo">Kiddo<span>SPACE</span></h2>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#services-container">Talent samples</a></li>
			
				<li><a href="UPDRAFT.jsp">Upload</a></li>
				<li><a href="ig/index.html">insta</a></li>
				<li><a href="#Contact_cc">Contact Us</a></li>
				<li><a href="Logout">LogOut</a></li>
				<li><a href="#"><%=session.getAttribute("username") %></a></li>
			</ul>
		</nav>

		<div class="content">
			<h4>Hello,</h4>
			<h1>Welcome To<span>Kids Space</span></h1>
			<h3>Kids Are Always Fascinated With  Areas They see They are best in ,They try there best 
				to venture into those areas.
				"As a Parent" Just Imagine How That lovely Kiddo will benefit from there talent 
               if  We are entrusted to help u keep track of your Kids talent Since beginning of 
			   nurture till at best of the talents outcome
						</h3>
			</div>
		</div>
	</div>
	<section id="services-container">
		<div class="title">
			<h2>Our samples</h2>
		</div>
        <div id="services">
            <div class="box">
				<div class="box1"></div>
                <img src="img/paint.png" alt="">
                <h2 class="h-secondary center">Painting</h2>
                <p class="center">Painting is a way for children to do many important things: convey ideas, express emotion, use their senses, explore color, explore process and outcomes, and create aesthetically pleasing works and experiences..</p>
            </div>
            <div class="box">
                <img src="img/dance.jpeg" alt="">
                <h2 class="h-secondary center">dancing</h2>
                <p class="center">Through dance, children develop a greater range of movement whilst developing the ability to work within different spaces. They learn to interpret the effect their movement has on the world around them.</p>
            </div>
            <div class="box">
                <img src="img/YOGA.png" alt="">
                <h2 class="h-secondary center">acrobotics</h2>
                <p class="center">Introducing your child to acrobatics at an early age will not only prepare them to excel in many other sports, as well as acrobatics, but it also encourages the importance of flexibility and maintaining a healthy body into their adult years. 
                Nurturing the talents of jkids will help them improve flexibility and also lead to competition while they are of age internationally.
                .</p>
            </div>
        </div>
<!------Contact Me------>
	<div class="contact-me">
	     <h3>Wondering why we exist?</h3>
		<p></p>
		<a class="button-two" href="jeptoo/about.jsp">learn more </a>
	</div>
<section   id = "Contact_cc">
	<div class="container-contact-us">
		 <div id="error_message"></div>
		<form id="myform" onsubmit="return validate();">
			<h1>Contact Us</h1>
		<input type="text" id="firstname" placeholder="First Name" required>
		<input type="text" id="lastname" placeholder="Last Name" required>
		<input type="email" id="email" placeholder="Email" required>
		<input type="text" id="mobile" placeholder=" mobile number" required>
		<h2>Type Your Message Here....</h2>	
		<textarea required  id="message"></textarea>
		<input type="Submit" value="Send" id="Button">
		</form>
	</div>
</section>
	<!------footer start--------->
	<footer>
		<p>Reach us also @</p>
		<p>Various social media accounts</p>
		<div class="social">
			<a href="#"><i class="fab fa-facebook-f"></i></a>
			<a href="#"><i class="fab fa-instagram"></i></a>
			<a href="#"><i class="fab fa-whatsapp"></i></a>
		</div>
		<p class="end">CopyRight By tranny kids</p>
	</footer>
	
	
	
	
</body>

</html>