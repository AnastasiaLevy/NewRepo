<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LondonWrapper.aspx.cs" Inherits="TestSite.LondonWrapper" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Test your working memory by taking our London Test Online, Short Term and Long Term Memory Test Online and Working Memory and Capacity Test from CogQuiz.">
    <meta name="author" content="CogQuiz">
    <meta name="keywords" content="Tower of London Test Online, Short Term and Long Term Memory Test Online, Working Memory, Capacity Test, CogQuiz" />
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <title>Tower Of London Test Online – CogQuiz</title>
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="cogTest.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/elastic_grid.min.css" />

    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <script src="https://use.fontawesome.com/0138464303.js"></script>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <script src="js/sessionManager.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/classie.js"></script>
    <script type="text/javascript" src="js/jquery.elastislide.js"></script>
    <script type="text/javascript" src="js/jquery.hoverdir.js"></script>
    <script type="text/javascript" src="js/elastic_grid.js"></script>

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
                            <asp:LinkButton ID="logOut" class="" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <header>
        </header>

        <!-- Page Content -->
        <section id="about">
            <div class="container testDescription">
                <h1>Tower of London</h1>
                <hr />
                <span style="font-size: larger;">The Tower of London test is a well-known test used in applied clinical neuropsychology 
                    for the assessment of executive functioning specifically to detect deficits in planning, 
                    which may occur due to a variety of medical and neuropsychiatric conditions. 
                    It is related to the classic problem-solving puzzle known as the Tower of Hanoi. 
               
                </span>
                <br />
                <br />
               <span>Read More About:</span>
            </div>

        </section>

        <div class="container" id="elastic_grid_demo"></div>
        <section class="container">

            <p style="font-size: larger;">Select Version:</p>
            <asp:Panel ID="pSelect" runat="server"></asp:Panel>
            <asp:RadioButtonList ID="rbList" runat="server" OnSelectedIndexChanged="rbList_SelectedIndexChanged"></asp:RadioButtonList>
        </section>
        <section>
            <div class="specifications container">
                <h3>Specifications:</h3>
                <p>
                    This test will take abiut 20 minutes to complete. 
                </p>
                <p>
                    Recommended minimum screen resolution is 1000 x 700. 
                </p>
            </div>
        </section>


        <section>
            <div class="container right" style="margin-top: 20px;">
                <asp:LinkButton ID="runTest" runat="server" class="signup-btn" OnClick="runTest_Click">Run Test</asp:LinkButton>
                <div id="requestToReg" runat="server" visible="true">
                    <p>
                        <a href="../Login.aspx">Please Login </a>
                    </p>
                    <p>OR</p>
                    <p>
                        <a href="../Login.aspx">Register</a>
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
                                <span class="price-large blue">5</span>
                                <span class="price-small">.00</span>
                                <p>One Time Run</p>
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
                                <asp:Button ID="ten" class="btn btn-warning" runat="server" OnClick="ten_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c3 img-circle">
                                <h4 class="green">Set of 100</h4>
                                <span class="icon green"><i class="fa fa-usd "></i></span>
                                <span class="price-large green">300</span>
                                <span class="price-small">.00</span>
                                <p>Medium Size Project</p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" OnClick="hundred_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c4 img-circle">
                                <h4 class="red">Set of 500</h4>
                                <span class="icon red"><i class="fa fa-usd "></i></span>
                                <span class="price-large red">1000</span>
                                <span class="price-small"></span>
                                <p>
                                    Large Project
                                <p>

                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server" OnClick="unlim_Click" Text="Buy Now" />
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
                <img class="img-responsive displayed" src="../images/line-separator.png" alt="short" />
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

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <script type="text/javascript">
                    $(function () {
                        $("#elastic_grid_demo").elastic_grid({
                            'showAllText': 'All',
                            'filterEffect': 'popup', // moveup, scaleup, fallperspective, fly, flip, helix , popup
                            'hoverDirection': true,
                            'hoverDelay': 0,
                            'hoverInverse': false,
                            'expandingSpeed': 500,
                            'expandingHeight': 800,
                            'items':
                            [

                                {
                                    'title': 'Make Your Own Tests',
                                    'description': 'Make your own Tower of London Test Problems. You control the number of demo, practice, and scored trials, the number of direct and indirect moves, the total number of moves, the maximum moves per trial, and the time allowed to complete a trial. The figure on the far left shows an in progress construction of a trial. The next two figures show how the text and parameters associated with a test are constructed.',
                                    'thumbnail': ['images/large/s16.png', 'images/large/s15.png', 'images/large/s14.png'],
                                    'large': ['images/large/16.png', 'images/large/15.png', 'images/large/14.png'],
                                    'img_title': ['Add or Edit trials. ', 'Set up instructions or test descriptions in any language. ', 'Set up the number of demo trials, actual trials', 'Set up Feddback test, Wait message, End-of-the-test instructions. ', 'jquery elastic grid 9'],
                                    'button_list':
                                    [

                                    ],
                                    'tags': ['Set Up']
                                },
                                {
                                    'title': 'Scoring',
                                    'description': 'Get immediate test results. Figure 1 on the left shows a typical results output for a set of Tower of London Problems.  The column information is the following: column 1 is the trial number, column 2 designates the trial as scored (Trial) or as a Practice trial (setup allows the inclusion or non-inclusion of Practice trials in the scoring); Column labeled Initial Think Time is the time prior to the first move in seconds and milliseconds (It is your initial planning time.); the Game Time column is the total trial time and includes the Initial think time; Number of Moves column is the total number of moves made on a trial (an upper limit can be designated in the setup); the column label Minimum Moves is the number of moves for an optimal solution; the Excess Moves column gives the number of moves above an optimal solution—if the move or time limit is exceeded the score is the move limit minus the optimal solution number of moves;  the Number of Illegal moves is the number of initial attempts to drop a bead on a peg where it would result in stacking above the peg; the Game Timed Out column is checked when the time limit is exceeded; the Over Moves Limit is checked when the number of moves exceeds the upper move limit. The second figure shows a direct transfer to Excel. The third figure shows the trials transferred to Excel as a single line. The third figure will probably be most useful for those individuals who want to analyze their data in SPSS. ',
                                    'thumbnail': ['images/large/s3.png', 'images/large/s6.png', 'images/large/s4.png'],
                                    'large': ['images/large/3.png', 'images/large/6.png', 'images/large/4.png'],
                                    'img_title': ['jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid'],
                                    'button_list':
                                    [

                                    ],
                                    'tags': ['Scoring']
                                },
                                {
                                    'title': 'Tower of London Test',
                                    'description': 'Figures 1 and 2 show a problem in the process of being solved. Figure 3 shows a window where you can click on Start on the left hand side to initiate a Tower of London set of problems. The right half of this window shows tests that have been completed. Clicking on the eye allows you to see the results. Figure 4 shows a window where you can either run a test if you have tests or purchase tests if there is not a green button',
                                    'thumbnail': ['images/large/s1.png', 'images/large/s2.png', 'images/large/s17.png', 'images/large/s18.png', 'images/large/s19.png'],
                                    'large': ['images/large/1.png', 'images/large/2.png', 'images/large/17.png', 'images/large/18.png', 'images/large/19.png'],
                                    'img_title': ['jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid'],
                                    'button_list':
                                    [

                                    ],
                                    'tags': ['Test']
                                },

                            ]
                        });
                    });
    </script>

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



