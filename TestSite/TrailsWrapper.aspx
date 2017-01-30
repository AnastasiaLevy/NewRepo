<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrailsWrapper.aspx.cs" Inherits="TestSite.TrailsWrapper" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Trails">
    <meta name="author" content="AnaLevy">
    <title>Trails</title>
    <link rel="shortcut icon" href="images/favicon.ico" />
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <link href="css/style.css" rel="stylesheet" />
    <!-- Custom CSS -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <link href="cogTest.css" rel="stylesheet" />
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <script src="https://use.fontawesome.com/0138464303.js"></script>
</head>

<body data-spy="scroll" runat="server">
    <form runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="MainPage.aspx">
                        <i class="fa fa-cogs" aria-hidden="true">Quiz</i></a>

                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu">
                        <li><a href="MainPage.aspx">Home</a></li>
                        <li class="active"><a href="#about">About</a></li>
                        <li id="profOpt" runat="server"><a href="UserProfile.aspx">Profile</a></li>
                        <li id="login" runat="server"><a href="../Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="logOut" class="btn button" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Content -->
        <section id="about">
            <div class="container testDescription">
                <h2>Make Trails Test</h2>
                <hr />
                <p>
                    CogQuiz’s provides norms for children to older adults (age range 5 to 89 and an N = 708). The descriptive statistics 
        are broken out in five year cohorts for the child to young adult (5 to 19 years of age) and ten year 
        cohorts for the young adult to elderly.   
                </p>
                <div class="panel-group testDescription " id="accordion" role="tablist" aria-multiselectable="true">
                           <div class="col-md-6 visible">
                            <p>
                                <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button" data-toggle="collapse" data-target="#collapse4" aria-expanded="false" aria-controls="collapse4">
                                 Research
                                </button>
                            </p>
                        </div>
                       <div class="col-md-6 visible">
                            <p>
                                <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button"
                                    data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                    About
                                </button>
                            </p>
                        </div>
                       <div class="col-md-6 visible">
                            <p>
                                <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                    Measure
                                </button>
                            </p>
                        </div>
                          <div class="col-md-6 visible">
                            <p>
                                <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
                                    Details
                                </button>
                            </p>
                        </div>
                    <div class="panel">
                     
                        <div id="collapse1" class="collapse col-md-12">
                            <h3>About:</h3>
                            <p>
                                The Trail Making Test (TMT), originally devised in 1938, was known as the “Partington’s 
            Pathways Test,” or “Divided Attention Test” (Partington & Leiter, 1949). It was initially part of 
            a battery of tests (Army Individual Test Battery) used to assess “…a variety of intellectual functions 
            different from those measured by the Wechsler-Bellevue Intelligence Scale.” (Spreen & Strauss, 1998).
            The test is not typically part of a test battery but administered single in its original paper and pencil
            form.
                            </p>
                        </div>
                    </div>
                    <div class="panel">
                     
                        <div id="collapse2" class="collapse col-md-12">
                            <h3>Measure:</h3>
                            <p>
                                The TMT provides a measure of attention, visual scanning, speed of eye-hand coordination (Part A),
            and mental flexibility (Strauss, Sherman, & Spreen, 2007). In addition, Part B assesses the ability to 
            alternate between stimulus sets and as such is a measure of “executive function” (Mitrushina, et al., 1999).
            Performance on the TMT has been obtained for normal and various clinical populations such as Attention Deficit
            Disorder ADD), Attention Deficit Hyperactivity Disorder, Alzheimer’s disease, Post Traumatic Stress
            Disorder to name a few.
                            </p>
                        </div>
                    </div>
                    <div class="panel">
                  
                        <div id="collapse3" class=" collapse col-md-12">
                            <h3>Description</h3>
                            <p>
                                The TMT and its several variants require the Participant to, in the correct order, link together an array 
            of objects that are labeled in a way indicating a specific order (e.g., numerical, alphabetical). Part A of 
            the TMT contains an array of 25 circles containing the numbers 1 to 25. By clicking the numbered bubbles, 
            the test-taker creates a line from the circle containing the number 1 to the circle containing the number 
            2 and then to the circle containing the number 3 and so on until he/she reaches the circle containing the 
            number 25. In Part B the test-taker is required to alternate between numbers and letters (e.g., the sequence 
            of 1, A, 2, B, 3, C,…)
                            </p>
                        </div>
                    </div>

                         <div class="panel">
                 
                        <div id="collapse4" class=" collapse col-md-12">
                            <h3>Research</h3>
                            <p>
                                The TMT and its several variants require the Participant to, in the correct order, link together an array 
            of objects that are labeled in a way indicating a specific order (e.g., numerical, alphabetical). Part A of 
            the TMT contains an array of 25 circles containing the numbers 1 to 25. By clicking the numbered bubbles, 
            the test-taker creates a line from the circle containing the number 1 to the circle containing the number 
            2 and then to the circle containing the number 3 and so on until he/she reaches the circle containing the 
            number 25. In Part B the test-taker is required to alternate between numbers and letters (e.g., the sequence 
            of 1, A, 2, B, 3, C,…)
                            </p>
                        </div>
                    </div>
                </div>

         
            </div>

        </section>

        <section>
                   <div class="container specifications">
                    <h3>Specifications:</h3>
                    <p>
                        This test will take 3 to 5 minutes to complete. 
                    </p>
                    <p>
                        Recommended minimum screen resolution is 1000 x 700. 
                    </p>
                </div>
        </section>
        <section>

            <div class="container right">
                <asp:LinkButton ID="runTest" runat="server" class="signup-btn" OnClick="runTest_Click">Run Test</asp:LinkButton>
                <div id="requestToReg" runat="server" visible="true">
                    <p>
                        <a href="../Login.aspx">Please Login </a>
                    </p>
                    <p>OR</p>
                    <p>
                        <a href="../MainPage.aspx#register">Register</a>
                    </p>
                </div>
            </div>
        </section>

        <section id="price" runat="server">
            <div id="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="circle c1 img-circle">
                                <h4 class="blue">Single Test</h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">5</span>
                                <span class="price-small">,00</span>
                                <p>One Time Run</p>
                                <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c2 img-circle">
                                <h4 class="yellow">Set of 10</h4>
                                <span class="icon yellow"><i class="fa fa-usd"></i></span>
                                <span class="price-large yellow">40</span>
                                <span class="price-small">,00</span>
                                <p>Small Project</p>
                                <asp:Button ID="ten" class="btn btn-warning" runat="server" OnClick="ten_Click" Text="Call Us" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c3 img-circle">
                                <h4 class="green">Set of 100</h4>
                                <span class="icon green"><i class="fa fa-usd "></i></span>
                                <span class="price-large green">80</span>
                                <span class="price-small">,00</span>
                                <p>Medium Size Project</p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" OnClick="hundred_Click" Text="Call Us" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c4 img-circle">
                                <h4 class="red">Unlimited Use</h4>
                                <span class="icon red"><i class="fa fa-usd "></i></span>
                                <span class="price-large red">499</span>
                                <span class="price-small">,00</span>
                                <p>
                                    Any Number of Participants
                                <p>


                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server" OnClick="unlim_Click" Text="Call Us" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->
                    </div>
                    <!-- .Container ends here -->
                </div>
                <!-- .Row ends here -->
            </div>
        </section>
        <section id="follow-us">
            <div class="container">
                <div class="text-center height-contact-element">
                    <h3>Follow Us</h3>
                </div>
                <img class="img-responsive displayed" src="images/line-separator.png" alt="short" />
                <div class="text-center height-contact-element">
                    <ul class="list-unstyled list-inline list-social-icons">
                        <li class="active"><a href="https://www.facebook.com/CogQuiz-1644904339158958/"><i class="fa fa-facebook social-icons"></i></a></li>
                        <li><a href="https://twitter.com/cogquizcom"><i class="fa fa-twitter social-icons"></i></a></li>
                        <li><a href="https://plus.google.com/u/3/113821050703373361140?hl=en"><i class="fa fa-google-plus social-icons"></i></a></li>
                        <li><a href="https://www.linkedin.com/in/hasker-davis-8849a914"><i class="fa fa-linkedin social-icons"></i></a></li>
                    </ul>
                </div>
            </div>
        </section>
    </form>
    <footer id="footer">
        <div class="container">
            <div class="row myfooter">
                <div class="col-sm-6">
                    <div class="pull-left">
                        © Copyright Cogquiz 2016 | <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="pull-right">Designed by <a href="http://www.adldenver.com">ADL</a></div>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


    <!--Jquery Smooth Scrolling-->
    <script>
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

        });

    </script>
</body>
</html>





