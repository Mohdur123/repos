<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserAccount.aspx.cs" Inherits="UserAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>User Account</title>
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
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container"> <a class="navbar-brand" href="Default.aspx"><img src="images/logo.png" class="img-fluid" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown"> 
                            <a class="nav-link" href="Default.aspx" aria-haspopup="true" aria-expanded="false">Home</a>
                        </li>
                        <li class="nav-item dropdown"> 
                            <a class="nav-link" href="#" aria-haspopup="true" aria-expanded="false">Banners</a>
                        </li>
                    </ul>
                    <%--<ul class="navbar-right d-flex">
                        <li><a href="Registration.aspx">Signup</a></li>
                        <li><a href="Login.aspx">Login</a></li>
                    </ul>--%>
                </div>
            </div>
        </nav>
    </header>

    <section class="inner-banner typography-banner">
        <div class="container">
            <div class="contents">
                <h1>Typography</h1>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <span>Lorem Ipsum has been the industry's standard dummy text ever since</span></p>
            </div>
        </div>
    </section>
    <section class="typography-middle">
        <div class="container">
            <ul class="row features-listing">
                <li class="col-md-4">
                    <div class="inner">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since been</p>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="inner">
                        <ul class="blog-tag">
                            <li><a style="margin-top: 35px; href="#">Email Templaes</a></li>
                        </ul>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="inner">
                        <img height="150px" width="300px" src="images/features-ico3.png" alt="">
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="inner">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since been</p>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="inner">
                          <ul class="blog-tag">
                            <li><a style="margin-top: 35px; href="#">Email Templaes</a></li>
                        </ul>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="inner">
                        <img height="150px" width="300px" src="images/features-ico3.png" alt="">
                    </div>
                </li>
            </ul>
        </div>
    </section>

    <footer class="footer">
            <div class="top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-lg-4 mob-acco">
                        </div>
                        <div class="col-md-4 col-lg-4 mob-acco">
                            <div class="connect-outer" style="text-align:center">
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
                        </div>
                    </div>
                </div>
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
