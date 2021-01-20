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
			<img src="img/cart.jfif" alt="cart-logo" class="cart">
			<h1>pizza place</h1>
		</div>
		<div id ="nav">
			<a href="/">| Home |</a>
		</div>
		
			<table>
        		<c:forEach items="${Items}" var="item">
        	    	<tr>
                		<td>${Item.name}</td>
        	    	</tr>
        		</c:forEach>
   			 </table>
		
			<p>${lunch.name}</p>
			<hr class= "solid"/>
			<p>${Item.name}</p>
			<hr class= "solid"/>
			<p>${lunch.name}</p>
			<hr class= "solid"/>
			<p>${lunch.name}</p>
			<hr class= "solid"/>
			<p>${lunch.name}</p>
			<hr class= "solid"/>
			<p>${lunch.name}</p>
			<hr class= "solid"/>
			<p>${lunch.name}</p>
			<hr class= "solid"/>
			<p>${lunch.name}</p>
			<hr class= "solid"/>
			<p>${lunch.name}</p>
			<hr class= "solid"/>
			<p>${lunch.name}</p>
			<hr class= "solid"/>
			<p>${lunch.name}</p>
			<hr class= "solid"/>
		
		<div class="footer">
			<a href="https://github.com/cv-bit/SoloProject.git"><img src="img/github.png" alt="github logo" class="github"></a>
			<h2>@Cameron.CodingDojo</h2>
		</div>
	</div>
</body>
</html>