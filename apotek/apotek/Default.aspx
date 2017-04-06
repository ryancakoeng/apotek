﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Home - Apotik Sumber Jaya</title>
    <link href="Content/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/css/custom.css" rel="stylesheet" type="text/css" />
    <link rel="Shortcut Icon" href="images/favicon.ico" />
    <link href="Content/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"  rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div id="logo">
            <a href="Default.aspx"><img src="images/logo1.png" alt="Freshdesign" /></a>
        </div>
    </div>
    <!-- Navigation -->
            <nav class="navbar navbar-default" role="navigation">
            <div class="container">
            <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNav">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            </div>
            <div class="collapse navbar-collapse" id="myNav">
            <ul class="nav navbar-nav">
            <li class="active"><a href="Karyawan.aspx">Karyawan</a></li>
            <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pelanggan <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li class="active"><a href="Pelanggan.aspx">Lihat Data Pelanggan</a></li>
            <li><a href="tambah_pelanggan.aspx">Input Data Pelanggan</a></li>
            </ul>
            </li>
                <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Supplier <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li class="active"><a href="Supplier.aspx">Lihat Data Supplier</a></li>
            <li><a href="tambah_supplier.aspx">Input Data Supplier</a></li>
            </ul>
            </li>
                <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Obat <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li class="active"><a href="Obat.aspx">Lihat Data Obat</a></li>
            <li><a href="tambah_obat.aspx">Input Data Obat</a></li>
            </ul>
            </li>
                <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Faktur Penjualan <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li class="active"><a href="Fakturp.aspx">Lihat Faktur Penjualan</a></li>
            <li><a href="tambah_fakturp.aspx">Input Faktur Penjualan</a></li>
            </ul>
            </li>
                <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Faktur Supply <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li class="active"><a href="Fakturs.aspx">Lihat Faktur Supply</a></li>
            <li><a href="tambah_fakturs.aspx">Input Faktur Supply</a></li>
            </ul>
            </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
            <li><a href="Logout.aspx" ><span class="glyphicon glyphicon-user"></span> Logout</a></li>
            </ul>
            </div>
            </div>   
            </nav>
    <%--<!-- Modal -->
    <div id="myModal" class="modal fade in" role="dialog">
        <div class="modal-dialog">
            <!-- Modal Content -->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times</button>
                    <h4 class="modal-title">
                        Sign-In</h4>
                </div>
                <div class="modal-body">
                    <div role="form">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        </div>
                        <hr class="divider">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <asp:CheckBox ID="chkRemberme" runat="server" Text="Remember Me" CssClass="checkbox-inline" />
                                    |
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-primary">Forgot Password ?</asp:LinkButton>
                                </div>
                                <div class="col-sm-6">
                                    <span class="pull-right">
                                        <asp:Button ID="btnSumbit" CssClass="btn btn-success" runat="server" Text="Submit" /></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Landing Page -->
    <div class="intro-header">
        <div class="container">
            <div class="row">
                <div class="intro-message col-sm-6">
                    <h1>
                        Bootstrap3</h1>
                    <h2>
                        Templates
                    </h2>
                    <h3>
                        for Dot.Net Developers</h3>
                    <hr class="intro-divider">
                    <ul class="list-inline intro-social-buttons">
                        <li><a href="https://twitter.com/" class="btn btn-success btn-lg"><i class="fa fa-twitter fa-fw">
                        </i><span class="network-name">Twitter</span></a> </li>
                        <li><a href="https://github.com/" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw">
                        </i><span class="network-name">Github</span></a> </li>
                        <li><a href="#" class="btn btn-primary btn-lg"><i class="fa fa-facebook fa-fw"></i><span
                            class="network-name">facebook</span></a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Start Our Services -->
    <div id="our-services">
        <div class="container padding-top padding-bottom">
            <div class="row section-title text-center">
                <div class="col-sm-8 col-sm-offset-2">
                    <h1>
                        <span>Apotik</span> Sumber Jaya</h1>
                    <p>
                        Apotek Online pertama di Indonesia yang "benar-benar" buka 24 Jam non Stop dan terlengkap di Indonesia. Hal ini memudahkan masyarakat Indonesia mendapatkan obat kapan saja, di mana saja dengan cepat. Obat diantar oleh Apotek terdekat ke lokasi pasien. Ya, secara otomatis sistem menentukan Apotek terdekat untuk mengantar obat ke rumah/kantor/lokasi pasien. 
                </div>
            </div>
           <%-- <div class="row text-center">
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <i class="fa fa-desktop"></i>
                        <h2>
                            Responsive Layout</h2>
                        <p>
                            The most remarkable feature of time is its preciousness. Its value is unfathomable
                            and its power is inestimable.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <i class="fa fa-bell"></i>
                        <h2>
                            Clean Design</h2>
                        <p>
                            The most remarkable feature of time is its preciousness. Its value is unfathomable
                            and its power is inestimable.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <i class="fa fa-coffee"></i>
                        <h2>
                            Great Support</h2>
                        <p>
                            The most remarkable feature of time is its preciousness. Its value is unfathomable
                            and its power is inestimable.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <i class="fa fa-bug"></i>
                        <h2>
                            Good Features</h2>
                        <p>
                            The most remarkable feature of time is its preciousness. Its value is unfathomable
                            and its power is inestimable.
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <i class="fa fa-copyright"></i>
                        <h2>
                            Copywriting</h2>
                        <p>
                            The most remarkable feature of time is its preciousness. Its value is unfathomable
                            and its power is inestimable.
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <i class="fa fa-power-off"></i>
                        <h2>
                            Web design</h2>
                        <p>
                            The most remarkable feature of time is its preciousness. Its value is unfathomable
                            and its power is inestimable.
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <i class="fa fa-adjust"></i>
                        <h2>
                            Programming</h2>
                        <p>
                            The most remarkable feature of time is its preciousness. Its value is unfathomable
                            and its power is inestimable.
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <i class="fa fa-briefcase"></i>
                        <h2>
                            Marketing &amp; PR</h2>
                        <p>
                            The most remarkable feature of time is its preciousness. Its value is unfathomable
                            and its power is inestimable.
                        </p>
                    </div>
                </div>--%>
            </div>
        </div>
        <div class="height">
        </div>
    </div>
    <!-- /# Our Services -->
    <!-- Slider -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/333.jpg" />
            </div>
            <div class="item">
                <img src="images/444.jpg" />
            </div>
            <div class="item">
                <img src="images/555.jpg" />
                <%--  <div class="carousel-caption">
                    <h2>
                        Slide Three</h2>
                    <h3>
                        Bootstrap is completely free to download and use!</h3>
                </div>--%>
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                    data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                    </span><span class="sr-only">Next</span> </a>
    </div>
    <%--<div class="container padding-bottom">
        <div class="row section-title text-center">
            <div class="col-sm-8 col-sm-offset-2">
                <h1>
                    <span>Our</span> Clients</h1>
                <p>
                    aspxtemplates is a Powerful, Modern looking, Creative, Fully Responsive Multi-Purpose
                    Multi-Page & One-Page .net Template.. Be it Business, Corporate, Portfolio, Agency,
                    Magazine, Parallax, Blog etc.</p>
            </div>
        </div>
        <div class="text-center our-clients">
            <ul>
                <li><a href="#">
                    <img class="img-responsive" src="images/client1.png" alt="" /></a></li>
                <li><a href="#">
                    <img class="img-responsive" src="images/client2.png" alt="" /></a></li>
                <li><a href="#">
                    <img class="img-responsive" src="images/client3.png" alt="" /></a></li>
                <li><a href="#">
                    <img class="img-responsive" src="images/client4.png" alt="" /></a></li>
                <li><a href="#">
                    <img class="img-responsive" src="images/client5.png" alt="" /></a></li>
            </ul>
        </div>
        <!--/our-clients -->
    </div>
    <!-- footer -->
    <footer id="footer">
		<!-- footer-widget-wrapper -->
		<div class="footer-widget-wrapper">
			<div class="container">
				<div class="row">

					<!-- footer-widget -->				
					<div class="col-md-3 col-sm-6">
						<div class="footer-widget text-widget">
							<a href="index.html" class="footer-logo"> <img src="images/logo.png" class="img-responsive" /></a>
							<p>A web template system uses a template processor to combine web templates to form finished web pages, possibly using some data source to customize the pages or present a large amount of content on similar-looking pages.</p>
							<ul class="social list-inline">
								<li><a href="#"><i class="fa fa-skype"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							</ul>
						</div>
					</div><!-- footer-widget -->

					<!-- footer-widget -->				
					<div class="col-md-3 col-sm-6">
						<div class="footer-widget contact-widget">
							<h1><span>Contact</span> Info</h1>
							<p><i class="fa fa-map-marker"></i><strong>Address: </strong>102580 Cloud Libra L <br>YP. HYD BANGLORE</p>
							<p><i class="fa fa-phone"></i><strong>Phone: <a href="tel:+9687542521">+3 045 224 55 15</a></strong></p>
							<p><i class="fa fa-envelope"></i><strong>E-mail: <a href="mailto:info@aspxtemplates.com">info@aspxtemplates.com</a></strong></p>
						</div>
					</div><!-- footer-widget -->

					<!-- footer-widget -->				
					<div class="col-md-3 col-sm-6">
						<div class="footer-widget twitter-widget">
							<h1><span>Twitter</span> Feed</h1>
							<p><i class="fa fa-twitter"></i>about twitter follow</p>
							<p>Twitteris an online social networking service that enables users to send and read short 140-character messages called "tweets".</p>
						</div>
					</div><!-- footer-widget -->

					<!-- footer-widget -->				
					<div class="col-md-3 col-sm-6">
						<div class="footer-widget instagram-widget">
							<h1><span>Facebook</span> Feed</h1>		
                            <p><i class="fa fa-facebook"></i> Facebook</p>
                            <p>
                            Facebook is an online social networking service headquartered in Menlo Park, California. Its website was launched on February 4, 2004, by Mark Zuckerberg with his college roommates and fellow Harvard University students Eduardo Saverin, Andrew McCollum, Dustin Moskovitz and Chris Hughes.
                            </p>					
						</div>
					</div><!-- footer-widget -->
				</div>
			</div>
		</div><!-- footer-widget-wrapper -->--%>

		<!-- footer-bottom -->
    <footer id="footer">
		<div class="footer-bottom">
			<div class="container">
				<div class="row">				
					<div class="col-sm-6">
						<ul class="footer-menu list-inline">
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
						</ul>
					</div>

					<div class="col-sm-6">
						<div class="copy-right text-right">
							<p>&copy; Copyright <strong>aspxtemplates</strong> by <a href="http://www.aspxtemplates.com">www.aspxtemplates.com</a></p>
						</div>
					</div>
				</div>
			</div>
		</div><!-- footer-bottom -->
	</footer>
    <!--/#footer-->
    <!-- Script -->
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="Scripts/html5shiv.js" type="text/javascript"></script>
    </form>
</body>
</html>
