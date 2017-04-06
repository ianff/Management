<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="login">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.3/angular.min.js"></script>
<script src="resources/js/login.js"></script>
<title>Insert title here</title>
</head>
<body ng-controller="loginController as loginCtrl">
	<h3>{{loginCtrl.message}}</h3>
	<a href="/Management/logout">Click Here to Logout</a>
</body>
</html>