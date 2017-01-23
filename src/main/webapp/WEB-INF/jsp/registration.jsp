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
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/offcanvas.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>

	<title>Register</title>
</head>
<body>	

	<%@include file="includes/header.jsp" %>

	<div class="container">
      <div class="row row-offcanvas row-offcanvas-right">

		<form:form class="form-horizontal" method="POST" action="register" modelAttribute="userForm">
			<fieldset>

			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="username" style="color:black;">Username</label>
			  <div class="col-md-4">
				  	<input id="username" name="username" type="text" placeholder="username" class="form-control input-md" value="${user.username}" required/>    
				  	<form:errors path="username" class="error text-danger"></form:errors>
				  	<c:if test = "${userExist == 'true'}">
				  		<span class="error text-danger"> User with such username is already exist! </span>
				  	</c:if>
		  	  </div>
			</div>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="name" style="color:black;">First name</label>
			  <div class="col-md-4">
				  <input id="name" name="name" type="text" placeholder="first name" class="form-control input-md" value="${user.name}" required/>    
				  <form:errors path="name" class="error text-danger"></form:errors>
			  </div>
			</div>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="surname" style="color:black;">Last name</label>
			  <div class="col-md-4">
				  <input id="surname" name="surname" type="text" placeholder="last name" class="form-control input-md" value="${user.surname}" required/>  
				  <form:errors path="surname" class="error text-danger"></form:errors>
			  </div>
			</div>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="email" style="color:black;">Email</label>
			  <div class="col-md-4">
				  <input id="email" name="email" type="email" placeholder="email" class="form-control input-md" value="${user.email}" required/> 
				  <form:errors path="name" class="error text-danger"></form:errors>
			  </div>
			</div>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="email" style="color:black;">Password</label>
			  <div class="col-md-4">
			  	<input id="password" name="password" type="password" placeholder="password" class="form-control input-md" value="${user.password}" required/>
			  	<form:errors path="password" class="error text-danger"></form:errors> 
			  </div>
			</div>

			<div class="form-group">
			  <label class="col-md-4 control-label" for="submit"></label>
			  <div class="col-md-4" style="text-align:center;">
			    <button type="submit" id="submit" name="submit" style="width:100%;" class="btn btn-success">Register</button>
			    <br></br>
			    <button type="reset" style="width:100%" class="btn btn-warning">Reset</button>
			    <br></br>
                <h5 class="title" style="color: black;">Have an acount?</h5>
                <h6 class="title" style="color: black;">Login!</h6>
                <a href="login" class="btn btn-success" style="width:100%;">Login</a>
			  </div>
			</div>
			
			</fieldset>
		</form:form>
         
        </div><!--/.col-xs-12.col-sm-9-->
 
      </div><!--/row-->


    </div><!--/.container-->
</body>
</html>