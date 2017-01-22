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
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/offcanvas.css" rel="stylesheet">
	<script src="static/js/bootstrap.min.js"></script>
	
	<title>Register</title>
</head>
<body>	

	<%@include file="includes/header.jsp" %>
	<legend style="text-align:center;color:white;">My profile</legend>



	<div class="container">
      <div class="row row-offcanvas row-offcanvas-right">
        <div class="col-sm-12">
		
		<div align="center">
        	<h1 style="color: white;"><span class="glyphicon glyphicon-user" aria-hidden="true" style="color: white;"></span>   ${user.username}</h1>
        	<h2 style="color: white;"><span class="glyphicon glyphicon-envelope" aria-hidden="true" style="color: white;"></span>   ${user.email}</h2>
        </div>
        
        <table border="1">
        	<c:choose>
        		<c:when test="${empty references}">
        			<h3 style="color: white;"> No references </h3>
        		</c:when>
        		<c:otherwise>
	        		<c:forEach var="reference" items="${references}">
		        		<div class="alert alert-success" role="alert">
				        	<a href="profile?username=${reference.fromuser}"><b>${reference.fromuser}</b></a>  | ${reference.review}
						</div>
	        		</c:forEach>
        		</c:otherwise>
        	</c:choose>
        </table>
         
        </div>
 
      </div><!--/row-->


    </div><!--/.container-->
</body>
</html>