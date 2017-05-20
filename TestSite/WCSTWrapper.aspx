<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WCSTWrapper.aspx.cs" Inherits="TestSite.WCSTWrapper" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="We offer the Card Sort Test online. This test assesses abstract thinking and is available for kids and adults.">
    <meta name="author" content="CogQuiz">
    <meta name ="keywords" content ="Card Sort Test Online, CogQuiz" />
    <title>Card Sort Test Online, Card Sorting Test Online – CogQuiz</title>
    <link rel="shortcut icon" href="images/favicon.ico" />
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Custom Fonts -->
    <link href="css/style.css" rel="stylesheet" />
    <!-- Custom CSS -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <link href="cogTest.css" rel="stylesheet" />
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

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
                <h1>Card Sort Test</h1>
                <hr />
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
                                CogQuiz’s card sorting test like other sorting tests might be administered to individuals
                                 with brain injury (e.g., TBI, stroke, etc.), neurological/neurodegenerative disorders 
                                (e.g., Parkinson’s disease, Alzheimer’s disease, etc.), psychological/mental disorders 
                                (e.g., schizophrenia, depression, etc.), or to assess development in children and decline
                                 in elderly.
                            
                            </p>
                        </div>
                    </div>
                    <div class="panel">

                        <div id="collapse2" class="collapse col-md-12">
                            <h3>Measure:</h3>
                            <p>
                             Card sorting tests measure cognitive flexibility by assessing the test taker’s
                                 ability to switch a response strategy when the rules for responding along a dimension change
                                 (e.g., size, location, etc.). These tests allow mental health professionals to assess 
                                planning strategy, inhibition of responding, shift strategy in response to performance 
                                feedback, and working memory as reflected by holding task relevant information in conscious
                                 awareness. 
                            </p>
                        </div>
                    </div>
                    <div class="panel">

                        <div id="collapse3" class=" collapse col-md-12">
                            <h3>Description</h3>
                            <p>
    In normal individuals, the task is a measure of cognitive flexibility.
                                 We provide several normed response parameters for individuals from 5 to 89 years of age.
                                 Results from the CogQuiz card sorting tests administered alone or without input or supervision 
                                from a licensed mental health specialist are not valid for assessing brain or cognitive function.
                            </p>
                        </div>
                    </div>

                    <div class="panel">

                        <div id="collapse4" class=" collapse col-md-12">
                            <h3>Research</h3>
                            <p>
                      Berg, E. A. (1948). A simple objective for measuring flexibility in thinking. Journal of General Psychology, 39, 15-22.
Eling, P., Derckx, K., & Maes, R. (2008). On the historical and conceptual background of the Wisconsin Card Sorting Test. Brain and Cognition, 67, 247-253.
Flashman, L. A., Horner, M. D., Freides, D. (1991). Note on scoring perseveration on the Wisconsin Card Sorting Test. The Clinical Neurologist, 5, 2, 190-194.
Feldstein, S. N., Keller, F. R., Portman, R. E., Durham, R. L., Klebe, K. J., Davis, H. P. (1999). A comparison of computerized and standard versions of the Wisconsin Card Sorting Test. The Clinical Neurologist, 13, 3, 303-313
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="specifications container">
                <h3>Specifications:</h3>
                <p>
                    This test will take about 20 minutes to complete. 
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
                            <div class="circle c1 img-circle" id="singlePr" runat="server">
                                <h4 class="blue">Single Test</h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">7</span>
                                <span class="price-small">.00</span>
                                <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                           <div class="col-md-3">
                            <div class="circle c2 img-circle">
                                <h4 class="yellow">Set of 10</h4>
                                <span class="icon yellow"><i class="fa fa-usd"></i></span>
                                <span class="price-large yellow">50</span>
                                <span class="price-small">.00</span>
                                <p>Small Project</p>
                                <asp:Button ID="ten" class="btn btn-warning" runat="server"  Text="Call Us" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                             <div class="col-md-3">
                            <div class="circle c3 img-circle">
                                <h4 class="green">Set of 100</h4>
                                <span class="icon green"><i class="fa fa-usd "></i></span>
                                <span class="price-large green">450</span>
                                <span class="price-small">.00</span>
                                <p>Medium Size Project</p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" Text="Call Us" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                                   <div class="col-md-3">
                            <div class="circle c4 img-circle">
                                <h4 class="red">Unlimited Use</h4>
                                <span class="icon red"><i class="fa fa-usd "></i></span>
                                <span class="price-large red">600</span>
                                <span class="price-small">.00</span>
                                <p>
                                    Any Number of Participants
                                <p>
                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server"  Text="Call Us" />
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
                         <p>+1(719)888 9121</p> 
                </div>
                <img class="img-responsive displayed" src="images/line-separator.png" alt="short" />
                <div class="text-center height-contact-element">
                    <ul class="list-unstyled list-inline list-social-icons">
                        <li class="active"><a href="https://www.facebook.com/CogQuiz-1644904339158958/"><i class="fa fa-facebook social-icons"></i></a></li>
                        <li><a href="https://twitter.com/cogquizcom"><i class="fa fa-twitter social-icons"></i></a></li>
                        <li><a href="https://plus.google.com/u/3/113821050703373361140?hl=en"><i class="fa fa-google-plus social-icons"></i></a></li>
                        <li><a href="https://www.linkedin.com/company-beta/13213074/"><i class="fa fa-linkedin social-icons"></i></a></li>
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
                        © Copyright Cogquiz 2016 
                    </div>
                </div>
                <div class="col-sm-6">
                    
                </div>
            </div>
        </div>
            <script src="https://use.fontawesome.com/0138464303.js"></script>
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











