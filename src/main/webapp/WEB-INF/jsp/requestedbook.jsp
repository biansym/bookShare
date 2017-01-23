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
	
	<title>My books!</title>
</head>
<body>	

	<%@include file="includes/header.jsp" %>

	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">


			<div class="col-md-12 grid">
				<legend style="color:black;">I ask for this books</legend>
				<c:forEach var="book" items="${books}">
				   <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 center-block">
					<div class="center-block thumbnail .clearfix" style="background-color:#E8FFFB; background-size: cover; overflow: hidden; float:center; width:240px; height:450px;">
                        <div class="center-block" style="text-align:center;">
   							<c:choose>
								<c:when test="${pageContext.request.contextPath}/imageController/${book.bookid} == null">
									<img src="http://placehold.it/150x200" alt="">
								</c:when>
								<c:otherwise>
									<img src="${pageContext.request.contextPath}/imageController/${book.bookid}" class="img-thumbnail" width="150" height="200"/>
								</c:otherwise>
							</c:choose>
							<div class="caption">
								<h4><a href="viewbook?id=${book.bookid}">${book.bookname}</a></h4>
								<h4>${book.author}</h4>
								<p>${book.comment}</p>
								<p>${book.ownerusername}</p>
								<div class="text-right">
									<a class="btn btn-danger" href="rejectrequest?id=${book.requestid}" style="width:100%;">
										Cancel
									</a>
								</div>
							</div>
						 </div>
					 </div>
					 </div>
				</c:forEach>
			</div>
			<div class="col-md-12">
				<legend style="color:black;">I have read this books</legend>
				<c:forEach var="takenbook" items="${takenbooks}">
		            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 center-block">
                   					<div class="center-block thumbnail .clearfix" style="background-color:#E8FFFB; background-size: cover; overflow: hidden; float:center; width:240px; height:450px;">
                                           <div class="center-block" style="text-align:center;">
                      							<c:choose>
								<c:when test="${pageContext.request.contextPath}/imageController/${takenbook.bookid} == null">
									<img src="http://placehold.it/150x200" alt="">
								</c:when>
								<c:otherwise>
									<img src="${pageContext.request.contextPath}/imageController/${takenbook.bookid}" class="img-thumbnail" width="150" height="200"/>
								</c:otherwise>
							</c:choose>
							<div class="caption">
								<h4><a href="viewbook?id=${takenbook.bookid}">${takenbook.bookname}</a></h4>
								<h4>${takenbook.bookauthor}</h4>
								<p><a href="profile?username=${sessionScope.logged_user}">${takenbook.username}</a></p>

								<c:if test="${takenbook.returned == 'yes'}">
									Returned!
							   </c:if>
								<c:if test="${takenbook.returned == 'no'}">
									Not returned!
							   </c:if>
							   <c:if test="${takenbook.leftfeedback == 'no'}">
									<a class="btn btn-success" href="leavereference?id=${takenbook.takenbookid}" >
										Leave feedback!
									</a>
							   </c:if>
							</div>
						 </div>
					</div>
				    </div>
				</c:forEach>
			 </div>

		</div>
    </div><!--/.container-->
</body>
</html>