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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css">

	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/offcanvas.css" rel="stylesheet">
	<script src="static/js/bootstrap.min.js"></script>

	<title>Login</title>
</head>
<body>	
    <legend style="text-align:center;color:black;">Add book</legend>
	<%@include file="includes/header.jsp" %>

	<div class="container">
	<div class="row row-offcanvas row-offcanvas-right">
		<form:form class="form-horizontal" method="POST" action="login" modelAttribute="loginForm">
			<fieldset>



				<div class="form-group">
					<label class="col-md-4 control-label" for="username" style="color:black; font-size:18px; font-weight: 900;">Username</label>
					<div class="col-md-4">
						<input id="username" name="username" type="text" placeholder="username" class="form-control input-md" value="${loginuser.username}" required/>
						<form:errors path="username" class="error text-danger"></form:errors>
						<c:if test = "${userExist == 'false'}">
							<span class="error text-danger">Such user does not exist! </span>
						</c:if>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="password" style="color:black; font-size:18px; font-weight: 900;">Password</label>
					<div class="col-md-4">
						<input id="password" name="password" type="password" placeholder="password" class="form-control input-md" value="${loginuser.password}" required/>
						<form:errors path="password" class="error text-danger"></form:errors>
						<c:if test = "${passwordMatch == 'false'}">
							<span class="error text-danger">Wrong password! </span>
						</c:if>
					</div>
				</div>

				<div class="form-group" style="text-align:center;">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button type="submit" id="submit" name="submit" style="width:100%;" class="btn btn-success">Login</button>
						<br></br>
						<h5 class="title" style="color: black;">Do not have an acount?</h5>
						<h6 class="title" style="color: black;">Create one in less than 1 minute!</h6>
						<a href="register" class="btn btn-success" style="width:100%;">Create a new user</a>
					</div>
				</div>

			</fieldset>
		</form:form>
	</div>
    </div><!--/.container-->
</body>
</html>