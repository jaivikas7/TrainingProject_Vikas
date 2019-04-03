<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SIGN IN SIGN UP FORM</title>

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

	<div class="container-fluid">

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
				}  else if (w != null) {
					%>
					<div class="col-md-4">
				<a href="#" class="btn btn-default btn-gray">Welcome <%= w %></a> 
				<a href="logout" class="btn btn-default btn-gray"><i class="glyphicon glyphicon-log-out"></i></a>
			</div>
				<%
			}
		%>

		</div>

		<div class="row row2">

			<div class="col-md-offset-1 col-md-3">
				<br /> <img src="images/logo.png" class="col-md-5" />
			</div>

			<div class="col-md-6">
				<ul class="nav navbar-nav navbar-right">

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">ELECTRONICS <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 1-1</a></li>
							<li><a href="#">Page 1-2</a></li>
							<li><a href="#">Page 1-3</a></li>
						</li></ul>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">MEN <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 2-1</a></li>
							<li><a href="#">Page 2-2</a></li>
							<li><a href="#">Page 2-3</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">WOMEN <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 3-1</a></li>
							<li><a href="#">Page 3-2</a></li>
							<li><a href="#">Page 3-3</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">BABY &amp; KIDS <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 4-1</a></li>
							<li><a href="#">Page 4-2</a></li>
							<li><a href="#">Page 4-3</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">HOME &amp; FURNITURE <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 5-1</a></li>
							<li><a href="#">Page 5-2</a></li>
							<li><a href="#">Page 5-3</a></li>
						</ul></li>
				</ul>
			</div>
		</div>

		<div class="row row3">
			<div class="col-md-offset-1 col-md-6">
				<h2>EXCEPTION PAGE</h2>
			</div>

			<div class="col-md-4">
				<div class="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.jsp">HOME</a></li>
						<li class="breadcrumb-item active">EXCEPTION PAGE</li>
					</ol>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-offset-1 col-md-10 text-center">
				<hr/>
				
				<h1>Sorry for the inconvenience - The Page you are looking for have Technical Error.</h1>
				
				<h3>Kindly proceed to Home Page or Report this issue to Web Administrator with the Description mentioned below.</h3>
				
				<br/>
					<a href="index.jsp" class="btn btn-default btn-green"><span class="glyphicon glyphicon-home"></span>&nbsp;HOME</a>
					<a href="report" class="btn btn-default btn-green"><span class="fa fa-bug"></span>&nbsp;REPORT</a>
				<br/><br/>
				
				<div class="alert alert-danger text-left">
						<%@ page isErrorPage="true" import="java.io.*" %>
						<%
							StringWriter errors = new StringWriter();
		    				exception.printStackTrace(new PrintWriter(errors));
		    				session.setAttribute("EST", errors.toString());
							out.print(errors.toString());
						 %>
				</div>
				
				<br/>
								
				<hr/>
			</div>
		</div>
	</div>

		


	<div class="container-fluid">
		<div class="row5">
			<div class="row dark">
				<div class="col-md-offset-1 col-md-2">
					<br />
					<br />
					<h5>ABOUT US</h5>
					<p>Prellentesque habitant morbi tristique senectus et netus et
						malesuada fames ac turpls egestas.</p>
					<hr class="white" />
					<h5>JOIN OUR MONTHLY NEWSLETTER</h5>
					<form>
						<div class="input-group">
							<input id="email" type="text" class="form-control" name="email">
							<span class="input-group-addon"><a href=""
								class="glyphicon glyphicon-send"></a></span>
						</div>
					</form>
					<br />
					<br />
				</div>
				<div class="col-md-3">
					<br />
					<br />
					<h5>BLOG</h5>
					<div class="row abcd">
						<div class="col-md-4">
							<img src="images/detailsquare1.jpg" alt="blogcover1" />
						</div>
						<div class="col-md-8">
							<br />
							<h5>BLOG POST NAME</h5>
						</div>
					</div>
					<br />
					<div class="row abcd">
						<div class="col-md-4">
							<img src="images/detailsquare2.jpg" alt="blogcover2" />
						</div>
						<div class="col-md-8">
							<br />
							<h5>BLOG POST NAME</h5>
						</div>
					</div>
					<br />
					<div class="row abcd">
						<div class="col-md-4">
							<img src="images/detailsquare3.jpg" alt="blogcover3" />
						</div>
						<div class="col-md-8">
							<h5>VERY VERY LONG BLOG POST NAME</h5>
						</div>
					</div>
					<br /> <br />
					<br />
				</div>
				<div class="col-md-2">
					<br />
					<br />
					<h5>CONTACT</h5>
					<p>
						<strong>TECHASPECT SOLUTIONS PVT. LTD.</strong>
					</p>
					<p>PLOT NO. 38, N HEIGHTS, 3RD FLOOR</p>
					<p>HITECH CITY PHASE 2, MADHAPUR</p>
					<p>HYDERABAD, TELENGANA - 500081</p>
					<p>
						<strong>INDIA</strong>
					</p>
					<button type="button" class="btn btn-primary btn-green-bg">
						<strong>GO TO CONTACT PAGE</strong>
					</button>
					<br />
					<br />
				</div>
				<div class="col-md-4">
					<br />
					<br />
					<div class="row">
						<img src="images/detailsquare1.jpg" alt="IMG1" /> <img
							src="images/detailsquare2.jpg" alt="IMG2" /> <img
							src="images/detailsquare3.jpg" alt="IMG3" />
					</div>
					<div class="row">
						<br />
					</div>
					<div class="row">
						<img src="images/detailsquare3.jpg" alt="IMG4" /> <img
							src="images/detailsquare1.jpg" alt="IMG5" /> <img
							src="images/detailsquare2.jpg" alt="IMG6" />
					</div>
				</div>
			</div>
		</div>

		<div class="row dark1">
			<div class="col-md-offset-1 col-md-6">
				<h5 class="text-white">&nbsp;&nbsp;&#169; 2018 TechAspect
					Solutions Private Limited.</h5>
			</div>
		</div>


	</div>


	<!-- SCRIPTS BEGIN -->

	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>

	<!-- SCRIPTS END -->

</body>
</html>