<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="information.aspx.cs" Inherits="WebApplication6.information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Durbi</title>
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/select2/css/select2.min.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/iconmoon/css/iconmoon.css" rel="stylesheet">
    <link href="assets/owl-carousel/css/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/magnific-popup/css/magnific-popup.css" rel="stylesheet">
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
                <div class="container">
                    <a class="navbar-brand" href="Default.aspx">
                        <img src="images/logo.png" class="img-fluid" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="Default.aspx" aria-haspopup="true" aria-expanded="false">Home</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#" aria-haspopup="true" aria-expanded="false">Banners</a>
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

        <!-- ==============================================
**Banner Gradient**
=================================================== -->
        <section class="padding-lg">
            <div class="container">
                
                <div class="row">
                    <!-- Start Left -->
                    <div class="col-lg-12">
                        <div class="shipping-address">
                            <h2>Use Case Description</h2>
                            <div class="contact-form-wrapper checkout-form">
                                <div class="row">
                                    <div class="col-md-8 input-col">
                                        <label>Use Case Name<span>*</span></label>
                                        <input name="Use Case Name" type="text" placeholder="">
                                    </div>
                                    <div class="col-md-4 input-col">
                                        <label>ID Number<span>*</span></label>
                                        <input name="ID Number" type="text" placeholder="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 input-col">
                                        <label>Short Description</label>
                                        <input rows="2" name="Short Description"></input>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12 input-col">
                                        <label>Trigger<span>*</span></label>
                                        <input name="Address"></input>
                                    </div>

                                    <div class="col-md-12 input-col">
                                        <label>Type<span>*</span></label>

                                        <div class="radio-outer">
                                            <input type="radio" name="radiogroup" id="radio1">
                                            <label for="radio1">Check payments</label>
                                            <input type="radio" name="radiogroup" id="radio2">
                                            <label for="radio2">Paypal</label>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 input-col">
                                        <label>Primary actor(s)<span>*</span></label>
                                        <input name="Phone" type="text" placeholder="">
                                    </div>
                                    <div class="col-md-6 input-col">
                                        <label>Secondary actor(s)<span>*</span></label>
                                        <input name="Email" type="text" placeholder="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 input-col">
                                        <label>Pre-condition<span>*</span></label>
                                        <input name="Phone" type="text" placeholder="">
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6 input-col">
                                        <label>Extends<span>*</span></label>
                                        <input name="Extends" type="text" placeholder="">
                                    </div>
                                    <div class="col-md-6 input-col">
                                        <label>Includes<span>*</span></label>
                                        <input name="Includes" type="text" placeholder="">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 input-col">
                                        <div class="row">
                                            <div class="col-md-12 input-col">
                                                <label>Major Inputs<span>*</span></label>
                                            </div>
                                            <div class="col-md-7 input-col">
                                                <label>Description<span>*</span></label>
                                                <textarea name="Use Case Name" type="text" placeholder=""></textarea>

                                            </div>
                                            <div class="col-md-5 input-col">
                                                <label>ID Number<span>*</span></label>
                                                <textarea name="ID Number" type="text" placeholder=""></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 input-col">
                                        <div class="row">
                                            <div class="col-md-12 input-col">
                                                <label>Major Inputs<span>*</span></label>
                                            </div>
                                            <div class="col-md-7 input-col">
                                                <label>Description<span>*</span></label>
                                                <textarea name="Use Case Name" type="text" placeholder=""></textarea>

                                            </div>
                                            <div class="col-md-5 input-col">
                                                <label>Destination<span>*</span></label>
                                                <textarea name="ID Number" type="text" placeholder=""></textarea>
                                            </div>
                                        </div>
                                    </div>



                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-12 input-col">
                                                <label>Major Steps Performed<span>*</span></label>
                                                <textarea name="Use Case Name" style="height: 250px" type="text" placeholder=""></textarea>
                                            </div>
                                            <div class="col-md-12 input-col">
                                                <label>Alternate Steps<span>*</span></label>
                                                <textarea name="Alternate Steps" style="height: 150px" placeholder=""></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Information for Steps<span>*</span></label>
                                        <textarea name="Use Case Name" style="height: 450px" placeholder=""></textarea>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 input-col">
                                        <label>Conclusion</label>
                                        <input rows="2" name="Short Description"></input>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12 input-col">
                                        <label>Post-condition(s)</label>
                                        <input rows="2" name="Short Description"></input>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12 input-col">
                                        <label>Business Rules</label>
                                        <input rows="2" name="Short Description"></input>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12 input-col">
                                        <label>Special Requirements</label>
                                        <input rows="2" name="Short Description"></input>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-4 input-col ">
                                    </div>
                                    <div class="col-md-4 input-col ">

                                        <button class="btn large green center">Submit</button>
                                    </div>
                                    <div class="col-md-4 input-col ">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Left -->

                    <!-- Start Right -->
                    <%--<div class="col-lg-4">
                        <div class="checkout-right">
                            <div class="have-coupon">
                                <div class="icon">
                                    <img src="images/coupon-ico.png" alt="">
                                </div>
                                <div class="cnt-right">
                                    <h3>Have a coupon ?</h3>
                                    <a href="#">Click enter your code</a>
                                </div>
                            </div>
                            <div class="cart-total">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th colspan="2">Totals</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>Subtotal</th>
                                            <td>$349</td>
                                        </tr>
                                        <tr>
                                            <th>Shipping</th>
                                            <td>Flat rate: $50</td>
                                        </tr>
                                        <tr>
                                            <th>Total</th>
                                            <td>$349</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="btn-outer">
                                                    <button class="btn revise-btn">Revise Cart</button>
                                                    <button class="btn checkout-btn">Checkout</button>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>--%>
                    <!-- End Right -->
                </div>
            </div>
        </section>

        <!-- ==============================================
**Footer opt1**
=================================================== -->
        <footer class="footer">
            <div class="top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-lg-4 mob-acco">
                        </div>
                        <div class="col-md-4 col-lg-4 mob-acco">
                            <div class="connect-outer" style="text-align: center">
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
        <script src="assets/bxslider/js/bxslider.min.js"></script>
        <script src="assets/owl-carousel/js/owl.carousel.min.js"></script>
        <script src="assets/magnific-popup/js/magnific-popup.min.js"></script>
        <script src="js/custom.js"></script>
    </form>
</body>
</html>
