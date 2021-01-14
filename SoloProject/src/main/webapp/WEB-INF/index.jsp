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
			<div id = side>
			
			</div>
			<div id ="nav">
				<a href="#">| menu |</a>
				<a href="#" id="button">| login |</a>
				<a href="#" id="register">| sign up |</a>
			</div>
			<div class = "popup">
				<div class="popup-content">
					<img src="img/close.jfif" alt="close" class="close" />
					<p class="welcome">Welcome Back!</p>
					<input type="text" placeholder= "Email" />
					<input type="text" placeholder="password" />
					<input type="submit" value= "Login" class="button" />
				</div>
			</div>
			<div class="register">
				<div class="register-content">
				<img src="img/close.jfif" alt="close" class="rclose" />
					<p class="welcome">earn discounts with every purchase!</p>
					<input type="text" placeholder= "Email" />
					<input type="text" placeholder="password" />
					<input type="text" placeholder="confirm password"/>
					<input type="submit" value="register" class="button" />
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
		document.getElementById("register").addEventListener("click", function(){
			document.querySelector(".register").style.display = "flex";		
		})
		document.querySelector(".rclose ").addEventListener("click", function(){
			document.querySelector(".register").style.display = "none";	
			})
	</script>
	</body>
</html>