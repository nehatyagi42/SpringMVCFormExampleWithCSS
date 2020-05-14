
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Y0APP</title>
	<spring:url value="/resources/core" var="resource" />
	<link href="${resource}/css/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
<spring:url value="/" var="urlHome"/>
<nav class="navbar  navbar-expand-lg navbar-dark bg-dark">
 	<a class="navbar-brand" href="viewemp">Y0APP</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="viewemp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">ViewOPT</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right:800px;">
         Profile
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">view profile</a>
          <a class="dropdown-item" href="${urlHome}">Logout</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${resource}/js/jquery-3.4.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="${resource}/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="${resource}/js/bootstrap.min.js" crossorigin="anonymous"></script>

</body>
</html>