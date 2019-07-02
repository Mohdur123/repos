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
        <section class="login-outer">
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
        <script src="js/jquery.min.js"></script> 
        <script src="js/popper.min.js"></script> 
        <script src="assets/bootstrap/js/bootstrap.min.js"></script> 
        <script src="js/custom.js"></script>
    </form>
</body>
</html>
