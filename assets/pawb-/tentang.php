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
                                <li><a href="wisata_pemandian">Pemandian</a></li>
                            </ul>
                        </li>                    
                        <li class="dropdown"><a><h5>Wisata Edukasi <i class="fa fa-angle-down"></i></h5></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="wisata_taman.php">Taman</a></li>
                                <li><a href="wisata_candi.php">Candi</a></li>
                                <li><a href="wisata_kampung.php">Kampung Wisata</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="wisata_tongkrongan.php"><h5>Tongkrongan</h5></a></li>
                        <li class="active"><a href="tentang.php"><h5>Tentang</h5></a></li>                    
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!--/#header-->

    <section id="coming-soon">        
         <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">                    
                    <div class="text-center coming-content">
                        <h1><b>BERNIMAN GOFINDO MALAU</b></h1>
                        <p><h3>S1 Teknik Informatika '19 | Universitas Nusa Putra Sukabumi<br>
                        Website Sistem Informasi Pariwisata The Caldera Sumatera Utara<br>
                        Pengembangan Aplikasi Berbasis Web</h3><br>
                       <h3> <b>Dosen Pengampu : MUHAMMAD IKHSAN THOHIR M.KOM</b></h3></p>                           
                        <div class="social-link">
                            <span><a href="https://web.facebook.com/berniman.malau/"><i class="fa fa-facebook"></i></a></span>
                            <span><a href="https://www.instagram.com/gofindo.17/"><i class="fa fa-instagram"></i></a></span>
                            <span><a href="mailto:govindo1706@gmail.com"><i class="fa fa-google-plus"></i></a></span>
                        </div>
                    </div>                    
                </div>
                <div class="col-sm-12">
                    <div class="time-count">
                        <ul id="countdown">
                            <li class="angle-one" >
                            </li>
                            <li class="angle-two"> 
                            </li>
                            <li class="angle-three">
                            </li>                            
                            <li class="angle-four">
                            </li>               
                        </ul>   
                    </div>
                </div>
            </div>
        </div>       
    </section>
    <!--/#action-->

    <section id="map-section">
        <div class="container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.04736231402!2d98.66649179999999!3d3.5765876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3031302c6af37423%3A0xe6025bb22f3329fd!2sBadan%20Pelaksana%20Otorita%20Danau%20Toba!5e0!3m2!1sid!2sid!4v1631172895961!5m2!1sid!2sid" width="1150" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            <div class="contact-info">
                <h2><b>Kontak</b></h2>
                <address>
                E-mail: <a href="mailto:govindo1706@gmail.com">govindo1706@gmail.com</a> <br> 
                Phone: 0812-8718-9069 <br> 
                Sosial Media : gofindo.17 <br> 
                </address>

                <h2><b>Alamat</b></h2>
                <address>
                Pardamean Sibisa, Dusun II, The Caldera Toba <br>
                Kecamatan Ajibata, <br> 
                Kabupaten Toba Samosir, <br> 
                Sumatera Utara 22386 <br> 
                </address>
            </div>
        </div>
    </section> <!--/#map-section-->        

<?php include 'footer.php'; ?>