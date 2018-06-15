<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProviderPortal.aspx.cs" Inherits="TestSite.Provider.ProviderPortal" MaintainScrollPositionOnPostback="true"   MasterPageFile="~/Layout.Master"
    Culture="auto" UICulture="auto"  Title="" meta:resourcekey="pagetitle"%>

<asp:Content ContentPlaceHolderID="HeadMetaContent" runat="server">
    <meta name="description" content="">
    <meta name="author" content="">
</asp:Content>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="..//shortcut icon" href="../images/favicon.ico"/>
    <%--<link rel="stylesheet" href="../css/jquery-ui.min.css">--%>
    <%--<link href="../fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="../css/bootstrap.css" rel="stylesheet" />--%>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>
    <%--<link href="../cogTest.css" rel="stylesheet" />--%>
    <link href="../css/userProfilecss.css" rel="stylesheet" />
</asp:content>

<asp:Content ContentPlaceHolderID="MenuItemLi" runat="server">
    <li class="active" style="margin-left:0px"><a href="#userInfo"><asp:Localize meta:resourcekey="navbar_dashboard"  runat="server" ID="Localize52" Text="" /></a></li>
    <li style="margin-left:0px"><a href="#participantData"><asp:Localize meta:resourcekey="navbar_participantData"  runat="server" ID="Localize53" Text="" /></a></li>
    <li style="margin-left:0px"><a href="#purchachedTests"><asp:Localize meta:resourcekey="navbar_provider"  runat="server" ID="Localize54" Text="" /></a></li>
    <li style="margin-left:0px"><a href="#testList"><asp:Localize meta:resourcekey="navbar_available"  runat="server" ID="Localize55" Text="" /></a></li>
    <li style="margin-left:0px"><a href="#NormsList"><asp:Localize meta:resourcekey="navbar_norms"  runat="server" ID="Localize56" Text="" /></a></li>
    <li style="margin-left:0px"><a href="#videos"><asp:Localize meta:resourcekey="navbar_instructions"  runat="server" ID="Localize57" Text="" /></a></li>
    <li style="margin-left:0px"><a href="#testCategories"><asp:Localize meta:resourcekey="navbar_categories"  runat="server" ID="Localize58" Text="" /></a></li>
</asp:content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <%--<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../MainPage.aspx" style="margin-left: -35px; padding: 15px 0px;">
                        <i class="fa fa-cogs" aria-hidden="true">Quiz</i>
                    </a>

                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu" style="margin-left:0px">
                        <li style="margin-left:0px"><a href="../MainPage.aspx"><asp:Localize meta:resourcekey="navbar_home"  runat="server" ID="Localize48" Text="" /></a></li>
                        <li class="active" style="margin-left:0px"><a href="#userInfo"><asp:Localize meta:resourcekey="navbar_dashboard"  runat="server" ID="Localize1" Text="" /></a></li>
                        <li style="margin-left:0px"><a href="#participantData"><asp:Localize meta:resourcekey="navbar_participantData"  runat="server" ID="Localize2" Text="" /></a></li>
                        <li style="margin-left:0px"><a href="#purchachedTests"><asp:Localize meta:resourcekey="navbar_provider"  runat="server" ID="Localize3" Text="" /></a></li>
                        <li style="margin-left:0px"><a href="#testList"><asp:Localize meta:resourcekey="navbar_available"  runat="server" ID="Localize4" Text="" /></a></li>
                        <li style="margin-left:0px"><a href="#NormsList"><asp:Localize meta:resourcekey="navbar_norms"  runat="server" ID="Localize5" Text="" /></a></li>
                         <li style="margin-left:0px"><a href="#videos"><asp:Localize meta:resourcekey="navbar_instructions"  runat="server" ID="Localize6" Text="" /></a></li>
                        <li style="margin-left:0px"><a href="#testCategories"><asp:Localize meta:resourcekey="navbar_categories"  runat="server" ID="Localize7" Text="" /></a></li>
                        <%--    <li><a href="#reports">Results</a></li>
                        <li id="login" runat="server" style="margin-left:0px"><a href="Login.aspx"><asp:Localize meta:resourcekey="navbar_login"  runat="server" ID="Localize8" Text="" /></a></li>
                        <li style="margin-left:0px">
                            <asp:LinkButton ID="Logout" CssClass="" type="submit" runat="server" OnClick="logOut_Click"><asp:Localize meta:resourcekey="navbar_logout"  runat="server" ID="Localize9" Text="" /></asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>--%>

        <!-- Modal -->
        <%--<div id="myModal" style="z-index: 1050" class="modal fade" role="dialog">--%>
        <div id="myModal"  class="modal fade" role="dialog">
          <div class="modal-dialog modal-sm">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" style="text-align:center"><asp:Localize meta:resourcekey="myModal_title"  runat="server" ID="Localize10" Text="" /></h4>
              </div>
              <div class="modal-body">
                <p id="testButtons" style="display: flex;align-items: center;justify-content: center;">
                <a href ="../Create/LondonModify.aspx">
                    <%--<asp:Button ID ="ToL" CssClass="btn btn-success" Text="Tower of London" runat="server" />--%>
                    <input type="button" id="ToL" class="btn btn-success" value="Tower of London" runat="server"  meta:resourcekey="MyModal_input"/>
                </a>
                <%--<a href ="../Create/MemoryCardsModify.aspx" >
                   <%-- <asp:Button ID ="MC" CssClass="btn btn-success" Text="Memory Cards" runat="server" />
                    <input type="button" id="MC" class="btn btn-success" value="Memory Cards" runat="server" />
                </a>--%>
                </p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" style="color:black;" data-dismiss="modal"><asp:Localize meta:resourcekey="myModal_btn"  runat="server" ID="Localize11" Text="" /></button>
              </div>
            </div>

          </div>
        </div>


        <div class="container">
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                   <section id="userInfo">
                <div class="row">
                    <div class="box box1" style="margin-top: 70px">
                        <div class="col-lg-12">
                            <hr>
                            <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="container_title1"  runat="server" ID="Localize12" Text="" />
                        <strong><asp:Localize meta:resourcekey="container_title2_strong"  runat="server" ID="Localize13" Text="" /></strong>
                            </h2>
                            <hr>
                        </div>
                        <div class="col-lg-4">
                            <div class="btn-group-vertical pp-menu" role="group" aria-label="">
                                                <asp:Button ID="btnUpdateProfile" runat="server" Text="" class="btn btn-info pp-menu-item" Width=" 100%" OnClick="btnUpdateProfile_Click" meta:resourcekey="container_button_btnUpdateProfile"/>
                                                <asp:Button ID="btnAddNewPart" runat="server" Text="" OnClick="btnAddNewPart_Click" class="btn btn-info pp-menu-item" Width="100%" meta:resourcekey="container_button_btnAddNewPart"/>
                                                <asp:Button ID="btnAddUserTest" runat="server" Text="" OnClick="btnAddUserTest_Click" class="btn btn-info pp-menu-item" Width="100%" meta:resourcekey="container_button_btnAddUserTest"/>
                                                <asp:Button ID="btnModifyTest" runat="server" Text="M" OnClick="btnModifyTest_Click" class="btn btn-info pp-menu-item" Width="100%" meta:resourcekey="container_button_btnModifyTest"/>
                                                <asp:Button ID="btnResetPassword" runat="server" Text="" OnClick="btnResetPassword_Click" class="btn btn-info pp-menu-item" Width="100%" meta:resourcekey="container_button_btnResetPassword"/>
                                                <asp:Button ID="btnExportTestResults" runat="server" Text="" OnClick="btnExportTestResults_Click" class="btn btn-info pp-menu-item" Width="100%" meta:resourcekey="container_button_btnExportTestResults"/>
                                                <%--<asp:Button ID="Button1" runat="server" Text="Test buttons" OnClick="afterBuyTOL" class="btn btn-info pp-menu-item" Width="100%" />--%>
                            </div>
                            <%--<asp:Button ID="btnUpdateProfile" runat="server" Text="Set Provider Code" class="btn btn-labeled btn-info" Width=" 100%" OnClick="btnUpdateProfile_Click" />
                            <asp:Button ID="btnAddNewPart" runat="server" Text="Add New Participant" OnClick="btnAddNewPart_Click" class="btn btn-labeled btn-info" Width="100%" />
                            <asp:Button ID="btnAddUserTest" runat="server" Text="Assign Participant Test" OnClick="btnAddUserTest_Click" class="btn btn-labeled btn-info" Width="100%" />
                            <asp:Button ID="btnModifyTest" runat="server" Text="Modify Test" OnClick="btnModifyTest_Click" class="btn btn-labeled btn-info" Width="100%" />
                            <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" OnClick="btnResetPassword_Click" class="btn btn-labeled btn-info" Width="100%" />
                            <asp:Button ID="btnExportTestResults" runat="server" Text="Export Test Results" OnClick="btnExportTestResults_Click" class="btn btn-labeled btn-info" Width="100%" />--%>
                        </div>
                        <div class="col-lg-8">
                            <asp:Panel ID="pProviderTools" runat="server">

                                  <div id="resetPw" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"><asp:Localize meta:resourcekey="pProviderTools_resetPw_title"  runat="server" ID="Localize14" Text="" /></h3>
                                        <asp:Label ID="errorPW" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Label ID="Label8" runat="server" Text="Old Password:" meta:resourcekey="pProviderTools_resetPw_label1"></asp:Label>
                                        <asp:TextBox ID="txtOldPw" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                        <asp:Label ID="Label7" runat="server" Text="New Password:" meta:resourcekey="pProviderTools_resetPw_label2"></asp:Label>
                                        <asp:TextBox ID="txtNewPw" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>


                                        <asp:Button ID="btnResetPw" class="btn btn-labeled btn-success" runat="server" Text="Save" OnClick="btnResetPw_Click" meta:resourcekey="pProviderTools_resetPw_btn1"/>
                                        <asp:Button ID="btnClosePw" class="btn btn-labeled btn-info" runat="server" Text="Close" OnClick="btnClosePw_Click" meta:resourcekey="pProviderTools_resetPw_btn2"/>
                                    </div>
                                </div>





                                <div id="setUpUserCode" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"><asp:Localize meta:resourcekey="pProviderTools_setUpUserCode_title"  runat="server" ID="Localize15" Text="" /></h3>
                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Label ID="Label5" runat="server" Text="" meta:resourcekey="pProviderTools_setUpUserCode_label"></asp:Label>
                                        <asp:TextBox ID="txtUserCode" runat="server" CssClass="createUser" Width="50%"></asp:TextBox>
                                        <asp:Button ID="btnCodeSave" class="btn btn-labeled btn-success" runat="server" Text="" OnClick="btnCodeSave_Click" meta:resourcekey="pProviderTools_setUpUserCode_btn1"/>
                                        <asp:Button ID="btnCodeClose" class="btn btn-labeled btn-info" runat="server" Text="" OnClick="btnCodeClose_Click" meta:resourcekey="pProviderTools_setUpUserCode_btn2"/>
                                    </div>
                                </div>
                                <div id="editTest" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"><asp:Localize meta:resourcekey="pProviderTools_editTest_title"  runat="server" ID="Localize16" Text="" /></h3>
                                    </div>
                                    <div class="panel-body">
                                        <asp:DropDownList class="dropDown" ID="ddlModifyTest" runat="server" Width="50%"></asp:DropDownList>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-xs-3 col-sm-3 col-md-3">
                                                <asp:Button ID="btnSelectModify" class="btn btn-labeled btn-success" runat="server" Text="Modify" OnClick="btnSelectModify_Click" meta:resourcekey="pProviderTools_editTest_btn1"/>
                                            </div>
                                            <div class="col-xs-3 col-sm-3 col-md-3">
                                                <asp:Button ID="btnDeleteModify" class="btn btn-labeled btn-success" runat="server" Text="Delete" OnClick="btnDeleteModify_Click" meta:resourcekey="pProviderTools_editTest_btn2"/>
                                            </div>
                                            <div class="col-xs-3 col-sm-3 col-md-3">
                                                <%--<asp:Button ID="btnCreateNewTest" class="btn btn-labeled btn-success" runat="server" Text="Create " OnClick="btnCreateNewTest_Click" />--%>
                                                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><asp:Localize meta:resourcekey="pProviderTools_editTest_btn3"  runat="server" ID="Localize17" Text="" /></button>
                                            </div>
                                            <div class="col-xs-3 col-sm-3 col-md-3">
                                                <asp:Button ID="btnCancelModify" runat="server" class="btn btn-labeled btn-info" Text="Close" OnClick="btnCancelModify_Click" meta:resourcekey="pProviderTools_editTest_btn4"/>

                                            </div>

                                        </div>
                                    </div>

                                </div>


                                <div id="createUser" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"><asp:Localize meta:resourcekey="pProviderTools_createUser_title"  runat="server" ID="Localize18" Text="" /></h3>
                                    </div>
                                    <div class="panel-body">
                                        <div>
                                            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                                            <asp:Label ID="emailError" runat="server" Text=""></asp:Label>
                                            <div class="col-xs-12 col-sm-12 col-md-12 ">
                                                <asp:Label ID="Label4" cssClass ="labelBold" runat="server" Text="User email" meta:resourcekey="pProviderTools_createUser_label1"></asp:Label>
                                                <asp:TextBox ID="txtUserEmail" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                                <asp:Label ID="Label1" cssClass ="labelBold" runat="server" Text="User Name" meta:resourcekey="pProviderTools_createUser_label2"></asp:Label>
                                                <asp:TextBox ID="txtNewUser"  runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                                <asp:Label ID="Label2" cssClass ="labelBold" runat="server" Text="Password" meta:resourcekey="pProviderTools_createUser_label3"></asp:Label>
                                                <asp:TextBox ID="txtPassword" runat="server" CssClass="createUser" Width="100%"></asp:TextBox>

                                                <asp:CheckBox ID="cbAllowUserViewResults" runat="server" Text="Allow User View Results" TextAlign="Left" meta:resourcekey="pProviderTools_createUser_checkBox"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-xs-4 col-sm-6 col-md-4">
                                                <asp:Button ID="btnCreateNewUser" class="btn btn-labeled btn-success" runat="server" Text="Create" OnClick="btnCreateNewUser_Click" meta:resourcekey="pProviderTools_createUser_btn1"/>
                                            </div>
                                            <div class="col-xs-4 col-sm-6 col-md-4">
                                                <asp:Button ID="btnCancelUser" runat="server" class="btn btn-labeled btn-info" Text="Close" OnClick="btnCancelUser_Click" meta:resourcekey="pProviderTools_createUser_btn2"/>

                                            </div>
                                                   <div class="col-xs-4 col-sm-6 col-md-4">
                                               <input id="emailUser" type="button"  class="btn btn-labeled btn-success" value="Send User Credentials" meta:resourcekey="pProviderTools_createUser_input" runat="server"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="assignTest" class="panel panel-success" runat="server" novalidate>
                                    <div class="panel-heading">
                                        <h3 class="panel-title"><asp:Localize meta:resourcekey="pProviderTools_assignTest_title"  runat="server" ID="Localize19" Text="" /></h3>
                                        <asp:Label ID="lblTestMessage" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="panel-body " novalidate>
                                        <asp:DropDownList class="dropDown" ID="ddlAllParticipants" runat="server" Width="50%" ></asp:DropDownList>
                                        <asp:DropDownList class="dropDown" ID="ddlProvTests" runat="server" Width="50%" OnSelectedIndexChanged="ddlProvTests_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="True"></asp:DropDownList>
                                        <asp:DropDownList class="dropDown" ID="ddlModifiedID" runat="server" Width="40%"></asp:DropDownList>
                                        <div>
                                            <asp:Button ID="btnPartAddTest" class="btn btn-labeled btn-success" runat="server" Text="" OnClick="btnPartAddTest_Click1" meta:resourcekey="pProviderTools_createUser_btn1" />
                                            <asp:Button ID="btnCloseAddTest" class="btn btn-labeled btn-info" runat="server" Text="" OnClick="btnCloseAddTest_Click" meta:resourcekey="pProviderTools_createUser_btn2" />
                                        </div>
                                    </div>
                                </div>
                                <div id="exportTestResults" class="panel panel-success" runat="server">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"><asp:Localize meta:resourcekey="pProviderTools_exportTestResults_title"  runat="server" ID="Localize20" Text="" /></h3>
                                    </div>
                                    <div class="panel-body ">
                                        <div class ="row">
                                            <div class="col-md-5">
                                                <label><asp:Localize meta:resourcekey="pProviderTools_exportTestResults_lable1"  runat="server" ID="Localize21" Text="" /></label>
                                                <asp:DropDownList class="dropDown" ID="TestTemplatesForExportResults" OnSelectedIndexChanged="TestTemplatesForExportResults_SelectedIndexChanged" runat="server" Width="100%" AppendDataBoundItems="true" AutoPostBack="True"></asp:DropDownList>
                                                <asp:DropDownList class="dropDown" ID="TestsForExportResults" runat="server" Width="100%" AppendDataBoundItems="true" AutoPostBack="True"></asp:DropDownList>
                                            </div>
                                            <div class="col-md-1">
                                                </div>
                                            <div class="col-md-3">
                                                <label><asp:Localize meta:resourcekey="pProviderTools_exportTestResults_lable2"  runat="server" ID="Localize22" Text="" /></label>
                                                <asp:TextBox class="dropDown" ID="fromDate" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-3">
                                                <label><asp:Localize meta:resourcekey="pProviderTools_exportTestResults_lable3"  runat="server" ID="Localize23" Text="" /></label>
                                                <asp:TextBox class="dropDown" ID="toDate" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="dropdown">
                                            <button class="btn btn-success dropdown-toggle" id="ExportDropdown" type="button" data-toggle="dropdown"><asp:Localize meta:resourcekey="pProviderTools_exportTestResults_btn1"  runat="server" ID="Localize24" Text="" />
                                            <span class="caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><asp:Button ID="btnExportTestResultsInOneRow" class="selectBtn" runat="server" Text="" OnClick="btnExportTestResultsInOneRow_Click" PostBackUrl="ProviderPortal.aspx" meta:resourcekey="pProviderTools_exportTestResults_btn2"/></li>
                                                <li><asp:Button ID="btnExportTestResultsInManyRows" class="selectBtn" runat="server" Text="" OnClick="btnExportTestResultsInManyRows_Click" PostBackUrl="ProviderPortal.aspx" meta:resourcekey="pProviderTools_exportTestResults_btn3"/></li>
                                            </ul>
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
                            <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="participantData_title"  runat="server" ID="Localize25" Text="" />
                        <strong><asp:Localize meta:resourcekey="participantData_strong1"  runat="server" ID="Localize26" Text="" /></strong>
                            </h2>
                            <hr>
                        </div>
                        <div class="col-lg-2">
                            <p class="min"><strong><asp:Localize meta:resourcekey="participantData_strong2"  runat="server" ID="Localize27" Text="" /></strong> </p>

                        </div>

                        	<div class="row">

                            </div>



                        <div class="col-lg-6 row">
                            <div id="pop" class="custom-pop user-view-pop" runat="server">
                                <asp:Label ID="partName" runat="server" Text="" CssClass="col-lg-2 user-view-pop_name"></asp:Label>
                                <asp:Button ID="btnCancel" runat="server" OnClick="Button1_Click"  Text="X" class="col-md-1 custom-pop-btnCancel" />
                                <asp:GridView ID="gvTestPerUser" runat="server" RowStyle-Wrap="true" CellSpacing="10" class="gridview provider-table"
                                    GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                                    BorderWidth="1px" CellPadding="20" ForeColor="Black"
                                    RowStyle-Height="40px" Font-Size="Larger">

                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Text Name" meta:resourcekey="participantData_pop_columns_name"></asp:BoundField>
                                        <asp:BoundField DataField="Assigned Date" DataFormatString="{0:d}" HeaderText="" meta:resourcekey="participantData_pop_columns_Assigned"></asp:BoundField>
                                        <asp:BoundField DataField="Finished Date" DataFormatString="{0:d}" NullDisplayText="Not Finished" HeaderText="Finished Date" meta:resourcekey="participantData_pop_columns_finished"></asp:BoundField>

                                        <asp:TemplateField HeaderText="" HeaderStyle-Width="10%" ItemStyle-Width="10%" meta:resourcekey="participantData_pop_columns_finishedTemplateField"
                                            FooterStyle-Width="10%">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" Text="" CausesValidation="false" ID="lbViewTestResults" OnClick="lbViewTestResults_Click" Visible='<%# Eval("Finished Date") != DBNull.Value  %>'><i class="fa fa-eye  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                            </ItemTemplate>
                                            <FooterStyle Width="10%"></FooterStyle>
                                            <HeaderStyle Width="10%"></HeaderStyle>
                                            <ItemStyle Width="10%"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="" HeaderStyle-Width="10%" ItemStyle-Width="10%" meta:resourcekey="participantData_pop_columns_finishedRemove"
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
                                <asp:CheckBox ID="cbViewResults" runat="server" OnCheckedChanged="SelectCheckBox_CheckedChanged" Text="Allow Participant to view results" meta:resourcekey="participantData_pop_columns_checkBox"/>
                            </div>


                        </div>
                        <div class="col-lg-12">

                            <asp:GridView ID="gvAllParticipants" runat="server" CellSpacing="10" class="gridview provider-table"
                                GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="20" ForeColor="Black" Height="100px"
                                RowStyle-Height="40px"
                                allowsorting="True" onsorting="gvAllParticipants_Sorting">
                                <Columns>
                                    <asp:BoundField DataField="First Name" HeaderText="First Name &nbsp;&nbsp;"  sortexpression="First Name" meta:resourcekey="participantData_gvAllParticipants_colums_firstname"/>
                                    <asp:BoundField DataField="Last Name" HeaderText="Last Name &nbsp;&nbsp;" sortexpression="Last Name" meta:resourcekey="participantData_gvAllParticipants_colums_lastname"/>
                                    <asp:BoundField DataField="Username" HeaderText="UserName &nbsp;&nbsp;" meta:resourcekey="participantData_gvAllParticipants_colums_username"/>
                                    <asp:BoundField DataField="Age" HeaderText="Age &nbsp;&nbsp; &nbsp;&nbsp;" sortexpression="Age" meta:resourcekey="participantData_gvAllParticipants_colums_age"/>
                                    <asp:TemplateField HeaderText="Profile" HeaderStyle-Width="10%" ItemStyle-Width="10%" meta:resourcekey="participantData_gvAllParticipants_colums_profile"
                                        FooterStyle-Width="10%">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="view" runat="server" CausesValidation="false" OnClick="view_Click"> <i class="fa fa-pencil-square-o  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete" HeaderStyle-Width="10%" ItemStyle-Width="10%" meta:resourcekey="participantData_gvAllParticipants_colums_delete"
                                        FooterStyle-Width="10%">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="delete" runat="server" CausesValidation="false" OnClick="delete_Click" OnClientClick="return confirm('Are you sure?')" Text="X"><i class="fa fa-minus-square-o  fa-2x" aria-hidden="true"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Tests" HeaderStyle-Width="10%" ItemStyle-Width="10%" meta:resourcekey="participantData_gvAllParticipants_colums_tests"
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
                            <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="participantData_purchachedTests_title"  runat="server" ID="Localize28" Text="" />
                        <strong><asp:Localize meta:resourcekey="participantData_purchachedTests_strong"  runat="server" ID="Localize29" Text="" /></strong>
                            </h2>
                            <hr>
                        </div>
                        <p class="col-lg-2"><asp:Localize meta:resourcekey="participantData_purchachedTests_paragraph"  runat="server" ID="Localize30" Text="" /></p>


                        <asp:GridView ID="gvProviderTests" runat="server" RowStyle-Wrap="false" CellSpacing="10" class="gridview provider-table"
                            GridLines="Horizontal" AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="None"
                            BorderWidth="1px" CellPadding="20" ForeColor="Black" Height="100px"
                            RowStyle-Height="40px">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="" meta:resourcekey="participantData_purchachedTests_column_Name"/>
                                <asp:BoundField DataField="Option" HeaderText="" meta:resourcekey="participantData_purchachedTests_column_Option"/>
                                <asp:BoundField DataField="Left" HeaderText="" meta:resourcekey="participantData_purchachedTests_column_Left"/>
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
                        <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="testList_title"  runat="server" ID="Localize31" Text="" />
                            <strong><asp:Localize meta:resourcekey="testList_strong"  runat="server" ID="Localize32" Text="" /></strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../WCSTWrapper.aspx" id="wcst">
                            <img class="img-responsive" src="../images/cardSort.png" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test1_title"  runat="server" ID="Localize33" Text="" />

                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../TrailsWrapper.aspx" id="trails">
                            <img class="img-responsive" src="../images/trails.jpg" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test2_title"  runat="server" ID="Localize34" Text="" />
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../Tests/NbackWrapper.aspx" id="nBack">
                            <img class="img-responsive" src="../images/Nback.jpg" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test3_title"  runat="server" ID="Localize35" Text="" />
                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../LondonWrapper.aspx" id="london">
                            <img class="img-responsive" src="../images/tower.jpg" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test4_title"  runat="server" ID="Localize36" Text="" />

                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../Tests/SyllogWrapper.aspx" id="syllog">
                            <img class="img-responsive" src="../images/sillog.png"" alt="">
                        </a>
                        <h3><asp:Localize meta:resourcekey="testList_test5_title"  runat="server" ID="Localize37" Text="" />

                            <small></small>
                        </h3>
                    </div>
                    <div class="col-sm-2 text-center">
                        <a href="../Tests/StroopWrapper.aspx" id="stroop">
                            <img class="img-responsive" src="../images/stroop.jpg"" alt=""></a>
                        <h3><asp:Localize meta:resourcekey="testList_test6_title"  runat="server" ID="Localize38" Text="" />

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
                        <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="NormsList_title"  runat="server" ID="Localize40" Text="" />
                            <strong><asp:Localize meta:resourcekey="NormsList_strong"  runat="server" ID="Localize39" Text="" /></strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-sm-3 text-center">
                         <asp:Button ID="drAdult" runat="server" Text="TOL Drexel Adult"  class="btn btn-labeled btn-info"  onClick="drAdult_Click" meta:resourcekey="NormsList_btn1"/>
                    </div>
                    <div class="col-sm-3 text-center">
                          <asp:Button ID="drChild" runat="server" Text="TOL Drexel Child"  class="btn btn-labeled btn-info"  onClick="drChild_Click" meta:resourcekey="NormsList_btn2"/>
                    </div>
                    <div class="col-sm-3 text-center">
                        <asp:Button ID="CST" runat="server" Text="Card Sort Test"  class="btn btn-labeled btn-info"  onClick="CST_Click" meta:resourcekey="NormsList_btn3"/>
                    </div>
                    <div class="col-sm-3 text-center">
                        <asp:Button ID="Nback" runat="server" Text="N-back"  class="btn btn-labeled btn-info"  onClick="Nback_Click" meta:resourcekey="NormsList_btn4"/>
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
                        <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="videos_title"  runat="server" ID="Localize41" Text="" />
                            <strong><asp:Localize meta:resourcekey="videos_strong"  runat="server" ID="Localize42" Text="" /></strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-sm-4 text-center iframe-wrapp" id="vid1">
                        <asp:Localize meta:resourcekey="videos_descr1"  runat="server" ID="Localize43" Text="" />
                       <iframe src="https://www.youtube.com/embed/-SPAjSEuBNA?" frameborder="0" allowfullscreen></iframe>

                    </div>
                    <div class="col-sm-4 text-center iframe-wrapp">
                    <asp:Localize meta:resourcekey="videos_descr2"  runat="server" ID="Localize44" Text="" />
                        <iframe src="https://www.youtube.com/embed/k_aoilEl8h8?" frameborder="0" allowfullscreen></iframe>
<%--                        <object
data="https://www.youtube.com/embed/k_aoilEl8h8?fs=0">
</object>--%>
                    </div>
                    <div class="col-sm-4 text-center iframe-wrapp">
                         <asp:Localize meta:resourcekey="videos_descr3"  runat="server" ID="Localize45" Text="" />
                        <iframe src="https://www.youtube.com/embed/0JwN9Np1TmE" frameborder="0" allowfullscreen></iframe>
<%--                        <object
data="https://www.youtube.com/embed/0JwN9Np1TmE?fs=0">
</object>--%>

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
                            <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="testCategories_title"  runat="server" ID="Localize46" Text="" />

                        <strong><asp:Localize meta:resourcekey="testCategories_strong"  runat="server" ID="Localize47" Text="" /></strong>
                            </h2>
                            <hr>
                        </div>
                        <div class="col-md-4 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="../category/Memory.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-medium fa-stack-1x "></i>
                                    </span></a>
                                </a>
                                <h4><a href="../category/Memory.aspx"><asp:Localize meta:resourcekey="testCategories_category1"  runat="server" ID="Localize49" Text="" /></a></h4>

                            </div>
                        </div>

                        <div class="col-md-4 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="../category/ExecutiveFunction.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-book fa-stack-1x"></i>
                                    </span></a>

                                </a>
                                <h4><a href="../category/ExecutiveFunction.aspx"><asp:Localize meta:resourcekey="testCategories_category2"  runat="server" ID="Localize50" Text="" /></a></h4>

                            </div>
                        </div>
                        <div class="col-md-4 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="../category/ProcessingSpeed.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-cogs fa-stack-1x"></i>
                                    </span></a>

                                </a>
                                <h4><a href="../category/ProcessingSpeed.aspx"><asp:Localize meta:resourcekey="testCategories_category3"  runat="server" ID="Localize51" Text="" /></a></h4>
                            </div>
                        </div>
                        <%--<div class="col-md-3 portfolio-item">
                            <div class="text-center">
                                <a href="javascript:void(0);">
                                    <a href="../category/IntelligenceTest.aspx"><span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-lightbulb-o fa-stack-1x"></i>
                                    </span></a>

                                </a>
                                <h4><a href="../category/IntelligenceTest.aspx">Intelligence</a></h4>

                            </div>
                        </div>--%>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </section>
        </div>

    <div>
        <div class="b-popup" id="popupForProvider" runat="server">
        <div class="b-popup-content" style="position: relative;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec accumsan eros, non semper orci. Curabitur convallis in nulla commodo interdum. Proin tincidunt vulputate arcu sed bibendum. Etiam accumsan eleifend pharetra. Praesent vehicula mi consequat, scelerisque tellus quis, laoreet metus. Nam eget tristique mi, at bibendum neque. Curabitur aliquam vel neque blandit dignissim. Phasellus sed eros id purus consequat pulvinar. Proin tristique, mi et pulvinar sodales, turpis urna dignissim tellus, et dapibus sapien lectus et neque. Quisque nulla ante, fringilla id mattis aliquet, feugiat a augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut aliquam enim id augue volutpat, et fringilla elit tristique.</a>
            <div style="position:absolute; bottom:10px; display:block">
                <%--<button class="btn btn-success" OnClick="PopUpHide()" >Close</button>--%>
                <a class="btn btn-success" href="/provider/ProviderPortal.aspx">Close</a>
            </div>
        </div>
        </div>
    </div>

</asp:content>

<asp:Content ContentPlaceHolderID="ScriptsContent" runat="server">
    <%--<script src="../js/jquery.js"></script>  --%>
    <script src="../js/jquery-responsiveTables.js"></script>
    <%--<script src="../js/bootstrap.min.js"></script>--%>
    <script>

        function PopUpShow() {
            $("#<%= popupForProvider.ClientID %>").show();
        }
        function PopUpHide() {
            $("#<%= popupForProvider.ClientID %>").hide();

        }
    </script>
    <script>

        var interval = setInterval(function () {
            if ($('#<%=exportTestResults.ClientID%>').is(':visible')) {
                initDatePickers();
                clearInterval(interval);
            }
        }, 200);

        var prm = Sys.WebForms.PageRequestManager.getInstance();

        prm.add_endRequest(function () {
            initDatePickers();
        });

        function initDatePickers() {
            var dateFormat = "mm/dd/yy",
                from = $("#<%=fromDate.ClientID%>")
                                        .datepicker({
                                            defaultDate: "+1w",
                                            changeMonth: true,
                                            numberOfMonths: 1
                                        })
                                        .on("change", function () {
                                            to.datepicker("option", "minDate", getDate(this));
                                        }),
                                       to = $("#<%=toDate.ClientID%>").datepicker({
                                        defaultDate: "+1w",
                                        changeMonth: true,
                                        numberOfMonths: 1
                                    })
                                        .on("change", function () {
                                            from.datepicker("option", "maxDate", getDate(this));
                                        });

                                function getDate(element) {
                                    var date;
                                    try {
                                        date = $.datepicker.parseDate(dateFormat, element.value);
                                    } catch (error) {
                                        date = null;
                                    }

                                    return date;
                                }
                            }

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

                            function deselect(e) {
                                $("#<%=pop.ClientID%>").slideFadeToggle(function () {
                                    e.removeClass('selected');
                                });
                            }

                            function test() {


                                if ($(this).hasClass('popped')) {
                                    deselect($(this));
                                } else {
                                    $(this).addClass('popped');
                                    $('#<%=pop.ClientID%>').slideFadeToggle();
                                }
                                return false;

                            }

                            $('.close').on('click', function () {

                                $("#<%=pop.ClientID%>").removeClass("popped");
                                //deselect($('#contact'));
                                return false;
                            });

                            $("#<%=txtUserEmail.ClientID%>").mouseout(function () {

                                var text = $("#<%=txtUserEmail.ClientID%>").val();
                                if (!validateEmail(text)) {
                                    $("#<%=emailError.ClientID%>").text("<%= GetLocalResourceObject("entervalidemail")%>")
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
                            $("#<%=pop.ClientID%>").draggable().resizable();


                            $('#<%= btnDeleteModify.ClientID %>').on("click", function (e) {

                                var r = confirm("<%= GetLocalResourceObject("sureToDelete")%>");
                                if (r !== true) {
                                    e.preventDefault();
                                }
                            });

                            $('#emailUser').on("click", function (e) {
                                if ($("#<%=lblError.ClientID%>").text() != "<%= GetLocalResourceObject("createduser")%>") {
                                    alert("<%= GetLocalResourceObject("userNotCreated")%>");
            }

            else {
                var email = $("#<%=txtUserEmail.ClientID%>").val();
                var user = $("#<%=txtNewUser.ClientID%>").val();
                var pass = $("#<%=txtPassword.ClientID%>").val();
                var body = "<%= GetLocalResourceObject("WelcomeToCogQuiz")%>" + " " + user + "<%= GetLocalResourceObject("pass")%>" + " " + pass;
                //var subject =?subject=
                document.location.href = "<%= GetLocalResourceObject("mailto")%>" + email + "<%= GetLocalResourceObject("mailto2")%>" + encodeURIComponent(body);
            }
        });


        $(function () {
            $("#dialog").dialog();
        });
    </script>
</asp:Content>