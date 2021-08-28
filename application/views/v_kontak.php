<!DOCTYPE html>
<html class="no-js">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>HONDA | CONTACT</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<link rel="shorcut icon" type="text/css" href="<?php echo base_url() . 'assets/images/logo.png' ?>">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<!-- Animate.css -->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/animate.css' ?>">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/icomoon.css' ?>">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/bootstrap.css' ?>">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/flexslider.css' ?>">
	<!-- Theme style  -->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/style2.css' ?>">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
	<!-- Modernizr JS -->
	<script src="<?php echo base_url() . 'theme/js/modernizr-2.6.2.min.js' ?>"></script>
	<!-- Google Maps JS -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script>
		function initialize() {
			var propertiPeta = {
				center: new google.maps.LatLng(-7.578745, 112.690675),
				zoom: 15,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};

			var peta = new google.maps.Map(document.getElementById("googleMap"), propertiPeta);

			// membuat Marker
			var marker = new google.maps.Marker({
				position: new google.maps.LatLng(-7.578745, 112.690675),
				map: peta
			});

		}

		// event jendela di-load  
		google.maps.event.addDomListener(window, 'load', initialize);
	</script>

</head>

<body>
	<div id="fh5co-page">
		<header>
			<nav class="navbar navbar-expand-lg navbar-default bg-light navbar-fixed-top">
				<div class="container">
					<img src="<?php echo base_url(); ?>assets/images/honda.png">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="<?php echo base_url() . '' ?>">Home</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Kategori</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="<?php echo base_url() . 'matic' ?>">Matic</a></li>
									<li><a href="<?php echo base_url() . 'sport' ?>">Sport</a></li>
									<li><a href="<?php echo base_url() . 'cub' ?>">Super Cub</a></li>
									<li><a href="<?php echo base_url() . 'big_bike' ?>">Big Bike</a></li>
								</ul>
							</li>
							<li><a href="<?php echo base_url() . 'artikel' ?>">Blog</a></li>
							<li><a href="<?php echo base_url() . 'gallery' ?>">Gallery</a></li>
							<li><a href="<?php echo base_url() . 'about' ?>">About</a></li>
							<li><a href="<?php echo base_url() . 'kontak' ?>">Contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<br>

		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			<!-- deklarasi carousel/slide show -->
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
			</ol>
			<div class="carousel-inner">
				<!-- Indicators left & right -->
				<div class="item active gray">
					<img src="<?php echo base_url(); ?>theme/images/slide1.jpg">
				</div>
				<div class="item">
					<img src="<?php echo base_url(); ?>theme/images/slide2.jpg">
				</div>
				<div class="item">
					<img src="<?php echo base_url(); ?>theme/images/slide3.jpg">
				</div>
				<div class="item">
					<img src="<?php echo base_url(); ?>theme/images/slide4.jpg">
				</div>
				<div class="item">
					<img src="<?php echo base_url(); ?>theme/images/slide5.jpg">
				</div>
				<div class="item">
					<img src="<?php echo base_url(); ?>theme/images/slide6.jpg">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<div class="fh5co-contact animate-box">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<h3>Contact Info.</h3>
						<ul class="contact-info">
							<li><i class="icon-map"></i>CV. Agung Sejahtera Motor tersendiri berada di Jl.Raya Pertigaan Tol Apolo KM.37 Gempol – Pasuruan</li>
							<li><i class="icon-phone"></i>+62 857-3363-2323</li>
							<li><i class="icon-envelope"></i><a href="#">Cvagungsejahteramotor.gmail</a></li>
							<li><i class="icon-globe"></i><a href="#">www.CV Agung Sejahtera Motor</a></li>
						</ul>
					</div>

					<div class="col-md-8 col-md-push-1 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0">
						<?php echo $this->session->flashdata('msg'); ?>
						<div class="row">
							<form method="post" action="<?php echo base_url() . 'kontak/kirim_pesan' ?>">
								<div class="col-md-6">
									<div class="form-group">
										<input class="form-control" name="nama" placeholder="Nama" type="text" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input class="form-control" name="email" placeholder="Email" type="email" required>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<textarea name="pesan" class="form-control" id="" cols="30" rows="7" placeholder="Message" required></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<input value="Kirim Pesan" class="btn btn-primary" type="submit">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="googleMap" style="width:100%;height:380px;"></div>
		<br>

		<?php $this->load->view('v_footer'); ?>
	</div>


	<!-- jQuery -->
	<script src="<?php echo base_url() . 'theme/js/jquery.min.js' ?>"></script>
	<!-- jQuery Easing -->
	<script src="<?php echo base_url() . 'theme/js/jquery.easing.1.3.js' ?>"></script>
	<!-- Bootstrap -->
	<script src="<?php echo base_url() . 'theme/js/bootstrap.min.js' ?>"></script>
	<!-- Waypoints -->
	<script src="<?php echo base_url() . 'theme/js/jquery.waypoints.min.js' ?>"></script>
	<!-- Flexslider -->
	<script src="<?php echo base_url() . 'theme/js/jquery.flexslider-min.js' ?>"></script>
	<!-- Google Map -->

	<script src="<?php echo base_url() . 'theme/js/google_map.js' ?>"></script>

	<!-- MAIN JS -->
	<script src="<?php echo base_url() . 'theme/js/main.js' ?>"></script>

</body>

</html>