<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="DesktopTowerOfLondon.aspx.cs" Inherits="TestSite.Tests.DesktopTowerOfLondon" %>

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
    <link rel="shortcut icon" href="../../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="../../cogTest.css" rel="stylesheet" />
    <link href="../../css/style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../../css/elastic_grid.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <style>
        .circle {
            margin: 0 auto;
        }

        .text-larger {
            font-size: larger;
        }

        .wrap-key {
            word-wrap: break-word;
        }
    </style>


    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <script src="https://use.fontawesome.com/0138464303.js"></script>
    <!-- jQuery -->
    <script src="../../js/jquery.js"></script>
    <script src="../../js/sessionManager.js"></script>
    <script src="../../js/modernizr.custom.js"></script>
    <script src="../../js/classie.js"></script>
    <script type="text/javascript" src="../../js/jquery.elastislide.js"></script>
    <script type="text/javascript" src="../../js/jquery.hoverdir.js"></script>
    <script type="text/javascript" src="../../js/elastic_grid.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>

</head>
<body data-spy="scroll" runat="server">
    <form runat="server" action="DesktopTowerOfLondon.aspx?st=completed">
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
                        <li><a href="../../MainPage.aspx">Home</a></li>
                        <li class="active"><a href="#about">About</a></li>
                        <li id="profOpt" runat="server"><a href="../../UserProfile.aspx">Profile</a></li>
                        <li id="login" runat="server"><a href="../../Login.aspx">Login</a></li>
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
                <h1>Tower of London for desktop</h1>
                <hr />
                <span class="text-larger">The Tower of London test is a well-known test used in applied clinical neuropsychology 
                    for the assessment of executive functioning specifically to detect deficits in planning, 
                    which may occur due to a variety of medical and neuropsychiatric conditions. 
                    It is related to the classic problem-solving puzzle known as the Tower of Hanoi. 
                </span>
                <br />
                <br />
            </div>

        </section>

        <%--<div class="container" id="elastic_grid_demo"></div>--%>

        <section id="price" runat="server">
            <div id="wrapper">
                <div class="container">
                    <input type="submit" value="PayPal response simulation"></input>

                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span class="text-larger">Tower of London for Desktop:</span>
                            <a class="btn btn-info" id="InstallButton" href="CogQuiz-Tower_of_London.msi">Install</a>
                        </div>
                    </div>


                    <%-- buy button  --%>
                    <div class="row" id="buyButtonArea" runat="server">
                        <div class="col-md-12">
                            <div class="circle c1 img-circle" id="singlePr" runat="server">
                                <h4 class="blue">Buy license</h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">5</span>
                                <span class="price-small">.00</span>
                                <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="Buy_Click" Text="Buy Now" />
                            </div>
                        </div>
                    </div>

                    <%-- key output --%>
                    <div class="row" id="keyValueArea" runat="server">
                        <div class="col-md-12 text-center text-larger">
                            Your key active for email: <span class="text-success wrap-key"><%# LicenseEmail %></span>
                        </div>
                        <div class="col-md-12 text-center text-larger">
                            Your key: <span class="text-success wrap-key"><%# Key %></span>
                        </div>
                    </div>


                </div>
            </div>
        </section>

        <section id="about2">
            <div class="container testDescription">
                <div class="row">
                    <div class="col-md-12">
                        <h3>View Examples</h3>
                        <hr />
                        <div class="row">
                            <div class="col-md-6" id="left1">
                                <h4>Create test</h4>
                                <ul class="exapmles-list">
                                    <li><span>Sed imperdiet eros nec tellus fringilla, id facilisis ex tempus.</span></li>
                                    <li><span>Lorem ipsum dolor sit amet</span></li>
                                    <li><span>Lorem ipsum dolor sit amet</span></li>
                                    <li><span>Sed imperdiet eros nec tellus fringilla..</span></li>
                                </ul>
                            </div>
                            <div class="col-md-6" id="right1">
                                <img src="../images/desktops/TOL/DesktopTOL1.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-1" class="img-responsive" />
                            </div>
                        </div>
                        <hr class="cogquest-hr"/>
                        <div class="row">
                            <div class="col-md-6" id="left2">
                                <img src="../images/desktops/TOL/DesktopTOL2.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-2" class="img-responsive" />
                            </div>
                            <div class="col-md-6" id="right2">
                                <h4>2. Participants</h4>
                                <p>Sed imperdiet eros nec tellus fringilla, id facilisis ex tempus. Nunc tincidunt, dui id fringilla suscipit, quam urna gravida augue, nec fermentum velit velit et risus. Praesent massa massa, porta vel justo ut, venenatis blandit metus. Fusce nec egestas erat. Etiam auctor neque nec sagittis dignissim. Duis sed sapien luctus orci elementum imperdiet. Duis maximus et lorem nec scelerisque. Vivamus ut elit ante. Proin ut sollicitudin nisl. Donec non enim ipsum.</p>
                            </div>
                        </div>
                        <hr class="cogquest-hr"/>
                        <div class="row">
                            <div class="col-md-6" id="left3">
                                <h4>3. Run test</h4>
                                <p>Maecenas vel lacus in ligula gravida mollis placerat ut quam. Morbi magna tellus, condimentum nec mi et, pulvinar imperdiet ligula. Morbi maximus mi eget justo tristique feugiat. Suspendisse ultrices dolor in leo congue, faucibus luctus nisi pharetra. Vivamus dapibus pellentesque orci, a rutrum risus sodales a. Nulla tempor nunc et magna egestas fermentum. Nulla magna ante, mattis elementum ipsum et, lobortis luctus lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                            </div>
                            <div class="col-md-6" id="right3">
                                <img src="../images/desktops/TOL/DesktopTOL3.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-3" class="img-responsive" />
                            </div>
                        </div>
                        <hr class="cogquest-hr"/>
                        <div class="row">
                            <div class="col-md-6" id="left4">
                                <img src="../images/desktops/TOL/DesktopTOL4.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-4" class="img-responsive" />
                            </div>
                            <div class="col-md-6" id="right4">
                                <h4>4. Analyze tests</h4>
                                <p>Nulla sagittis metus ac rutrum tempus. Fusce mollis lorem et velit fermentum rhoncus. In vestibulum fringilla odio, vitae tempus diam aliquam et. Nam vitae elementum purus. Nullam erat urna, porttitor ut risus mattis, vehicula tincidunt quam. Aliquam tempus ornare nulla at efficitur. In nec arcu sed nunc rutrum pellentesque. In hac habitasse platea dictumst. Aliquam vel rhoncus urna. Donec in purus ipsum. In non orci faucibus, ullamcorper augue vel, dignissim velit.</p>
                            </div>
                        </div>
                        <hr class="cogquest-hr"/>
                        <div class="row">
                            <div class="col-md-6" id="left5">
                                <h4>5. View playback</h4>
                                <p>Maecenas vel lacus in ligula gravida mollis placerat ut quam. Morbi magna tellus, condimentum nec mi et, pulvinar imperdiet ligula. Morbi maximus mi eget justo tristique feugiat. Suspendisse ultrices dolor in leo congue, faucibus luctus nisi pharetra. Vivamus dapibus pellentesque orci, a rutrum risus sodales a. Nulla tempor nunc et magna egestas fermentum. Nulla magna ante, mattis elementum ipsum et, lobortis luctus lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                            </div>
                            <div class="col-md-6" id="right5">
                                <img src="../images/desktops/TOL/DesktopTOL5.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-5" class="img-responsive" />
                            </div>
                        </div>
                        <hr class="cogquest-hr"/>
                        <div class="row">
                            <div class="col-md-6" id="left6">
                                <img src="../images/desktops/TOL/DesktopTOL6.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-6" class="img-responsive" />
                            </div>
                            <div class="col-md-6" id="right6">
                                <h4>6. Export result to Excel</h4>
                                <p>Nulla sagittis metus ac rutrum tempus. Fusce mollis lorem et velit fermentum rhoncus. In vestibulum fringilla odio, vitae tempus diam aliquam et. Nam vitae elementum purus. Nullam erat urna, porttitor ut risus mattis, vehicula tincidunt quam. Aliquam tempus ornare nulla at efficitur. In nec arcu sed nunc rutrum pellentesque. In hac habitasse platea dictumst. Aliquam vel rhoncus urna. Donec in purus ipsum. In non orci faucibus, ullamcorper augue vel, dignissim velit.</p>
                            </div>
                        </div>
                        <hr class="cogquest-hr"/>
                    </div>
                </div>
            </div>

            <div class="modal fade bs-modal-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/desktops/TOL/DesktopTOL1.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/desktops/TOL/DesktopTOL2.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/desktops/TOL/DesktopTOL3.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/desktops/TOL/DesktopTOL4.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/desktops/TOL/DesktopTOL5.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/desktops/TOL/DesktopTOL6.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
        </section>

        <section id="follow-us">
            <div class="container">
                <div class="text-center height-contact-element">
                    <h3>Follow Us</h3>
                    <p>+1(719)888 9121</p>
                </div>
                <img class="img-responsive displayed" src="../../images/line-separator.png" alt="short" />
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
    <script src="../../js/bootstrap.min.js"></script>

    <%-- <script type="text/javascript">
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
                            'thumbnail': ['../../images/large/s16.png', '../../images/large/s15.png', '../../images/large/s14.png'],
                            'large': ['../../images/large/16.png', '../../images/large/15.png', '../../images/large/14.png'],
                            'img_title': ['Add or Edit trials. ', 'Set up instructions or test descriptions in any language. ', 'Set up the number of demo trials, actual trials', 'Set up Feddback test, Wait message, End-of-the-test instructions. ', 'jquery elastic grid 9'],
                            'button_list':
                            [

                            ],
                            'tags': ['Set Up']
                        },
                        {
                            'title': 'Scoring',
                            'description': 'Get immediate test results. Figure 1 on the left shows a typical results output for a set of Tower of London Problems.  The column information is the following: column 1 is the trial number, column 2 designates the trial as scored (Trial) or as a Practice trial (setup allows the inclusion or non-inclusion of Practice trials in the scoring); Column labeled Initial Think Time is the time prior to the first move in seconds and milliseconds (It is your initial planning time.); the Game Time column is the total trial time and includes the Initial think time; Number of Moves column is the total number of moves made on a trial (an upper limit can be designated in the setup); the column label Minimum Moves is the number of moves for an optimal solution; the Excess Moves column gives the number of moves above an optimal solution—if the move or time limit is exceeded the score is the move limit minus the optimal solution number of moves;  the Number of Illegal moves is the number of initial attempts to drop a bead on a peg where it would result in stacking above the peg; the Game Timed Out column is checked when the time limit is exceeded; the Over Moves Limit is checked when the number of moves exceeds the upper move limit. The second figure shows a direct transfer to Excel. The third figure shows the trials transferred to Excel as a single line. The third figure will probably be most useful for those individuals who want to analyze their data in SPSS. ',
                            'thumbnail': ['../../images/large/s3.png', '../../images/large/s6.png', '../../images/large/s4.png'],
                            'large': ['../../images/large/3.png', '../../images/large/6.png', '../../images/large/4.png'],
                            'img_title': ['jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid'],
                            'button_list':
                            [

                            ],
                            'tags': ['Scoring']
                        },
                        {
                            'title': 'Tower of London Test',
                            'description': 'Figures 1 and 2 show a problem in the process of being solved. Figure 3 shows a window where you can click on Start on the left hand side to initiate a Tower of London set of problems. The right half of this window shows tests that have been completed. Clicking on the eye allows you to see the results. Figure 4 shows a window where you can either run a test if you have tests or purchase tests if there is not a green button',
                            'thumbnail': ['../../images/large/s1.png', '../../images/large/s2.png', '../../images/large/s17.png', '../../images/large/s18.png', '../../images/large/s19.png'],
                            'large': ['../../images/large/1.png', '../../images/large/2.png', '../../images/large/17.png', '../../images/large/18.png', '../../images/large/19.png'],
                            'img_title': ['jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid', 'jquery elastic grid'],
                            'button_list':
                            [

                            ],
                            'tags': ['Test']
                        },

                    ]
                });
            });
    </script>--%>

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
                    }, { offset: '100%' });
                }

            });
    </script>
</body>
</html>
