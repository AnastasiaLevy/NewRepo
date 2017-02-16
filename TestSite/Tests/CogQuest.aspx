﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CogQuest.aspx.cs" Inherits="TestSite.Tests.CogQuest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Nback" />
    <meta name="author" content="AnaLevy" />
    <title>CogQuest</title>
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
    <link href="../cogTest.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/previewer.css" rel="stylesheet" />
    <script src="../js/jquery.js"></script>
    <script src="../js/previewer.js"></script>
    <script src="https://use.fontawesome.com/0138464303.js"></script>
</head>

<body data-spy="scroll" runat="server">
    <form runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="~/MainPage.aspx">
                        <i class="fa fa-cogs" aria-hidden="true">Quiz</i>
                    </a>

                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu">
                        <li><a href="../MainPage.aspx">Home</a></li>
                        <li class="active"><a href="#about">About</a></li>
                        <li id="profOpt" runat="server"><a href="../UserProfile.aspx">Profile</a></li>
                        <li id="login" runat="server"><a href="../Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="logOut" class="btn button" type="submit" runat="server">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <section id="about">
            <div class="container testDescription">
                <h2>CogQuest Simple Questionnaire</h2>
                <hr />
                <p>
                 CogQuest Quesionnaire desktop tool allows to create a series of questions to gather any needed inforamtionn from participants.
                 It has 7 type of questions, including Date and Dropdown.
                    CogQuest allows storing data in text tile for printing or Excel Document for easy export to SPSS.
                    
                </p>
                <div class="panel-group testDescription " id="accordion" role="tablist" aria-multiselectable="true">
             
                    <div class="col-md-3 visible">
                        <p>
                            <asp:LinkButton ID="LinkButton1"  class="btn btn-primary btn-lg btn-block" runat="server">View User Manual</asp:LinkButton>
                        </p>
                    </div>
                                <div class="col-md-3 visible">
                        <p>
                            <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button"
                                 data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse4">
                                View Examples
                            </button>
                        </p>
                    </div>
                    <div class="panel">
                        <div id="collapse1" class=" collapse col-md-12">
                            <h3>Examples:</h3>
                            <div class="gallery-wrapper">
                               
                                <img src="../images/quest1.png" alt="" class="g-image" />
                                <img src="../images/quest2.png" alt="" class="g-image" />
                                <img src="../images/quest3.png" alt="" class="g-image" />
                                <img src="../images/quest4.png" alt="" class="g-image" />
                                <img src="../images/quest5.png" alt="" class="g-image" />
                                <img src="../images/quest6.png" alt="" class="g-image" />
                                <img src="../images/quest7.png" alt="" class="g-image" />

                                <p class="clear"></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
              <div class="container right">
               <asp:LinkButton ID="runTest" runat="server" class="signup-btn"  OnClick="runTest_Click">Download</asp:LinkButton>
                  </div>
        </section>

        <section class="container" >
  
        </section>


        <section id="price" runat="server">
            <div id="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="circle c1 img-circle">
                                <h4 class="blue">One Install</h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">45</span>
                                <span class="price-small">.00</span>
                                <p>Install on 1 computer</p>
                                <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-4">
                            <div class="circle c2 img-circle">
                                <h4 class="yellow">3 Installs</h4>
                                <span class="icon yellow"><i class="fa fa-usd"></i></span>
                                <span class="price-large yellow">100</span>
                                <span class="price-small">.00</span>
                                <p>Install on 3 computers</p>
                                <asp:Button ID="ten" class="btn btn-warning" runat="server" OnClick="ten_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-4">
                            <div class="circle c3 img-circle">
                                <h4 class="green">Custom</h4>
                                <span class="price-large green">Call</span>
                                <span class="price-small">for<span class="icon green"><i class="fa fa-usd "></i></span></span>
                                <p>Call for custom order</p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <%--            <div class="col-md-3">
                            <div class="circle c4 img-circle">
                                <h4 class="red">Unlimited Use</h4>
                                <span class="icon red"><i class="fa fa-usd "></i></span>
                                <span class="price-large red">600</span>
                                <span class="price-small">,00</span>
                                <p>
                                    Any Number of Participants
                                <p>

                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server"  Text="Call Us" />
                            </div>
                        </div>--%>
                        <!-- .Col-md-3 ends here -->
                    </div>
                    <!-- .Container ends here -->
                </div>
                <!-- .Row ends here -->
            </div>
        </section>
    </form>
</body>
<script>

</script>
        <script src="../js/bootstrap.min.js"></script>
    <script>

        $(document).ready(function () {
            $('.gallery-wrapper').previewer({});
            $('.custom-menu a[href^="#"], .intro-scroller .inner-link').on('click', function (e) {
                e.preventDefault();

                var target = this.hash;
                var $target = $(target);

                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top
                }, 900, 'swing', function () {
                    window.location.hash = target;
                });
            });

            $('a.page-scroll').bind('click', function (event) {
                var $anchor = $(this);
                $('html, body').stop().animate({
                    scrollTop: $($anchor.attr('href')).offset().top
                }, 1500, 'easeInOutExpo');
                event.preventDefault();
            });

            $(".nav a").on("click", function () {
                $(".nav").find(".active").removeClass("active");
                $(this).parent().addClass("active");
            });

            $('body').append('<div id="toTop" class="btn btn-primary color1"><span class="glyphicon glyphicon-chevron-up"></span></div>');
            $(window).scroll(function () {
                if ($(this).scrollTop() != 0) {
                    $('#toTop').fadeIn();
                } else {
                    $('#toTop').fadeOut();
                }
            });
            $('#toTop').click(function () {
                $("html, body").animate({ scrollTop: 0 }, 700);
                return false;
            });

        });
    </script>
</html>
