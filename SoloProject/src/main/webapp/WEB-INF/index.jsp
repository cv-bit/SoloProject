<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SoloProject Pizza</title>
<link rel="stylesheet" href="style.css" />
<c:url value="/img/pizzalogo.jpg" var="Logo"/>
</head>
<body>
	<div id="background">
		<div class = "container">
			<img src="img/pizzaLogo.jpg" alt="picture of a pizza" class="logo">
			<div id = head>
				<h1>pizza place</h1>
			</div>

			<div id ="nav">
				<a href="#">| menu |</a>
				<a href="#" id="button">| login |</a>
				<a href="/SignUp" id="register">| sign up |</a>
			</div>
			<p id="error">${ error} </p>
			<h1 id="welcome">Welcome ${user.email}</h1>	<a href="/logout" id="LO">logout</a>		
			<div class = "popup">
				<div class="popup-content">
					<img src="img/close.jfif" alt="close" class="close" />
					<form action="/login" class="user-form" method="POST" >
						<p class="welcome">Welcome Back!</p>
						<div class="form-group">
							<label for="email">Email</label>
							<input type="email" name="email" class="form-control" />
						</div>
						<div class="form-group">
					        <label for="password">Password</label>
					        <input type="password" name="password" class="form-control" />		        
					    </div>
					    <input type="submit" value="Login!" class="button"/>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("button").addEventListener("click", function(){
			document.querySelector(".popup").style.display = "flex";		
		})
		document.querySelector(".close").addEventListener("click", function(){
			document.querySelector(".popup").style.display = "none";	
			})
	</script>
	</body>
</html>