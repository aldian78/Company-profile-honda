<!DOCTYPE html>
<html class="no-js">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>HONDA</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<link rel="shorcut icon" type="text/css" href="<?php echo base_url() . 'assets/images/logo.png' ?>">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
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
		<br></br>

		<div id="fh5co-why-us" class="animate-box">
			<div class="container">
				<center>
					<h2>PRODUK KATEGORI</h2>
				</center>
				<br></br>
				<div class="row">
					<div class="col-md-3 text-center item-block">
						<span class="icon"><img src="<?php echo base_url() . 'theme/images/pcx.png' ?>" class="img-responsive"></span>
						<h3>MATIC</h3>
						<p> Sepeda Motor Otomatis yang tidak memakai Operan Gigi Manual dan digunakan cukup dengan satu Akselerasi</p>
						<p><a href="<?php echo base_url() . 'matic' ?>" class="btn btn-primary btn-outline with-arrow">Lihat Detail <i class="icon-arrow-right"></i></a></p>
					</div>
					<div class="col-md-3 text-center item-block">
						<span class="icon"><img src="<?php echo base_url() . 'theme/images/super-cub.png' ?>" class="img-responsive"></span>
						<h3>SUPER CUB</h3>
						<p> sepeda motor bebek dari Honda dengan mesin 4 langkah bersilinder tunggal berukuran mulai dari 49 sampai 109 cc</p>
						<p><a href="<?php echo base_url() . 'cub' ?>" class="btn btn-primary btn-outline with-arrow">Lihat Detail <i class="icon-arrow-right"></i></a></p>
					</div>
					<div class="col-md-3 text-center item-block">
						<span class="icon"><img src="<?php echo base_url() . 'theme/images/crf.png' ?>" class="img-responsive"></span>
						<h3>SPORT</h3>
						<p> sepeda motor yang bertampang dan berpenampilan seperti motor balap atau memiliki performa di atas rata-rata</p>
						<p><a href="<?php echo base_url() . 'sport' ?>" class="btn btn-primary btn-outline with-arrow">Lihat Detail <i class="icon-arrow-right"></i></a></p>
					</div>
					<div class="col-md-3 text-center item-block">
						<span class="icon"><img src="<?php echo base_url() . 'theme/images/cb500x.png' ?>" class="img-responsive"></span>
						<h3>BIG BIKE</h3>
						<p>salah satu jenis motor keluaran Honda yang didesain streetfighter dengan penampilan gagah dan berani</p>
						<p><a href="<?php echo base_url() . 'big_bike' ?>" class="btn btn-primary btn-outline with-arrow">Lihat Detail <i class="icon-arrow-right"></i></a></p>
					</div>
				</div>
			</div>
			<div class="fh5co-section-with-image">

				<img src="<?php echo base_url() . 'theme/images/profil.png' ?>" alt="" class="img-profil">
				<div class="fh5co-box animate-box">
					<center>
						<h2>Tentang Kami</h2>
						<p>Kami selalu memberikan produk dan pelayanan yang terbaik </p>
						<p><a href="<?php echo base_url() . 'About' ?>" class="btn btn-primary btn-outline with-arrow"> About<i class="icon-arrow-right"></i></a></p>
					</center>
				</div>
			</div>
			<br></br>
			<br></br>
			<div id="fh5co-blog" class="animate-box">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
							<h2>PRODUK TERBARU</h2>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<?php
						foreach ($post->result_array() as $j) :
							$post_id = $j['tulisan_id'];
							$post_judul = $j['tulisan_judul'];
							$post_isi = $j['tulisan_isi'];
							$post_author = $j['tulisan_author'];
							$post_image = $j['tulisan_gambar'];
							$post_tglpost = $j['tanggal'];
						?>

							<div class="col-sm-3">
								<center>
									<img src="<?php echo base_url() . 'assets/images/produk/' . $post_image; ?>" class="card-img-top" alt="...">
									<h4><a href="<?php echo base_url() . 'blog/detail/' . $post_id ?>"><?php echo $post_judul; ?></a></h4>
									<span class="fh5co-date"><?php echo $post_tglpost . ' | ' . $post_author; ?></span>

								</center>
							</div>
						<?php endforeach; ?>

					</div>
					<br></br>
					<div class="col-md-12 text-center">
						<center>
							<p><a href="<?php echo base_url() . 'artikel/' ?>" class="btn btn-primary btn-outline with-arrow">Lihat semua<i class="icon-arrow-right"></i></a></p>
						</center>
					</div>
				</div>
				<br></br>
				<div class="fh5co-section-with-image">
					<div id="googleMap" style="width:100%;height:400px;"></div>
				</div>
				<br>
				<div class="fh5co-box animate-box">
					<div class="container">
						<center>
							<h3>LOKASI PERUSAHAAN</h3>
							<p><a href="<?php echo base_url() . 'kontak/' ?>" class="btn btn-primary btn-outline with-arrow">Contact <i class="icon-arrow-right"></i></a></p>
						</center>
					</div>
				</div>
				<?php $this->load->view('v_footer'); ?>
			</div>
		</div>
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

	<!-- MAIN JS -->
	<script src="<?php echo base_url() . 'theme/js/main.js' ?>"></script>
</body>

</html>