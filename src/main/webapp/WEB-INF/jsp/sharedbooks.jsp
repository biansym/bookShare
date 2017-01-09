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
	
	<title>My books!</title>
</head>
<body>	

	<%@include file="includes/header.jsp" %>
	
	<div class="container">
      <div class="row row-offcanvas row-offcanvas-right">
      	<div class="col-md-3 sidebar-offcanvas" id="sidebar">
		     <div class="list-group">
		     	<c:forEach var="category" items="${categories}">
		     		<a href="#" class="list-group-item">${category.name}</a>
		     	</c:forEach>
		     </div>
		</div>
		
		<div class="col-md-9">
		
			<c:forEach var="book" items="${books}">
	     		<div class="col-sm-4 col-lg-4 col-md-4">
	                 <div class="thumbnail">
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
	                        <p>${book.username}</p>
	                        <div class="text-right">
		                        <a class="btn btn-success" href="acceptbook?id=${book.requestid}" > 
		                        	Accept
		                        </a>
		                        <a class="btn btn-danger" href="rejectbook?id=${book.requestid}" > 
		                        	Reject
		                        </a>
		    				</div>
	                    </div>
	                 </div>
	             </div>
	     	</c:forEach>
	     	
	     	<c:forEach var="takenbook" items="${takenbooks}">
	     		<div class="col-sm-4 col-lg-4 col-md-4">
	                 <div class="thumbnail">
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
	     	</c:forEach>
	     	
		</div>
       </div>
    </div><!--/.container-->
</body>
</html>