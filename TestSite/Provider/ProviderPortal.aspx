<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProviderPortal.aspx.cs" Inherits="TestSite.Provider.ProviderPortal" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="AnaLevy">
    <link rel="..//shortcut icon" href="images/favicon.ico" />
    <title>ProviderPortal</title>
    <link href="../fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-responsiveTables.js"></script>
    <link href="../cogTest.css" rel="stylesheet" />

    <link href="../css/userProfilecss.css" rel="stylesheet" />
</head>

<body>
    <form runat="server">
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
                        <li class="active"><a href="../MainPage.aspx">Home</a></li>
                        <li><a href="#paidTests">Create User</a></li>
                        <li><a href="#userInfo">View Users</a></li>
                        <li><a href="#testList">Available Tests</a></li>
                        <li><a href="#testCategories">Test Ctegories</a></li>
                        <%--    <li><a href="#reports">Results</a></li>--%>
                        <li id="login" runat="server"><a href="Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="Logout" class="btn button" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <section id="userInfo">
                <div class="row">
                    <div class="box box1">
                        <div class="col-lg-12">
                            <hr>
                            <h2 class="intro-text text-center">User 
                        <strong>Profile</strong>
                            </h2>
                            <hr>
                        </div>
                        <div class="col-md-4 ">
                            <img class="img-responsive img-border-left" src="../images/mind.jpg" alt="">
                        </div>
                        <div class="col-lg-8 ">
                            <p class="min"><strong>User Information and Profile Data:</strong> </p>
                            <p>
                                Company Name:
                                <asp:Label ID="user" runat="server" class="profile" Text=""></asp:Label>
                            </p>
                            <p>
                               Contact Email:
                                <asp:Label ID="email" runat="server" class="profile" Text=""></asp:Label>
                            </p>
                         
                            <p><a class="profile" href="Registration.aspx"><strong><u>Profile Form</u></strong></a></p>
                        </div>
                        <%--                    <div class="col-lg-4">
                            <p class="min"><strong>Update Account Information:</strong> </p>
                            <p><a class="profile" href="#">Reset Password</a></p>
                            <p><a class="profile" href="#">Reset Email</a></p>
                            <p><a class="profile" href="Registration.aspx">Profile Form</a></p>
                        </div>--%>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </section>

            <section id="participant Data">
                <div class="row">
                    <div class="box">
                        <div class="col-lg-12">
                            <hr>
                            <h2 class="intro-text text-center">Participant 
                        <strong>Data</strong>
                            </h2>
                            <hr>
                        </div>
                        <div class="col-lg-12">
                            <p class="min"><strong>Participants Data</strong> </p>
                            <asp:GridView ID="gvAllParticipants" runat="server" RowStyle-Wrap="false" CellSpacing="10" class="gridview"
                            GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                            BorderWidth="1px" CellPadding="20" ForeColor="Black" Height="75px" 
                            RowStyle-Height="40px" Font-Size="Larger">
                                <Columns>
                                    <asp:BoundField DataField="First Name" HeaderText="First Name &nbsp;&nbsp;" />
                                    <asp:BoundField DataField="Last Name" HeaderText="Last Name &nbsp;&nbsp;" />
                                    <asp:BoundField DataField="DOB" DataFormatString="{0:d}" HeaderText="DOB &nbsp;&nbsp; &nbsp;&nbsp;" />
                                    <asp:TemplateField HeaderText="View" ItemStyle-Width="15px">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="view" runat="server" CausesValidation="false" onclick="view_Click" Text="View"></asp:LinkButton>
                                    
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="delete" runat="server" CausesValidation="false" onclick="delete_Click" Text="Delete"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:BoundField Visible="true" DataField="userId" />
                                </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                                <RowStyle Wrap="False" Height="40px"></RowStyle>
                            </asp:GridView>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </section>

            <section id="purchached tests">
                <div class="row">
                    <div class="box">
                        <div class="col-lg-12">
                            <hr>
                            <h2 class="intro-text text-center">Your 
                        <strong>Tests</strong>
                            </h2>
                            <hr>
                        </div>
                        <div class="col-lg-12">
                            <p class="min"><strong></strong></p>

                        </div>

                        <div class="clearfix"></div>
                    </div>
                </div>
            </section>
            <section id="testList">
                <div class="row">
                    <div class="box">
                        <div class="col-lg-12">
                            <hr>
                            <h2 class="intro-text text-center">All Available
                       
                        <strong>Test</strong>
                            </h2>
                            <hr>
                        </div>
                        <div class="col-sm-3 text-center">
                            <a href="WCSTWrapper.aspx" id="mobileapps1">
                                <img class="img-responsive" src="../images/cardSort.png" alt=""></a>
                            <h3>Card Sort
                        <small></small>
                            </h3>
                        </div>
                        <div class="col-sm-3 text-center">
                            <a href="TrailsWrapper.aspx" id="webdesign1">
                                <img class="img-responsive" src="../images/trails.jpg" alt=""></a>
                            <h3>Trails
                       
                        <small></small>
                            </h3>
                        </div>
                        <div class="col-sm-3 text-center">
                            <a href="Tests/NbackWrapper.aspx" id="memory2">
                                <img class="img-responsive" src="../images/Nback.jpg" alt=""></a>
                            <h3>Nback
                       
                        <small></small>
                            </h3>
                        </div>
                        <div class="col-sm-3 text-center">
                            <a href="LondonWrapper.aspx" id="webdesign2">
                                <img class="img-responsive" src="../images/tower.jpg" alt=""></a>
                            <h3>Tower Of London
                        <small></small>
                            </h3>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </section>
            <section id="testCategories">
                <div class="row">
                    <div class="box" id="box">
                        <div class="col-lg-12">
                            <hr>
                            <h2 class="intro-text text-center">Test
                       
                        <strong>Categories</strong>
                            </h2>
                            <hr>
                        </div>
                        <div class="col-md-3 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="category/Category1.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-medium fa-stack-1x "></i>
                                    </span></a>
                                </a>
                                <h4><a href="../category/Category1.aspx">Memory</a></h4>

                            </div>
                        </div>

                        <div class="col-md-3 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="../category/Category2.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-book fa-stack-1x"></i>
                                    </span></a>

                                </a>
                                <h4><a href="../category/Category2.aspx">Executive function and Planning</a></h4>

                            </div>
                        </div>
                        <div class="col-md-3 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="../category/Category3.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-cogs fa-stack-1x"></i>
                                    </span></a>

                                </a>
                                <h4><a href="../category/Category3.aspx">Processing Speed</a></h4>
                            </div>
                        </div>
                        <div class="col-md-3 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="category/Category4.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-lightbulb-o fa-stack-1x"></i>
                                    </span></a>

                                </a>
                                <h4><a href="../category/Category4.aspx">Intelligence</a></h4>

                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </section>

        </div>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="container">
                        <div class="text-center height-contact-element">
                            <h2>FOLLOW US</h2>
                        </div>
                        <img class="img-responsive displayed" src="../images/line-separator.png" alt="short" />
                        <div class="text-center height-contact-element">
                            <ul class="list-unstyled list-inline list-social-icons">
                                <li class="active"><a href="https://www.facebook.com/CogQuiz-1644904339158958/"><i class="fa fa-facebook social-icons"></i></a></li>
                                <li><a href="https://twitter.com/cogquizcom"><i class="fa fa-twitter social-icons"></i></a></li>
                                <li><a href="https://plus.google.com/u/3/113821050703373361140?hl=en"><i class="fa fa-google-plus social-icons"></i></a></li>
                                <li><a href="https://www.linkedin.com/in/hasker-davis-8849a914"><i class="fa fa-linkedin social-icons"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-12 text-center">
                        <p>Copyright &copy; CogQuiz 2016</p>
                    </div>
                </div>
            </div>
        </footer>

    </form>
</body>

</html>
<script src="../js/jquery.js"></script>

<script>
    $(document).ready(function () {
        $('table').responsiveTable({
            staticColumns: 2,
            scrollRight: true,
            scrollHintEnabled: true,
            scrollHintDuration: 2000
        });
    });

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

</script>
