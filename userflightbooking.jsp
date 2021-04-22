<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>BookingDetails</title>
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

		<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.jsp"><i class="icon-airplane"></i>Fly-Away</a></h1>
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li class="active"><p>${user}</p></li>
							<li><a href="/Flyway/Logout">Logout</a></li>
							
						</ul>
					</nav>
				</div>
			</div>
		</header>

		<!-- end:header-top -->
	
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_1.jpg);">
				<div class="desc">
					<div class="container">
						<div class="row">
							<div class="col-sm-5 col-md-5">
								<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
								      <li role="presentation" class="active">
								      	<a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">Flights</a>
								      </li>

								   </ul>

								   <!-- Tab panes -->
								   
									<div class="tab-content">
									 <div role="tabpanel" class="tab-pane active" id="flights">
										<div class="row">
											
												
											
										<form action="/Flyway/BookTicket" method="post">
										
										
											
													<input type="hidden" name="id" value="<c:out value='${flightlist.id}' />" />
											
											
												<div class="col-xxs-12 col-xs-6 mt">
													<div class="input-field">
														<label for="from">From:</label>
														<input type="text" name="fromPlace" class="form-control" value="<c:out value='${flightlist.from}' />"  required="required"/>
													</div>
												</div>
									
											
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="to">To:</label>
													<input type="text" name="toPlace"  class="form-control" value="<c:out value='${flightlist.to}' />"   required="required"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-start">Check In:</label>
													<input type="text" name="date" value="<c:out value='${flightlist.date}' />"  class="form-control"  placeholder="mm/dd/yyyy"  required="required"/>
												</div>
											</div>
											
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="to">Persons</label>
													<input type="text" name="persons"  class="form-control"  placeholder="Enter no.of passengers"  required="required"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="to">Price</label>
													<input type="text" name="price" value="<c:out value='${flightlist.price}' />"   class="form-control"  required="required"/>
												</div>
											</div>
											
											<div class="col-xs-12">
												<input type="submit" class="btn btn-primary btn-block" value="Book Flight">
											</div>
											
											</form>
										</div>
									 </div>

									

									 
									</div>
								
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		
		<div id="fh5co-tours" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Hot Tours</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>

			</div>
		</div>


		
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p>Copyright 2021 <a href="#">Module</a>. All Rights Reserved. <br>Made with <i class="icon-heart3"></i> by  Ahemmed</p>
						</div>
					</div>
				</div>
			</div>
		</footer>

	

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