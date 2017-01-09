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
		<form:form class="form-horizontal" method="POST" action="submitreference" >
			<fieldset>

			<legend>Leave reference</legend>
			
				<input type="hidden" name="takenbookid" id="takenbookid" value="${takenbookid}"/>
				Feedback:
				<input id="review" name="review" type="text" placeholder="author" class="form-control input-md" required/>  

			    <button type="submit" id="submit" name="submit" class="btn btn-success">Submit</button>

			</fieldset>
		</form:form>
         
        </div><!--/.col-xs-12.col-sm-9-->
 
      </div><!--/row-->


    </div><!--/.container-->
</body>
</html>