<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- BOOTSTRAP CSS -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css"
	type="text/css">

<!-- SITE CSS -->
<link rel="stylesheet" href="css/custom.css" type="text/css">

<!-- FONT-AWESOME CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

<div class="row dark">

			<div class="col-md-offset-1 col-md-6">
				<a class="btn btn-default btn-gray">Contact +91 40 6621 7777</a>
			</div>
			<%
				String w = (String) session.getAttribute("log");

				if (w == null) {
			%>
			<div class="col-md-4">
				<a href="SignInSignUpForms.jsp" class="btn btn-default btn-gray"><i
					class="glyphicon glyphicon-log-in"></i>&nbsp;&nbsp;SIGN IN</a> <a
					href="SignInSignUpForms.jsp" class="btn btn-default btn-gray"><i
					class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;SIGN UP</a> <a
					href="#" class="btn btn-default btn-gray"><i
					class="fa fa-facebook"></i></a> <a href="#"
					class="btn btn-default btn-gray"><i class="fa fa-twitter"></i></a>
				<a href="#" class="btn btn-default btn-gray"><i
					class="fa fa-google-plus"></i></a> <a href="#"
					class="btn btn-default btn-gray"><i class="fa fa-envelope"></i></a>
			</div>
			<%
				} else if (w != null) {
					%>
						<div class="col-md-4">
				<a href="#" class="btn btn-default btn-gray">Welcome <%= w %></a> 
				<a href="logout" class="btn btn-default btn-gray"><i class="glyphicon glyphicon-log-out"></i></a>
			</div>
					<%
				}
			%>

		</div>

	<!-- SCRIPTS BEGIN -->

	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	<script src="js/countries.js"></script>
	
	<!-- SCRIPTS END -->

</body>
</html>