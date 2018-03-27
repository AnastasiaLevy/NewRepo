<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="TestSite.UserProfile" %>

<!DOCTYPE html>

<html lang="en">

<head>
    
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.ico" />
    <title>UserProfile</title>
    <link href="fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="cogTest.css" rel="stylesheet" />
    <link href="css/userProfilecss.css" rel="stylesheet" />   
    <script src="js/jquery.js"></script> 
    <script src="js/sessionManager.js"></script>
    
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
                    <a class="navbar-brand" href="MainPage.aspx">
                        <i class="fa fa-cogs" aria-hidden="true">Quiz</i>
                    </a>

                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu">
                        <li><a href="../MainPage.aspx">Home</a></li>
                        <li class="active"><a href="#userInfo">Profile</a></li>
                         <li><a href="#paidTests">User Tests</a></li>
                         <li><a href="#testList">Available Tests</a></li>
                        <li><a href="#testCategories">Test Ctegories</a></li>
                    <%--    <li><a href="#reports">Results</a></li>--%>
                        <li id="login" runat="server"><a href="Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="Logout" cssclass="" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
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
                        <img class="img-responsive img-border-left" src="images/mind.jpg" alt="">
                    </div>
                    <div class="col-lg-4  ">
                        <p class="min"><strong>User Information and Profile Data:</strong> </p>
                        <p>
                            User Name:
                               
                            <asp:Label ID="user" runat="server" class="profile" Text=""></asp:Label>
                        </p>
                        <p>
                            Email:
                               
                            <asp:Label ID="email" runat="server" class="profile" Text=""></asp:Label>
                        </p>
                        <p>
                            Age:
                               
                            <asp:Label ID="age" runat="server" class="profile" Text=""></asp:Label>
                        </p>
                        <p><a class="profile" href="Registration.aspx"><strong><u>Profile Form</u></strong></a></p>

                    </div>                    
                    <div class="col-lg-4">
                        <asp:Button ID="btbAddProviderCode" runat="server" Text="Add Provider Code" CssClass="btn btn-primary" OnClick="btbAddProviderCode_Click" width="50%"/>
                        <div id="setUpUserCode" class="panel panel-success" runat="server">
                            <div class="panel-heading">
                                <h3 class="panel-title">Enter Provider Code</h3>
                                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="panel-body">
                                <asp:Label ID="Label5" runat="server" Text="Enter Code:"></asp:Label>
                                <asp:TextBox ID="txtUserCode" runat="server" CssClass="createUser" Width="50%"></asp:TextBox>
                                <asp:Button ID="btnCodeSave" class="btn btn-labeled btn-success" runat="server" Text="Save" OnClick="btnCodeSave_Click" />
                                <asp:Button ID="btnCodeClose" class="btn btn-labeled btn-info" runat="server" Text="Close" OnClick="btnCodeClose_Click" />
                            </div>
                        </div>
                    </div>
                        <div class="col-lg-4">
                        <asp:Button ID="Button1" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClick="btnResetPassword_Click" width="50%"/>
                     
                                  <div id="resetPw" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Reset Password</h3>
                                        <asp:Label ID="errorPW" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Label ID="Label8" runat="server" Text="Old Password:"></asp:Label>
                                        <asp:TextBox ID="txtOldPw" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                        <asp:Label ID="Label7" runat="server" Text="New Password:"></asp:Label>
                                        <asp:TextBox ID="txtNewPw" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>


                                        <asp:Button ID="btnResetPw" class="btn btn-labeled btn-success" runat="server" Text="Save" OnClick="btnResetPw_Click" />
                                        <asp:Button ID="btnClosePw" class="btn btn-labeled btn-info" runat="server" Text="Close" OnClick="btnClosePw_Click" />
                                    </div>
                                </div>
                    </div>
                    <div class="col-lg-4">
                        <asp:Button ID="UploadResults" runat="server" Text="Upload Results" CssClass="btn btn-primary" OnClick="btnUploadResults_Click" width="50%"/>
                                <div id="uploadRes" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Upload results</h3>
                                        <asp:Label ID="errorUpl" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Label ID="Label3" runat="server" Text="Choose File:"></asp:Label>
                                        <asp:FileUpload ID="ResultsFile" runat="server" CssClass="createUser" Width="100%"></asp:FileUpload>


                                        <asp:Button ID="btnUplRes" class="btn btn-labeled btn-success" runat="server" Text="Upload" OnClick="btnUploadRes_Click" />
                                        <asp:Button ID="btnCloseUplRes" class="btn btn-labeled btn-info" runat="server" Text="Close" OnClick="btnCloseRes_Click" />
                                    </div>
                                </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </section>


        <section id="paidTests">
            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center">Your 
                       
                            <strong>Tests</strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-lg-6">
                        <p class="min"><strong>Paid Test (not finished):</strong> </p>
                        <asp:GridView ID="gvAvailableTests" runat="server" CellSpacing="10" class="gridview"
                            GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                            BorderWidth="1px" CellPadding="20" ForeColor="Black" Height="75px" 
                            RowStyle-Height="40px" Font-Size="Larger">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Test Name &nbsp;&nbsp;" />
                                <asp:BoundField DataField="Paid On" DataFormatString="{0:d}" HeaderText="Paid On &nbsp;&nbsp; &nbsp;&nbsp;" />
                                <asp:TemplateField HeaderText="Start">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="redirect" runat="server" CausesValidation="false" OnClick="Redirect_Click" Text="Start"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField Visible="true" DataField="TestId" />
                                <asp:BoundField Visible="true" DataField="tID" />
                                <asp:BoundField Visible="true" DataField="modifyID" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                    </div>
                    <div class="col-lg-6">

                        <p class="min"><strong>Finished Tests:</strong> </p>
                        <asp:GridView ID="gvFinishedTests" runat="server" CellSpacing="20" class="gridview"
                            GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                            BorderWidth="1px" CellPadding="10" ForeColor="Black" Height="75px" 
                            RowStyle-Height="40px" Font-Size="Larger">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Test Name &nbsp;&nbsp;" />
                                <asp:BoundField DataField="Finished On" DataFormatString="{0:d}" HeaderText="Finished On" />
                                <asp:TemplateField HeaderText="View"  HeaderStyle-Width="15%" ItemStyle-Width="15%">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="showResults" runat="server" CausesValidation="false" OnClick="showResults_Click"><i class="fa fa-eye  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField Visible="true" DataField="TestId" />
                                <asp:BoundField Visible="true" DataField="tID" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
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
                        <h2 class="intro-text text-center">Available 
                            <strong>Test</strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="WCSTWrapper.aspx" id="wcst">
                            <img class="img-responsive" src="images/cardSort.png" alt=""></a>
                        <h3>Card Sort
                       
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="TrailsWrapper.aspx" id="trails">
                            <img class="img-responsive" src="images/trails.jpg" alt=""></a>
                        <h3>Trails
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="Tests/NbackWrapper.aspx" id="nBack">
                            <img class="img-responsive" src="images/Nback.jpg" alt=""></a>
                        <h3>Nback
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="LondonWrapper.aspx" id="london">
                            <img class="img-responsive" src="images/tower.jpg" alt=""></a>
                        <h3>Tower Of London

                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="Tests/SyllogWrapper.aspx" id="syllog">
                            <img class="img-responsive" src="images/sillog.png"" alt=""></a>
                        <h3>Syllogisms

                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="Tests/StroopWrapper.aspx" id="stroop">
                            <img class="img-responsive" src="images/stroop.jpg"" alt=""></a>
                        <h3>Stroop test

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
                    <div class="col-md-4 portfolio-item">
                        <div class="text-center">
                            <a href="javascript:void(0);">
                                <a href="category/Memory.aspx"><span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-medium fa-stack-1x "></i>
                                </span></a>
                            </a>
                            <h4><a href="category/Memory.aspx">Memory</a></h4>

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
                            <h4><a href="category/ExecutiveFunction.aspx">Executive function and Planning</a></h4>

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
                            <h4><a href="category/ProcessingSpeed.aspx">Processing Speed</a></h4>
                        </div>
                    </div>
                    <%--<div class="col-md-3 portfolio-item">
                        <div class="text-center">
                            <a href="javascript:void(0);">
                                <a href="category/IntelligenceTest.aspx"><span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-lightbulb-o fa-stack-1x"></i>
                                </span></a>

                            </a>
                            <h4><a href="category/IntelligenceTest.aspx">Intelligence</a></h4>

                        </div>
                    </div>--%>
                    <div class="clearfix"></div>
                </div>
            </div>
        </section>
        <%--           <section id="reports">
                <div class="row">
                    <div class="box">
                        <div class="col-lg-12">
                            <hr>
                            <h2 class="intro-text text-center">Your 
                       
                        <strong>Reports</strong>
                            </h2>
                            <hr>
                        </div>
                        <div class="col-md-4 ">
                            <img class="img-responsive img-border-left" src="images/bell.jpg" alt="">
                        </div>
                    
                         <div class="col-lg-6">
                            <p class="min"><strong>Finished Tests:</strong> </p>
                            <%--<asp:GridView ID="gvFinishedTests" runat="server" CellSpacing="10"
                                GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" Height="68px" Width="500px">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Test Name &nbsp;&nbsp;" />
                                    <asp:BoundField DataField="Finished On" DataFormatString="{0:d}" HeaderText="Finished On &nbsp;&nbsp;" />
                                    <asp:TemplateField HeaderText="Start">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="showResults" runat="server" CausesValidation="false" OnClick="showResults_Click" Text="View Results"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField Visible="true" DataField="TestId" />
                                    <asp:BoundField Visible="true" DataField="tID" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
    </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </section>--%>
        </div>
        <footer>
            <div class="container">
                <div class="row">
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
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-12 text-center">
                        <p>Copyright &copy; Cogquiz 2016</p>
                          <p>+1(719)888 9121</p> 
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

    </form>
</body>
    
</html>
<script>

    


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

    $('body').append('<div id="toTop" class="btn btn-primary color1"><span>^</span></div>');
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


    