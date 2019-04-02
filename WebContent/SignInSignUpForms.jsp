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
<% String w = (String)session.getAttribute("log");
	
		if(w==null)
		{
	%>
			<div class="col-md-4">
				<a href="#" class="btn btn-default btn-gray"><i
					class="glyphicon glyphicon-log-in"></i>&nbsp;&nbsp;SIGN IN</a> <a
					href="#" class="btn btn-default btn-gray"><i
					class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;SIGN UP</a> <a
					href="#" class="btn btn-default btn-gray"><i
					class="fa fa-facebook"></i></a> <a href="#"
					class="btn btn-default btn-gray"><i class="fa fa-twitter"></i></a>
				<a href="#" class="btn btn-default btn-gray"><i
					class="fa fa-google-plus"></i></a> <a href="#"
					class="btn btn-default btn-gray"><i class="fa fa-envelope"></i></a>
			</div>
	<%
		}
		else if(w!=null)
		{
			RequestDispatcher rd = request.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(request, response);
		
			
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
						</ul></li>

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
				<h2>NEW ACCOUNT/SIGN IN</h2>
			</div>

			<div class="col-md-4">
				<div class="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">HOME</a></li>
						<li class="breadcrumb-item active">NEW ACCOUNT / SIGN IN</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">


		<!-- SIGN IN SIGN UP FORMS -->

		<div class="row">

			<!-- SIGN UP FORM -->

			<div class="col-md-offset-1 col-md-5">
				<hr />

				<h2>NEW ACCOUNT</h2>
				<p class="lead">Not our registered customer yet?</p>
				<br />
				<p>With registration with us new world of fashion, fantastic
					discounts and much more opens to you! The whole process will not
					take you more than a minute!</p>
				<p>
					If you have any questions, please feel free to <a href="#"
						class="green">contact us</a>, our customer service center is
					working for you 24/7.
				</p>
				<form action="register" method="post">

					<div class="form-group">
						<label for="f1"> Name </label> <input type="text" name="f1"
							class="form-control" required="required" autofocus="autofocus"/>
					</div>

					<div class="form-group">
						<label for="f2"> Email </label> <input type="text" name="f2"
							class="form-control" required="required" />
					</div>

					<div class="form-group">
						<label for="f3"> Password </label> <input type="password"
							name="f3" class="form-control" required="required" />
					</div>

					<div class="form-group">
						<button type="submit"
							class="btn btn-default btn-green center-block">
							<i class="glyphicon glyphicon-user"></i>&nbsp;REGISTER
						</button>
					</div>

				</form>
					<%
							String s = (String)request.getAttribute("stat");
							if(s != null)
							{
								if(s.equals("Y")){
					%>
									<div class="alert alert-success" role="alert">Registration Successful.</div>
									<%	
								}
								
								else if(s.equals("E")){ %> 
								
									<div class="alert alert-danger" role="alert">Account already exists with this email ID.</div>
								<%
								}
								
								else{
					%>
									<div class="alert alert-danger" role="alert">Registration Failed</div><%
							}
						}
					%>
					<hr />
			</div>

			<!-- SIGN IN FORM -->

			<div class="col-md-5">
				<hr />

				<h2>SIGN IN</h2>
				<p class="lead">Already our customer?</p>
				<br />
				<p>Get access to your Orders, Wishlist and Recommendations.</p>

				<form action="signin" method="post">

					<div class="form-group">
						<label for="f1"> Email </label> <input type="text" name="f1"
							class="form-control" required="required" />
					</div>

					<div class="form-group">
						<label for="f2"> Password </label> <input type="password"
							name="f2" class="form-control" required="required" />
					</div>

					<div class="form-group">
						<button type="submit"
							class="btn btn-default btn-green center-block">
							<i class="glyphicon glyphicon-log-in"></i>&nbsp;LOG IN
						</button>
					</div>

				</form>
				<%
							String x = (String)request.getAttribute("log");
							if(x != null)
							{
								if(x.equals("N")){
					%>
									<div class="alert alert-danger" role="alert">Invalid Credentials</div><%
							}
						}
					%>
				
				
				<hr />
			</div>

		</div>

		<!-- SIGN IN SIGN UP FORMS -->

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