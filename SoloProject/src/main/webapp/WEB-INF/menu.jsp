<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SoloProject Pizza place</title>
<link rel="stylesheet" href="css/menu.css" />
</head>
<body>
	<div class="container">
		<img src="img/pizzaLogo.jpg" alt="picture of a pizza" class="logo">
		<div id = head>
			<h1>pizza place</h1>
		</div>
		<div id ="nav">
			<a href="#">| menu |</a>
			<a href="#" id="button">| login |</a>
			<a href="/SignUp" id="register">| sign up |</a>
		</div>
		
		<ul>
			<li>${Item.name} ${Item.lunch.description} ${lunch.price}</li>
			<li>${Item.name}</li>
		</ul>
		
		<div class="footer">
		
		</div>
	</div>
</body>
</html>