
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling Example</title>
<spring:url value="/resources/core/css/bootstrap.min.css" var="coreCss"></spring:url>
<spring:url value="/resources/core/css/hello.css" var="bootstrapCss"></spring:url>

<link href="${bootstrapCss}"rel="stylesheet">
<link href="${coreCss}" rel="stylesheet">
</head>
<body>
<spring:url value="/" var="urlHome"/>
<spring:url value="/list/add" var="emp" />
<nav class="navbar navbar-inverse ">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="${urlHome}">Spring MVC Form</a>
		</div>
		<div id="navbar">
			<ul class="nav navbar-nav navbar-right">
				
			</ul>
		</div>
	</div>
</nav>
</body>
</html>