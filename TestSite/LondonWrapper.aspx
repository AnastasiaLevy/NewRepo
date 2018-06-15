<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LondonWrapper.aspx.cs" Inherits="TestSite.LondonWrapper"  MasterPageFile="~/Layout.Master"
    Culture="auto" UICulture="auto"  Title="" meta:resourcekey="pagetitle"%>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Test your working memory by taking our London Test Online, Short Term and Long Term Memory Test Online and Working Memory and Capacity Test from CogQuiz.">
    <meta name="author" content="CogQuiz">
    <meta name="keywords" content="Tower of London Test Online, Short Term and Long Term Memory Test Online, Working Memory, Capacity Test, CogQuiz" />
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
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
</asp:content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
        <!-- Navigation -->
       <%-- <nav class="navbar navbar-inverse navbar-fixed-top">
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
                        <li><a href="MainPage.aspx"><asp:Localize meta:resourcekey="navbar_home"  runat="server" ID="Localize48" Text="" /></a></li>
                        <li class="active"><a href="#about"><asp:Localize meta:resourcekey="navbar_about"  runat="server" ID="Localize1" Text="" /></a></li>
                        <li id="profOpt" runat="server"><a href="UserProfile.aspx"><asp:Localize meta:resourcekey="navbar_profile"  runat="server" ID="Localize2" Text="" /></a></li>
                        <li id="login" runat="server"><a href="../Login.aspx"><asp:Localize meta:resourcekey="navbar_login"  runat="server" ID="Localize3" Text="" /></a></li>
                        <li>
                            <asp:LinkButton ID="logOut" class="" type="submit" runat="server" OnClick="logOut_Click"><asp:Localize meta:resourcekey="navbar_logout"  runat="server" ID="Localize4" Text="" /></asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>--%>

        <header>
        </header>

        <!-- Page Content -->
        <section id="about">
            <div class="container testDescription">
                <h1><asp:Localize meta:resourcekey="about_title"  runat="server" ID="Localize5" Text="" /></h1>
                <hr />
                <span style="font-size: larger;"><asp:Localize meta:resourcekey="about_paragraph"  runat="server" ID="Localize6" Text="" />
               
                </span>
                <br />
                <br />
               <span><h3><asp:Localize meta:resourcekey="about_more"  runat="server" ID="Localize7" Text="" /></h3></span>
            </div>

        </section>

        <div class="container" id="elastic_grid_demo"></div>
        <section class="container">

            <p style="font-size: larger;"><asp:Localize meta:resourcekey="container_paragraph"  runat="server" ID="Localize8" Text="" /></p>
            <asp:Panel ID="pSelect" runat="server"></asp:Panel>
            <asp:RadioButtonList ID="rbList" runat="server" OnSelectedIndexChanged="rbList_SelectedIndexChanged"></asp:RadioButtonList>
        </section>
        <section>
            <div class="specifications container">
                <h3><asp:Localize meta:resourcekey="specifications_title"  runat="server" ID="Localize9" Text="" /></h3>
                <p>
                    <asp:Localize meta:resourcekey="specifications_paragraph1"  runat="server" ID="Localize10" Text="" />
                </p>
                <p>
                    <asp:Localize meta:resourcekey="specifications_paragraph2"  runat="server" ID="Localize11" Text="" />
                </p>
            </div>
        </section>


        <section>
            <div class="container right" style="margin-top: 20px;">
                <asp:LinkButton ID="runTest" runat="server" class="signup-btn" OnClick="runTest_Click"><asp:Localize meta:resourcekey="runtest"  runat="server" ID="Localize12" Text="" /></asp:LinkButton>
                <div id="requestToReg" runat="server" visible="true">
                    <p>
                        <a href="../Login.aspx"><asp:Localize meta:resourcekey="login"  runat="server" ID="Localize13" Text="" /></a>
                    </p>
                    <p><asp:Localize meta:resourcekey="or"  runat="server" ID="Localize14" Text="" /></p>
                    <p>
                        <a href="../Login.aspx"><asp:Localize meta:resourcekey="register"  runat="server" ID="Localize15" Text="" /></a>
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
                                <h4 class="blue"><asp:Localize meta:resourcekey="price_single_title"  runat="server" ID="Localize16" Text="" /></h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">5</span>
                                <span class="price-small">.00</span>
                                <p><asp:Localize meta:resourcekey="price_single_paragraph"  runat="server" ID="Localize17" Text="" /></p>
                                <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" meta:resourcekey="price_single_buy"/>
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c2 img-circle">
                                <h4 class="yellow"><asp:Localize meta:resourcekey="price_ten_title"  runat="server" ID="Localize18" Text="" /></h4>
                                <span class="icon yellow"><i class="fa fa-usd"></i></span>
                                <span class="price-large yellow">50</span>
                                <span class="price-small">.00</span>
                                <p><asp:Localize meta:resourcekey="price_ten_paragraph"  runat="server" ID="Localize19" Text="" /></p>
                                <asp:Button ID="ten" class="btn btn-warning" runat="server" OnClick="ten_Click" Text="Buy Now" meta:resourcekey="price_ten_buy"/>
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c3 img-circle">
                                <h4 class="green"><asp:Localize meta:resourcekey="price_hundred_title"  runat="server" ID="Localize20" Text="" /></h4>
                                <span class="icon green"><i class="fa fa-usd "></i></span>
                                <span class="price-large green">300</span>
                                <span class="price-small">.00</span>
                                <p><asp:Localize meta:resourcekey="price_hundred_paragraph"  runat="server" ID="Localize21" Text="" /></p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" OnClick="hundred_Click" Text="Buy Now" meta:resourcekey="price_hundred_buy"/>
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c4 img-circle">
                                <h4 class="red"><asp:Localize meta:resourcekey="price_unlim_title"  runat="server" ID="Localize22" Text="" /></h4>
                                <span class="icon red"><i class="fa fa-usd "></i></span>
                                <span class="price-large red">1000</span>
                                <span class="price-small"></span>
                                <p>
                                    <asp:Localize meta:resourcekey="price_unlim_paragraph"  runat="server" ID="Localize23" Text="" />
                                <p>

                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server" OnClick="unlim_Click" Text="Buy Now" meta:resourcekey="price_unlim_buy" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->
                    </div>
                    <!-- .Container ends here -->
                </div>
                <!-- .Row ends here -->
            </div>
        </section>

       <%-- <section id="follow-us">
            <div class="container">
                <div class="text-center height-contact-element">
                    <h3><asp:Localize meta:resourcekey="follow"  runat="server" ID="Localize24" Text="" /></h3>
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
        </section>--%>
    </asp:content>
    
<asp:Content ContentPlaceHolderID="ScriptsContent" runat="server">
    <%--<script src="js/bootstrap.min.js"></script>--%>

    <script type="text/javascript">
                    $(function () {
                        $("#elastic_grid_demo").elastic_grid({
                            'showAllText': '<%= GetLocalResourceObject("tab_all")%>',
                            'filterEffect': 'popup', // moveup, scaleup, fallperspective, fly, flip, helix , popup
                            'hoverDirection': true,
                            'hoverDelay': 0,
                            'hoverInverse': false,
                            'expandingSpeed': 500,
                            'expandingHeight': 800,
                            'items':
                            [

                                {
                                    'title': '<%= GetLocalResourceObject("popup_item1_title")%>',
                                    'description': '<%= GetLocalResourceObject("popup_item1_description")%>',
                                    'thumbnail': ['images/large/s16.png', 'images/large/s15.png', 'images/large/s14.png'],
                                    'large': ['images/large/16.png', 'images/large/15.png', 'images/large/14.png'],
                                    'img_title': [<%= GetLocalResourceObject("popup_item1_imgtitle")%>],
                                    'button_list':
                                    [

                                    ],
                                    'tags': ['<%= GetLocalResourceObject("tab_setup")%>']
                                },
                                {
                                    'title': '<%= GetLocalResourceObject("popup_item2_title")%>',
                                    'description': '<%= GetLocalResourceObject("popup_item2_description")%>',
                                    'thumbnail': ['images/large/s3.png', 'images/large/s6.png', 'images/large/s4.png'],
                                    'large': ['images/large/3.png', 'images/large/6.png', 'images/large/4.png'],
                                    'img_title': [<%= GetLocalResourceObject("popup_item2_imgtitle")%>],
                                    'button_list':
                                    [

                                    ],
                                    'tags': ['<%= GetLocalResourceObject("tab_scoring")%>']
                                },
                                {
                                    'title': '<%= GetLocalResourceObject("popup_item3_title")%>',
                                    'description': '<%= GetLocalResourceObject("popup_item3_title")%>',
                                    'thumbnail': ['images/large/s1.png', 'images/large/s2.png', 'images/large/s17.png', 'images/large/s18.png', 'images/large/s19.png'],
                                    'large': ['images/large/1.png', 'images/large/2.png', 'images/large/17.png', 'images/large/18.png', 'images/large/19.png'],
                                    'img_title': [<%= GetLocalResourceObject("popup_item3_imgtitle")%>],
                                    'button_list':
                                    [

                                    ],
                                    'tags': ['<%= GetLocalResourceObject("tab_test")%>']
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
</asp:Content>