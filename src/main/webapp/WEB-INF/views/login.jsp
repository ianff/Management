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
<script src="resources/js/login.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
</head>
<body ng-controller="loginController as loginCtrl">
	<div class="container">
		<h3>Login</h3>
		
<%-- 		<c:if test="${not empty error}"> --%>
<%-- 			<div class="error">${error}</div> --%>
<%-- 		</c:if> --%>
<%-- 		<c:if test="${not empty msg}"> --%>
<%-- 			<div class="msg">${msg}</div> --%>
<%-- 		</c:if> --%>
<%-- 		<form method="post" action="<c:url value='j_spring_security_check' />"> --%>
<!-- 			<div class="form-group"> -->
<!-- 				<label>Username:</label> -->
<!-- 				<input type="text" class="form-control" name='username'></td> -->
<!-- 			</div> -->
<!-- 			<div class="form-group"> -->
<!-- 				<label>Password:</label> -->
<!-- 				<input type="password" class="form-control" name='password'></td> -->
<!-- 			</div> -->
<!-- 			<button type="submit" class="btn btn-default" >Submit</button> -->
<!-- 		</form> -->
		
		<div class="alert alert-danger" ng-show="loginCtrl.error">
			There was a problem logging in. Please try again.
		</div>
<!-- 		<form role="form" ng-submit="loginCtrl.login()" > -->
		<form role="form" method="post" action="<c:url value='j_spring_security_check' />" ng-submit="loginCtrl.login()" >
			<div class="form-group">
				<label for="username">Username:</label>
				<input type="text" class="form-control" id='username' name="username" ng-model="loginCtrl.credentials.username" />
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" class="form-control" id='password' name="password" ng-model="loginCtrl.credentials.password" />
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>