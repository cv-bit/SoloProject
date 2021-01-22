<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>SoloProject Pizza place</title>
<link rel="stylesheet" href="css/menu.css" />
</head>
<body>
	<div class="container">
		<img src="img/pizzaLogo.jpg" alt="picture of a pizza" class="logo">
		<div id = head>
			<a href="/cart"><img src="img/cart.jfif" alt="cart-logo" class="cart"></a>
			<h1>pizza place</h1>
		</div>
		<div id ="nav">
			<a href="/">| Home |</a>
		</div>
		
			<table class="table table-hover">
				<thead>
					<tr>
						<th>name</th>
						<th>description</th>
						<th>price</th>
					</tr>
				</thead>
				<tbody>
        		<c:forEach items="${allItems}" var="item">   		
        	    	<tr>
        	    		<td><a href="#" class="menu">${item.name}</a></td>
                		<td>${item.description}</td>
                		<td>${item.price}</td>
        	    	</tr>
        		</c:forEach>
        		</tbody>
   			 </table>
		<div class="footer">
			<a href="https://github.com/cv-bit/SoloProject.git"><img src="img/github.png" alt="github logo" class="github"></a>
			<h2>@Cameron.CodingDojo</h2>
		</div>
	</div>
</body>
</html>