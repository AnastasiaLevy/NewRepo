<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesktopTowerOfLondonWinForms.aspx.cs" MasterPageFile="~/Layout.Master" Inherits="TestSite.Tests.DesktopTowerOfLondonWinForms" 
    culture="auto" uiculture="auto" Title="" meta:resourcekey="pagetitle"%>


<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content=" For Academics, Researchers, Practitioners and more. Cognitive test online, cognitive ability test online from CogQuiz." />
    <meta name="keywords" content="Keywords: Cognitive Style Questionnaire, Cognitive Test Online Practice, Cognitive Ability Test Online" />
    <meta name="author" content="CogQuiz" />
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <%--<title>Psychological Questionnaire, Cognitive Test Online Practice, Cognitive Ability Test Online</title>--%>
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

</asp:Content>

<asp:Content ContentPlaceHolderID="MenuItemLi" runat="server">
    <li class="active"><a href="#about"><asp:Localize meta:resourcekey="navbar_about"  runat="server" ID="Localize27" Text="" /></a></li>
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
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
                    <a class="navbar-brand" href="../MainPage.aspx">
                        <i class="fa fa-cogs" aria-hidden="true">Quiz</i>
                    </a>

                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu">
                        <li><a href="../MainPage.aspx"><asp:Localize meta:resourcekey="navbar_home"  runat="server" ID="Localize48" Text="" /></a></li>
                        <li class="active"><a href="#about"><asp:Localize meta:resourcekey="navbar_about"  runat="server" ID="Localize1" Text="" /></a></li>
                        <li id="profOpt" runat="server"><a href="../UserProfile.aspx"><asp:Localize meta:resourcekey="navbar_profile"  runat="server" ID="Localize2" Text="" /></a></li>
                        <li id="login" runat="server"><a href="../Login.aspx"><asp:Localize meta:resourcekey="navbar_login"  runat="server" ID="Localize3" Text="" /></a></li>
                        <li>
                            <asp:LinkButton ID="logOut" class="" type="submit" OnClick="logOut_Click" runat="server"><asp:Localize meta:resourcekey="navbar_logout"  runat="server" ID="Localize4" Text="" /></asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>--%>

        <section id="about">
            <div class="container testDescription">
                <h1><asp:Localize meta:resourcekey="about_title"  runat="server" ID="Localize5" Text="" /></h1>
                <hr />
                <p>
                    <asp:Localize meta:resourcekey="about_paragraph"  runat="server" ID="Localize6" Text="" />
                </p>

                <asp:LinkButton ID="LinkButton1" class="btn btn-primary btn-lg btn-xs-block" OnClick="LinkButton1_Click" runat="server"><asp:Localize meta:resourcekey="about_manual"  runat="server" ID="Localize7" Text="" /></asp:LinkButton>


                <asp:LinkButton ID="runTest" runat="server" class="btn btn-primary btn-lg btn-xs-block" OnClick="runTest_Click"><asp:Localize meta:resourcekey="about_download"  runat="server" ID="Localize8" Text="" /></asp:LinkButton>

                <asp:LinkButton ID="paypalsimulate" runat="server" OnClick="paypalsimulate_Click" class="btn btn-primary btn-lg btn-xs-block btn-green pull-right">Paypal response simulation</asp:LinkButton>

                <%--<div>
                    <span id="KeyValue" class="text-success" runat="server" style="word-wrap: break-word;"><span>Registration Key:</span> <%# Key %></span>
                    <asp:Label ID="existsMessage" CssClass="errorMessage" runat="server" Text=""></asp:Label>
                </div>--%>
                <br />


                <div class="row">
                    <div class="col-md-12">
                        <h3><asp:Localize meta:resourcekey="examples_title"  runat="server" ID="Localize9" Text="" /></h3>
                        
                        <hr />

                        <div class="row">
                            <div class="col-md-6" id="left2">
                                <h4><asp:Localize meta:resourcekey="examples_conteiner1_title"  runat="server" ID="Localize10" Text="" /></h4>
                                <ul class="exapmles-list">
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner1_span1"  runat="server" ID="Localize11" Text="" /></span></li>
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner1_span2"  runat="server" ID="Localize12" Text="" /></span></li>
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner1_span3"  runat="server" ID="Localize13" Text="" /></span></li>
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner1_span4"  runat="server" ID="Localize14" Text="" /></span></li>
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner1_span5"  runat="server" ID="Localize15" Text="" /></span></li>
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
                                <h4><asp:Localize meta:resourcekey="examples_conteiner2_title"  runat="server" ID="Localize26" Text="" /></h4>
                                <ul class="exapmles-list">
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner2_span1"  runat="server" ID="Localize16" Text="" /></span></li>
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner2_span2"  runat="server" ID="Localize17" Text="" /></span></li>
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner2_span3"  runat="server" ID="Localize18" Text="" /></span></li>
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner2_span4"  runat="server" ID="Localize19" Text="" /></span></li>
                                    <li><span><asp:Localize meta:resourcekey="examples_conteiner2_span5"  runat="server" ID="Localize20" Text="" /></span></li>
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
                                <h4 class="blue"><asp:Localize meta:resourcekey="price_single_title"  runat="server" ID="Localize21" Text="" /></h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">45</span>
                                <span class="price-small">.00</span>
                                <p><asp:Localize meta:resourcekey="price_single_paragraph"  runat="server" ID="Localize22" Text="" /></p>
                                <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" meta:resourcekey="price_single_buy"/>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="circle c3 img-circle">
                                <h4 class="green"><asp:Localize meta:resourcekey="price_hundred_title"  runat="server" ID="Localize23" Text="" /></h4>
                                <span class="price-large green">Call</span>
                                <span class="price-small">for<span class="icon green"><i class="fa fa-usd "></i></span></span>
                                <p><asp:Localize meta:resourcekey="price_hundred_paragraph"  runat="server" ID="Localize24" Text="" /></p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" Text="Buy Now" meta:resourcekey="price_hundred_buy"/>
                            </div>
                        </div>
                    </div>
                    <!-- .Container ends here -->
                </div>
                <!-- .Row ends here -->
            </div>
        </section>

        <%--<section id="follow-us">
            <div class="container">
                <div class="text-center height-contact-element">
                    <h3><asp:Localize meta:resourcekey="follow"  runat="server" ID="Localize25" Text="" /></h3>
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
        </section>--%>
</asp:Content>
   
<asp:Content ContentPlaceHolderID="ScriptsContent" runat="server">
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
    <%--<script src="../js/bootstrap.min.js"></script>--%>
</asp:Content>
