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
<link rel="stylesheet" href="/css/register.css" />
<c:url value="/img/pizzalogo.jpg" var="Logo"/>
</head>
<body>
	<div class="container">
		<img src="img/pizzaLogo.jpg" alt="picture of a pizza" class="logo">
		<div id = head>
			<h1>pizza place</h1>
		</div>
		<div id ="nav">
			
		</div>
		<h2>Welcome Sign up and earn rewards!</h1>
		<div class="RE">
			<form:form class="user-form" action="/register" method="post" modelAttribute="user">
				<h2>Register</h2>
		    	<div class="form-group">
		    	    <form:label path="email">Email</form:label>
		    	    <form:errors path="email"/>
		    	    <form:input type="email" class="form-control" path="email" />
		    	</div>
		    	 <div class="form-group">
		    	    <form:label path="password">Password</form:label>
		    	    <form:errors path="password"/>
		    	    <form:password class="form-control" path="password" />
		    	</div>
		    	<div class="form-group">
		        	<form:label path="passwordConfirmation">Confirm Password</form:label>
		        	<form:errors path="passwordConfirmation"/>
		        	<form:password class="form-control" path="passwordConfirmation" />
		    	</div>
		    	<input type="submit" value="Register!" class="button"/>
			</form:form>
		</div>
		<div class="footer">
			
		</div>	
	</div>
</body>
</html>