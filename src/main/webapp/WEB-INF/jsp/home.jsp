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

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css">

	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/offcanvas.css" rel="stylesheet">
	<script src="static/js/bootstrap.min.js"></script>
	<title>Book share!</title>
</head>
<body>

	<%@include file="includes/header.jsp" %>
    <legend style="text-align:center;color:black;">Books</legend>

	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-md-12 grid">
				<c:choose>
					<c:when test="${empty books}">
						<h1 style="color:black;"> No books </h1>
					</c:when>
					<c:otherwise>
						<c:forEach var="book" items="${books}" varStatus="theCount">
    						<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 center-block">
								<div class="center-block thumbnail .clearfix" style="background-color:inherit;background-image:linear-gradient(to bottom, #CAA639 0%, #FFE781 100%); background-size: cover; overflow: hidden; float:center; width:240px; height:350px;">
									<c:set var="imageSrc" value="${pageContext.request.contextPath}/imageController/${book.id}"/>
									<c:choose>
										<c:when test="${empty book.image}">
										    <a href="viewbook?id=${book.id}">
											<img src="http://placehold.it/150x200" alt=""/>
											</a>
										</c:when>
										<c:otherwise>
										    <a href="viewbook?id=${book.id}">
											<img src="${pageContext.request.contextPath}/imageController/${book.id}" class="img-thumbnail" width="150" height="200"/>
											</a>
										</c:otherwise>
									</c:choose>
									<div class="caption">
										<h4 style="font-size:18px; font-weight: 900;"><a href="viewbook?id=${book.id}">${book.name}</a></h4>
										<h4 style="font-size:12px; font-weight: 900; color: black;">${book.author}</h4>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>

			</div>
		</div>
	</div><!--/.container-->


<script>
    // init Masonry
    var $grid = $('.grid').masonry({
        // options...
        itemSelector: '.grid-item',
        columnWidth: 285
    });
    // layout Masonry after each image loads
    $grid.imagesLoaded().progress( function() {
        $grid.masonry('layout');
    });
</script>
</body>
</html>