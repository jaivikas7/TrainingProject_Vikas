<%@ page errorPage="ExceptionPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MY ACCOUNT</title>

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
				<h2>MY ACCOUNT</h2>
			</div>

			<div class="col-md-4">
				<div class="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.jsp">HOME</a></li>
						<li class="breadcrumb-item active">MY ACCOUNT</li>
					</ol>
				</div>
			</div>
		</div>
	</div>


	<div class="container-fluid">

		<div class="row">

			<div class="col-md-offset-1 col-md-6">

				<p class="lead">Change your personal details or your password
					here.</p>
				<br />
				<p>Pellentesque habitant morbi tristique senectus et netus et
					malesuada fames ac turpis egestas.</p>
				<hr />

				<h3>CHANGE PASSWORD</h3>
				<div class="row">
					<hr class="dash-green" />
				</div>
				<form action="changepass" method="post">

					<div class="row">

						<div class="col-md-6">
							<div class="form-group">
								<label for="f1"> Old Password </label> <input
									type="password" name="f1" class="form-control" />
							</div>
						</div>

					</div>

					<div class="row">

						<div class="col-md-6">
							<div class="form-group">
								<label for="f2"> New Password </label> <input
									type="password" name="f2" class="form-control" />
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="f3"> Retype New Password </label> <input
									type="password" name="f3" class="form-control" />
							</div>
						</div>

					</div>

					<div class="form-group">
						<button type="submit"
							class="btn btn-default btn-green center-block">
							<i class="glyphicon glyphicon-floppy-disk"></i>&nbsp;SAVE NEW
							PASSWORD
						</button>
					</div>

				</form>
				
				<%
					String up = (String)request.getAttribute("up");
					if(up!=null)
					{
						if(up.equals("Y"))
						{%>
							<div class="alert alert-success">Password Changed Successfully</div>
						<%
						}
						else if(up.equals("DNM"))
						{%>
							<div class="alert alert-danger">Please verify passwords</div>
						<%							
						}
						else
						{%>
							<div class="alert alert-danger">Old password incorrect</div>
						<%
							
						}
					}
				%>
				
				<hr />

				<h3>PERSONAL DETAILS</h3>
				<div class="row">
					<hr class="dash-green" />
				</div>
				<form action="#">

					<div class="row">

						<div class="col-md-6">
							<div class="form-group">
								<label for="fname"> First Name </label> <input type="text"
									name="fname" class="form-control" />
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="lname"> Last Name </label> <input type="text"
									name="lname" class="form-control" />
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label for="addr"> Address </label>
								<textarea rows="2" name="addr" class="form-control"></textarea>
							</div>
						</div>
					</div>

					<div class="row">

						<div class="col-md-3">
							<div class="form-group">
								<label for="city"> City </label> <input type="text" name="city"
									class="form-control" />
							</div>
						</div>

						<div class="col-md-3">
							<div class="form-group">
								<label for="zip"> ZIP </label> <input type="text" name="zip"
									class="form-control" />
							</div>
						</div>

						<div class="col-md-3">
							<div class="form-group">
								<label for="state"> State </label> <select name="state"
									class="form-control">
									<option></option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
						</div>

						<div class="col-md-3">
							<div class="form-group">
								<label for="country"> Country </label> <select name="country"
									class="form-control">
									<option></option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
						</div>

					</div>

					<div class="row">

						<div class="col-md-6">
							<div class="form-group">
								<label for="con"> Contact Number </label> <input type="text"
									name="con" class="form-control" />
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="email"> Email </label> <input type="text"
									name="email" class="form-control" />
							</div>
						</div>

					</div>

					<div class="form-group">
						<button type="submit"
							class="btn btn-default btn-green center-block">
							<i class="glyphicon glyphicon-floppy-disk"></i>&nbsp;SAVE CHANGES
						</button>
					</div>

				</form>

			</div>

			<div class="col-md-4">

				<h4>CUSTOMER SECTION</h4>
				<div class="row">
					<div class="col-md-12">
						<hr class="dash-green" />
					</div>
				</div>

				<div class="list-group col-md-8 col-sm-12">
					<a class="list-group-item" href="#"><span
						class="glyphicon glyphicon-th-list"></span> My Orders</a> <a
						class="list-group-item" href="#"><span
						class="glyphicon glyphicon-heart"></span> My Wishlist</a> <a
						class="list-group-item active" href="#"><span
						class="glyphicon glyphicon-user"></span> My Account</a> <a href="logout"
						class="list-group-item" href="#"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a>
				</div>

			</div>

		</div>
		<br />
		<br />
		<br />

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