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
	
	<title>My books!</title>
</head>
<body>	

	<%@include file="includes/header.jsp" %>
	<legend style="text-align:center;color:white;">Book</legend>
	<div class="container">
      <div class="row row-offcanvas row-offcanvas-right">
      	<div class="col-md-3 sidebar-offcanvas" id="sidebar">

		</div>
		<div class="col-md-9">
	     		<div class="col-sm-4 col-lg-4 col-md-4">
	                 <div class="thumbnail" >
	                 	<c:choose>
	                 		<c:when test="${pageContext.request.contextPath}/imageController/${book.id} == null">
	                 			<img src="http://placehold.it/150x200" alt="">
	                 		</c:when>
	                 		<c:otherwise>
	                 			<img src="${pageContext.request.contextPath}/imageController/${book.id}" class="img-thumbnail" width="150" height="200"/>
	                 		</c:otherwise>
	                 	</c:choose>
	                 </div>

	                     <form method="POST" action="getbook" name="getBookForm" id="getBookForm">
	                     	<input type="hidden" id="userid" name="userid" value="${sessionScope.userid}"/>
	                     	<input type="hidden" id="bookid" name="bookid" value="${book.id}"/>
		                    <div class="caption" style="color: white;">
		                        <h4>${book.name}</h4>
		                        <h4>${book.author}</h4>
		                        <p>${book.description}</p>
		                        <h3><a href="profile?username=${username}">${username}</a></h3>
		                    </div>
		                    <div class="form-group">
								  <label for="comment"  style="color: white;">Comment:</label>
								  <textarea class="form-control" rows="5" id="comment" name="comment"></textarea>
							</div>
							
							<c:if test="${!empty sessionScope.logged_user}">
							<div class="form-group">
								<label class="col-md-4 control-label" for="submit"></label>
								  <div class="col-md-4">
								    <button type="submit" id="submit" name="submit" class="btn btn-success">I want it!</button>
								  </div>
							</div>
							</c:if>
	                     </form>
	             </div>
		</div>
       </div>
    </div><!--/.container-->
</body>
</html>