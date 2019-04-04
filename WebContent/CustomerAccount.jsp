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

		<%@ include file="SocialIconsMenu.jsp" %>

		<%@ include file="NavMenu.jsp" %>
		

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
						if(up.equals("DNM"))
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
				<form action="update" method="post">

					<div class="row">
			
						<div class="col-md-6">
							<div class="form-group">
								<label for="f1"> First Name </label> <input type="text"
									name="f1" class="form-control" />
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="f2"> Last Name </label> <input type="text"
									name="f2" class="form-control" />
							</div>
						</div>

					</div>
					
					<div class="row">
						<div class="col-md-12">
							<p>Gender</p>
							
							<div class="radio">
								<label><input type="radio" name="f3" value="Male" checked >Male</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="f3" value="Female" >Female</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="f3" value="Transgender" >Transgender</label>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label for="f4"> Address </label>
								<textarea rows="2" name="f4" class="form-control" ></textarea>
							</div>
						</div>
					</div>

					<div class="row">

						<div class="col-md-3">
							<div class="form-group">
								<label for="f5"> City </label> <input type="text" name="f5"
									class="form-control" />
							</div>
						</div>

						<div class="col-md-3">
							<div class="form-group">
								<label for="f6"> ZIP </label> <input type="text" name="f6"
									class="form-control" />
							</div>
						</div>

						<div class="col-md-3">
							<div class="form-group">
								<label for="f8"> Country </label> 
								<select id="country" name ="country" class="form-control" ></select>
							</div>
						</div>

						<div class="col-md-3">
							<div class="form-group">
								<label for="f7"> State </label> 
								<select name ="state" id ="state" class="form-control"></select>
							</div>
						</div>

					</div>

					<div class="row">

						<div class="col-md-6">
							<div class="form-group">
								<label for="f9"> Contact Number </label> <input type="text"
									name="f9" class="form-control" />
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="f10"> Email </label> <input type="text"
									name="f10" class="form-control" />
							</div>
						</div>
						
					 <hr/>						

					</div>

					<div class="form-group">
						<button type="submit"
							class="btn btn-default btn-green center-block">
							<i class="glyphicon glyphicon-floppy-disk"></i>&nbsp;SAVE CHANGES
						</button>
					</div>

				</form>
				
				
				<% String cd = (String)request.getAttribute("cd");
					
						if(cd!=null)
						{
							if(cd.equals("Y"))
							{%>
								<div class="alert alert-success">Details changed successfully</div>
							<%}
							
							else
							{%>
								<div class="alert alert-danger">Details change not successfully</div>
							<%}
						}				
				%>
				

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
						class="glyphicon glyphicon-th-list"></span> My Orders</a> 
					<a
						class="list-group-item" href="#"><span
						class="glyphicon glyphicon-heart"></span> My Wishlist</a>
					 <a
						class="list-group-item active" href="#"><span
						class="glyphicon glyphicon-user"></span> My Account</a> 
					<a href="logout"
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

	<script src="js/countries.js"></script>
	<script language="javascript">
		
		populateCountries("country", "state"); // first parameter is id of country drop-down and second parameter is id of state drop-down
		populateCountries("country2");
		populateCountries("country2");
		
	</script>
	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	
	<!-- SCRIPTS END -->

</body>
</html>