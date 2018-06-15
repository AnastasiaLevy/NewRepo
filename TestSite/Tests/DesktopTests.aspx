<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesktopTests.aspx.cs" MasterPageFile="~/Layout.Master" Inherits="TestSite.Tests.DesktopTests" 
    culture="auto" uiculture="auto" Title="" meta:resourcekey="pagetitle"%>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content=" For Academics, Researchers, Practitioners and more. Cognitive test online, cognitive ability test online from CogQuiz." />
    <meta name="keywords" content="Keywords: Cognitive Style Questionnaire, Cognitive Test Online Practice, Cognitive Ability Test Online" />
    <meta name="author" content="CogQuiz" />
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <link href="../cogTest.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/previewer.css" rel="stylesheet" />
    <script src="../js/jquery.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
    
    <style>
        #headerSlider {
            width: 260px;
            height: auto;
            position: absolute;
            right: 0;
            border: 1px solid #d8d8d8;
            margin-left: 40px;
            padding: 20px 40px;
            border-radius: 3px;
            box-shadow: 0 0 8px gray;
            background-color: lavenderblush;
            z-index: 1000;
            overflow: hidden;
        }

        #slider {
            width: 500px;
            top: 100px;
            position: fixed;
        }

        #sidebar {
            position: absolute;
            top: 20px;
            left: 113px;
            box-shadow: 0 0 8px gray;
        }

        #sidebar1 {
            position: absolute;
            top: 20px;
            left: 113px;
            box-shadow: 0 0 8px gray;
        }

        .round-button {
            display: block;
            width: 50px;
            height: 50px;
            line-height: 50px;
            border: 2px solid #f5f5f5;
            color: #f5f5f5;
            text-align: center;
            text-decoration: none;
            background: #464646;
            box-shadow: 0 0 3px gray;
            font-size: 20px;
            font-weight: bold;
        }

            .round-button:hover {
                background: #262626;
            }
    </style>
    <script src="../js/previewer.js"></script>
    <script src="https://use.fontawesome.com/0138464303.js"></script>

</asp:Content>

<asp:Content ContentPlaceHolderID="MenuItemLi" runat="server">
    <li class=""><a href="#contact"><asp:Localize meta:resourcekey="navbar_order"  runat="server" ID="Localize51" Text="" /></a></li>
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <script>
        
            $(document).ready(function () {
                for (var i = 1; i <= 6; i++) {

                //$('#left' + (i)).css('opacity', 0);
                //$('#right' + (i)).css('opacity', 0);

                $('#left' + (i)).waypoint(function () {
                    $(this.element).addClass('animated bounceInLeft');
                    $(this.element).css('opacity', 1);
                }, { offset: '100%' });

            $('#right' + (i)).waypoint(function () {
                $(this.element).addClass('animated bounceInRight');
            $(this.element).css('opacity', 1);
                    }, {offset: '100%' });
                }
            });
        
        /*
    ------------------------------------------------------------
    Function to activate form button to open the slider.
    ------------------------------------------------------------
    */
        function open_panel() {

            slideIt();
            var a = document.getElementById("sidebar");
            a.setAttribute("id", "sidebar1");
            a.setAttribute("onclick", "close_panel()");
        }
        /*
        ------------------------------------------------------------
        Function to slide the sidebar form (open form)
        ------------------------------------------------------------
        */
        function slideIt() {
            var slidingDiv = document.getElementById("slider");
            var stopPosition = 0;
            if (parseInt(slidingDiv.style.right) < stopPosition) {
                slidingDiv.style.right = parseInt(slidingDiv.style.right) + 2 + "px";
                setTimeout(slideIt, 1);
            }
        }
        /*
        ------------------------------------------------------------
        Function to activate form button to close the slider.
        ------------------------------------------------------------
        */
        function close_panel() {
            slideIn();
            a = document.getElementById("sidebar1");
            a.setAttribute("id", "sidebar");
            a.setAttribute("onclick", "open_panel()");
        }
        /*
        ------------------------------------------------------------
        Function to slide the sidebar form (slide in form)
        ------------------------------------------------------------
        */
        function slideIn() {
            var slidingDiv = document.getElementById("slider");
            var stopPosition = -300;
            if (parseInt(slidingDiv.style.right) > stopPosition) {
                slidingDiv.style.right = parseInt(slidingDiv.style.right) - 2 + "px";
                setTimeout(slideIn, 1);
            }
        }
    </script>

    <%--<div class="fix-left-menu">
        <a href="#london">Tower Of London</a>
        <a href="#cardSort">Card Sort</a>
        <a href="#CPT">CPT</a>
        <a href="#hanoi">Tower of Hanoi</a>
        <a href="#reaction">Reaction Time</a>
        <a href="#trails">Trails</a>
    </div>--%>

    <div id="slider" style="right: -300px;">
        <div id="sidebar" onclick="open_panel()">
            <a class="round-button">+</a>
        </div>
        <div id="headerSlider">
            <h4><asp:Localize meta:resourcekey="GoTo"  runat="server" ID="Localize46" Text="" /><span id="closeButton" class="form-slide-close pull-right" onclick="close_panel();  ">X</span></h4>
            <%--<p><a href="#intro">About Cognitive Testing</a></p>--%>
            <p>
                <li><a href="#london"><asp:Localize meta:resourcekey="GoToTOL"  runat="server" ID="Localize1" Text="" /></a></li>
            </p>
            <p>
                <li class=""><a href="#cardSort"><asp:Localize meta:resourcekey="GoToCS"  runat="server" ID="Localize2" Text="" /></a></li>
            </p>
            <p>
                <li class=""><a href="#CPT"><asp:Localize meta:resourcekey="GoToCPT"  runat="server" ID="Localize3" Text="" /></a></li>
            </p>
            <p>
                <li class=""><a href="#hanoi"><asp:Localize meta:resourcekey="GoToTOH"  runat="server" ID="Localize4" Text="" /></a></li>
            </p>
            <p>
                <li class=""><a href="#reaction"><asp:Localize meta:resourcekey="GoToRT"  runat="server" ID="Localize5" Text="" /></a></li>
            </p>
            <p>
                <li class=""><a href="#trails"><asp:Localize meta:resourcekey="GoToTrails"  runat="server" ID="Localize6" Text="" /></a></li>
            </p>
        </div>
    </div>


    <%--<form runat="server">--%>
        <!-- Navigation -->
        <%--<nav class="navbar navbar-inverse navbar-fixed-top">
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
                        <li><a href="../MainPage.aspx"><asp:Localize meta:resourcekey="navbar_home"  runat="server" ID="Localize45" Text="" /></a></li>
                        <li class="active"><a href="#about"><asp:Localize meta:resourcekey="navbar_about"  runat="server" ID="Localize46" Text="" /></a></li>
                        <li class=""><a href="#contact"><asp:Localize meta:resourcekey="navbar_order"  runat="server" ID="Localize47" Text="" /></a></li>
                        <li id="profOpt" runat="server"><a href="../UserProfile.aspx"><asp:Localize meta:resourcekey="navbar_profile"  runat="server" ID="Localize48" Text="" /></a></li>
                        <li id="login" runat="server"><a href="../Login.aspx"><asp:Localize meta:resourcekey="navbar_login"  runat="server" ID="Localize49" Text="" /></a></li>
                        <li>
                            <asp:LinkButton ID="logOut" class="" type="submit" OnClick="logOut_Click" runat="server"><asp:Localize meta:resourcekey="navbar_logout"  runat="server" ID="Localize50" Text="" /></asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>--%>

        <%--<div class="sidebar-nav" style="position: fixed; margin-top: 10%">
            <div class="well" style="width: 120px; padding: 8px 0;">
                <ul class="nav nav-list">

                    <li class=""><a href="#london">Tower Of London</a></li>
                    <li class=""><a href="#cardSort">Card Sort</a></li>
                    <li class=""><a href="#CPT">CPT</a></li>
                    <li class=""><a href="#hanoi">Tower of Hanoi</a></li>
                    <li class=""><a href="#reaction">Reaction Time</a></li>
                    <li class=""><a href="#trails">Trails</a></li>

                </ul>
            </div>
        </div>--%>

        <section id="about">
            <div class="container testDescription">
                <h1><asp:Localize meta:resourcekey="about_title"  runat="server" ID="Localize7" Text="" /></h1>
                <hr />
                <img src="../images/desktops/backgr.png" style="width: 100%;" />

                <p>
                    <asp:Localize meta:resourcekey="about_paragraph"  runat="server" ID="Localize8" Text="" />
                </p>

            </div>

            <div class="container">
                <asp:Label ID="existsMessage" CssClass="errorMessage" runat="server" Text=""></asp:Label>

                <%--   <asp:LinkButton ID="runTest" runat="server" class="signup-btn" OnClick="runTest_Click">Download</asp:LinkButton>--%>

                <section id="deskTopList">
                    <div class="row">
                        <div class="box btn-wrapper">
                            <div class="col-lg-12">
                                <hr />
                                <h2 class="intro-text text-center"><strong><asp:Localize meta:resourcekey="about_deskTopList_title"  runat="server" ID="Localize9" Text="" /></strong>
                                </h2>
                                <hr />
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#london" class="btn btn-labeled btn-info">
                                    <span><strong><asp:Localize meta:resourcekey="about_deskTopList_buttonTOL"  runat="server" ID="Localize10" Text="" /></strong></span>
                                </a>
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#cardSort" class="btn btn-labeled btn-info">
                                    <span><strong><asp:Localize meta:resourcekey="about_deskTopList_buttonCS"  runat="server" ID="Localize11" Text="" /></strong></span>
                                </a>
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#CPT" class="btn btn-labeled btn-info">
                                    <span><strong><asp:Localize meta:resourcekey="about_deskTopList_buttonCP"  runat="server" ID="Localize12" Text="" /></strong></span>
                                </a>
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#hanoi" class="btn btn-labeled btn-info">
                                    <span><strong><asp:Localize meta:resourcekey="about_deskTopList_buttonTOH"  runat="server" ID="Localize13" Text="" /></strong></span>
                                </a>
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#reaction" class="btn btn-labeled btn-info">
                                    <span><strong><asp:Localize meta:resourcekey="about_deskTopList_buttonRT"  runat="server" ID="Localize14" Text="" /></strong></span>
                                </a>
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#trails" class="btn btn-labeled btn-info">
                                    <span><strong><asp:Localize meta:resourcekey="about_deskTopList_buttonTrails"  runat="server" ID="Localize15" Text="" /></strong></span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                </section>

            </div>

        </section>

        <section class="container margin testDescription" id="london">
            <%--=======================LONDON===========================--%>
            <h1><asp:Localize meta:resourcekey="london_title"  runat="server" ID="Localize50" Text="" /></h1>
            <hr />
            <div class="row">
                            <div class="col-md-6" id="left1">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/lnd_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-1" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/lnd_2.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-2" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/lnd_3.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-3" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/lnd_4.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-4" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" id="right1">
                                <ul class="exapmles-list">
                                    <p>
                                        <asp:Localize meta:resourcekey="london_paragraph1"  runat="server" ID="Localize48" Text="" />
                                    </p>

                                    <p>
                                        <asp:Localize meta:resourcekey="london_paragraph2"  runat="server" ID="Localize49" Text="" />
                                    </p>
                                </ul>
                            </div>
            </div>
            <div class="row">
                            <div class="col-md-6" id="left2">
                                <ul class="exapmles-list">

                                    <p>
                                        <asp:Localize meta:resourcekey="london_paragraph3"  runat="server" ID="Localize55" Text="" />
                                    </p>
                                </ul>
                            </div>
                            <div class="col-md-6" id="right2">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/lnd_5.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-5" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/lnd_6.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-6" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/lnd_7.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-7" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/lnd_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-1" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
            </div>
            <p>
                <asp:Localize meta:resourcekey="london_paragraph4"  runat="server" ID="Localize52" Text="" />  
            </p>
            <section id="Section6" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue"><asp:Localize meta:resourcekey="london_install"  runat="server" ID="Localize54" Text="" /></h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">5</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="DesktopTowerOfLondon.aspx" class="btn btn-info"><asp:Localize meta:resourcekey="london_orderNow"  runat="server" ID="Localize56" Text="" /> </a></p>
                                    <%--       <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--==================================================--%>

            <%--=======================cardSort===========================--%>
            <h1><asp:Localize meta:resourcekey="cardSort_title"  runat="server" ID="Localize57" Text="" /></h1>
            <hr />
            <div class="row">
                            <div class="col-md-6" id="left3">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/cs_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-8" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/cs_2.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-9" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/cs_3.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-10" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/cs_4.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-11" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" id="right3">
                                <ul class="exapmles-list">
                                    <p>
                                        <asp:Localize meta:resourcekey="london_paragraph2"  runat="server" ID="Localize60" Text="" />
                                    </p>
                                </ul>
                            </div>
            </div>
            <div class="row">
                            <div class="col-md-6" id="left4">
                                <ul class="exapmles-list">

                                    <p>
                                        <asp:Localize meta:resourcekey="cardSort_paragraph1"  runat="server" ID="Localize62" Text="" />
                                    </p>
                                </ul>
                            </div>
                            <div class="col-md-6" id="right4">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/cs_5.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-12" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/cs_6.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-13" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/cs_7.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-14" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/cs_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-8" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
            </div>
            <p>
                <asp:Localize meta:resourcekey="cardSort_paragraph2"  runat="server" ID="Localize63" Text="" />  
            </p>
            <section id="Section2" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue"><asp:Localize meta:resourcekey="CardSort_install"  runat="server" ID="Localize40" Text="" /></h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">499</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info"><asp:Localize meta:resourcekey="cardSort_orderNow"  runat="server" ID="Localize24" Text="" /></a></p>
                                    <%--     <asp:Button ID="Button2" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--==================================================--%>

            <%--=======================CPT===========================--%>
            <h1><asp:Localize meta:resourcekey="CPT_title"  runat="server" ID="Localize16" Text="" /></h1>
            <hr />
            <div class="row">
                            <div class="col-md-6" id="left5">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/CPT_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-15" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/CPT_2.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-16" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/CPT_3.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-17" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/CPT_4.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-18" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" id="right5">
                                <ul class="exapmles-list">
                                    <p>
                                        <asp:Localize meta:resourcekey="CPT_paragraph1"  runat="server" ID="Localize18" Text="" />
                                    </p>
                                </ul>
                            </div>
            </div>
            <div class="row">
                            <div class="col-md-6" id="left6">
                                <ul class="exapmles-list">

                                    <p>
                                        <asp:Localize meta:resourcekey="CPT_paragraph2"  runat="server" ID="Localize21" Text="" />
                                    </p>
                                </ul>
                            </div>
                            <div class="col-md-6" id="right6">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/CPT_5.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-19" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/CPT_6.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-20" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/CPT_7.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-21" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/CPT_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-15" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
            </div>
            <section id="Section3" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue"><asp:Localize meta:resourcekey="CPT_install"  runat="server" ID="Localize41" Text="" /></h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">299</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info"><asp:Localize meta:resourcekey="CPT_orderNow"  runat="server" ID="Localize27" Text="" /></a></p>
                                    <%--    <asp:Button ID="Button3" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--==================================================--%>

            <%--=======================hanoi===========================--%>
            <h1><asp:Localize meta:resourcekey="hanoi_title"  runat="server" ID="Localize19" Text="" /></h1>
            <hr />
            <div class="row">
                            <div class="col-md-6" id="left7">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/toh_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-22" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/toh_2.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-23" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/toh_3.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-24" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/toh_4.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-25" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" id="right7">
                                <h4><asp:Localize meta:resourcekey="examples_conteiner2_title"  runat="server" ID="Localize22" Text="" /></h4>
                                <ul class="exapmles-list">
                                    <p>
                                        <asp:Localize meta:resourcekey="hanoi_paragraph1"  runat="server" ID="Localize23" Text="" />
                                    </p>
                                </ul>
                            </div>
            </div>
            <div class="row">
                            <div class="col-md-6" id="left8">
                                <h4><asp:Localize meta:resourcekey="examples_conteiner2_title"  runat="server" ID="Localize25" Text="" /></h4>
                                <ul class="exapmles-list">

                                    <p>
                                        <asp:Localize meta:resourcekey="hanoi_paragraph2"  runat="server" ID="Localize26" Text="" />
                                    </p>
                                </ul>
                            </div>
                            <div class="col-md-6" id="right8">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/toh_5.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-26" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/toh_6.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-27" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/toh_7.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-28" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/toh_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-22" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
            </div>
            <p>
                 <asp:Localize meta:resourcekey="hanoi_paragraph3"  runat="server" ID="Localize17" Text="" />
            </p>
            <section id="Section7" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue"><asp:Localize meta:resourcekey="hanoi_install"  runat="server" ID="Localize39" Text="" /></h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">299</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info"><asp:Localize meta:resourcekey="hanoi_orderNow"  runat="server" ID="Localize59" Text="" /></a></p>
                                    <%--    <asp:Button ID="Button3" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <%--==================================================--%>

            <%--=======================reaction===========================--%>
            <h1><asp:Localize meta:resourcekey="reaction_title"  runat="server" ID="Localize20" Text="" /></h1>
            <hr />
            <div class="row">
                            <div class="col-md-6" id="left9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/DesktopTests1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-29" class="img-responsive" style="margin-bottom: 30px; max-height: 192px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/DesktopTests2.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-30" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/DesktopTests3.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-31" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/DesktopTests4.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-32" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" id="right9">
                                <ul class="exapmles-list">
                                    <p>
                                        <asp:Localize meta:resourcekey="reaction_paragraph1"  runat="server" ID="Localize28" Text="" />
                                    </p>
                                </ul>
                            </div>
            </div>
            <div class="row">
                            <div class="col-md-6" id="left10">
                                <h4><asp:Localize meta:resourcekey="examples_conteiner2_title"  runat="server" ID="Localize35" Text="" /></h4>
                                <ul class="exapmles-list">

                                    <p>
                                        <asp:Localize meta:resourcekey="reaction_paragraph2"  runat="server" ID="Localize29" Text="" />
                                    </p>
                                </ul>
                            </div>
                            <div class="col-md-6" id="right10">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/DesktopTests5.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-33" class="img-responsive" style="margin-bottom: 30px; max-height: 171px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/DesktopTests6.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-34" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/DesktopTests7.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-35" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/DesktopTests8.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-29" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
            </div>
            <section id="Section4" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue"><asp:Localize meta:resourcekey="reaction_install"  runat="server" ID="Localize30" Text="" /></h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">99</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info"><asp:Localize meta:resourcekey="reaction_orderNow"  runat="server" ID="Localize42" Text="" /></a></p>
                                    <%--          <asp:Button ID="Button5" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--==================================================--%>

            <%--=======================trails===========================--%>
            <h1><asp:Localize meta:resourcekey="trails_title"  runat="server" ID="Localize31" Text="" /></h1>
            <hr />
            <div class="row">
                            <div class="col-md-6" id="left11">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/tnt_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-36" class="img-responsive" style="margin-bottom: 30px; max-width: 206px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/tnt_2.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-37" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/tnt_3.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-38" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/tnt_4.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-39" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" id="right11">
                                <ul class="exapmles-list">
                                    <p>
                                        <asp:Localize meta:resourcekey="trails_paragraph1"  runat="server" ID="Localize33" Text="" />
                                    </p>
                                </ul>
                            </div>
            </div>
            <div class="row">
                            <div class="col-md-6" id="left12">
                                <ul class="exapmles-list">

                                    <p>
                                        <asp:Localize meta:resourcekey="trails_paragraph2"  runat="server" ID="Localize47" Text="" />
                                    </p>
                                </ul>
                            </div>
                            <div class="col-md-6" id="right12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/desktops/tnt_5.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-40" class="img-responsive" style="margin-bottom: 30px; max-width: 207px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/tnt_6.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-41" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/tnt_7.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-42" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/desktops/tnt_1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-36" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
            </div>
            <p>
                 <asp:Localize meta:resourcekey="trails_paragraph3"  runat="server" ID="Localize53" Text="" />
            </p>
            <section id="Section5" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue"><asp:Localize meta:resourcekey="trails_install"  runat="server" ID="Localize32" Text="" /></h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">299</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info"><asp:Localize meta:resourcekey="trails_orderNow"  runat="server" ID="Localize43" Text="" /></a></p>
                                    <%--    <asp:Button ID="Button1" class="btn btn-info" runat="server" OnClick="single_Click" Text="Activate" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <%--==================================================--%>

            <div class="modal fade bs-modal-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/lnd_1.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/lnd_2.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/lnd_3.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/lnd_4.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/lnd_5.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/lnd_6.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-7" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/lnd_7.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-8" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/cs_1.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-9" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/cs_2.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-10" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/cs_3.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-11" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/cs_4.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-12" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/cs_5.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-13" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/cs_6.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-14" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/cs_7.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-15" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/CPT_1.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-16" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/CPT_2.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-17" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/CPT_3.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-18" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/CPT_4.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-19" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/CPT_5.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-20" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/CPT_6.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-21" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/CPT_7.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-22" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/toh_1.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-23" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/toh_2.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-24" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/toh_3.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-25" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/toh_4.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-26" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/toh_5.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-27" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/toh_6.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-28" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/toh_7.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-29" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/DesktopTests1.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-30" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/DesktopTests2.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-31" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/DesktopTests3.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-32" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/DesktopTests4.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-33" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/DesktopTests5.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-34" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/DesktopTests6.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-35" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/DesktopTests7.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-36" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/tnt_1.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-37" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/tnt_2.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-38" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/tnt_3.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-39" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/tnt_4.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-40" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/tnt_5.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-41" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/tnt_6.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            <div class="modal fade bs-modal-42" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <img src="../images/desktops/tnt_7.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                    </div>
                </div>
            </div>
            

        <section id="contact">
            <div class="container" style="height: 300px">
                <h4><asp:Localize meta:resourcekey="contact_title"  runat="server" ID="Localize37" Text="" /></h4>
                <h4 id="contactError" runat="server"></h4>
                <%--<asp:Label class="label" ID="name" runat="server" Text="Your Name:"></asp:Label>--%>
                <asp:Label class="label" ID="name" runat="server" ><asp:Localize meta:resourcekey="contact_emailName"  runat="server" ID="Localize38" Text="" /></asp:Label>
                <input id="emailName" class="email" type="text" runat="server" />
                <asp:Label class="label" ID="Label2" runat="server" Text="Your Email:" meta:resourcekey="contact_emailFrom"></asp:Label>
                <input id="emailFrom" class="email" type="text" runat="server" />
                <asp:Label class="label" ID="Label3" runat="server" Text="Message:" meta:resourcekey="contact_emailText"></asp:Label>
                <textarea id="emailText" style="resize: none;" class="email" cols="20" rows="5" runat="server"></textarea>

                <asp:LinkButton class="bnt btn-sm btn-success" type="submit" runat="server" OnClick="clcSendButton"><asp:Localize meta:resourcekey="contact_submit"  runat="server" ID="Localize45" Text="" /></asp:LinkButton>

            </div>
        </section>
</asp:content>


<asp:Content ContentPlaceHolderID="ScriptsContent" runat="server">
<%--<script src="../js/bootstrap.min.js"></script>--%>
<script>
        $(document).ready(function () {
            for (var i = 1; i <= 12; i++) {

                //$('#left' + (i)).css('opacity', 0);
                //$('#right' + (i)).css('opacity', 0);

                $('#left' + (i)).waypoint(function () {
                    $(this.element).addClass('animated bounceInLeft');
                    $(this.element).css('opacity', 1);
                }, { offset: '100%' });

                $('#right' + (i)).waypoint(function () {
                    $(this.element).addClass('animated bounceInRight');
                    $(this.element).css('opacity', 1);
                }, { offset: '100%' });
            }
        });


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
</asp:content>
