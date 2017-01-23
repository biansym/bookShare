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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css">

	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/offcanvas.css" rel="stylesheet">
	<script src="static/js/bootstrap.min.js"></script>

	<title>About</title>
</head>
<body style="background-color: #cea925;">

	<%@include file="includes/header.jsp" %>

	<div class="container" style="width:100%">
		<div class="row row-offcanvas row-offcanvas-right">
			<div>



<!--Do you want to read a book -->
				<section class="hero mod-join" style="min-height:300px; background-position: center center; text-align: center; margin: 0px; padding: 0 0 0 0;">
					<div class="hero-content" style="min-height:300px; margin-left: auto; margin-right: auto; width:100%;">
						<br></br>

						<h1 class="hero-content-title mod-tight" style="font-weight:bold;front-size: 1em; margin: 0 0 0.75em 0; color: black;font-size: 34px;front-weight: lighter;line-height: 1.1;">
							Do you want to read a book, but is too expensive?
						</h1>
                        <br>
						<h1 class="hero-content-subtitle" style="margin: 0 0 0.75em 0; color: black; font-size: 30px;font-weight:1.1;margin-top: 5px;display: block;font-size: 2em;-webkit-margin-before: 0.83em;-webkit-margin-after: 0.83em;-webkit-margin-start: 0px;-webkit-margin-end: 0px;font-weight: bold;">
							Don`t worry, we have the solution!!!
						</h1>
						<br></br>
						<a type="button" href="login" class="btn btn-primary btn-lg btn-block register-button"
						    style="box-shadow: 1px 1px 1px black;background-color:green;border-color: green;color: white;margin-left: auto;margin-right: auto;width: 90%;">Login</a>
						<br></br>
						<h5 style="color:black; font-size:18px; font-weight: 900;"> Be a part of the family in less than 1 minute! </h5>
						<a type="button" href="register" class="btn btn-primary btn-lg btn-block newacount-button" style="box-shadow: 1px 1px 1px black; background-color:green;border-color: green;color: white;margin-left: auto;margin-right: auto;width: 90%;">Create new acount</a>
                        <br></br><br></br>
					</div>
				</section>

<!-- How it works -->
				<section class="photo mod-join" style="background-repeat: no-repeat;background-size: cover;display: flex;flex-direction: column;min-height: 300px;align-items: center;background-color: #FFA500;background-position: center center;text-align: center;margin: 0px;padding: 0 0 0 0;">
					<div class="photo-content" style="margin-left: auto;margin-right: auto;width: 100%;">
						<br></br><br></br>
						<h1 class="photo-content-title mod-tight" style="color: white;font-size: 34px;front-weight:lighter;line-height: 1.1;margin-bottom: 10px;margin-top: 10px;">
							HOW IT WORKS?
						</h1>
						<br></br>
						<hr class="mod-short mod-white" style="border: 1px solid;width: 50%;color: white;">
						<br></br>
						<div class="col-md-12">
							<div class="col-md-3 col-sm-12">
								<div class="info-box mod-orange" style="background-color: #ff855c;box-shadow: 0 3px 5px rgba(0,0,0,0.2);">
									<article>
										<span class="glyphicon glyphicon-search" style="font-size: 50px;padding-top: 10px" aria-hidden="true"></span>
										<hr class="mod-shorter mod-white" style="border: 1px solid;color: blue;width: 20%;">
										<p style="padding-bottom: 10px;"> See the books in booksharing </p>
									</article>
								</div>
							</div>
							<div class="col-md-3 col-sm-12">
								<div class="info-box mod-orange" style="background-color: #ff855c;box-shadow: 0 3px 5px rgba(0,0,0,0.2);">
									<article>
										<span class="glyphicon glyphicon-envelope" style="font-size: 50px;padding-top: 10px" aria-hidden="true"></span>
										<hr class="mod-shorter mod-white" style="border: 1px solid;color: blue;width: 20%;">
										<p style="padding-bottom: 10px;"> Get the mail of the owner </p>
									</article>
								</div>
							</div>
							<div class="col-md-3 col-sm-12">
								<div class="info-box mod-orange" style="background-color: #ff855c;box-shadow: 0 3px 5px rgba(0,0,0,0.2);">
									<article>
										<span class="glyphicon glyphicon-eye-open" style="font-size: 50px;padding-top: 10px" aria-hidden="true"></span>
										<hr class="mod-shorter mod-white" style="border: 1px solid;color: blue;width: 20%;">
										<p style="padding-bottom: 10px;"> Meet the owner and get the book </p>
									</article>
								</div>
							</div>
							<div class="col-md-3 col-sm-12">
								<div class="info-box mod-orange" style="background-color: #ff855c;box-shadow: 0 3px 5px rgba(0,0,0,0.2);">
									<article>
										<span class="glyphicon glyphicon-book" style="font-size: 50px;padding-top: 10px" aria-hidden="true"></span>
										<hr class="mod-shorter mod-white" style="border: 1px solid;color: blue;width: 20%;">
										<p style="padding-bottom: 10px;"> and... Enjoy the book! </p>
									</article>
								</div>
								<br></br>
								<br></br>
							</div>
						</div>
					</div>
				</section>

			</div>
		</div><!--/row-->
    </div><!--/.container-->
</body>
</html>