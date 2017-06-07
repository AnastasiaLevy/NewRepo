<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProviderPortal.aspx.cs" Inherits="TestSite.Provider.ProviderPortal" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    
    <link rel="..//shortcut icon" href="../images/favicon.ico"/>
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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                        <li><a href="#participantData">Participant Data</a></li>
                        <li><a href="#purchachedTests">Provider Tests</a></li>
                        <li><a href="#testList">Available Tests</a></li>
                        <li><a href="#NormsList">Norms</a></li>
                         <li><a href="#videos">Instruntions</a></li>
                        <li><a href="#testCategories">Test Categories</a></li>
                        <%--    <li><a href="#reports">Results</a></li>--%>
                        <li id="login" runat="server"><a href="Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="Logout" CssClass="" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
  
        <div class="container">
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
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
                        <div class="col-lg-3">
                            <asp:Button ID="btnUpdateProfile" runat="server" Text="Set Provider Code" class="btn btn-labeled btn-info" Width=" 100%" OnClick="btnUpdateProfile_Click" />
                            <asp:Button ID="btnAddNewPart" runat="server" Text="Add New Participant" OnClick="btnAddNewPart_Click" class="btn btn-labeled btn-info" Width="100%" />
                            <asp:Button ID="btnAddUserTest" runat="server" Text="Assign Participant Test" OnClick="btnAddUserTest_Click" class="btn btn-labeled btn-info" Width="100%" />
                            <asp:Button ID="btnModifyTest" runat="server" Text="Modify Test" OnClick="btnModifyTest_Click" class="btn btn-labeled btn-info" Width="100%" />
                            <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" OnClick="btnResetPassword_Click" class="btn btn-labeled btn-info" Width="100%" />
                        </div>
                        <div class="col-lg-8">
                            <asp:Panel ID="pProviderTools" runat="server">

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


                                <div id="createUser" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Create New User:</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div>
                                            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                                            <asp:Label ID="emailError" runat="server" Text=""></asp:Label>
                                            <div class="col-xs-12 col-sm-12 col-md-12 ">
                                                <asp:Label ID="Label4" cssClass ="labelBold" runat="server" Text="User email"></asp:Label>
                                                <asp:TextBox ID="txtUserEmail" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                                <asp:Label ID="Label1" cssClass ="labelBold" runat="server" Text="User Name"></asp:Label>
                                                <asp:TextBox ID="txtNewUser"  runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                                <asp:Label ID="Label2" cssClass ="labelBold" runat="server" Text="Password"></asp:Label>
                                                <asp:TextBox ID="txtPassword" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                                <asp:CheckBox ID="cbAllowUserViewResults" runat="server" Text="Allow User View Results" TextAlign="Left" />                                              
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-xs-4 col-sm-6 col-md-4">
                                                <asp:Button ID="btnCreateNewUser" class="btn btn-labeled btn-success" runat="server" Text="Create" OnClick="btnCreateNewUser_Click" />
                                            </div>
                                            <div class="col-xs-4 col-sm-6 col-md-4">
                                                <asp:Button ID="btnCancelUser" runat="server" class="btn btn-labeled btn-info" Text="Close" OnClick="btnCancelUser_Click" />

                                            </div>
                                                   <div class="col-xs-4 col-sm-6 col-md-4">
                                               <input id="emailUser" type="button"  class="btn btn-labeled btn-success" value="Send User Credentials" />
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
                                        <asp:DropDownList class="dropDown" ID="ddlAllParticipants" runat="server" Width="50%" required="true"></asp:DropDownList>
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
            </ContentTemplate>
        </asp:UpdatePanel>
         
            <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                <ContentTemplate>
     <section id="participantData">
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
                                                <asp:LinkButton runat="server" Text="" CausesValidation="false" ID="lbRemoveTestFromUserList" OnClick="lbRemoveTestFromUserList_Click" OnClientClick="return confirm('Are you sure?')"><i class="fa fa-minus-square-o  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                            </ItemTemplate>

                                            <FooterStyle Width="10%"></FooterStyle>
                                            <HeaderStyle Width="10%"></HeaderStyle>
                                            <ItemStyle Width="10%"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:BoundField Visible="true" DataField="tID" />
                                        <asp:BoundField Visible="true" DataField="testId" />
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
                                            <asp:LinkButton ID="delete" runat="server" CausesValidation="false" OnClick="delete_Click" OnClientClick="return confirm('Are you sure?')" Text="X"><i class="fa fa-minus-square-o  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Tests" HeaderStyle-Width="10%" ItemStyle-Width="10%"
                                        FooterStyle-Width="10%">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="viewTest" runat="server" CausesValidation="false" OnClick="viewTest_Click" Text="open"><i class="fa fa-eye  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="userId" />
                             
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

                </ContentTemplate>
            </asp:UpdatePanel>
       
            <section id="purchachedTests">
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
                        <h2 class="intro-text text-center">Available 
                            <strong>Test</strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../WCSTWrapper.aspx" id="wcst">
                            <img class="img-responsive" src="../images/cardSort.png" alt=""></a>
                        <h3>Card Sort
                       
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../TrailsWrapper.aspx" id="trails">
                            <img class="img-responsive" src="../images/trails.jpg" alt=""></a>
                        <h3>Trails
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../Tests/NbackWrapper.aspx" id="nBack">
                            <img class="img-responsive" src="../images/Nback.jpg" alt=""></a>
                        <h3>Nback
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../LondonWrapper.aspx" id="london">
                            <img class="img-responsive" src="../images/tower.jpg" alt=""></a>
                        <h3>Tower Of London

                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../Tests/SyllogWrapper.aspx" id="syllog">
                            <img class="img-responsive" src="../images/sillog.png"" alt=""></a>
                        <h3>Syllogisms

                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../Tests/StroopWrapper.aspx" id="stroop">
                            <img class="img-responsive" src="../images/stroop.jpg"" alt=""></a>
                        <h3>Stroop test

                            <small></small>
                        </h3>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

        </section>

              <section id="NormsList">
            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center">Norms
                            <strong>Tables</strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-sm-2 text-center">
                     <asp:Button ID="drAdult" runat="server" Text="TOL Drexel Adult"  class="btn btn-labeled btn-info"  onClick="drAdult_Click"/>
                    </div>
                    <div class="col-sm-2 text-center">
                          <asp:Button ID="drChild" runat="server" Text="TOL Drexel Child"  class="btn btn-labeled btn-info"  onClick="drChild_Click"/>
                     
                    </div>
                    <div class="col-sm-2 text-center">
                    <asp:Button ID="CST" runat="server" Text="Card Sort Test"  class="btn btn-labeled btn-info"  onClick="CST_Click"/>
                    </div>
                    <div class="col-sm-2 text-center">
                     <asp:Button ID="Nback" runat="server" Text="N-back"  class="btn btn-labeled btn-info"  onClick="Nback_Click"/>
         
                    </div>
                    <div class="col-sm-2 text-center">
                   
                    </div>
                    <div class="col-sm-2 text-center">
                
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

        </section>
                            <section id="videos">
            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center">Instructional
                            <strong>Videos</strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-sm-4 text-center" id="vid1">
                        Provider Dash Part 1
                       <iframe src="https://www.youtube.com/embed/-SPAjSEuBNA?" frameborder="0" allowfullscreen></iframe>

                    </div>
                    <div class="col-sm-4 text-center"> 
                    Provider Dash Part 2
                        <iframe src="https://www.youtube.com/embed/k_aoilEl8h8?" frameborder="0" allowfullscreen></iframe>
<%--                        <object 
data="https://www.youtube.com/embed/k_aoilEl8h8?fs=0">
</object>--%>
                    </div>
                    <div class="col-sm-4 text-center">

                    </div>
                    <div class="col-sm-2 text-center">
                         Provider Dash Part 3
                        <iframe src="https://www.youtube.com/embed/0JwN9Np1TmE" frameborder="0" allowfullscreen></iframe>
<%--                        <object 
data="https://www.youtube.com/embed/0JwN9Np1TmE?fs=0">
</object>--%>
         
                    </div>
                    <div class="col-sm-2 text-center">
                   
                    </div>
                    <div class="col-sm-2 text-center">
                
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
                                    <a href="../category/Memory.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-medium fa-stack-1x "></i>
                                    </span></a>
                                </a>
                                <h4><a href="../category/Memory.aspx">Memory</a></h4>

                            </div>
                        </div>

                        <div class="col-md-3 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="../category/ExecutiveFunction.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-book fa-stack-1x"></i>
                                    </span></a>

                                </a>
                                <h4><a href="../category/ExecutiveFunction.aspx">Executive function and Planning</a></h4>

                            </div>
                        </div>
                        <div class="col-md-3 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="../category/ProcessingSpeed.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-cogs fa-stack-1x"></i>
                                    </span></a>

                                </a>
                                <h4><a href="../category/ProcessingSpeed.aspx">Processing Speed</a></h4>
                            </div>
                        </div>
                        <div class="col-md-3 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="../category/IntelligenceTest.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-lightbulb-o fa-stack-1x"></i>
                                    </span></a>

                                </a>
                                <h4><a href="../category/IntelligenceTest.aspx">Intelligence</a></h4>

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
<%--<script src="../js/jquery.js"></script>  --%>

<script src="../js/jquery-responsiveTables.js"></script>
<script src="../js/bootstrap.min.js"></script>
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

    $("#<%=txtUserEmail.ClientID%>").mouseout(function () {

        var text = $("#<%=txtUserEmail.ClientID%>").val();
        if (!validateEmail(text)) {
            $("#<%=emailError.ClientID%>").text("Please enter a valid email *")
        }

        else {

            $("#<%=emailError.ClientID%>").text("");
        }
    });

    function validateEmail(text) {
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        return emailReg.test(text);
    }

    $.fn.slideFadeToggle = function (easing, callback) {
        return this.animate({ opacity: 'toggle', height: 'toggle' }, 'fast', easing, callback);
    };
    $("#pop").draggable().resizable();


    $('#btnDeleteModify').on("click", function (e) {

        var r = confirm("Are you sure you want to delete this test?");
        if (r !== true) {
            e.preventDefault();
        }
    });

    $('#emailUser').on("click", function (e) {
        if ($("#<%=lblError.ClientID%>").text() != "New User was created") {
            alert("The user have not been created yet.");
        }

        else {
            var email = $("#<%=txtUserEmail.ClientID%>").val();
            var user = $("#<%=txtNewUser.ClientID%>").val();
            var pass = $("#<%=txtPassword.ClientID%>").val();
            var body = "Welcome to CogQuiz.com. Use this credentials to login to site: \r\n Login: " + user + "\r\n Password: " + pass
            //var subject =?subject=
            document.location.href = "mailto:" + email + "?subject=Login Info From CogQuiz&body=" + encodeURIComponent(body);
        }
    });

</script>
