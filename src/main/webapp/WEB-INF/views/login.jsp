<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html ng-app="login">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.3/angular.min.js"></script>
</head>
<body>
	<div class="container">
		<h3>Login</h3>
		
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<form method="post" action="<c:url value='j_spring_security_check' />">
			<div class="form-group">
				<label>Username:</label>
				<input type="text" class="form-control" name='username'></td>
			</div>
			<div class="form-group">
				<label>Password:</label>
				<input type="password" class="form-control" name='password'></td>
			</div>
			<button type="submit" class="btn btn-default" >Submit</button>
		</form>
	</div>
</body>
</html>