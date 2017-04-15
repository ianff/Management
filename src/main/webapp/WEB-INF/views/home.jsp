<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html ng-app="home">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.3/angular.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Home Page</title>
</head>
<body ng-controller="homeController as homeCtrl">
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">College Management</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#/">Home</a></li>
			<li><a href="" ng-click="homeCtrl.logout()">Logout</li>
		</ul>
	</div>
	</nav>

	<%-- 	<c:url value="/j_spring_security_logout" var="logoutUrl" /> --%>
	<%-- 	<form action="${logoutUrl }" method="post" id="logoutForm"></form> --%>

	<%-- 	<c:if test="${pageContext.request.userPrincipal.name != null }"> --%>
	<!-- 		<h2> -->
	<%-- 			Welcome: ${pageContext.request.userPrincipal.name } | --%>
	<!-- 			<a href="">Logout</a> -->
	<!-- 		</h2> -->
	<%-- 	</c:if> --%>
</body>
</html>