<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>The Caldera | Gofindo's Home</title>
    <link href="images/kaldera.png" rel="icon">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet"> 
    <link href="css/lightbox.css" rel="stylesheet"> 
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
</head><!--/head-->
<?php include 'koneksi.php'; ?>
<body>
    <header id="header">      
        <div class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="index.php">
                        <h1><img src="images/kaldera.png" alt="logo"></h1>
                    </a>
                    
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.php"><h5>Beranda</h5></a></li>
                        <li class="dropdown"><a href="#"><h5>Wisata Alam<i class="fa fa-angle-down"></i></h5></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="wisata_pegunungan.php">Pendakian</a></li>
                                <li><a href="wisata_airterjun.php">Air Terjun</a></li>
                                <li><a href="wisata_goa.php">Goa</a></li>
                                <li><a href="wisata_pemandian.php">Pemandian</a></li>
                            </ul>
                        </li>                    
                        <li class="dropdown"><a><h5>Wisata Edukasi <i class="fa fa-angle-down"></i></h5></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="wisata_taman.php">Taman</a></li>
                                <li><a href="wisata_candi.php">Candi</a></li>
                                <li><a href="wisata_kampung.php">Kampung Wisata</a></li>
                            </ul>
                        </li>
                        <li class="active" class="dropdown"><a href="wisata_tongkrongan.php"><h5>Tongkrongan</h5></a></li>
                        <li><a href="tentang.php"><h5>Tentang</h5></a></li>                    
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!--/#header-->
    
    <section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title"><b>Nongkrong kuy</b></h1>
                            <p>Kawasan Danau Toba, Sumatera Utara</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/#page-breadcrumb-->  
    <section id="blog" class="padding-bottom">
        <div class="container">
            <div class="row">
                <div class="timeline-blog overflow padding-top">
                    <div class="timeline-date text-center">
                        <a href="#" class="btn btn-common uppercase">CAFE</a>
                    </div> 
                    <div class="timeline-divider overflow padding-bottom">
                        <div class="col-sm-6 padding-right arrow-right wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                            <?php
                            $sql = "SELECT * from tbtongkrongan WHERE kdcafe=1";
                            $hsl = mysqli_query($con, $sql);
                            while ($data=mysqli_fetch_array($hsl)) {
                            $id = $data["kdcafe"];
                            $nama = $data["nama"];
                            $lokasi = $data["lokasi"];
                            $ket = $data["ket"];
                            $cover = $data["cover"];
                            $kdkategori = $data["kdkategori"];
                            $waktu = $data["waktu"];
                            $tgl = $data["tgl"];
                            ?> 
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                        <?php echo "<img src='images/wisata/$data[cover]' class='img-responsive' />";?>
                                    </div>
                                </div>
                                <div class="post-content overflow">
                                    <h2 class="post-title bold"><a><b><?php echo "$nama";  ?></b></a></h2>
                                    <h3 class="post-author"><a>Posted by Gofindo</a></h3>
                                    <p><?php echo "$ket";  ?></p>
                                    <b>Lokasi : </b><a class="read-more"><?php echo "$lokasi";  ?></a>
                                    <div class="post-bottom overflow">
                                        <span class="comments-number pull-right"><a><?php echo "$tgl";  ?></a></span>
                                    </div>
                                </div>
                            </div> <?php } ?>
                        </div>
                        <div class="col-sm-6 padding-left padding-top arrow-left wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                    <?php
                                    $sql = "SELECT * from tbtongkrongan WHERE kdcafe=2";
                                    $hsl = mysqli_query($con, $sql);
                                    while ($data=mysqli_fetch_array($hsl)) {
                                    $id = $data["kdcafe"];
                                    $nama = $data["nama"];
                                    $lokasi = $data["lokasi"];
                                    $ket = $data["ket"];
                                    $cover = $data["cover"];
                                    $kdkategori = $data["kdkategori"];
                                    $waktu = $data["waktu"];
                                    $tgl = $data["tgl"];
                                    ?> 
                                        <?php echo "<img src='images/wisata/$data[cover]' class='img-responsive' />";?>
                                    </div>
                                </div>
                                <div class="post-content overflow">
                                    <h2 class="post-title bold"><a><b><?php echo "$nama";  ?></b></a></h2>
                                    <h3 class="post-author"><a>Posted by Gofindo</a></h3>
                                    <p><?php echo "$ket";  ?></p>
                                    <b>Lokasi : </b><a class="read-more"><?php echo "$lokasi";  ?></a>
                                    <div class="post-bottom overflow">
                                        <span class="comments-number pull-right"><a><?php echo "$tgl";  ?></a></span>
                                    </div>
                                </div>
                            </div> <?php } ?>
                        </div>
                    </div>
                </div>
                    <div class="timeline-date text-center">
                        <a href="#" class="btn btn-common uppercase">CAFE</a>
                    </div> 
                    <div class="timeline-divider overflow padding-bottom">
                        <div class="col-sm-6 padding-right arrow-right wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                            <?php
                            $sql = "SELECT * from tbtongkrongan WHERE kdcafe=3";
                            $hsl = mysqli_query($con, $sql);
                            while ($data=mysqli_fetch_array($hsl)) {
                            $id = $data["kdcafe"];
                            $nama = $data["nama"];
                            $lokasi = $data["lokasi"];
                            $ket = $data["ket"];
                            $cover = $data["cover"];
                            $kdkategori = $data["kdkategori"];
                            $waktu = $data["waktu"];
                            $tgl = $data["tgl"];
                            ?> 
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                        <?php echo "<img src='images/wisata/$data[cover]' class='img-responsive' />";?>
                                    </div>
                                </div>
                                <div class="post-content overflow">
                                    <h2 class="post-title bold"><a><b><?php echo "$nama";  ?></b></a></h2>
                                    <h3 class="post-author"><a>Posted by Gofindo</a></h3>
                                    <p><?php echo "$ket";  ?></p>
                                    <b>Lokasi : </b><a class="read-more"><?php echo "$lokasi";  ?></a>
                                    <div class="post-bottom overflow">
                                        <span class="comments-number pull-right"><a><?php echo "$tgl";  ?></a></span>
                                    </div>
                                </div>
                            </div> <?php } ?>
                        </div>
                        <div class="col-sm-6 padding-left padding-top arrow-left wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                    <?php
                                    $sql = "SELECT * from tbtongkrongan WHERE kdcafe=4";
                                    $hsl = mysqli_query($con, $sql);
                                    while ($data=mysqli_fetch_array($hsl)) {
                                    $id = $data["kdcafe"];
                                    $nama = $data["nama"];
                                    $lokasi = $data["lokasi"];
                                    $ket = $data["ket"];
                                    $cover = $data["cover"];
                                    $kdkategori = $data["kdkategori"];
                                    $waktu = $data["waktu"];
                                    $tgl = $data["tgl"];
                                    ?> 
                                        <?php echo "<img src='images/wisata/$data[cover]' class='img-responsive' />";?>
                                    </div>
                                </div>
                                <div class="post-content overflow">
                                    <h2 class="post-title bold"><a><b><?php echo "$nama";  ?></b></a></h2>
                                    <h3 class="post-author"><a>Posted by Gofindo</a></h3>
                                    <p><?php echo "$ket";  ?></p>
                                    <b>Lokasi : </b><a class="read-more"><?php echo "$lokasi";  ?></a>
                                    <div class="post-bottom overflow">
                                        <span class="comments-number pull-right"><a><?php echo "$tgl";  ?></a></span>
                                    </div>
                                </div>
                            </div> <?php } ?>
                        </div>
                    </div>
            </div>
        </div>
    </section>
    <!--/#blog-->
<?php include 'footer.php'; ?>
