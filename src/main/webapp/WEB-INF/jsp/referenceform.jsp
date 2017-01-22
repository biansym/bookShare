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
	<legend style="text-align:center;color:white;">Reference</legend>
	<div class="container">
      <div class="row row-offcanvas row-offcanvas-right">
			<%@include file="includes/sidebar.jsp" %>
        <div class="col-xs-12 col-sm-9">
		<form:form class="form-horizontal" method="POST" action="submitreference" >
			<fieldset>

			<legend>Leave reference</legend>
			

				<input type="hidden" name="takenbookid" id="takenbookid" value="${takenbookid}"/>

				<div class="form-group">
					<label>Feedback: </label>
					<div>
					<input id="review" name="review" type="text" placeholder="How would you rate this user's reliability?" class="form-control input-md" required/>  
					</div>
				</div>
				

			    <button type="submit" id="submit" name="submit" class="btn btn-success">Submit</button>

			</fieldset>
		</form:form>
         
        </div><!--/.col-xs-12.col-sm-9-->
 
      </div><!--/row-->


    </div><!--/.container-->
</body>
</html>