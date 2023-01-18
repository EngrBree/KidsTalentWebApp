<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPLOADS
</title>
<style>
	    *
{
    padding: 0;
    margin: 0;
    font-family: sans-serif;
    background-color: rgb(141, 131, 131);
    backgroun-image:url("jeptoo/src/images/kkk.jpg");
}
body{
color: green;
font-family: sans-serif;
}
.section{
text-align:center;
margin-top:100px;

}
</style>
</head>
<body>
<section class="section">
<h4>Upload your Kids videos here to save the progress for future reference</h4>
	<h4>You can also view and later download it by clicking the view list </h4>
	
<form action="upload" method="post" enctype="multipart/form-data">
<div>
<input type="file" name="file" required="required" id="upload" >

</div>
<input type="submit" value="Upload">

		
<br><a href = "files.jsp">View List</a>


       
</form>


    </section>
<body>
<script src="js/main.js"></script>
</html>