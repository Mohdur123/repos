﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Archiving.aspx.cs" Inherits="Archiving" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Archiving</title>
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/select2/css/select2.min.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/iconmoon/css/iconmoon.css" rel="stylesheet">
    <link href="assets/jquery-ui/css/jquery-ui.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div id="loader">
        <div id="element">
            <div class="circ-one"></div>
            <div class="circ-two"></div>
        </div>
    </div>

    <header> 
            <!-- Start Header top Bar -->
            <div class="header-top">
                <div class="container clearfix">
                    <div class="lang-wrapper">
                        <div class="select-lang">
                            <select class="currency_select">
                                <option value="usd">USD</option>
                                <option value="aud">AUD</option>
                                <option value="gbp">GBP</option>
                            </select>
                        </div>
                        <div class="select-lang2">
                            <select class="custom_select">
                                <option value="en">English</option>
                                <option value="fr">French</option>
                                <option value="de">German</option>
                            </select>
                        </div>
                    </div>
                    <div class="right-block clearfix">
                        <ul class="top-nav hidden-xs">
                            <li><a href="">About</a></li>
                            <li><a href="">Support</a></li>
                            <li><a href="">Career</a></li>
                            <li><a href="">FAQs</a></li>
                        </ul>
                        <ul class="follow-us hidden-xs">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- End Header top Bar --> 

            <!-- Start Navigation -->
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container"> <a class="navbar-brand" href="Default.aspx"><img src="images/logo.png" class="img-fluid" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown"> 
                                <a class="nav-link dropdown-toggle" id="dropdown1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Home</a>
                                <div class="dropdown-menu" aria-labelledby="dropdown1">
                                    <div class="inner"> 
                                        <a class="dropdown-item" href="">Index 1</a> 
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown"> 
                                <a class="nav-link dropdown-toggle" id="dropdown2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Banners</a>
                                <div class="dropdown-menu" aria-labelledby="dropdown2">
                                    <div class="inner"> 
                                        <a class="dropdown-item" href="">Banner Solid</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown"> 
                                <a class="nav-link dropdown-toggle" id="dropdown3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blocks</a>
                                <div class="dropdown-menu megamenu" aria-labelledby="dropdown3">
                                    <div class="inner">
                                        <ul>
                                            <li><a class="dropdown-item" href="">Features Blocks</a></li>
                                        </ul>
                                        <ul>
                                            <li><a class="dropdown-item" href="">Pricing Blocks</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown"> 
                                <a class="nav-link dropdown-toggle" id="dropdown4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog</a>
                                <div class="dropdown-menu" aria-labelledby="dropdown4">
                                    <div class="inner"> 
                                        <a class="dropdown-item" href="">Blog Grid</a> 
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown"> 
                                <a class="nav-link dropdown-toggle" id="dropdown5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">pages</a>
                                <div class="dropdown-menu megamenu" aria-labelledby="dropdown5">
                                    <div class="inner">
                                        <ul>
                                            <li><a class="dropdown-item" href="">About</a></li>
                                        </ul>
                                        <ul>
                                            <li><a class="dropdown-item" href="">Faq 1</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown"> 
                                <a class="nav-link dropdown-toggle" id="dropdown6" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
                                <div class="dropdown-menu" aria-labelledby="dropdown6">
                                    <div class="inner"> 
                                        <a class="dropdown-item" href="">Shop Grid</a> 
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <ul class="navbar-right d-flex">
                            <li><a href="Registration.aspx">Signup</a></li>
                            <li><a href="Login.aspx">Login</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

    <section class="inner-banner">
        <div class="container">
            <div class="contents">
                <h1>Archiving</h1>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <span>Lorem Ipsum has been the industry's standard dummy text ever since</span></p>
            </div>
        </div>
    </section>

    <section class="padding-lg">
            <div class="container">
                <div class="cart-table table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Diagram Name</th>
                                <th>Description</th>
                                <th>Extra</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <figure><img src="images/cart-img1.jpg" alt=""></figure>
                                    <span>sldkjfl</span>
                                </td>
                                <td>description</td>
                                <td>extra content</td>
                            </tr>
                            <tr>
                                <td>
                                    <figure><img src="images/cart-img1.jpg" alt=""></figure>
                                    <span>sldkjfl</span>
                                </td>
                                <td>description</td>
                                <td>extra content</td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </section>

    <section class="signup-outer gradient-bg padding-lg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <ul class="clearfix">
                        <li> <span class="icon-men"></span>
                            <h4>Signup for an <span>Account</span></h4>
                        </li>
                        <li> <span class="icon-chat"></span>
                            <h4>Discuss with <span>our team</span></h4>
                        </li>
                        <li> <span class="icon-lap"></span>
                            <h4>Receive a <span>good support</span></h4>
                        </li>
                    </ul>
                    <div class="signup-form">
                        <form action="#" method="get">
                            <div class="email">
                                <input name="email" type="text" placeholder="email">
                            </div>
                            <div class="password">
                                <input name="password" type="password" placeholder="password">
                            </div>
                            <button class="signup-btn">Sign up Now</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
            <div class="top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-lg-3 mob-acco">
                            <div class="quick-links">
                                <h4>Quick Links</h4>
                                <ul>
                                    <li><a href="">Home</a></li>
                                    <li><a href="">Blog</a></li>
                                    <li><a href="">About Us</a></li>
                                    <li><a href="">How it Works</a></li>
                                    <li><a href="">Features</a></li>
                                    <li><a href="">FAQ</a></li>
                                    <li><a href="">Portfolio</a></li>
                                    <li><a href="">Career</a></li>
                                    <li><a href="">Pricing</a></li>
                                    <li><a href="">Support</a></li>
                                    <li><a href="">Contact Us</a></li>
                                    <li><a href="">Privacy policy</a></li>
                                </ul>
                            </div>
                            <div class="connect-outer">
                                <h4>Connect with Us</h4>
                                <ul class="connect-us">
                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 mob-acco">
                            <div class="recent-post">
                                <h4>Recent Post</h4>
                                <ul class="list-unstyled">
                                    <li class="media">
                                        <figure class="d-flex"><img src="images/rp-thumb1.jpg" class="img-fluid" alt=""></figure>
                                        <div class="media-body">
                                            <h5>A galley of type and scrambled it to make a type.</h5>
                                            <p><span>28 Oct</span> 2017</p>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <figure class="d-flex"><img src="images/rp-thumb2.jpg" class="img-fluid" alt=""></figure>
                                        <div class="media-body">
                                            <h5>A galley of type and scrambled it to make a type.</h5>
                                            <p><span>26 Sep</span> 2017</p>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <figure class="d-flex"><img src="images/rp-thumb3.jpg" class="img-fluid" alt=""></figure>
                                        <div class="media-body">
                                            <h5>A galley of type and scrambled it to make a type.</h5>
                                            <p><span>09 Aug</span> 2017</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-5">
                            <div class="subscribe">
                                <h4>Subscribe  with Us</h4>
                                <p class="hidden-xs">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <div class="input-outer clearfix"> 
                                    <!-- Begin MailChimp Signup Form -->
                                    <div id="mc_embed_signup">
                                        <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                                            <div id="mc_embed_signup_scroll">
                                                <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required>
                                                <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                                <div style="position: absolute; left: -5000px;" aria-hidden="true">
                                                    <input type="text" name="b_cd5f66d2922f9e808f57e7d42_ec6767feee" tabindex="-1" value="">
                                                </div>
                                                <div class="clear">
                                                    <input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <!--End mc_embed_signup--> 
                                </div>
                            </div>
                            <div class="tweet clearfix"> <span class="icon"><i class="fa fa-twitter" aria-hidden="true"></i></span>
                                <div class="right-cnt">
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry' sindustry.</p>
                                    <div class="sourse">Dai Software <span>@daisoftware,</span>
                                        <ul>
                                            <li><a href="#"><i class="fa fa-reply" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom">
                <div class="container"> Copyright © 2018 Dai Software. All Rights Reserved. </div>
            </div>
        </footer>
    <!-- Scroll to top -->
    <a href="#" class="scroll-top"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/select2/js/select2.min.js"></script>
    <script src="assets/jquery-ui/js/jquery-ui.min.js"></script>
    <script src="js/custom.js"></script>
    </form>
</body>
</html>
