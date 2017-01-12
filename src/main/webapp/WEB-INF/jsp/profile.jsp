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
	
	<title>Register</title>
</head>
<body>	

	<%@include file="includes/header.jsp" %>
	
	<div class="container">
      <div class="row row-offcanvas row-offcanvas-right">
			<%@include file="includes/sidebar.jsp" %>
        <div class="col-xs-12 col-sm-9">
		
		<div align="center">
        	<h1><span class="glyphicon glyphicon-user" aria-hidden="true"></span>   ${user.username}</h1>
        	<h2><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>   ${user.email}</h2>
        </div>
        
        <table border="1">
        	<c:choose>
        		<c:when test="${empty references}">
        			<h3> No references </h3>
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