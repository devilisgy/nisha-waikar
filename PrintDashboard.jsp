<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Userdashboard</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />


  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="/Flyway/resources/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="/Flyway/resources/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/Flyway/resources/css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="/Flyway/resources/css/superfish.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="/Flyway/resources/css/magnific-popup.css">
	<!-- Date Picker -->
	<link rel="stylesheet" href="/Flyway/resources/css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="/Flyway/resources/css/cs-select.css">
	<link rel="stylesheet" href="/Flyway/resources/css/cs-skin-border.css">
	
	<link rel="stylesheet" href="/Flyway/resources/css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">

		
			<div class="container">

			<p>${msg}</p>
			<p>${loginmsg}</p>
			

<%-- <b>${user.firstName} (${user.email})</b>
        <br><br>
        <a href="/Logout">Logout</a> --%>
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li class="active"><p>${user}</p></li>
							<li><a href="/Flyway/Logout">Logout</a></li>
							
						</ul>
					</nav>
				</div>
			</div>

			<div id="footer">
				<h1 id="fh5co-logo"><a href="index.jsp"><i class="icon-airplane"></i>Fly-Away</a></h1>
				<div class="container">
					<div class="row row-bottom-padded-md">
						<table class="table">
											<tr style="color: white;">
												<td>S.no</td>
												<td>name</td>
												<td>email</td>
												<td>bank</td>
												<td>card</td>
												<td>From</td>
												<td>To</td>
												<td>date</td>
												<td>Passengers</td>
												<td>Ticket Fare</td>
												<td>Amount</td>
												<td>Status</td>
												<Status>
											</tr>
											<c:forEach items="${Booking}" var="details">
												<tr style="color: white;">
													<td>${details.id}</td>
													<td>${details.name}</td>
													<td>${details.email}</td>
													<td>${details.bank}</td>
													<td>${details.card}</td>
													<td>${details.fromPlace}</td>
													<td>${details.toPlace}</td>
													<td>${details.date}</td>
													<td>${details.persons}</td>
													<td>${details.price}</td>
													<td>${details.amount}</td>
													<td>${status}</td>
													<br>
												</tr>

											</c:forEach>

										</table>
							<p>Copyright 2021 <a href="#">Module</a>. All Rights Reserved. <br>Made with <i class="icon-heart3"></i> by  Ahemmed</p>
						</div>
					</div>
				</div>
			</div>
	

	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="/Flyway/resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/Flyway/resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="/Flyway/resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/Flyway/resources/js/jquery.waypoints.min.js"></script>
	<script src="/Flyway/resources/js/sticky.js"></script>

	<!-- Stellar -->
	<script src="/Flyway/resources/js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="/Flyway/resources/js/hoverIntent.js"></script>
	<script src="/Flyway/resources/js/superfish.js"></script>
	<!-- Magnific Popup -->
	<script src="/Flyway/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/Flyway/resources/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="/Flyway/resources/js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="/Flyway/resources/js/classie.js"></script>
	<script src="/Flyway/resources/js/selectFx.js"></script>
	
	<!-- Main JS -->
	<script src="/Flyway/resources/js/main.js"></script>

	</body>
</html>

