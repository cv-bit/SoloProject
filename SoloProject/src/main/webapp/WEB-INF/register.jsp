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
</head>
<body>
	<div class="container">
		<h1>welcome to TV dot com</h1>
		<form:form class="user-form" action="/register" method="post" modelAttribute="user">
			<h2>Register</h2>
	 		<div class="form-group">
	    	    <form:label path="firstName">First Name</form:label>
	    	    <form:errors path="firstName"/>
	    	    <form:input class="form-control" path="firstName" />
	    	</div>
	    	<div class="form-group">
	    	    <form:label path="lastName">Last Name</form:label>
	    	    <form:errors path="lastName"/>
	    	    <form:input class="form-control" path="lastName" />
	    	</div>
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
	    	<input type="submit" value="Register!"/>
		</form:form>
	</div>
</body>
</html>