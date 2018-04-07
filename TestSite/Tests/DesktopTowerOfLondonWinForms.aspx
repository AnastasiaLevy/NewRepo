<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesktopTowerOfLondonWinForms.aspx.cs" Inherits="TestSite.Tests.DesktopTowerOfLondonWinForms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content=" For Academics, Researchers, Practitioners and more. Cognitive test online, cognitive ability test online from CogQuiz." />
    <meta name="keywords" content="Keywords: Cognitive Style Questionnaire, Cognitive Test Online Practice, Cognitive Ability Test Online" />
    <meta name="author" content="CogQuiz" />
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <title>Psychological Questionnaire, Cognitive Test Online Practice, Cognitive Ability Test Online</title>
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link href="../cogTest.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <%--<link href="../style/style.css" rel="stylesheet" />--%>
    <%--<link href="../css/previewer.css" rel="stylesheet" />--%>
    <script src="../js/jquery.js"></script>
    <%--<script src="../js/previewer.js"></script>--%>
    <script src="https://use.fontawesome.com/0138464303.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
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
                    <a class="navbar-brand" href="../MainPage.aspx">
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
                            <asp:LinkButton ID="logOut" class="" type="submit" OnClick="logOut_Click" runat="server">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <section id="about">
            <div class="container testDescription">
                <h1>Tower of London for desktop</h1>
                <hr />
                <p>The most significant improvement in the CogQuiz TOL is the timing and record keep that can be obtained with a computerized test, and most notably, the ability to create a number of tests for varying populations. The relative low cost of the TOL, the ability to reliably collect various test parameters, and standardizing the procedure, researchers are able to investigate the same cognitive processes with different populations, showing how various conditions can differentially affect planning ability.

While the TOL was developed as a manual test to be implemented using wooden stimulus boards, there is an increasing amount of evidence to support the use of computerized methods of testing. Using computerized testing methods allows for greater standardization of testing procedures and can reduce experimenter biases that may come out during an in person testing session.

Additionally, since the test has been standardized, experimenters do not need to be as highly trained as would be necessary in a traditional testing format (Zygouris & Tsolaki, 2015). Since the experimenters do not need to be trained as thoroughly, overall cost and time of the experiment can be reduced. Research assistants do not need to be trained compensated. As well as ease of administration, computerized testing simplifies the data gathering process and, in many cases, can increase the accuracy of the measurement. Since the administration and data gathering and analysis all take place on the same platform, the data can be stored between tests and changes in performance can be easily tracked over time (Cambridge Cognition, 2012; CNS Vital Signs, 2012; Neurotrax Corporation, 2003;).

Since its creation as a means of assessing planning ability, the TOL has been implemented as a tool for measuring various domains of executive functioning (Bottari et al., 2009; Köstering et al., 2015; Owen, 2005) as well as spatial planning (Berg & Byrd, 2005; Berg, Byrd, McNamara, & MacDonald, 2006; Kaller, Unterrainer, & Stahl, 2012; Pulos & Denzine, 2005; Shallice, 1982; Unterrainer & Owen, 2006), working memory (Albert & Steinberg, 2011; Berg & Byrd, 2002; Pulos & Denzine, 2005), inhibition (Albert & Steinberg, 2011; Berg & Byrd, 2002; Shallice, 1982), and task shifting (Pulos & Denzine, 2005). In addition to Shallice’s (1982) original findings of deficits in individuals with frontal lobe lesions, there have emerged several additional populations that frequently show deficits in their performance on the TOL; those with neurological and psychiatric conditions such as depression or Parkinson’s (Jacobs & Anderson, 2002), individuals who have suffered a traumatic brain injury (TBI), Alzheimer’s and related dementias (Carlin et al., 2000), ADHD (Culbertson & Zillmer, 1998), Autism (Wisley & Howlin, 2009), and schizophrenia (Landua & Morris, 2011)</p>

                <asp:LinkButton ID="LinkButton1" class="btn btn-primary btn-lg btn-xs-block" OnClick="LinkButton1_Click" runat="server">View User Manual</asp:LinkButton>


                <asp:LinkButton ID="runTest" runat="server" class="btn btn-primary btn-lg btn-xs-block" OnClick="runTest_Click">Download</asp:LinkButton>

                <asp:LinkButton ID="paypalsimulate" runat="server" OnClick="paypalsimulate_Click" class="btn btn-primary btn-lg btn-xs-block btn-green pull-right">Paypal response simulation</asp:LinkButton>

                <%--<div>
                    <span id="KeyValue" class="text-success" runat="server" style="word-wrap: break-word;"><span>Registration Key:</span> <%# Key %></span>
                    <asp:Label ID="existsMessage" CssClass="errorMessage" runat="server" Text=""></asp:Label>
                </div>--%>
                <br />


                <div class="row">
                    <div class="col-md-12">
                        <h3>View Examples</h3>
                        
                        <hr />

                        <div class="row">
                            <div class="col-md-6" id="left2">
                                <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h4>
                                <ul class="exapmles-list">
                                    <li><span>Donec iaculis erat a lorem sodales tempor.</span></li>
                                    <li><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></li>
                                    <li><span>Donec iaculis erat a lorem sodales tempor.</span></li>
                                    <li><span>Set </span></li>
                                    <li><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.d</span></li>
                                </ul>
                            </div>
                            <div class="col-md-6" id="right2">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/TOL/1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-1" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/TOL/2.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-2" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/TOL/3.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-3" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/TOL/4.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-4" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="cogquest-hr" />
                        <div class="row">
                            <div class="col-md-6" id="left3">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="../images/TOL/5.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-5" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/TOL/6.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-6" class="img-responsive" style="margin-bottom: 30px;"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/TOL/7.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-7" class="img-responsive" />
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../images/TOL/8.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-8" class="img-responsive" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" id="right3">
                                <h4>2. Donec iaculis erat a lorem sodales tempor.</h4>
                                <ul class="exapmles-list">
                                    <li><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></li>
                                    <li><span>Donec iaculis erat a lorem sodales tempor.</span></li>
                                    <li><span>Donec iaculis erat a lorem</span></li>
                                    <li><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></li>
                                </ul>
                            </div>
                        </div>
                        
                        <hr class="cogquest-hr" />
                        
                        <div class="modal fade bs-modal-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/TOL/1.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/TOL/2.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/TOL/3.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/TOL/4.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/TOL/5.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/TOL/6.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-7" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/TOL/7.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>

                        <div class="modal fade bs-modal-8" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/TOL/8.png" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="panel-group testDescription " id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="row">
                        <div class="col-md-12 visible">
                            <p>
                                <%--<asp:LinkButton ID="LinkButton1" class="btn btn-primary btn-lg btn-block" OnClick="LinkButton1_Click" runat="server" Style="display: inline-block; margin: 15px 0; width: auto;">View User Manual</asp:LinkButton>--%>
                            </p>
                        </div>
                        <div class="col-md-12 visible">
                           


                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="container">
        </section>

        <section id="price" runat="server">
            <div id="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="circle c1 img-circle" style="float: right;">
                                <h4 class="blue">One Install</h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">45</span>
                                <span class="price-small">.00</span>
                                <p>Install on 1 computer</p>
                                <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="circle c3 img-circle">
                                <h4 class="green">Custom</h4>
                                <span class="price-large green">Call</span>
                                <span class="price-small">for<span class="icon green"><i class="fa fa-usd "></i></span></span>
                                <p>Call for custom order</p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" Text="Buy Now" />
                            </div>
                        </div>
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
                    }, { offset: '100%' });
                }
            });
        </script>
    </footer>
    <script src="../js/bootstrap.min.js"></script>
</body>
</html>
