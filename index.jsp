<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Home</title>
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
							<li class="active"><a href="index.jsp">Home</a></li>
							<li><a href="login.jsp">Signin</a></li>
							<li><a href="Register.jsp">SignUp</a></li>
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
								   <form action="/Flyway/login.jsp" method="post">
									<div class="tab-content">
									 <div role="tabpanel" class="tab-pane active" id="flights">
										<div class="row">
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="from">From:</label>
													<input type="text" name="fromPlace" class="form-control" id="from-place" required="required"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="to">To:</label>
													<input type="text" name="toPlace"  class="form-control" id="to-place"  required="required"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-start">Check In:</label>
													<input type="text" name="checkIn"  class="form-control" id="date-start" placeholder="mm/dd/yyyy"  required="required"/>
												</div>
											</div>


											<div class="col-xs-12">
												<input type="submit" class="btn btn-primary btn-block" value="Search Flight">
											</div>
										</div>
									 </div>

									

									 
									</div>
								</form>
								</div>
							</div>
							<div class="desc2 animate-box">
								<div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
									<h2>Exclusive Limited Time Offer</h2>
									<h3>Fly to Hong Kong via Los Angeles, USA</h3>
									<span class="price">$599</span>
									<!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
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
				<div class="row">
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Flyway/resources/images/place-1.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>New York</h3>
								<span>3 nights + Flight 5*Hotel</span>
								<span class="price">$1,000</span>
								<a class="btn btn-primary btn-outline" href="login.jsp">Book Now <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Flyway/resources/images/place-2.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>Philippines</h3>
								<span>4 nights + Flight 5*Hotel</span>
								<span class="price">$1,000</span>
								<a class="btn btn-primary btn-outline" href="login.jsp">Book Now <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Flyway/resources/images/place-3.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>Hongkong</h3>
								<span>2 nights + Flight 4*Hotel</span>
								<span class="price">$1,000</span>
								<a class="btn btn-primary btn-outline" href="login.jsp">Book Now <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-12 text-center animate-box">
						<p><a class="btn btn-primary btn-outline btn-lg" href="#">See All Offers <i class="icon-arrow-right22"></i></a></p>
					</div>
				</div>
			</div>
		</div>

		
		<div id="fh5co-destination">
			<div class="tour-fluid">
				<div class="row">
					<div class="col-md-12">
						<ul id="fh5co-destination-list" class="animate-box">
							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-1.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Los Angeles</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-2.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Hongkong</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-3.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Italy</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-4.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Philippines</h2>
									</div>
								</a>
							</li>

							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-5.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Japan</h2>
									</div>
								</a>
							</li>
							<li class="one-half text-center">
								<div class="title-bg">
									<div class="case-studies-summary">
										<h2>Most Popular Destinations</h2>
										<span><a href="#">View All Destinations</a></span>
									</div>
								</div>
							</li>
							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-6.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Paris</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-7.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Singapore</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-8.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Madagascar</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-9.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Egypt</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(/Flyway/resources/images/place-10.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Indonesia</h2>
									</div>
								</a>
							</li>
						</ul>		
					</div>
				</div>
			</div>
		</div>
		
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row row-bottom-padded-md">
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>About Travel</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Top Flights Routes</h3>
							<ul>
								<li><a href="#">Manila flights</a></li>
								<li><a href="#">Dubai flights</a></li>
								<li><a href="#">Bangkok flights</a></li>
								<li><a href="#">Tokyo Flight</a></li>
								<li><a href="#">New York Flights</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Top Hotels</h3>
							<ul>
								<li><a href="#">Boracay Hotel</a></li>
								<li><a href="#">Dubai Hotel</a></li>
								<li><a href="#">Singapore Hotel</a></li>
								<li><a href="#">Manila Hotel</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Interest</h3>
							<ul>
								<li><a href="#">Beaches</a></li>
								<li><a href="#">Family Travel</a></li>
								<li><a href="#">Budget Travel</a></li>
								<li><a href="#">Food &amp; Drink</a></li>
								<li><a href="#">Honeymoon and Romance</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Best Places</h3>
							<ul>
								<li><a href="#">Boracay Beach</a></li>
								<li><a href="#">Dubai</a></li>
								<li><a href="#">Singapore</a></li>
								<li><a href="#">Hongkong</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Affordable</h3>
							<ul>
								<li><a href="#">Food &amp; Drink</a></li>
								<li><a href="#">Fare Flights</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-dribbble2"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
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