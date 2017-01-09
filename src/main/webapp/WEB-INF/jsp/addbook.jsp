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
		<form:form class="form-horizontal" method="POST" action="addbook" modelAttribute="addBookForm" enctype="multipart/form-data">
			<fieldset>

			<legend>Add book</legend>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="name">Book name</label>  
			  <div class="col-md-4">
				  <input id="name" name="name" type="text" placeholder="book name" class="form-control input-md" value="${book.name}" required/>    
				  <form:errors path="name" class="error text-danger"></form:errors>
			  </div>
			</div>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="author">Author</label>  
			  <div class="col-md-4">
				  <input id="author" name="author" type="text" placeholder="author" class="form-control input-md" value="${book.author}" required/>  
				  <form:errors path="author" class="error text-danger"></form:errors>
			  </div>
			</div>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="category">Category</label>  
			  <div class="col-md-4">
				  <select class="selectpicker" id="category" name="category">
					  <c:forEach var="category" items="${categories}">
	     		<			<option value="${category.id}" ${category.id == book.category ? 'selected="selected"' : ''}> ${category.name}</option>
	     			  </c:forEach>
					</select>
				  <form:errors path="category" class="error text-danger"></form:errors>
			  </div>
			</div>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" for="description">Description</label>  
			  <div class="col-md-4">
			  	<input id="description" name="description" type="text" placeholder="description" class="form-control input-md" value="${book.description}"/>
			  	<form:errors path="description" class="error text-danger"></form:errors> 
			  </div>
			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="image">Choose image</label> 
			  <div class="col-md-4">
			  	<input id="image" name="image" type="file" accept="image/*" value="${book.image}"/>
<%--			  	<form:errors path="image" class="error text-danger"></form:errors>  --%>
			  </div>
			</div>
			
			<c:if test="${not empty bookError}">
				<div class="form-group">
					<label class="col-md-4 control-label" for="image"></label> 
				  <div class="col-md-4" style="color:red">
				  		${bookError}
				  </div>
				</div>
			</c:if>

			<div class="form-group">
			  <label class="col-md-4 control-label" for="submit"></label>
			  <div class="col-md-4">
			    <button type="submit" id="submit" name="submit" class="btn btn-success">Add book</button>
			    <button type="reset"  class="btn btn-warning">Reset</button>
			  </div>
			</div>
			
			</fieldset>
		</form:form>
         
        </div><!--/.col-xs-12.col-sm-9-->
 
      </div><!--/row-->


    </div><!--/.container-->
</body>
</html>