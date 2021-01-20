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
<link rel="stylesheet" href="css/style.css" />
<c:url value="/img/pizzalogo.jpg" var="Logo"/>
</head>
<body>
	<div class = "container">
		<img src="img/pizzaLogo.jpg" alt="picture of a pizza" class="logo">
		<div id = head>
			<a href="/cart"><img src="img/cart.jfif" alt="cart-logo" class="cart"></a>
			<h1>pizza place</h1>
		</div>
		<div id ="nav">
			<a href="/menu">| menu |</a>
			<a href="#" id="button">| login |</a>
			<a href="/SignUp" id="register">| sign up |</a>
		</div>	
		<h1>welcome ${user.email}</h1>	
		<p id="error">${ error} </p>
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
		<div class="food">
			<img src="img/lunch2.jfif" alt="picture of a pizza" class="special">
			<div>
				<h3>Try our Lunch Special!</h3>
				<p>Two slices of pizza, one side, and a drink for only 9.99.</p>
			</div>
		</div>
		<div class="food">	
			<img src="img/specialty.jfif" alt="picture of a pizza" class="special">
			<div>
				<h3>Specialty pizza's</h3>
				<p>Chef made Pizza's oven grilled to perfection 9.99 everyday.</p>
			</div>
		</div>
		<div class="food">	
			<img src="img/family.jfif" alt="picture of a pizza" class="special">
			<div>
				<h3>Family Special</h3>
				<p>Three large pizza's of your choice, and a choice of salad, breadsticks or a desert for only 34.99.</p>
			</div>
		</div>
		<div class="footer">
			<a href="https://github.com/cv-bit/SoloProject.git"><img src="img/github.png" alt="github logo" class="github"></a>
			<h2>@Cameron.CodingDojo</h2>
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