<?php foreach ($tbl_tulisan as $row) { ?>
<?php } ?>
<!DOCTYPE html>
<html class="no-js">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $row->tulisan_judul; ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="M Fikri Setiadi" />

	<meta property="fb:app_id" content="966242223397117" />
	<meta property="og:locale" content="id_id" />
	<meta property="og:type" content="article" />
	<meta property="og:title" content="<?php echo $row->tulisan_judul; ?>" />
	<meta property="og:description" content="" />
	<meta property="og:url" content="<?php echo $row->tulisan_id ?>" />
	<meta property="og:site_name" content="mfikri.com" />

	<meta property="article:section" content="<?php echo $row->tulisan_author; ?>" />
	<meta property="og:image" content="<?php echo $row->tulisan_gambar; ?>" />
	<meta property="og:image:width" content="460" />
	<meta property="og:image:height" content="440" />
	<link rel="shorcut icon" type="text/css" href="<?php echo base_url() . 'assets/images/favicon.png' ?>">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
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

	<link rel="stylesheet" href="<?php echo base_url() . 'assets/font-awesome/css/font-awesome.min.css' ?>">

	<!-- Modernizr JS -->
	<script src="<?php echo base_url() . 'theme/js/modernizr-2.6.2.min.js' ?>"></script>

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

		<div class="fh5co-pricing">
			<div class="container">
				<div class="row">

					<div class="col-md-8">
						<h1 style="margin-bottom:0px;"><a href="<?php echo $row->tulisan_id; ?>"><?php echo $row->tulisan_judul; ?></a></h1>
						<small><em>Posted by: <?php echo $row->tulisan_author; ?> | <?php echo $row->tulisan_tanggal; ?> | Kategori: <?php echo $row->tulisan_kategori_nama; ?> | <?php echo $row->tulisan_views; ?> kali dibaca | Rating: <?php echo $row->tulisan_rating; ?></em></small>
						<figure>

							<div class="col-md-10">
								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									<!-- deklarasi carousel/slide show -->
									<div class="carousel-inner">
										<div class="item active">
											<img src="<?php echo base_url() . 'assets/images/produk/' . $row->tulisan_gambar1; ?>" alt="" class="img-reponsive">
										</div>

										<?php if ($row->tulisan_gambar2 != null) { ?>
											<div class="item">
												<img src="<?php echo base_url() . 'assets/images/produk/' . $row->tulisan_gambar2; ?>" alt="" class="img-reponsive">
											</div>
										<?php } ?>

										<?php if ($row->tulisan_gambar3 != null) { ?>
											<div class="item">
												<img src="<?php echo base_url() . 'assets/images/produk/' . $row->tulisan_gambar3; ?>" alt="" class="img-reponsive">
											</div>
										<?php } ?>
										<?php if ($row->tulisan_gambar4 != null) { ?>
											<div class="item">
												<img src="<?php echo base_url() . 'assets/images/produk/' . $row->tulisan_gambar4; ?>" alt="" class="img-reponsive">
											</div>
										<?php } ?>
										<!-- Indicators left & right -->
										<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
											<i class="fa fa-chevron-left"><i class="fa fa-chevron-left"></i></i></a>
										<a class="carousel-control-next" href="#myCarousel" data-slide="next" style="float: right;">
											<i class="fa fa-chevron-right"><i class="fa fa-chevron-right"></i></i>
										</a>
									</div>
									<br>
									<?php echo $row->tulisan_isi; ?>
									<?php if ($rate->num_rows() > 0) : ?>

									<?php else : ?>
										<div class="alert alert-success">
											<strong>Apakah pendapat Anda tentang artikel ini?</strong><br /><br />
											<a class="btn btn-sm" href="<?php echo base_url() . 'blog/good/' . $row->tulisan_id; ?>" title="Good"><i class="fa fa-smile-o fa-2x"></i></a>
											<a class="btn btn-sm" href="<?php echo base_url() . 'blog/like/' . $row->tulisan_id; ?>" title="Like"><i class="fa fa-thumbs-o-up fa-2x"></i></a>
											<a class="btn btn-sm" href="<?php echo base_url() . 'blog/love/' . $row->tulisan_id; ?>" title="Love"><i class="fa fa-heart-o fa-2x"></i></a>
											<a class="btn btn-sm" href="<?php echo base_url() . 'blog/genius/' . $row->tulisan_id; ?>" title="Genius"><i class="fa fa-lightbulb-o fa-2x"></i></a>
										</div>
									<?php endif; ?>
									<h4>Share:</h4>
									<div>
										<a class="popup2 btn btn-info btn-sm" href="https://plus.google.com/share?url=<?php echo $row->tulisan_id; ?>" title="Bagikan ke Google+"><i class="fa fa-google-plus"></i> Google+</a>
										<a class="popup2 btn btn-info btn-sm" target="_parent" href="https://www.facebook.com/dialog/share?app_id=966242223397117&display=popup&href=<?php echo $row->tulisan_id; ?>" title="Bagikan ke Facebook"><i class="fa fa-facebook"></i> Facebook</a>
										<a class="popup2 btn btn-info btn-sm" href="http://twitter.com/share?source=sharethiscom&text=<?php echo $row->tulisan_id; ?>&url=<?php echo $row->tulisan_id; ?>&via=badoey" title="Bagikan ke Twitter"><i class="fa fa-twitter"></i> Twitter</a>
										<a class="popup2 btn btn-info btn-sm" href="javascript:void((function()%7Bvar%20e=document.createElement(&apos;script&apos;);e.setAttribute(&apos;type&apos;,&apos;text/javascript&apos;);e.setAttribute(&apos;charset&apos;,&apos;UTF-8&apos;);e.setAttribute(&apos;src&apos;,&apos;http://assets.pinterest.com/js/pinmarklet.js?r=&apos;+Math.random()*99999999);document.body.appendChild(e)%7D)());" title="Bagikan ke Pinterest"><i class="fa fa-pinterest"></i> Pinterest</a>
									</div>
								</div>
							</div>
						</figure>
					</div>



					<div class="col-md-4">
						<form class="search_form" action="<?php echo base_url() . 'blog/search' ?>" method="post">
							<input type="text" name="xfilter" class="form-control" placeholder="Search" required>
							<button type="submit" id="btncari"></button>
						</form>
						<br />

						<h4>KATEGORI</h4>
						<div style="border-bottom: 1px #ccc solid;margin-top:-20px;margin-bottom:20px;"></div>
						<ul class="list-unstyled">
							<?php foreach ($kat->result() as $i) : ?>
								<li><a href="<?php echo base_url() . 'blog/kategori/' . $i->kategori_id; ?>"><?php echo $i->kategori_nama . ' (' . $i->jml . ')'; ?></a></li>
							<?php endforeach; ?>
						</ul>
						<br />
						<h4>POST POPULER</h4>
						<div style="border-bottom: 1px #ccc solid;margin-top:-20px;margin-bottom:20px;"></div>
						<?php foreach ($populer->result() as $u) : ?>
							<div class="media">
								<div class="media-left">
									<a href="<?php echo base_url() . 'artikel/' . $u->tulisan_id; ?>">
										<img class="media-object" src="<?php echo base_url() . 'assets/images/produk/' . $u->tulisan_gambar; ?>" width="90">
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading"><a href="<?php echo base_url() . 'artikel/' . $u->tulisan_id; ?>"><?php echo $u->tulisan_judul; ?></a></h4>
									<span><small><i>by: <?php echo $u->tulisan_author; ?> | <?php echo $u->tulisan_tanggal; ?></i></small></span>
								</div>
							</div>
						<?php endforeach; ?>

						<br />

						<h4>POST TERBARU</h4>
						<div style="border-bottom: 1px #ccc solid;margin-top:-20px;margin-bottom:20px;"></div>
						<?php foreach ($terbaru->result() as $e) : ?>
							<div class="media">
								<div class="media-left">
									<a href="<?php echo base_url() . 'artikel/' . $e->tulisan_id; ?>">
										<img class="media-object" src="<?php echo base_url() . 'assets/images/produk/' . $e->tulisan_gambar; ?>" width="90">
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading"><a href="<?php echo base_url() . 'artikel/' . $e->tulisan_id; ?>"><?php echo $e->tulisan_judul; ?></a></h4>
									<span><small><i>by: <?php echo $e->tulisan_author; ?> | <?php echo $e->tulisan_tanggal; ?></i></small></span>
								</div>
							</div>
						<?php endforeach; ?>
						<br></br>
						<iframe width="400" height="300" src="https://www.youtube.com/embed/EiegzC2Cwho" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						<iframe width="400" height="300" src="https://www.youtube.com/embed/5osk5PL9J-Q" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</div>
				</div>
			</div>
		</div>



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
	<script type="text/javascript">
		$(document).ready(function() {
			$('#btncari').hide();
		});
	</script>
	<script>
		jQuery(document).ready(function($) {
			$('.popup2').click(function(event) {
				var width = 575,
					height = 400,
					left = ($(window).width() - width) / 2,
					top = ($(window).height() - height) / 2,
					url = this.href,
					opts = 'status=1' +
					',width=' + width +
					',height=' + height +
					',top=' + top +
					',left=' + left;
				window.open(url, 'facebook', opts);
				return false;
			});
		});
	</script>

</body>

</html>