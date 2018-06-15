<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="TestSite.MainPage" 
    culture="auto" uiculture="auto" Title="CogQuiz, psychological tests online; Tests for kids and adults, with norms"
    MasterPageFile="~/Layout.Master" %>

<asp:Content ContentPlaceHolderID="HeadMetaContent" runat="server">
    <%-- Specified meta --%>
    <meta name="description" content="Welcome to CogQuiz, We offer tests for children and adults, from ADHD to psychological personality tests online. Visit us for more information!">
    <meta name="keywords" content="Available tests: ADHD, ADD, Autism, Dementia, Paranoid Personality Disorder, Schizoid Personality Disorder, Schizotypal Disorder, Antisocial Personality Disorder, Narcissistic Personality Disorder, Avoidant Personality Disorder, Amnesia, Alexia, Brain Damage, Head Injury, and more." />
    <meta name="author" content="CogQuiz">
</asp:Content>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
    <link href="css/loginCss.css" rel="stylesheet" />
 <%--   <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/jquery.quicksand.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/sessionManager.js"></script>--%>
</asp:Content>

<asp:Content ContentPlaceHolderID="BannerContent" runat="server">
    <!-- Header Carousel -->
    <header id="home" class="carousel slide">
        <ul class="cb-slideshow">
            <li>
                <span><asp:Localize meta:resourcekey="carousel_image1_span"  runat="server" ID="Localize12" Text="" /></span>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <h3><asp:Localize meta:resourcekey="carousel_image1_title1"  runat="server" ID="Localize13" Text="" /></h3><%-- TODO: MAke font bigger--%>
                            </div>
                        </div>
                    </div>
                    <h4><asp:Localize meta:resourcekey="carousel_image1_title2"  runat="server" ID="Localize14" Text="" /></h4>
                </div>
            </li>
            <li>
                <span><asp:Localize meta:resourcekey="carousel_image2_span"  runat="server" ID="Localize15" Text="" /></span>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <h3><asp:Localize meta:resourcekey="carousel_image2_title1"  runat="server" ID="Localize16" Text="" /></h3>
                            </div>
                        </div>
                    </div>
                    <h4><asp:Localize meta:resourcekey="carousel_image2_title2"  runat="server" ID="Localize17" Text="" /></h4><%-- Make sure they all on the same line--%>
                </div>
            </li>
            <li>
                <span><asp:Localize meta:resourcekey="carousel_image3_span"  runat="server" ID="Localize18" Text="" /></span> 
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <h3><asp:Localize meta:resourcekey="carousel_image3_title1"  runat="server" ID="Localize19" Text="" /></h3>
                            </div>
                        </div>
                    </div>
                    <h4><asp:Localize meta:resourcekey="carousel_image3_title2"  runat="server" ID="Localize20" Text="" /></h4>
                </div>
            </li>
            <li>
                <span><asp:Localize meta:resourcekey="carousel_image4_span"  runat="server" ID="Localize21" Text="" /></span>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <h3><asp:Localize meta:resourcekey="carousel_image4_title1"  runat="server" ID="Localize22" Text="" /></h3>
                            </div>
                        </div>
                    </div>
                    <h4><asp:Localize meta:resourcekey="carousel_image4_title2"  runat="server" ID="Localize23" Text="" /></h4>
                </div>
            </li>
            <li>
                <span><asp:Localize meta:resourcekey="carousel_image5_span"  runat="server" ID="Localize24" Text="" /></span>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <h3><asp:Localize meta:resourcekey="carousel_image5_title1"  runat="server" ID="Localize25" Text="" /></h3>
                            </div>
                        </div>
                    </div>
                    <h4><asp:Localize meta:resourcekey="carousel_image5_title2"  runat="server" ID="Localize26" Text="" /></h4>
                </div>
            </li>
            <li>
                <span><asp:Localize meta:resourcekey="carousel_image6_span"  runat="server" ID="Localize27" Text="" /></span>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <h3><asp:Localize meta:resourcekey="carousel_image6_title1"  runat="server" ID="Localize28" Text="" /></h3>
                            </div>
                        </div>
                    </div>
                    <h4><asp:Localize meta:resourcekey="carousel_image6_title2"  runat="server" ID="Localize29" Text="" /></h4>
                </div>
            </li>
        </ul>
        <div class="intro-scroller">
            <a class="inner-link" href="#about">
                <div class="mouse-icon" style="opacity: 1;">
                    <div class="wheel"></div>
                </div>
            </a>
        </div>
    </header>
</asp:Content>

<asp:Content ContentPlaceHolderID="MenuItemLi" runat="server">
    <li><a href="Blog/index.html"><asp:Localize meta:resourcekey="navbar_trending"  runat="server" ID="Localize48" Text="Trending" /></a></li>
    <li><a href="#about"><asp:Localize meta:resourcekey="navbar_about"  runat="server" ID="Localize2" Text="About" /></a></li>
    <li><a href="#services"><asp:Localize meta:resourcekey="navbar_categories"  runat="server" ID="Localize3" Text="Categories" /></a></li>
    <!-- <li><a href="#meet-team">Team</a></li> -->
        <li id="availableTests" runat="server"><a href="#availableTests"><asp:Localize meta:resourcekey="navbar_avalable"  runat="server" ID="Localize4" Text="Available Tests" /></a></li>
        <li id="testsToOrder" runat="server"><a href="#testsToOrder"><asp:Localize meta:resourcekey="navbar_custom"  runat="server" ID="Localize5" Text="Custom Tests" /></a></li>
        <li id="desktopTests" runat="server"><a href="#desktopTests"><asp:Localize meta:resourcekey="navbar_desktop"  runat="server" ID="Localize6" Text="Desktop Tests" /></a></li>
        <li class="dropdown" id="testDropdown" runat="server">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><asp:Localize meta:resourcekey="navbar_dropdown"  runat="server" ID="Localize10" Text="Desktop Tests" /><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#availableTests"><asp:Localize meta:resourcekey="navbar_avalable"  runat="server" ID="Localize1" Text="Available Tests" /></a></li>
            <li><a href="#testsToOrder"><asp:Localize meta:resourcekey="navbar_custom"  runat="server" ID="Localize8" Text="Custom Tests" /></a></li>
            <li><a href="#desktopTests"><asp:Localize meta:resourcekey="navbar_desktop"  runat="server" ID="Localize9" Text="Desktop Tests" /></a></li>
          </ul>
        </li>
    <%--<li><a href="#contact">Contact</a></li>--%>
    <li><a href="#follow-us"><asp:Localize meta:resourcekey="navbar_connect"  runat="server" ID="Localize7" Text="Connect" /></a></li>
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

        <!-- Page Content -->
        <section id="about">
            <div class="container">
                <div class="row">
                    <h1><center><asp:Localize meta:resourcekey="about_title"  runat="server" ID="Localize30" Text="" /><center></h1> <%--TODO:CENTER--%>
                    <div class="col-md-offset-1 col-md-10">
                        <div class="text-center">
                           
                            <img class="img-responsive displayed" src="images\line-separator.png" alt="Company about" />
                            <div class="row">
                                <h5 class="aboutHeader"><asp:Localize meta:resourcekey="about_row1_title"  runat="server" ID="Localize31" Text="" /></h5>
                                <div class="col-md-12">
                                    <p>
                                        <asp:Localize meta:resourcekey="about_row1_paragraph"  runat="server" ID="Localize32" Text="" />
                                    </p>

                                </div>
                            </div>
                            <div class="row">
                                <h5 class="aboutHeader"><asp:Localize meta:resourcekey="about_row2_title"  runat="server" ID="Localize33" Text="" /></h5>
                                <div class="col-md-12">
                                    <p>
                                        <asp:Localize meta:resourcekey="about_row2_paragraph"  runat="server" ID="Localize34" Text="" />
                                    </p>

                                </div>
                            </div>
                            <div class="row">
                                <h5 class="aboutHeader"><asp:Localize meta:resourcekey="about_row3_title"  runat="server" ID="Localize35" Text="" /></h5>
                                <div class="col-md-12">
                                    <p>
                                        <asp:Localize meta:resourcekey="about_row3_paragraph"  runat="server" ID="Localize36" Text="" />
                                    </p>
                                </div>
                            </div>

                            <div class="row">
                                <h5 class="aboutHeader"><asp:Localize meta:resourcekey="about_row4_title"  runat="server" ID="Localize37" Text="" /></h5>
                                <div class="col-md-12">
                                    <p>
                                        <asp:Localize meta:resourcekey="about_row4_paragraph"  runat="server" ID="Localize38" Text="" />

                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="services">
            <div class="blueback">
                <div class="container">
                    <div class="text-center homeport2">
                        <h2><asp:Localize meta:resourcekey="service_title"  runat="server" ID="Localize39" Text="" /></h2>
                    </div>
                    <div class="row">
                        <div class="col-md-12 homeservices1 blueFont">
                            <div class="col-md-4 portfolio-item">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="category/Memory.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-medium fa-stack-1x "></i>
                                        </span></a>
                                    </a>
                                    <h3><a href="category/Memory.aspx"><asp:Localize meta:resourcekey="service_category1_title"  runat="server" ID="Localize40" Text="" /></a></h3>
                                    <p>
                                        <asp:Localize meta:resourcekey="service_category1_paragraph"  runat="server" ID="Localize41" Text="" />
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4 portfolio-item">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="category/ExecutiveFunction.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-book fa-stack-1x"></i>
                                        </span></a>

                                    </a>
                                    <h3><a href="category/ExecutiveFunction.aspx"><asp:Localize meta:resourcekey="service_category2_title"  runat="server" ID="Localize42" Text="" /></a></h3>
                                    <p><asp:Localize meta:resourcekey="service_category2_paragraph"  runat="server" ID="Localize43" Text="" /></p>
                                </div>
                            </div>
                            <div class="col-md-4 portfolio-item">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="category/ProcessingSpeed.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-cogs fa-stack-1x"></i>
                                        </span></a>

                                    </a>
                                    <h3><a href="category/ProcessingSpeed.aspx"><asp:Localize meta:resourcekey="service_category3_title"  runat="server" ID="Localize44" Text="" /></a></h3>
                                    <p><asp:Localize meta:resourcekey="service_category3_paragraph"  runat="server" ID="Localize45" Text="" /></p>
                                </div>
                            </div>
                            <%--<div class="col-md-3 portfolio-item">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="category/IntelligenceTest.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-lightbulb-o fa-stack-1x"></i>
                                        </span></a>

                                    </a>
                                    <h3><a href="category/IntelligenceTest.aspx">Intelligence</a></h3>
                                    <p>Learn about human intelligence</p>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="availableTests">
            <div class="container">
                <div class="row">
                    <div class="text-center">
                        <h4><asp:Localize meta:resourcekey="available_title1"  runat="server" ID="Localize46" Text="" /></h4>
                        <h2><asp:Localize meta:resourcekey="available_title2"  runat="server" ID="Localize47" Text="" /></h2>
                        <img class="img-responsive displayed" src="images/line-separator.png" alt="about">
                    </div>

                    <ul class="filter nav nav-pills">
                        <li data-value="all"><a class="active" href="#"><asp:Localize meta:resourcekey="available_nav_all"  runat="server" ID="Localize49" Text="" /></a></li>
                        <li data-value="memory"><a href="#"><asp:Localize meta:resourcekey="available_nav_memory"  runat="server" ID="Localize50" Text="" /></a></li>
                        <li data-value="executive"><a href="#"><asp:Localize meta:resourcekey="available_nav_executive"  runat="server" ID="Localize51" Text="" /></a></li>
                        <li data-value="mobileapps"><a href="#"><asp:Localize meta:resourcekey="available_nav_mobileapps"  runat="server" ID="Localize52" Text="" /></a></li>
                        <%--<li data-value="personality"><a href="#">Personality</a></li>--%>
                    </ul>

                    <ul class="port2" >
                        <li data-type="memory" data-id="id-1" class="port3">
                            <a href="Tests/StroopWrapper.aspx" id="memory1">
                                <img src="images/Stroop.jpg" alt=""></a>
                        </li>
                        <li data-type="executive" data-id="id-2" class="port3">
                            <a href="TrailsWrapper.aspx" id="webdesign1">
                                <img src="images/trails.jpg" alt=""></a>
                        </li>
                        <li data-type="mobileapps" data-id="id-3" class="port3">
                            <a href="WCSTWrapper.aspx" id="mobileapps1">
                                <img src="images/cardSort.png" alt=""></a>
                        </li>
                        <li data-type="memory" data-id="id-4" class="port3">
                            <a href="Tests/NbackWrapper.aspx" id="memory2">
                                <img src="images/Nback.jpg" alt=""></a>
                        </li>
                        <li data-type="executive" data-id="id-5" class="port3">
                            <a href="LondonWrapper.aspx" id="webdesign2">
                                <img src="images/tower.jpg" alt=""></a>
                        </li>
                        <li data-type="mobileapps" data-id="id-6" class="port3">
                            <a href="Tests/SyllogWrapper.aspx" id="mobileapps2">
                                <img src="images/sillog.png" /></a>
                        </li>
                   
                        <%--<li data-type="personality" data-id="id-7" class="port3">
                            <a href="Tests/PTSD.aspx" id="cool1">
                                <img src="images/cool1.jpg" alt=""></a>
                        </li>
                        <li data-type="personality" data-id="id-8" class="port3">
                            <a href="Tests/ADHD.aspx" id="cool2">
                                <img src="images/cool2.jpeg" alt=""></a>
                        </li>
                        <li data-type="personality" data-id="id-12" class="port3">
                            <a href="Tests/Personality.aspx" id="cool3">
                                <img src="images/cool3.jpeg" alt=""></a>
                        </li>
                        <li data-type="personality" data-id="id-9" class="port3">
                            <a href="Tests/adult_ADHD.aspx" id="cool4">
                                <img src="images/cool4.jpeg" alt=""></a>
                        </li>
                        <li data-type="personality" data-id="id-10" class="port3">
                            <a href="Tests/Autism.aspx" id="cool5">
                                <img src="images/cool5.jpg" alt=""></a>
                        </li>
                        <li data-type="personality" data-id="id-11" class="port3">
                            <a href="Tests/Horney.aspx" id="cool6">
                                <img src="images/cool6.jpeg" /></a>
                        </li>--%>
                    </ul>
                </div>
            </div>
        </section>

        <section id="testsToOrder">
        <div class="blueback">
            <div class="container">
                <div class="text-center homeport2" style="color: white">
                    <h2><asp:Localize meta:resourcekey="order_title"  runat="server" ID="Localize53" Text="" /></h2>
                </div>
                <div class="row">
                    <div class="col-md-12 homeservices1 blueFont">
                        <div class="col-md-6 portfolio-item">
                            <div class="text-center">
                                <h3 class="blueFont1"><asp:Localize meta:resourcekey="order_test1_title"  runat="server" ID="Localize54" Text="" /></h3>
                                <p>
                                    <asp:Localize meta:resourcekey="order_test1_paragraph"  runat="server" ID="Localize55" Text="" />
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 portfolio-item">
                            <div class="text-center">
                                <h3 class="blueFont1"><asp:Localize meta:resourcekey="order_test2_title"  runat="server" ID="Localize56" Text="" /></h3>
                                <p>
                                    <asp:Localize meta:resourcekey="order_test2_paragraph"  runat="server" ID="Localize57" Text="" />
                                </p>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-12 homeservices1 blueFont">
                        <div class="col-md-6 portfolio-item">
                            <div class="text-center">
                                <h3 class="blueFont1"><asp:Localize meta:resourcekey="order_test3_title"  runat="server" ID="Localize58" Text="" /></h3>
                                <p>
                                <asp:Localize meta:resourcekey="order_test3_paragraph"  runat="server" ID="Localize59" Text="" />
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 ">
                            <div class="text-center">
                                <h3 class="blueFont1"><asp:Localize meta:resourcekey="order_test4_title"  runat="server" ID="Localize60" Text="" /></h3>
                                <p><asp:Localize meta:resourcekey="order_test4_paragraph"  runat="server" ID="Localize61" Text="" /></p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

        <section id="desktopTests">
            <div class="container">
                <div class="text-center">
                    <h2><asp:Localize meta:resourcekey="desktop_title"  runat="server" ID="Localize62" Text="" /></h2>
                    <img class="img-responsive displayed" src="images/line-separator.png" alt="about">
                </div>
                <div class="row">
                    <div class="col-md-12 homeport1">
                        <%--<div class="col-md-4 col-sm-12 col-xs-12 col-md-offset-4 portfolio-item">--%>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <figure class="effect-oscar">
                                <img src="images/CogQuestPick.jpg"" alt="" class="img-responsive" />
                                <figcaption>
                                    <h2><asp:Localize meta:resourcekey="desktop_test1_title"  runat="server" ID="Localize63" Text="" /></h2>
                                    <a href="\Tests\CogQuest.aspx"><asp:Localize meta:resourcekey="desktop_test1_ref"  runat="server" ID="Localize64" Text="" /></a>
                                </figcaption>
                            </figure>
                            <p class="text-center"><asp:Localize meta:resourcekey="desktop_test1_paragraph"  runat="server" ID="Localize65" Text="" /></p>
               
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <figure class="effect-oscar">
                                <img src="images/dt.png"" alt="" class="img-responsive" style="height: 262px;"/>
                                <figcaption>
                                    <h2><asp:Localize meta:resourcekey="desktop_test2_title"  runat="server" ID="Localize66" Text="" /></h2>
                                    <a href="\Tests\DesktopTests.aspx"><asp:Localize meta:resourcekey="desktop_test2_ref"  runat="server" ID="Localize67" Text="" /></a>
                                </figcaption>
                            </figure>
                            <p class="text-center"><asp:Localize meta:resourcekey="desktop_test2_paragraph"  runat="server" ID="Localize69" Text="" /></p>
               
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <figure class="effect-oscar">
                                <img src="images/TOL/TOLWinForms.png"" alt="" class="img-responsive" style="height: 262px;"/>
                                <figcaption>
                                    <h2><asp:Localize meta:resourcekey="desktop_test3_title"  runat="server" ID="Localize68" Text="" /></h2>
                                    <a href="\Tests\DesktopTowerOfLondonWinForms.aspx"><asp:Localize meta:resourcekey="desktop_test3_ref"  runat="server" ID="Localize70" Text="" /></a>
                                </figcaption>
                            </figure>
                            <p class="text-center"><asp:Localize meta:resourcekey="desktop_test3_paragraph"  runat="server" ID="Localize71" Text="" /></p>
               
                        </div>
                <%--          <div class="col-md-4 col-sm-12 col-xs-12 portfolio-item">
                            <figure class="effect-oscar">
                                <img src="images/cell.jpg" alt="img09" class="img-responsive" />
                                <figcaption>
                                    <h2>Tower Of London</h2>
                                    <a href="">View more</a>
                                </figcaption>
                            </figure>
                            <p class="text-center">Powerful and flexible desktop version of Tower of London test.</p>
                    
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12 portfolio-item">
                            <figure class="effect-oscar">
                                <img src="images/bigbrainsm.jpg" alt="img09" class="img-responsive" />
                                <figcaption>
                                    <h2>Tower Of Hanoi</h2>
                                    <a href="">View more</a>
                                </figcaption>
                            </figure>
                            <p class="text-center">Desktop version of Tower of Hanoi test.</p>
 
                        </div>--%>
                    </div>
                </div>
            </div>
        </section>

        <section id="contact">
            <div class="container" style ="height:300px">
                <h4 id ="contactError" runat="server"></h4>
                <asp:Label class="label" ID="name" runat="server" Text="Your Name:" meta:resourcekey="contact_name"></asp:Label>
                <input id="emailName" class="email" type="text" runat="server" />
                <asp:Label class="label" ID="Label2" runat="server" Text="Your Email:" meta:resourcekey="contact_email"></asp:Label>
                <input id="emailFrom" class="email" type="text" runat="server" />
                <asp:Label class="label text-area-label" ID="Label3" runat="server" Text="Message:" meta:resourcekey="contact_message"></asp:Label>
                <textarea style="resize: none;" id="emailText" class="email" cols="20" rows="5" runat="server"></textarea>
                <div class="contact-btn-wrapper">
                    <asp:LinkButton class="bnt btn-sm btn-success contact-btn" type="submit" runat="server" OnClick="clcSendButton"><asp:Localize meta:resourcekey="contact_send"  runat="server" ID="Localize72" Text="" /></asp:LinkButton>
                </div>
                
            </div>
        </section>

        <section id="videos">
            <div class="container">
                <div class="row">
                    <div class="box">
                        <div class="col-lg-12">
                     
                            <h2 class="text-center"><asp:Localize meta:resourcekey="videos_title"  runat="server" ID="Localize73" Text="" /></h2>

                                <img class="img-responsive displayed" src="images/line-separator.png" alt="short">
                        </div>
                        <div class="col-sm-3 text-center" id="vid1">
                            <label><asp:Localize meta:resourcekey="videos_label1"  runat="server" ID="Localize74" Text="" /></label>
                            <iframe src="https://www.youtube.com/embed/-SPAjSEuBNA?" frameborder="0" allowfullscreen=""></iframe>

                        </div>
                        <div class="col-sm-3 text-center"> 
                        <label><asp:Localize meta:resourcekey="videos_label2"  runat="server" ID="Localize75" Text="" /></label>
                            <iframe src="https://www.youtube.com/embed/k_aoilEl8h8?" frameborder="0" allowfullscreen=""></iframe>

                        </div>
                 
                        <div class="col-sm-3 text-center">
                                <label><asp:Localize meta:resourcekey="videos_label3"  runat="server" ID="Localize76" Text="" /></label>
                            <iframe src="https://www.youtube.com/embed/0JwN9Np1TmE" frameborder="0" allowfullscreen=""></iframe>

         
                        </div>
                        <div class="col-sm-3 text-center">
                            <label><asp:Localize meta:resourcekey="videos_label4"  runat="server" ID="Localize77" Text="" /></label>
                            <iframe src="https://www.youtube.com/embed/VH4AMss26W0" frameborder="0" allowfullscreen=""></iframe>
                        </div>
                        <div class="col-sm-2 text-center">
                
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </section>

        <%--<section id="meet-team">
                    <div class="container">
                        <div class="text-center">
                            <h2>More than a decadede of experience</h2>
                            <img class="img-responsive displayed" src="images/line-separator.png" alt="about" />
                        </div>
                        <div class="row teamspace">
                            <div class="col-xs-12 col-sm-6 col-md-4">
                                <div class="team-member">
                                    <div class="team-img">
                                        <img class="img-responsive" src="images/Davis3.JPG" alt="" />
                                    </div>
                                    <div class="team-info">
                                        <h3>Haskar Davis, Ph.D.</h3>
                                        <span>President</span>
                                    </div>
                                    <p>
                                        Dr. Davis has been collecting norms for over 30 years and is a leader in the academic w
                                        orld regarding neuropsychology.
                                    Dr. Dave received his MA and PhD in Biopsychology from the University of California Berkley
                                    Additionally, Hasker has published more than seventy academic articles.
                                    </p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4">
                                <div class="team-member">
                                    <div class="team-img">
                                        <img class="img-responsive" src="images/ana.jpg" alt="">
                                    </div>
                                    <div class="team-info">
                                        <h3>Anastasia Lescheok</h3>
                                        <span>VP, Software Engineering</span>
                                    </div>
                                    <p>
                                        Ana is one of Denver's top tech talents under 40 and is a frequent volunteer for the Cheery Creek School district.
                                    Ana received her B.S. in Psychology from the University of Colorado and her M.Sc. in Software Engineering and Database technologies from Regis University.
                                    </p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4">
                                <div class="team-member">
                                    <div class="team-img">
                                        <img class="img-responsive" src="images/devin.jpg" alt="">
                                    </div>
                                    <div class="team-info">
                                        <h3>Devin Levy</h3>
                                        <span>VP, Systems Engineering</span>
                                    </div>
                                    <p>
                                        Prior to joining CogQuiz, Devin spent 10 years in the tech industry. Starting in development Devin found his passion in DevOps.
                                    Devin received his B.A. in PSC from the University of Colorado, and his M.Sc. in Software Engineering from Regis University and is pursing an MBA from the University of Denver.
                          
                                    </p>
                                </div>
                            </div>
                                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="team-member">
                                <div class="team-img">
                                    <img class="img-responsive" src="images/person1.jpg" alt="">
                                </div>
                                <div class="team-info">
                                    <h3>Mr Potato Head</h3>
                                    <span>VP, Marketing</span>
                                </div>
                                <p>BWords go here</p>
                            </div>
                        </div>
                        </div>
                    </div>
                </section>--%>

        <%--<section id="follow-us">
            <div class="container">
                <div class="text-center height-contact-element">
                    <h2><asp:Localize meta:resourcekey="follow"  runat="server" ID="Localize78" Text="" /></h2>
                </div>
                <img class="img-responsive displayed" src="images/line-separator.png" alt="short" />
                <div class="text-center height-contact-element">
                    <ul class="list-unstyled list-inline list-social-icons">
                        <li class="active"><a href="https://www.facebook.com/CogQuiz-1644904339158958/"><i class="fa fa-facebook social-icons"></i></a></li>
                        <li><a href="https://twitter.com/cogquizcom"><i class="fa fa-twitter social-icons"></i></a></li>
                        <li><a href="https://plus.google.com/u/3/113821050703373361140?hl=en"><i class="fa fa-google-plus social-icons"></i></a></li>
                        <li><a href="https://www.linkedin.com/company-beta/13213074/"><i class="fa fa-linkedin social-icons"></i></a></li>
                        <li><a href="mailto:support@cogquiz.com" target="_top"><i class="fa fa-envelope social-icons"></i></a></li>
                    </ul>
                    <p>+1(719)888 9121</p> 
                </div>
            </div>
        </section>--%>

        <%--<section id="register">
            <div class="">
                <div class="cont_centrar">

                    <div class="cont_login">
                        <div class="cont_info_log_sign_up">
                            <div class="col_md_login">

                                <div class="cont_ba_opcitiy">

                                    <h2>One Test</h2>
                                    <p>Select this option if you want to take a single test.</p>
                                    <button class="btn_login" onclick="cambiar_login()">GO</button>
                                </div>
                            </div>
                            <div class="col_md_sign_up">

                                <div class="cont_ba_opcitiy">
                                    <h2>Multiple Tests</h2>

                                    <p>Select this option if you are a profeccional who is looking to administer tests to others.</p>

                                    <button class="btn_sign_up" onclick="cambiar_sign_up()">GO</button>
                                </div>
                            </div>
                        </div>


                        <div class="cont_back_info">
                            <div class="cont_img_back_grey">
                                <img src="images/cell.jpg" />
                            </div>

                        </div>
                        <div class="cont_forms">
                            <div class="cont_img_back_">
                                <img src="images/cell.jpg" />
                            </div>
                            <div class="cont_form_login">
                                <a href="#register" onclick="ocultar_login_sign_up()">
                                    <i class="material-icons">&#xe5c4;</i></a>
                                <h2>Single User</h2>
                                <asp:Label ID="wrong" runat="server" Text=""></asp:Label>
                                <asp:Label ID="wrongPw" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="single_email" runat="server" placeholder="email"></asp:TextBox>
                                <asp:TextBox ID="singleName" runat="server" placeholder="user"></asp:TextBox>
                                <asp:TextBox ID="singlePw" runat="server" TextMode="Password" placeholder="password"></asp:TextBox>
                                <asp:TextBox ID="s_confPw" runat="server" TextMode="Password" placeholder="confirm password"></asp:TextBox>
                                <asp:LinkButton ID="regSingle" runat="server" class="" OnClick="Register_Single">REGISTER</asp:LinkButton>
                                <asp:LinkButton ID="regSingle" class="btn_login" runat="server" onClick ="regSingle_Click" autopostback ="true" PostBackUrl="~/MainPage.aspx">REGISTER</asp:LinkButton>
                                </div>

                                <div class="cont_form_sign_up">
                                    <a href="#register" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                                    <h2>Provider</h2>
                                    <asp:TextBox ID="prov_email" runat="server" placeholder="email"></asp:TextBox>
                                    <asp:TextBox ID="provName" runat="server" placeholder="user"></asp:TextBox>
                                    <asp:TextBox ID="provPw" runat="server" placeholder="password"></asp:TextBox>
                                    <asp:TextBox ID="p_confPw" runat="server" placeholder="confirm password"></asp:TextBox>
                                    <asp:TextBox ID="org" runat="server" placeholder="organization"></asp:TextBox>
                                    <asp:LinkButton ID="regProv" class="" runat="server" onClick="regProv_Click" Autopostback ="true">REGISTER</asp:LinkButton>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </section>--%>

</asp:Content>

<asp:Content ContentPlaceHolderID="ScriptsContent" runat="server">

    <script>

        $('.btn_login').on('click', function (e) {
            e.preventDefault();

        });
        $('.btn_sign_up').on('click', function (e) {
            e.preventDefault();

        });

        $(document).ready(function () {

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



            var eHasErrors = false;
            var pwHasErrors = false;

            $("#single_email").mouseout(function () {
                var text = $("#single_email").val();
                if (!validateEmail(text)) {
                    $("#wrong").text("Please enter a valid email *")
                    $("#regSingle").hide();
                    eHasErrors = true;
                }

                else {
                    if (pwHasErrors == false) {

                        $("#regSingle").show();

                    }
                    $("#wrong").text("");
                    eHasErrors = false;
                }
            });

            $("#s_confPw").mouseout(function () {

                var text1 = $("#s_confPw").val();
                var text2 = $("#singlePw").val();
                if (!comparePWs(text1, text2)) {
                    $("#wrongPw").text("Passwords do not match *")
                    $("#regSingle").hide();
                    pwHasErrors = true;
                }

                else {
                    if (eHasErrors == false) {

                        $("#regSingle").show();

                    }
                    $("#wrongPw").text("")
                    pwHasErrors = false;
                }
            });

        });

    </script>

    <script>
        function gallery() { };

        var $itemsHolder = $('ul.port2');
        var $itemsClone = $itemsHolder.clone();
        var $filterClass = "";
        $('ul.filter li').click(function (e) {
            e.preventDefault();
            $filterClass = $(this).attr('data-value');
            if ($filterClass == 'all') { var $filters = $itemsClone.find('li'); }
            else { var $filters = $itemsClone.find('li[data-type=' + $filterClass + ']'); }
            $itemsHolder.quicksand(
                $filters,
                { duration: 1000 },
                gallery
            );
        });

        $(document).ready(gallery);

    </script>
    <script src="js/login.js"></script>
</asp:Content>


