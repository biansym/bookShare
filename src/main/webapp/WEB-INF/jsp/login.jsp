<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>                             
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/offcanvas.css" rel="stylesheet">
	<script src="static/js/bootstrap.min.js"></script>
	
	<link href="static/css/background.css" rel="stylesheet">
	
	<title>Login</title>
</head>
<body>	

	<%@include file="includes/header.jsp" %>
	
	<div class="container">
		<form:form class="form-horizontal" method="POST" action="login" modelAttribute="loginForm">
			<fieldset>

			<legend>Login</legend>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="username">Username</label>  
			  <div class="col-md-4">
				  	<input id="username" name="username" type="text" placeholder="username" class="form-control input-md" value="${loginuser.username}" required/>    
				  	<form:errors path="username" class="error text-danger"></form:errors>
				  	<c:if test = "${userExist == 'false'}">
				  		<span class="error text-danger">Such user does not exist! </span>
				</c:if>
		  	  </div>
			</div>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="password">Password</label>  
			  <div class="col-md-4">
			  	<input id="password" name="password" type="password" placeholder="password" class="form-control input-md" value="${loginuser.password}" required/>
			  	<form:errors path="password" class="error text-danger"></form:errors> 
			  	<c:if test = "${passwordMatch == 'false'}">
				  		<span class="error text-danger">Wrong password! </span>
				</c:if>
			  </div>
			</div>

			<div class="form-group">
			  <label class="col-md-4 control-label" for="submit"></label>
			  <div class="col-md-4">
			    <button type="submit" id="submit" name="submit" class="btn btn-success">Login</button>
			    <a href="register" class="btn btn-success">New user</a>
			  </div>
			</div>
			
			</fieldset>
		</form:form>
    </div><!--/.container-->
</body>
</html>