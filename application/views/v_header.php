<nav class="navbar navbar-expand-lg navbar-default bg-light navbar-fixed-top">
    <div class="container">
        <img src="<?php echo base_url(); ?>assets/images/honda.png" width="200" height="70">
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