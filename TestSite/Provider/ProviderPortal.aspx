<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProviderPortal.aspx.cs" Inherits="TestSite.Provider.ProviderPortal" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="AnaLevy">
    <link rel="..//shortcut icon" href="../images/favicon.ico">
    />
  
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>
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
                        <li><a href="#userInfo">Dashboard</a></li>
                        <li><a href="#participant Data">Participant Data</a></li>
                        <li><a href="#purchached tests">Provider Tests</a></li>
                        <li><a href="#testList">Available Tests</a></li>
                        <li><a href="#testCategories">Test Categories</a></li>
                        <%--    <li><a href="#reports">Results</a></li>--%>
                        <li id="login" runat="server"><a href="Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="Logout" CssClass="btn button" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
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
                            <h2 class="intro-text text-center">Provider
                        <strong>Dashboard</strong>
                            </h2>
                            <hr>
                        </div>

                        <%--  <div class="col-md-2">
                            <img class="img-responsive img-border-left" src="../images/mind.jpg" alt="">
                        </div>--%>
                        <div class="col-lg-3">


                            <asp:Button ID="btnUpdateProfile" runat="server" Text="profile" class="btn btn-labeled btn-info" Width=" 100%" OnClick="btnUpdateProfile_Click" />
                            <asp:Button ID="btnAddNewPart" runat="server" Text="Add New Participant" OnClick="btnAddNewPart_Click" class="btn btn-labeled btn-info" Width="100%" />
                            <asp:Button ID="btnAddUserTest" runat="server" Text="Assign Participant Test" OnClick="btnAddUserTest_Click" class="btn btn-labeled btn-info" Width="100%" />
                            <asp:Button ID="btnModifyTest" runat="server" Text="Modify Test" OnClick="btnModifyTest_Click" class="btn btn-labeled btn-info" Width="100%" />

                        </div>
                        <div class="col-lg-8">

                            <asp:Panel ID="pProviderTools" runat="server">

                                <div id="setUpUserCode" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Set Up Code</h3>
                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Label ID="Label5" runat="server" Text="Enter Code:"></asp:Label>
                                        <asp:TextBox ID="txtUserCode" runat="server" CssClass="createUser" Width="50%"></asp:TextBox>
                                        <asp:Button ID="btnCodeSave" class="btn btn-labeled btn-success" runat="server" Text="Save" OnClick="btnCodeSave_Click" />
                                        <asp:Button ID="btnCodeClose" class="btn btn-labeled btn-info" runat="server" Text="Close" OnClick="btnCodeClose_Click" />
                                    </div>
                                </div>
                                <div id="editTest" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Modify Test:</h3>
                                    </div>
                                    <div class="panel-body">
                                        <asp:DropDownList class="dropDown" ID="ddlModifyTest" runat="server" Width="50%"></asp:DropDownList>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-xs-3 col-sm-3 col-md-3">
                                                <asp:Button ID="btnSelectModify" class="btn btn-labeled btn-success" runat="server" Text="Modify" OnClick="btnSelectModify_Click" />
                                            </div>
                                            <div class="col-xs-3 col-sm-3 col-md-3">
                                                <asp:Button ID="btnDeleteModify" class="btn btn-labeled btn-success" runat="server" Text="Delete" OnClick="btnDeleteModify_Click" />
                                            </div>
                                            <div class="col-xs-3 col-sm-3 col-md-3">
                                                <asp:Button ID="btnCreateNewTest" class="btn btn-labeled btn-success" runat="server" Text="Create " OnClick="btnCreateNewTest_Click" />
                                            </div>
                                            <div class="col-xs-3 col-sm-3 col-md-3">
                                                <asp:Button ID="btnCancelModify" runat="server" class="btn btn-labeled btn-info" Text="Close" OnClick="btnCancelModify_Click" />

                                            </div>

                                        </div>
                                    </div>

                                </div>

<div id="myModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- dialog body -->
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        Hello world!
      </div>
      <!-- dialog buttons -->
      <div class="modal-footer"><button type="button" class="btn btn-primary">OK</button></div>
    </div>
  </div>
</div>
                                <div id="createUser" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Create New User:</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div>
                                            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                                            <div class="col-xs-12 col-sm-12 col-md-12 ">
                                                <asp:Label ID="Label4" runat="server" Text="User email"></asp:Label>
                                                <asp:TextBox ID="txtUserEmail" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                                                <asp:TextBox ID="txtNewUser" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                                <asp:TextBox ID="txtPassword" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                                <asp:CheckBox ID="cbAllowUserViewResults" runat="server" Text="Allow User View Results" TextAlign="Left" />

                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <asp:Button ID="btnCreateNewUser" class="btn btn-labeled btn-success" runat="server" Text="Create" OnClick="btnCreateNewUser_Click" />
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <asp:Button ID="btnCancelUser" runat="server" class="btn btn-labeled btn-info" Text="Close" OnClick="btnCancelUser_Click" />

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="assignTest" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Assign Test</h3>
                                        <asp:Label ID="lblTestMessage" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="panel-body ">
                                        <asp:DropDownList class="dropDown" ID="ddlAllParticipants" runat="server" Width="50%"></asp:DropDownList>
                                        <asp:DropDownList class="dropDown" ID="ddlProvTests" runat="server" Width="50%" OnSelectedIndexChanged="ddlProvTests_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="True"></asp:DropDownList>
                                        <asp:DropDownList class="dropDown" ID="ddlModifiedID" runat="server" Width="40%"></asp:DropDownList>
                                        <div>
                                            <asp:Button ID="btnPartAddTest" class="btn btn-labeled btn-success" runat="server" Text="Assign" OnClick="btnPartAddTest_Click1" />
                                            <asp:Button ID="btnCloseAddTest" class="btn btn-labeled btn-info" runat="server" Text="Close" OnClick="btnCloseAddTest_Click" />
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="pProviderInfo" runat="server">
                            </asp:Panel>
                        </div>
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
                        <div class="col-lg-2">
                            <p class="min"><strong>Participants Data</strong> </p>

                        </div>

                        	<div class="row">
    
         <%--       <div class="input-group stylish-input-group">
                    <input type="text" class="form-control"  placeholder="Search" >
                    <span class="input-group-addon">
       
                            <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click1"/>
                    
                    </span>
                </div>--%>
            </div>
   


                        <div class="col-lg-6 row">
                            <div id="pop" class="" runat="server">
                                <asp:Label ID="partName" runat="server" Text="" CssClass="col-lg-2"></asp:Label>
                                <asp:Button ID="btnCancel" runat="server" OnClick="Button1_Click"  Text="X" class="col-md-1 " />
                                <asp:GridView ID="gvTestPerUser" runat="server" RowStyle-Wrap="true" CellSpacing="10" class="gridview"
                                    GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                                    BorderWidth="1px" CellPadding="20" ForeColor="Black"
                                    RowStyle-Height="40px" Font-Size="Larger">

                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Text Name"></asp:BoundField>
                                        <asp:BoundField DataField="Assigned Date" DataFormatString="{0:d}" HeaderText="Assigned Date"></asp:BoundField>
                                        <asp:BoundField DataField="Finished Date" DataFormatString="{0:d}" NullDisplayText="Not Finished" HeaderText="Finished Date"></asp:BoundField>

                                        <asp:TemplateField HeaderText="Results" HeaderStyle-Width="10%" ItemStyle-Width="10%"
                                            FooterStyle-Width="10%">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" Text="" CausesValidation="false" ID="lbViewTestResults" OnClick="lbViewTestResults_Click" Visible='<%# Eval("Finished Date") != DBNull.Value  %>'><i class="fa fa-eye  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                            </ItemTemplate>
                                            <FooterStyle Width="10%"></FooterStyle>
                                            <HeaderStyle Width="10%"></HeaderStyle>
                                            <ItemStyle Width="10%"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remove" HeaderStyle-Width="10%" ItemStyle-Width="10%"
                                            FooterStyle-Width="10%">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" Text="" CausesValidation="false" ID="lbRemoveTestFromUserList" OnClick="lbRemoveTestFromUserList_Click"><i class="fa fa-minus-square-o  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                            </ItemTemplate>

                                            <FooterStyle Width="10%"></FooterStyle>
                                            <HeaderStyle Width="10%"></HeaderStyle>
                                            <ItemStyle Width="10%"></ItemStyle>
                                        </asp:TemplateField>
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
                                    <RowStyle Wrap="False" Height="40px"></RowStyle>
                                </asp:GridView>
                                <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
                                <br />
                                <br />
                                <asp:CheckBox ID="cbViewResults" runat="server" OnCheckedChanged="SelectCheckBox_CheckedChanged" Text="Allow Participant to view results" />
                            </div>


                        </div>
                        <div class="col-lg-12">

                            <asp:GridView ID="gvAllParticipants" runat="server" CellSpacing="10" class="gridview"
                                GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="20" ForeColor="Black" Height="100px"
                                RowStyle-Height="40px" Font-Size="x-Large"
                                allowsorting="True" onsorting="gvAllParticipants_Sorting">
                                <Columns>
                                    <asp:BoundField DataField="First Name" HeaderText="First Name &nbsp;&nbsp;"  sortexpression="First Name"/>
                                    <asp:BoundField DataField="Last Name" HeaderText="Last Name &nbsp;&nbsp;" sortexpression="Last Name"/>
                                    <asp:BoundField DataField="Username" HeaderText="UserName &nbsp;&nbsp;" />
                                    <asp:BoundField DataField="Age" HeaderText="Age &nbsp;&nbsp; &nbsp;&nbsp;" sortexpression="Age"/>
                                    <asp:TemplateField HeaderText="Profile" HeaderStyle-Width="10%" ItemStyle-Width="10%"
                                        FooterStyle-Width="10%">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="view" runat="server" CausesValidation="false" OnClick="view_Click"> <i class="fa fa-pencil-square-o  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete" HeaderStyle-Width="10%" ItemStyle-Width="10%"
                                        FooterStyle-Width="10%">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="delete" runat="server" CausesValidation="false" OnClick="delete_Click" Text="X"><i class="fa fa-minus-square-o  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Tests" HeaderStyle-Width="10%" ItemStyle-Width="10%"
                                        FooterStyle-Width="10%">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="viewTest" runat="server" CausesValidation="false" OnClick="viewTest_Click" Text="open"><i class="fa fa-eye  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="userId" />
                                    <%--                                        <asp:TemplateField HeaderText="Allow View" HeaderStyle-Width="10%" ItemStyle-Width="10%">
                                             <ItemTemplate>
                                                 <asp:CheckBox ID="SelectCheckBox" runat="server" OnCheckedChanged="SelectCheckBox_CheckedChanged" Checked ="true" />
                                             </ItemTemplate>
                                         </asp:TemplateField>--%>
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
                        <p class="col-lg-2">Purchased Tests</p>


                        <asp:GridView ID="gvProviderTests" runat="server" RowStyle-Wrap="false" CellSpacing="10" class="gridview"
                            GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                            BorderWidth="1px" CellPadding="20" ForeColor="Black" Height="100px"
                            RowStyle-Height="40px" Font-Size="x-Large">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:BoundField DataField="Option" HeaderText="Option" />
                                <asp:BoundField DataField="Left" HeaderText="Left" />
                                <asp:BoundField DataField="Id" />
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
                            <a href="../WCSTWrapper.aspx" id="mobileapps1">
                                <img class="img-responsive" src="../images/cardSort.png" alt=""></a>
                            <h3>Card Sort
                        <small></small>
                            </h3>
                        </div>
                        <div class="col-sm-3 text-center">
                            <a href="../TrailsWrapper.aspx" id="webdesign1">
                                <img class="img-responsive" src="../images/trails.jpg" alt=""></a>
                            <h3>Trails
                       
                        <small></small>
                            </h3>
                        </div>
                        <div class="col-sm-3 text-center">
                            <a href="../Tests/NbackWrapper.aspx" id="memory2">
                                <img class="img-responsive" src="../images/Nback.jpg" alt=""></a>
                            <h3>Nback
                       
                        <small></small>
                            </h3>
                        </div>
                        <div class="col-sm-3 text-center">
                            <a href="../LondonWrapper.aspx" id="webdesign2">
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
                                    <a href="../category/Category1.aspx"><span class="fa-stack fa-lg">
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
                                    <a href="../category/Category4.aspx"><span class="fa-stack fa-lg">
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
                                <li><a href="https://www.linkedin.com/company-beta/13213074/"><i class="fa fa-linkedin social-icons"></i></a></li>
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
<%--<script src="../js/jquery.js"></script>  --%>

<script src="../js/jquery-responsiveTables.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script>
    //$(document).ready(function () {
    //    $('table').ResponsiveTable({
    //        staticColumns: 2,
    //        scrollRight: true,
    //        scrollHintEnabled: true,
    //        scrollHintDuration: 2000
    //    });
    //});

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

    $('body').append('<div id="toTop" class="btn btn-primary color1">^</div>');
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

    function deselect(e) {
        $('.pop').slideFadeToggle(function () {
            e.removeClass('selected');
        });
    }

    function test() {


        if ($(this).hasClass('popped')) {
            deselect($(this));
        } else {
            $(this).addClass('popped');
            $('.pop').slideFadeToggle();
        }
        return false;

    }

    $('.close').on('click', function () {

        $('#pop').removeClass("popped");
        //deselect($('#contact'));
        return false;
    });

    //$("#btnCancel").on('click', function (e) {
    //    e.preventDefault();
    //    document.getElementById('pop').style.display = 'none';
    //})
    


    $.fn.slideFadeToggle = function (easing, callback) {
        return this.animate({ opacity: 'toggle', height: 'toggle' }, 'fast', easing, callback);
    };
    $("#pop").draggable().resizable();


    $('#btnDeleteModify').on("click", function (e) {
      
        var r=confirm("Are you sure you want to delete this test?");
        if (r !== true)
        {
            e.preventDefault();
        }
    });

</script>
