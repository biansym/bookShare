<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>                             
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/offcanvas.css" rel="stylesheet">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
	
	<title>Book</title>
</head>
<body>	

	<%@include file="includes/header.jsp" %>

	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-md-12">
				<div class="col-sm-12 col-lg-12 col-md-12" style="text-align:center;">
					<div class="center-block thumbnail .clearfix" style="background-color:#E8FFFB; background-size: cover; overflow: hidden; float:center; width:240px; height:280px;">
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
						<div class="caption" style="color: black;">
							<h4>${book.name}</h4>
							<h4>${book.author}</h4>
							<p>${book.description}</p>
							<h3><a href="profile?username=${username}">${username}</a></h3>
							<br>
							<label for="comment" style="color: black;">Comment:</label>
						</div>
						<div class="col-lg-12">
							<div class="form-group col-lg-9">
								<textarea class="form-control" id="comment" name="comment" style="height:100px;"></textarea>
							</div>
							<div class="form-group col-lg-3">
								<c:if test="${!empty sessionScope.logged_user}">
									<button type="submit" id="submit" name="submit" class="btn btn-success" style="width:100%; height:100px;">I want it!</button>
								</c:if>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div><!--/.container-->
</body>
</html>