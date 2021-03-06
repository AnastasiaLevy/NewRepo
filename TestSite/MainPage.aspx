﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="TestSite.MainPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Welcome to CogQuiz, We offer tests for children and adults, from ADHD to psychological personality tests online. Visit us for more information!">
    <meta name="keywords" content="Available tests: ADHD, ADD, Autism, Dementia, Paranoid Personality Disorder, Schizoid Personality Disorder, Schizotypal Disorder, Antisocial Personality Disorder, Narcissistic Personality Disorder, Avoidant Personality Disorder, Amnesia, Alexia, Brain Damage, Head Injury, and more." />
    <meta name="author" content="CogQuiz">
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <title>CogQuiz, psychological tests online; Tests for kids and adults, with norms</title>
    
    <link rel="shortcut icon" href="images/favicon.ico" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <link href="fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="cogTest.css" rel="stylesheet" />
    <link href="css/loginCss.css" rel="stylesheet" />
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><a href="MainPage.aspx">MainPage.aspx</a>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <script src="https://use.fontawesome.com/0138464303.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.quicksand.js"></script>
    <script src="js/sessionManager.js"></script>
</head>

<body data-spy="scroll" runat="server">
            <!-- Header Carousel -->
        <header id="home" class="carousel slide">
            <ul class="cb-slideshow">
                <li>
                    <span>image1</span>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h3>Instant Results</h3><%-- TODO: MAke font bigger--%>
                                </div>
                            </div>
                        </div>
                        <h4>Test of attention or memory at home with instant feedback.</h4>
                    </div>
                </li>
                <li>
                    <span>image2</span>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h3>Neuropsychological test</h3>
                                </div>
                            </div>
                        </div>
                        <h4>Neuropsychological tests of executive funtion, memory, and problem solving.</h4><%-- Make sure they all on the same line--%>
                    </div>
                </li>
                <li>
                    <span>image3</span> 
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h3>Looking to hire a candidate?</h3>
                                </div>
                            </div>
                        </div>
                        <h4>Have them take a test of executive funtion and reasoning, or an apptitude test.</h4> 
                    </div>
                </li>
                <li>
                    <span>Image 04</span>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h3>Cognitive Aging Concerns?</h3>
                                </div>
                            </div>
                        </div>
                        <h4>Are you aging gracefully, or concerned about your memory?</h4>
                        <h4>Compare your scores with others your age.</h4>
                    </div>
                </li>
                <li>
                    <span>Image 05</span>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h3>COMPARE YOUR SCORE AGAINST THOUSANDS OF PEOPLE</h3>
                                </div>
                            </div>
                        </div>
                        <h4>Cogquiz's tests have large norm bases. Compare your results with others your age.</h4>
                    </div>
                </li>
                <li>
                    <span>Image 06</span>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h3>Researcher or Medical Practitioner?</h3>
                                </div>
                            </div>
                        </div>
                        <h4>Special pricing is available for researchers and medical practitioners. Contact us for more details.</h4>
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
                      <a class="navbar-brand" href="MainPage.aspx">
                     <i class="fa fa-cogs" aria-hidden="true">Quiz</i>
                      </a> 
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu">
                        <li class="active"><a href="#home">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#services">Test Categories</a></li>
                        <!-- <li><a href="#meet-team">Team</a></li> -->
                        <li><a href="#availableTests">Avalable Tests</a></li>
                        <li><a href="#testsToOrder">Custom Tests</a></li>
                        <li><a href="#desktopTests">DeskTop Tests</a></li>
                    <%--    <li><a href="#contact">Contact</a></li>--%>
                        <li><a href="#follow-us">Connect</a></li>

                        <li id="profOpt" runat ="server"><a href="UserProfile.aspx">Profile</a></li>
                        <li id="login" runat="server"><a href="Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="logOut" class="" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
                        </li>
                        <!-- 	<li><a href="blog.html">Blog</a></li>
                        <li><a href="single-post.html">Single</a></li> -->
                    </ul>
                </div>
            </div>
        </nav>



        <!-- Page Content -->
        <section id="about">
            <div class="container">
                <div class="row">
                    <h1><center>CogQuiz Neuropsychological Tests<center></h1> <%--TODO:CENTER--%>
                    <div class="col-md-offset-1 col-md-10">
                        <div class="text-center">
                           
                            <img class="img-responsive displayed" src="images\line-separator.png" alt="Company about" />
                            <div class="row">
                                <h5 class="aboutHeader">The CogQuiz General Philosophy</h5>
                                <div class="col-md-12">
                                    <p>
                                 CogQuiz is a company committed to the development of powerful computer-based tools for cognitive and neuropsychological research and evaluation. 
                                 Our goal is to design computerized neuropsychological and cognitive tests that are affordable for assessment of medical and/or mental health status in consultation with licensed professionals. 
                                 We have strived to make easy to use, affordably priced tests usable by the public.
                                 As a consumer, you have the opportunity to take a test that  provides age-based norms with feedback.
                                 You may print out a report that you can take to a licensed professional for an evaluation beyond the report we provide. 
                                 We believe that an informed individual is their own best advocate.
                                    </p>

                                </div>
                            </div>
                            <div class="row">
                                <h5 class="aboutHeader">History and Validating Data</h5>
                                <div class="col-md-12">
                                    <p>
                                 Our products reflect over 50 years of experience in using computers for experimental control, data acquisition, and data analysis in cognitive and behavioral research. Our products have been used as part of a long-term research program in several universities and by licensed practitioners. Many of the tests have extensive sets of age-stratified normative data which are included in each test product's report/manual.
                                    </p>

                                </div>
                            </div>
                            <div class="row">
                                <h5 class="aboutHeader">Large Norm Base</h5>
                                <div class="col-md-12">
                                    <p>
                                        All CogQuiz products come with preprogrammed tests that were used to collect the normative data provided in the test documentation. There are few commercial products with equivalent norms.
                                    </p>
                                </div>
                            </div>

                            <div class="row">
                                <h5 class="aboutHeader">Centralized Secure Database</h5>
                                <div class="col-md-12">
                                    <p>All CogQuiz tests utilize a centralized database. Whether you are using only one of our tests or all of them, collected data is secure. In addition to facilitating the management of all testing data, this approach also ensures heightened security and confidentiality of all participant information.

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
                        <h2>Test Categories</h2>
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
                                    <h3><a href="category/Memory.aspx">Memory</a></h3>
                                    <p>
                                        The n-back working memory test with lifespan norms is currently available. Take our current working memory test and find out where you stand in relation to others your age and sex. Working memory shows a positive correlation with intelligence. 
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
                                    <h3><a href="category/ExecutiveFunction.aspx">Executive function and Planning</a></h3>
                                    <p>We currently have available several of the most frequently administered type of tests for assessing Executive Function. To go along with our premier flexible Tower of London test, we have available a syllogistic reasoning task, a card sorting task, a trail making task, and the n-back working memory test. All tests have extensive norms for ages 5 to 89 years.</p>
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
                                    <h3><a href="category/ProcessingSpeed.aspx">Processing Speed</a></h3>
                                    <p>Speed of processing is a major explanatory variable for 
                                        cognitive performance during development, adulthood, and aging.
                                         The Trail Making Test is a measure of speed of processing. 
                                        Given the importance of this variable, we measure the time taken on various performance components on several of our current tasks.
                                         We plan to have available a battery of speed of processing tasks in 2018. </p>
                                </div>
                            </div>
                 <%--           <div class="col-md-3 portfolio-item">
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
                        <h4>The software for each CogQuiz test has been designed with an emphasis on efficiency and ease of use. 
                        Each test comes with an easy to use example and a screen feature definition. 
                        In addition, we offer prompt, courteous customer support via email or Skype. 
                        CogQuiz tests will run on Microsoft Windows XP SP3®, Vista®, Windows 7® Windows 8®.</h4>
                        <h2>All Available Tests</h2>
                        <img class="img-responsive displayed" src="images/line-separator.png" alt="about">
                    </div>

                    <ul class="filter nav nav-pills">
                        <li data-value="all"><a class="active" href="#">All</a></li>
                        <li data-value="memory"><a href="#">Memory</a></li>
                        <li data-value="executive"><a href="#">Executive Function</a></li>
                        <li data-value="mobileapps"><a href="#">Processing Speed</a></li>
                    </ul>

                    <ul class="port2">
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
                    </ul>
                </div>
            </div>
        </section>

           <section id="testsToOrder">
            <div class="blueback">
                <div class="container">
                    <div class="text-center homeport2">
                        <h2>Tests to Order</h2>
                    </div>
                    <div class="row">
                        <div class="col-md-12 homeservices1 blueFont">
                            <div class="col-md-6 portfolio-item">
                                <div class="text-center">
                                    <h3 class="blueFont1">Single Test</h3>
                                    <p>
                                        Are you a practitioner, clinition, medical profressional or researcher in need of a specific test?
                                    We can make it for you within a two weeks, end-2-end. 
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6 portfolio-item">
                                <div class="text-center">
                                    <h3 class="blueFont1">Research Environment</h3>
                                    <p>
                                        We will make software for you based off of your needs. Neuropsychological testing is our specialty.
                                        If you are looking for custom software that is maluable and configurable for multiple tests, can keep a track of participants, store results, we are your best option.
                                    </p>
                                </div>
                            </div>

                        </div>
                            <div class="col-md-12 homeservices1 blueFont">
                            <div class="col-md-6 portfolio-item">
                                <div class="text-center">
                                    <h3 class="blueFont1">Software and Hosting</h3>
                                    <p>
                                    We create the software, and we will host it for you too. 
                                    We take the worrying out of Hipaa regulations and data integrity. We design and develop Cloud based and Desktop applications.
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6 ">
                                <div class="text-center">
                                    <h3 class="blueFont1">Platforms </h3>
                                    <p>With custom software comes custom requests. Do you want your tests to run on Android, Apple, locked applications for tablets, or desktop applications? We can help.</p>
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
                    <h2>DeskTop Tests</h2>
                    <img class="img-responsive displayed" src="images/line-separator.png" alt="about">
                </div>
                <div class="row">
                    <div class="col-md-12 homeport1">
                        <div class="col-md-4 col-sm-12 col-xs-12 col-md-offset-4 portfolio-item">
                            <figure class="effect-oscar">
                                <img src="images/CogQuestPick.jpg"" alt="" class="img-responsive" />
                                <figcaption>
                                    <h2>CogQuest</h2>
                                    <a href="\Tests\CogQuest.aspx">View more</a>
                                </figcaption>
                            </figure>
                            <p class="text-center"> This is a highly flexible, stand-alone, desktop program for researchers and/or practitioners. 
                                We have created a general-purpose questionnaire construction tool. </p>
                                
                              
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
                <asp:Label class="label" ID="name" runat="server" Text="Your Name:"></asp:Label>
                <input id="emailName" class="email" type="text" runat="server" />
                <asp:Label class="label" ID="Label2" runat="server" Text="Your Email:"></asp:Label>
                <input id="emailFrom" class="email" type="text" runat="server" />
                <asp:Label class="label" ID="Label3" runat="server" Text="Message:"></asp:Label>
                <textarea id="emailText" class="email" cols="20" rows="5" runat="server"></textarea>
               
                <asp:LinkButton class="bnt btn-sm btn-success" type="submit" runat="server" OnClick="clcSendButton">Send Email</asp:LinkButton>

            </div>
        </section>


<%--        <section id="meet-team">
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

        <section id="follow-us">
            <div class="container">
                <div class="text-center height-contact-element">
                    <h2>FOLLOW US</h2>
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
        </section>

     <%--   <section id="register">
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
                               <%-- <asp:LinkButton ID="regSingle" class="btn_login" runat="server" onClick ="regSingle_Click" autopostback ="true" PostBackUrl="~/MainPage.aspx">REGISTER</asp:LinkButton>--%>
                   <%--         </div>

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
    </form>



    <footer id="footer">
        <div class="container">
            <div class="row myfooter">
                <div class="col-sm-6">
                    <div class="pull-left">
                        © Copyright CogQuiz 2016 
                    </div>
                </div>
                <div class="col-sm-6">
                    
                </div>
            </div>
        </div>
            <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-89149772-1', 'auto');
        ga('send', 'pageview');

</script>
    </footer>


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
</body>
</html>





