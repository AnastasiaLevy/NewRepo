<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="TestSite.UserProfile" MasterPageFile="~/Layout.Master"
    Culture="auto" UICulture="auto"  Title="" meta:resourcekey="pagetitle"%>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
    
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link href="fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <link href="cogTest.css" rel="stylesheet" />
    <link href="css/userProfilecss.css" rel="stylesheet" />   
    <script src="js/jquery.js"></script> 
    <script src="js/sessionManager.js"></script>
</asp:content>

<asp:Content ContentPlaceHolderID="MenuItemLi" runat="server">
    <li class="active"><a href="#userInfo"><asp:Localize meta:resourcekey="navbar_profile"  runat="server" ID="Localize35" Text="" /></a></li>
    <li><a href="#paidTests"><asp:Localize meta:resourcekey="navbar_paidtests"  runat="server" ID="Localize36" Text="" /></a></li>
    <li><a href="#testList"><asp:Localize meta:resourcekey="navbar_available"  runat="server" ID="Localize37" Text="" /></a></li>
    <li><a href="#testCategories"><asp:Localize meta:resourcekey="navbar_categories"  runat="server" ID="Localize38" Text="" /></a></li>
</asp:content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
        <%--<nav class="navbar navbar-inverse navbar-fixed-top">
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
                        <li><a href="../MainPage.aspx"><asp:Localize meta:resourcekey="navbar_home"  runat="server" ID="Localize48" Text="" /></a></li>
                        <li class="active"><a href="#userInfo"><asp:Localize meta:resourcekey="navbar_profile"  runat="server" ID="Localize1" Text="" /></a></li>
                         <li><a href="#paidTests"><asp:Localize meta:resourcekey="navbar_paidtests"  runat="server" ID="Localize2" Text="" /></a></li>
                         <li><a href="#testList"><asp:Localize meta:resourcekey="navbar_available"  runat="server" ID="Localize3" Text="" /></a></li>
                        <li><a href="#testCategories"><asp:Localize meta:resourcekey="navbar_categories"  runat="server" ID="Localize4" Text="" /></a></li>
                    <%--    <li><a href="#reports">Results</a></li>
                        <li id="login" runat="server"><a href="Login.aspx"><asp:Localize meta:resourcekey="navbar_login"  runat="server" ID="Localize5" Text="" /></a></li>
                        <li>
                            <asp:LinkButton ID="Logout" cssclass="" type="submit" runat="server" OnClick="logOut_Click"><asp:Localize meta:resourcekey="navbar_logout"  runat="server" ID="Localize6" Text="" /></asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>--%>
        <div class="container">
        <section id="userInfo">
            <div class="row">
                <div class="box box1">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="userInfo_title"  runat="server" ID="Localize7" Text="" /> 
                       
                            <strong><asp:Localize meta:resourcekey="userInfo_strong"  runat="server" ID="Localize8" Text="" /> </strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-md-4 ">
                        <img class="img-responsive img-border-left" src="images/mind.jpg" alt="">
                    </div>
                    <div class="col-lg-4  ">
                        <p class="min"><strong><asp:Localize meta:resourcekey="userInfo_paragraph1"  runat="server" ID="Localize9" Text="" /></strong> </p>
                        <p>
                            <asp:Localize meta:resourcekey="userInfo_paragraph2"  runat="server" ID="Localize10" Text="" />
                               
                            <asp:Label ID="user" runat="server" class="profile" Text=""></asp:Label>
                        </p>
                        <p>
                            <asp:Localize meta:resourcekey="userInfo_paragraph3"  runat="server" ID="Localize11" Text="" />
                               
                            <asp:Label ID="email" runat="server" class="profile" Text=""></asp:Label>
                        </p>
                        <p>
                            <asp:Localize meta:resourcekey="userInfo_paragraph4"  runat="server" ID="Localize12" Text="" />
                               
                            <asp:Label ID="age" runat="server" class="profile" Text=""></asp:Label>
                        </p>
                        <p><a class="profile" href="Registration.aspx"><strong><u><asp:Localize meta:resourcekey="userInfo_paragraph5"  runat="server" ID="Localize13" Text="" /></u></strong></a></p>

                    </div>                    
                    <div class="col-lg-4">
                        <asp:Button ID="btbAddProviderCode" runat="server" Text="" CssClass="btn btn-primary" OnClick="btbAddProviderCode_Click" meta:resourcekey="userInfo_btbAddProviderCode"/>
                        <div id="setUpUserCode" class="panel panel-success" runat="server">
                            <div class="panel-heading">
                                <h3 class="panel-title"><asp:Localize meta:resourcekey="userInfo_providercode_title"  runat="server" ID="Localize14" Text="" /></h3>
                                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="panel-body">
                                <asp:Label ID="Label5" runat="server" Text="" meta:resourcekey="userInfo_Label5"></asp:Label>
                                <asp:TextBox ID="txtUserCode" runat="server" CssClass="createUser" Width="50%"></asp:TextBox>
                                <asp:Button ID="btnCodeSave" class="btn btn-labeled btn-success" runat="server" Text="" OnClick="btnCodeSave_Click" meta:resourcekey="userInfo_btnCodeSave"/>
                                <asp:Button ID="btnCodeClose" class="btn btn-labeled btn-info" runat="server" Text="" OnClick="btnCodeClose_Click" meta:resourcekey="userInfo_btnCodeClose"/>
                            </div>
                        </div>
                    </div>
                        <div class="col-lg-4">
                        <asp:Button ID="Button1" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClick="btnResetPassword_Click" meta:resourcekey="userInfo_Button1"/>
                     
                                  <div id="resetPw" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"><asp:Localize meta:resourcekey="userInfo_resetpass"  runat="server" ID="Localize15" Text="" /></h3>
                                        <asp:Label ID="errorPW" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Label ID="Label8" runat="server" Text="" meta:resourcekey="userInfo_Label8"></asp:Label>
                                        <asp:TextBox ID="txtOldPw" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                        <asp:Label ID="Label7" runat="server" Text="" meta:resourcekey="userInfo_Label7"></asp:Label>
                                        <asp:TextBox ID="txtNewPw" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>


                                        <asp:Button ID="btnResetPw" class="btn btn-labeled btn-success" runat="server" Text="" OnClick="btnResetPw_Click" meta:resourcekey="userInfo_btnResetPw"/>
                                        <asp:Button ID="btnClosePw" class="btn btn-labeled btn-info" runat="server" Text="" OnClick="btnClosePw_Click" meta:resourcekey="userInfo_btnClosePw"/>
                                    </div>
                                </div>
                    </div>
                    <div class="col-lg-4">
                        <asp:Button ID="UploadResults" runat="server" Text="" CssClass="btn btn-primary" OnClick="btnUploadResults_Click" meta:resourcekey="userInfo_UploadResult"/>
                                <div id="uploadRes" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"><asp:Localize meta:resourcekey="userInfo_UploadResults"  runat="server" ID="Localize16" Text="" /></h3>
                                        <asp:Label ID="errorUpl" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Label ID="Label3" runat="server" Text="" meta:resourcekey="userInfo_Label3"></asp:Label>
                                        <asp:FileUpload ID="ResultsFile" runat="server" CssClass="createUser" Width="100%"></asp:FileUpload>


                                        <asp:Button ID="btnUplRes" class="btn btn-labeled btn-success" runat="server" Text="" OnClick="btnUploadRes_Click" meta:resourcekey="userInfo_btnUplRes"/>
                                        <asp:Button ID="btnCloseUplRes" class="btn btn-labeled btn-info" runat="server" Text="" OnClick="btnCloseRes_Click" meta:resourcekey="userInfo_btnCloseUplRes"/>
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
                        <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="paidTests_title"  runat="server" ID="Localize17" Text="" />
                       
                            <strong><asp:Localize meta:resourcekey="paidTests_strong1"  runat="server" ID="Localize18" Text="" /></strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-lg-6">
                        <p class="min"><strong><asp:Localize meta:resourcekey="paidTests_strong2"  runat="server" ID="Localize19" Text="" /></strong> </p>
                        <asp:GridView ID="gvAvailableTests" runat="server" CellSpacing="10" class="gridview provider-table prov-table-fix"
                            GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                            BorderWidth="1px" CellPadding="20" ForeColor="Black" Height="75px" 
                            RowStyle-Height="40px" Font-Size="Larger">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="" meta:resourcekey="paidTests_columns_name"/>
                                <asp:BoundField DataField="Paid On" DataFormatString="{0:d}" HeaderText="" meta:resourcekey="paidTests_columns_paidon"/>
                                <asp:TemplateField HeaderText="" meta:resourcekey="paidTests_columns_start">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="redirect" runat="server" CausesValidation="false" OnClick="Redirect_Click" Text="" meta:resourcekey="paidTests_columns_btnstart"></asp:LinkButton>
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

                        <p class="min"><strong><asp:Localize meta:resourcekey="finishedTest_title"  runat="server" ID="Localize20" Text="" /></strong> </p>
                        <asp:GridView ID="gvFinishedTests" runat="server" CellSpacing="20" class="gridview provider-table  prov-table-fix"
                            GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                            BorderWidth="1px" CellPadding="10" ForeColor="Black" Height="75px" 
                            RowStyle-Height="40px" Font-Size="Larger">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="" meta:resourcekey="finishedTest_Name" runat="server"/>
                                <asp:BoundField DataField="Finished On" DataFormatString="{0:d}" HeaderText="" meta:resourcekey="finishedTest_FinishedOn" runat="server"/>
                                <asp:TemplateField HeaderText=""  meta:resourcekey="finishedTest_View" runat="server">
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
                        <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="testList_title"  runat="server" ID="Localize23" Text="" /> 
                            <strong><asp:Localize meta:resourcekey="testList_strong"  runat="server" ID="Localize21" Text="" /></strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="WCSTWrapper.aspx" id="wcst">
                            <img class="img-responsive" src="images/cardSort.png" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test1"  runat="server" ID="Localize22" Text="" />
                       
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="TrailsWrapper.aspx" id="trails">
                            <img class="img-responsive" src="images/trails.jpg" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test2"  runat="server" ID="Localize24" Text="" />
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="Tests/NbackWrapper.aspx" id="nBack">
                            <img class="img-responsive" src="images/Nback.jpg" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test3"  runat="server" ID="Localize25" Text="" />
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="LondonWrapper.aspx" id="london">
                            <img class="img-responsive" src="images/tower.jpg" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test4"  runat="server" ID="Localize26" Text="" />

                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="Tests/SyllogWrapper.aspx" id="syllog">
                            <img class="img-responsive" src="images/sillog.png"" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test5"  runat="server" ID="Localize27" Text="" />

                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="Tests/StroopWrapper.aspx" id="stroop">
                            <img class="img-responsive" src="images/stroop.jpg"" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test6"  runat="server" ID="Localize28" Text="" />

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
                        <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="testCategories_title"  runat="server" ID="Localize29" Text="" />
                       
                       

                            <strong><asp:Localize meta:resourcekey="testCategories_strong"  runat="server" ID="Localize30" Text="" /></strong>
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
                            <h4><a href="category/Memory.aspx"><asp:Localize meta:resourcekey="testCategories_category1"  runat="server" ID="Localize31" Text="" /></a></h4>

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
                            <h4><a href="category/ExecutiveFunction.aspx"><asp:Localize meta:resourcekey="testCategories_category2"  runat="server" ID="Localize32" Text="" /></a></h4>

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
                            <h4><a href="category/ProcessingSpeed.aspx"><asp:Localize meta:resourcekey="testCategories_category3"  runat="server" ID="Localize33" Text="" /></a></h4>
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
</asp:content>

<asp:Content ContentPlaceHolderID="ScriptsContent" runat="server">
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
</asp:Content>