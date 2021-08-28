<!DOCTYPE html>
<html class="no-js">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>HONDA | BLOG</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<link rel="shorcut icon" type="text/css" href="<?php echo base_url() . 'assets/images/logo.png' ?>">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

	<!-- Animate.css -->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/animate.css' ?>">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/icomoon.css' ?>">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/bootstrap1.css' ?>">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/flexslider.css' ?>">
	<!-- Theme style  -->
	<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/style2.css' ?>">

	<!-- Modernizr JS -->
	<script src="<?php echo base_url() . 'theme/js/modernizr-2.6.2.min.js' ?>"></script>
	<?php
	error_reporting(0);
	function limit_words($string, $word_limit)
	{
		$words = explode(" ", $string);
		return implode(" ", array_splice($words, 0, $word_limit));
	}

	?>
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
		<br></br>
		<div class="fh5co-services">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>PRODUK TERBARU</h2>
					</div>
					<?php
					foreach ($data->result_array() as $j) :
						$post_id = $j['tulisan_id'];
						$post_judul = $j['tulisan_judul'];
						$post_isi = $j['tulisan_isi'];
						$post_author = $j['tulisan_author'];
						$post_image = $j['tulisan_gambar'];
						$post_tglpost = $j['tanggal'];

					?>
						<div class="col-md-4">
							<span class="icon"><img src="<?php echo base_url() . 'assets/images/produk/' . $post_image; ?>" class="img-responsive"></span>
							<center>
								<h3><a href="<?php echo base_url() . 'blog/detail/' . $post_id; ?>"><?php echo $post_judul; ?></a></h3>
								<span><?php echo $post_tglpost . ' | ' . $post_author; ?></span>
								<p><?php echo limit_words($post_isi, 0) . '...'; ?></em></p>
								<p><a href="<?php echo base_url() . 'blog/detail/' . $post_id; ?>" class="btn btn-primary with-arrow">Selengkapnya <i class="icon-arrow-right"></i></a></p>
							</center>
						</div>
					<?php endforeach; ?>

				</div>
			</div>
			<center><?php echo $page; ?></center>
		</div>
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
	<!-- Easy PieChart -->
	<script src="<?php echo base_url() . 'theme/js/jquery.easypiechart.min.js' ?>"></script>
	<!-- Flexslider -->
	<script src="<?php echo base_url() . 'theme/js/jquery.flexslider-min.js' ?>"></script>
	<!-- Stellar -->
	<script src="<?php echo base_url() . 'theme/js/jquery.stellar.min.js' ?>"></script>

	<!-- MAIN JS -->
	<script src="<?php echo base_url() . 'theme/js/main.js' ?>"></script>

</body>

</html>