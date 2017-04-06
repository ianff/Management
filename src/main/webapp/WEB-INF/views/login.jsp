<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="login">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.3/angular.min.js"></script>
</head>
<body>
	<div class="container" ng-controller="loginController">
		<h3>Login</h3>
		<form method="post">
			<div class="form-group">
				<label>Username:</label>
				<input type="text" ng-model="user.username" class="form-control"></td>
			</div>
			<div class="form-group">
				<label>Password:</label>
				<input type="password" ng-model="user.password" class="form-control"></td>
			</div>
			<button type="submit" class="btn btn-default" ng-click="submit()">Submit</button>
		</form>
	</div>
</body>
</html>