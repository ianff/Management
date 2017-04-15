<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html ng-app="home">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.3/angular.min.js"></script>
<title>Home Page</title>
</head>
<body ng-controller="homeController as homeCtrl">
	<h3>Home</h3>
	
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl }" method="post" id="logoutForm"></form>
	
	<a href="">Logout</a>
</body>
</html>