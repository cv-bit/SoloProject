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
	<div class = container>
		<form action="/login" class="user-form" method="POST" >
			<h2>Login</h2>
			<p>${ error} </p>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="email" name="email" class="form-control" />
			</div>
			<div class="form-group">
		        <label for="password">Password</label>
		        <input type="password" name="password" class="form-control" />		        
		    </div>
		    <input type="submit" value="Login!"/>
		</form>
		<p>Not a member sign up for rewards.</p>
		<form method="GET" action="/register">
    		<input type="button" value="register!"/>
  		</form>
	</div>
</body>
</html>