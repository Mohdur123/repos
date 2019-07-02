<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login</title>
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
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
       <%-- <section class="login-outer">--%>
         <section class="">
            <div class="content-area">
                <div class="login-form-holder">
                    <div class="inner">
                        <div class="login-form">
                            <h3>Login Now</h3>
                                <div class="mail">
                                    <label>Email Address</label>
                                    <input name="Email Address" placeholder="" type="text">
                                </div>
                                <div class="password">
                                    <label>Password</label>
                                    <input name="Password" placeholder="" type="text">
                                </div>
                                <div class="forgot">
                                    <label>
                                        <input value="" type="checkbox">
                                        <span>Remember me</span></label>
                                    <a href="#"><span class="q-mark">?</span>Forgot password</a> </div>
                                <button class="btn login-btn">Login Now</button>
                        </div>
                        <div class="social-media-box">
                            <p>Or Sign In With</p>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box-hav-accnt">
                        <p>Don't have an account? <a href="Registration.aspx">Sign up</a></p>
                    </div>
                </div>
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
        <script src="js/jquery.min.js"></script> 
        <script src="js/popper.min.js"></script> 
        <script src="assets/bootstrap/js/bootstrap.min.js"></script> 
        <script src="js/custom.js"></script>
    </form>
</body>
</html>
