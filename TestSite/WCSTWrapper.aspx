<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WCSTWrapper.aspx.cs" Inherits="TestSite.WCSTWrapper" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Card Sort">
    <meta name="author" content="AnaLevy">
    <title>CST</title>
    <link rel="shortcut icon" href="images/favicon.ico" />
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
    <form runat ="server">
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
                    <!-- 	<li><a href="blog.html">Blog</a></li>
                        <li><a href="single-post.html">Single</a></li> -->
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <section id="about">
        <div class="container testDescription">
        <h2>Card Sort Test</h2>
        <p>
            Since 1948, the test has been used by neuropsychologists and clinical psychologists in patients with acquired brain 
                injury, neurodegenerative disease, or mental illness such as schizophrenia. It is one of several psychological 
                tests which can be administered to patients to measure frontal lobe dysfunction. When administered, the Card Sort
                 allows the clinician speculate to the following "frontal" lobe functions: strategic planning, organized searching, 
                utilizing environmental feedback to shift cognitive sets, directing behavior toward achieving a goal, 
                and modulating impulsive responding. The test can be administered to those from 6.5 years to 89 years of age.
                 The Card Sort Test relies upon a number of cognitive functions including attention, working memory, and visual processing. 
           
        </p>

        <p>
            This  test may be used to help measure an individual's competence in abstract reasoning, and the ability to change problem-solving strategies when needed. In this test, a number of cards are presented to the participants. 
                The figures on the cards differ with respect to color, quantity, and shape.
           
        </p>
        <div class="specifications">
            <h3>Specifications:</h3>
            <p>
                This test will take about 20 minutes to complete. 
            </p>
            <p>
                Recommended minimum screen resolution is 1000 x 700. 
            </p>
        </div>
    </div>
    </section>
    <section>
        
            <div class="container right">
                <asp:ImageButton
                     ID="PayPalBtn"
                     runat="server"
                     ImageUrl="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif"
                      OnClick="PayPalBtn_Click" />

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
 
</body>
</html>











