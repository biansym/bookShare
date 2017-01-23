<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>                             
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
	<legend style="text-align:center;color:black;">Share book</legend>
	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-md-12 grid">
			<legend style="color:black;">Someone wants this books</legend>
			<c:forEach var="book" items="${books}">

	           <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 center-block">
                <div class="center-block thumbnail .clearfix" style="background-color:inherit;background-image:linear-gradient(to bottom, #CAA639 0%, #FFE781 100%); background-size: cover; overflow: hidden; float:center; width:240px; height:450px;">

	                 <div class="center-block" style="text-align:center;">

                     	<c:choose>
	                 		<c:when test="${fn:length(book.image) < 100}">
	                 			<img src="http://img-aws.ehowcdn.com/615x200/cme/cme_public_images/www_ehow_com/photos.demandstudios.com/146/217/fotolia_554582_XS.jpg" alt="">
	                 		</c:when>
	                 		<c:otherwise>
	                 			<img src="${pageContext.request.contextPath}/imageController/${book.bookid}" class="img-thumbnail" width="150" height="200"/>
	                 		</c:otherwise>
                 		</c:choose>
	                    <div class="caption">
	                        <h4><a href="viewbook?id=${book.bookid}">${book.bookname}</a></h4>
	                        <h4>${book.author}</h4>
	                        <p>${book.comment}</p>
	                        <p>${book.username}</p>
	                        <div class="text-right col-sm-12">
		                        <a class="btn btn-success" href="acceptbook?id=${book.requestid}" style="width:100%">
		                        	Accept
		                        </a>
		                    </div>
		                    <div class="text-right col-sm-12" style="margin-top:2px;">
		                        <a class="btn btn-danger" href="rejectbook?id=${book.requestid}"  style="width:100%">
		                        	Reject
		                        </a>
		    				</div>
	                    </div>
	                 </div>

	                 </div>
                </div>
	     	</c:forEach>
	     	</div>
	     	</div>
	     	<div class="row row-offcanvas row-offcanvas-right">

            <div class="col-md-12 grid">
	     	<legend style="color:black;">Books that I shared</legend>
	     	<c:forEach var="takenbook" items="${takenbooks}">

	           <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 center-block">
                <div class="center-block thumbnail .clearfix" style="background-color:inherit;background-image:linear-gradient(to bottom, #CAA639 0%, #FFE781 100%); background-size: cover; overflow: hidden; float:center; width:240px; height:450px;">

	                 <div class="center-block" style="text-align:center;">


                     	<c:choose>
							<c:when test="${fn:length(book.image) < 100}">
								<img src="http://img-aws.ehowcdn.com/615x200/cme/cme_public_images/www_ehow_com/photos.demandstudios.com/146/217/fotolia_554582_XS.jpg" alt="">
							</c:when>
	                 		<c:otherwise>
	                 			<img src="${pageContext.request.contextPath}/imageController/${takenbook.bookid}" class="img-thumbnail" width="150" height="200"/>
	                 		</c:otherwise>
                 		</c:choose>
	                    <div class="caption">
	                        <h4><a href="viewbook?id=${takenbook.bookid}">${takenbook.bookname}</a></h4>
	                        <h4>${takenbook.bookauthor}</h4>
	                        <p><a href="profile?username=${sessionScope.logged_user}">${takenbook.username}</a></p>

	                       <c:if test="${takenbook.leftfeedback == 'no'}">
	                        	<a class="btn btn-success" href="leavereference?id=${takenbook.takenbookid}" >
	                        		Leave feedback!
	                        	</a>
	                       </c:if>
	                       <c:if test="${takenbook.returned == 'no'}">
	                        	<a class="btn btn-success" href="returned?id=${takenbook.takenbookid}" >
	                        		Returned
	                        	</a>
	                       </c:if>
	                     </div>
	                </div>

	           </div>
              </div>
	     	</c:forEach>
	     	</div>
        </div>
		</div>
    </div><!--/.container-->
</body>
</html>