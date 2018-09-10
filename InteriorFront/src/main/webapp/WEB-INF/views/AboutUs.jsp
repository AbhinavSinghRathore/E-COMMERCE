<%@ include file="Header.jsp"%>

<head>

<link href="https://netdna.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://netdna.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script language="javascript">
uppercase
strong
spacer-20
</script>
<!------ Include the above in your HEAD tag ---------->



<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
<style>
/* CTA CSS */
.cta-padding35 {
	padding: 35px 0 35px;
	background-color: #b40028;
	color: #fff;
}
/* Buttons */
.site-btn {
	font-size: 14px;
	padding: 13px 30px;
	border-radius: 5px;
	border: 1px solid #b40028;
	min-width: 200px;
	display: inline-block;
	text-align: center;
	position: relative;
	z-index: 1;
	color: #b40028;
	background-color: transparent;
	transition: all .25s ease-in-out;
	margin: 10px 0px 10px 0px;
}

.site-btn:hover {
	background: #b40028;
	border: 1px solid #fff;
	font-weight: 700px;
}

/* Footer */
.footer {
	position: relative;
	background-color: #fff;
	color: #707070;
	padding: 55px 0 40px;
}

.footer h5 {
	font-size: 18px;
	font-weight: 700;
	font-family: 'Open Sans', sans-serif;
	color: #707070;
	position: relative;
	padding-bottom: 16px;
}

.footer h5:after {
	content: '';
	display: block;
	margin: 5px 0 0;
	width: 40%;
	height: 1px;
	background-color: #fff;
}

.footer ul {
	list-style: none;
	line-height: 2.2em;
	padding-left: 0px;
}

.footer ul a {
	color: #707070;;
}

.footer ul a:hover {
	color: #274abb;;
	text-decoration: none;
}
/*footer bottom */
.footer-bottom {
	padding-top: 5px;
	padding-bottom: 15px;
	border-top: 1px solid rgba(0, 0, 0, 0.09);
	background: #fff;
}

.copyright-text p {
	color: #707070;
	margin-top: 18px;
	margin-bottom: 0;
	font-size: 12px;
}

.team-content {
	padding: 0px 15px 15px 15px;
}

.border-team {
	border-bottom: 1px solid #e2e2e2;
	margin-bottom: 10px;
}

.team-img:hover {
	background: #f5f5f5;
}

/* Social Icons */
.social-icons {
	margin: 0;
	padding: 0;
	font-size: 10px;
}

.social {
	margin: 7px 7px 7px 0px;
	color: #232323;
}

#social-fb:hover {
	color: #3B5998;
	transition: all .25s;
}

#social-tw:hover {
	color: #4099FF;
	transition: all .25s;
}

#social-gp:hover {
	color: #d34836;
	transition: all .25s;
}

#social-em:hover {
	color: #f39c12;
	transition: all .25s;
}

/* Site Heading */
.site-heading h3 {
	font-size: 40px;
	margin-bottom: 15px;
	font-weight: 600;
}

.border {
	background: #e1e1e1;
	height: 1px;
	width: 25%;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 45px;
}

.paddingTB60 {
	padding-top: 60px;
	padding-bottom: 60px;
}

.image-aboutus-banner {
	background: linear-gradient(rgba(0, 0, 0, .7), rgba(0, 0, 0, .7)),
		url("https://images.pexels.com/photos/673649/pexels-photo-673649.jpeg?w=940&h=650&auto=compress&cs=tinysrgb");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
	color: #fff;
	padding-top: 110px;
	padding-bottom: 110px;
}

.image-aboutus-sm-banner {
	background: linear-gradient(rgba(0, 0, 0, .7), rgba(0, 0, 0, .7)),
		url("https://images.pexels.com/photos/631008/pexels-photo-631008.jpeg?w=940&h=650&auto=compress&cs=tinysrgb");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
	color: #fff;
	padding-top: 30px;
	padding-bottom: 30px;
}

.lg-text {
	font-size: 52px;
	font-weight: 600;
	text-transform: none;
	color: #fff;
}

.image-aboutus-para {
	color: #fff;
}

/* font CSS */
body {
	font-family: 'Roboto';
	line-height: 24px;
	letter-spacing: 0.5px;
	font-weight: 400;
	font-style: normal;
	color: #494949;
	font-size: 16px;
}

a:hover {
	color: #465cff;
}

h1 {
	font-size: 35px;
	line-height: 40px;
	letter-spacing: 0px;
	font-weight: 600;
	color: #000;
}

h2 {
	font-size: 30px;
	line-height: 40px;
	letter-spacing: 0px;
	font-weight: 600;
	color: #000;
}

h3 {
	line-height: 26px;
	font-size: 20px;
	letter-spacing: 0px;
	font-weight: 600;
	font-style: normal;
	color: #000;
}

h4 {
	font-size: 19px;
	letter-spacing: 0px;
	font-weight: 600;
	font-style: normal;
	color: #000;
}

p {
	font-weight: 400;
	font-style: normal;
	color: #494949;
}

a {
	color: #494949;
}

.capital {
	text-transform: uppercase;
}

i {
	font-style: normal;
	font-size: 42px;
	text-align: center;
	line-height: 64px;
}

/* Breadcum bar */
.bread-bar {
	background: #f9f9f9;
	box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
	min-height: 40px;
	height: auto;
	position: relative;
	z-index: 555;
}

.breadcrumb {
	background: none;
	margin: 0;
	font-weight: 300;
	padding-left: 0;
	font-size: 13px;
}

.breadcrumb a {
	color: #999;
}

.breadcrumb>.active {
	color: #666;
}

.breadcrumb>li+li::before {
	content: "\203A";
	color: #999;
	padding: 0 8px;
}

/* Navigation */
.navbar-default {
	background-color: #011034;
	border-color: #011034;
	padding: 10px 0px 10px 0;
	letter-spacing: 1px;
	font-weight: 800;
	text-transform: uppercase;
	webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0
		rgba(0, 0, 0, .12);
	-moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0
		rgba(0, 0, 0, .12);
	-ms-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0
		rgba(0, 0, 0, .12);
	-o-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0
		rgba(0, 0, 0, .12);
	box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0
		rgba(0, 0, 0, .12);
}

.navbar-default {
	background-color: #011034;
	border-color: #011034;
}

.navbar-default .navbar-brand {
	color: #ffffff;
}

.navbar-default .navbar-brand:hover, .navbar-default .navbar-brand:focus
	{
	color: #b40028;
}

.navbar-default .navbar-text {
	color: #ffffff;
}

.navbar-default .navbar-nav>li>a {
	color: #ffffff;
}

.navbar-default .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus
	{
	color: #b40028;
}

.navbar-default .navbar-nav>li>.dropdown-menu {
	background-color: #011034;
}

.navbar-default .navbar-nav>li>.dropdown-menu>li>a {
	color: #ffffff;
}

.navbar-default .navbar-nav>li>.dropdown-menu>li>a:hover,
	.navbar-default .navbar-nav>li>.dropdown-menu>li>a:focus {
	color: #b40028;
	background-color: #011034;
}

.navbar-default .navbar-nav>li>.dropdown-menu>li.divider {
	background-color: #011034;
}

.navbar-default .navbar-nav .open .dropdown-menu>.active>a,
	.navbar-default .navbar-nav .open .dropdown-menu>.active>a:hover,
	.navbar-default .navbar-nav .open .dropdown-menu>.active>a:focus {
	color: #b40028;
	background-color: #011034;
}

.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:hover,
	.navbar-default .navbar-nav>.active>a:focus {
	color: #b40028;
	background-color: #011034;
}

.navbar-default .navbar-nav>.open>a, .navbar-default .navbar-nav>.open>a:hover,
	.navbar-default .navbar-nav>.open>a:focus {
	color: #b40028;
	background-color: #011034;
}

.navbar-default .navbar-toggle {
	border-color: #011034;
}

.navbar-default .navbar-toggle:hover, .navbar-default .navbar-toggle:focus
	{
	background-color: #011034;
}

.navbar-default .navbar-toggle .icon-bar {
	background-color: #ffffff;
}

.navbar-default .navbar-collapse, .navbar-default .navbar-form {
	border-color: #ffffff;
}

.navbar-default .navbar-link {
	color: #ffffff;
}

.navbar-default .navbar-link:hover {
	color: #b40028;
}
.thumbnail{
display:inline-block;
display:block;
height:auto;
max-width:100%;
padding:4px;
line-height:1.428571429;
background-color:#fff;
border:1px solid #ddd;
border-radius:4px;
-webkit-transition:all .2s ease-in-out;
transition:all .2s ease-in-out
}
.thumbnail>img{
display:block;
height:auto;
max-width:100%
}
a.thumbnail:hover,a.thumbnail:focus{border-color:#428bca}
.thumbnail>img{margin-right:auto;margin-left:auto}
.thumbnail .caption{padding:9px;color:#333}

@media ( max-width : 767px) {
	.navbar-default .navbar-nav .open .dropdown-menu>li>a {
		color: #ffffff;
	}
	.navbar-default .navbar-nav .open .dropdown-menu>li>a:hover,
		.navbar-default .navbar-nav .open .dropdown-menu>li>a:focus {
		color: #b40028;
	}
	.navbar-default .navbar-nav .open .dropdown-menu>.active>a,
		.navbar-default .navbar-nav .open .dropdown-menu>.active>a:hover,
		.navbar-default .navbar-nav .open .dropdown-menu>.active>a:focus {
		color: #b40028;
		background-color: #011034;
	}
}
</style>

</head>
<div class="cont">



	<div class="image-aboutus-banner" style="margin-top: 70px">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="lg-text">About Us</h1>
					<p class="image-aboutus-para">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="bread-bar">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-6 col-xs-8">
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active">About Us</li>
					</ol>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-4"></div>
			</div>
		</div>
	</div> -->
	<div class="aboutus-secktion paddingTB60">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1 class="strong">
						Who we are and<br>what we do
					</h1>
					<p class="lead">
						This is the world's leading portal for<br>easy and quick
					</p>
				</div>
				<div class="col-md-6">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac
						viverra ante luctus vel. Donec vel mauris quam.</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac
						viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor
						sit amet. Nulla convallis egestas rhoncus.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container team-sektion paddingTB60">
		<div class="row">
			<div style="margin:0 auto;" class="site-heading ">
				<h3 style="text-align:center;">Our Team</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
					eiusmod tempor incididunt <br> ut labore et dolore magna
					aliqua. Ut enim ad minim
				</p>
				<div class="border"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 team-box">
				<div class="team-img thumbnail">
					<img
						src="<c:url value="/resources/images/srinivassir.jpg"/>" style="width:200px;height:300px">
					<div class="team-content">
						<h4>Srinivas Patnaik</h4>
						<div class="border-team"></div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nulla convallis egestas rhoncus. Donec facilisis fermentum sem,
							ac viverra ante luctus vel. Donec vel mauris quam.</p>
						<div class="social-icons">
							<a href="https://www.facebook.com/"><i id="social-fb"
								class="fa fa-facebook-square fa-3x social"></i></a> <a
								href="https://twitter.com/"><i id="social-tw"
								class="fa fa-twitter-square fa-3x social"></i></a> <a
								href="https://plus.google.com/"><i id="social-gp"
								class="fa fa-google-plus-square fa-3x social"></i></a> <a
								href="mailto:bootsnipp@gmail.com"><i id="social-em"
								class="fa fa-envelope-square fa-3x social"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 team-box">
				<div class="team-img thumbnail">
					<img
						src="<c:url value="/resources/images/bhanusir.jpg"/>" style="width:200px;height:300px">
					<div class="team-content">
						<h4>Bhanoo Pratap Singh</h4>
						<div class="border-team"></div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nulla convallis egestas rhoncus. Donec facilisis fermentum sem,
							ac viverra ante luctus vel. Donec vel mauris quam.</p>
						<div class="social-icons">
							<a href="https://www.facebook.com/"><i id="social-fb"
								class="fa fa-facebook-square fa-3x social"></i></a> <a
								href="https://twitter.com/"><i id="social-tw"
								class="fa fa-twitter-square fa-3x social"></i></a> <a
								href="https://plus.google.com/"><i id="social-gp"
								class="fa fa-google-plus-square fa-3x social"></i></a> <a
								href="mailto:bootsnipp@gmail.com"><i id="social-em"
								class="fa fa-envelope-square fa-3x social"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 team-box">
				<div class="team-img thumbnail">
					<img
						src="<c:url value="/resources/images/abhi.jpg"/>" style="width:200px;height:300px">
					<div class="team-content">
						<h4><center>Abhinav Singh</center></h4>
						<div class="border-team"></div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nulla convallis egestas rhoncus. Donec facilisis fermentum sem,
							ac viverra ante luctus vel. Donec vel mauris quam.</p>
						<div class="social-icons">
							<a href="https://www.facebook.com/"><i id="social-fb"
								class="fa fa-facebook-square fa-3x social"></i></a> <a
								href="https://twitter.com/"><i id="social-tw"
								class="fa fa-twitter-square fa-3x social"></i></a> <a
								href="https://plus.google.com/"><i id="social-gp"
								class="fa fa-google-plus-square fa-3x social"></i></a> <a
								href="mailto:bootsnipp@gmail.com"><i id="social-em"
								class="fa fa-envelope-square fa-3x social"></i></a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>