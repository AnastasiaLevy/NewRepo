<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TestSite.Login" 
    culture="en-US" uiculture="en" MasterPageFile="~/Layout.Master" Title="" meta:resourcekey="pageTitle" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
    <script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="Style/style.css">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
 <div class="top-content">
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    
                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3><asp:Localize meta:resourcekey="loginForm_title"  runat="server" ID="Localize2" Text="" /></h3>
                                <p><asp:Localize meta:resourcekey="loginForm_paragraph"  runat="server" ID="Localize3" Text="" /></p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-lock"></i>
                            </div>
                        </div>
                        <div id="loginDiv" class="form-bottom">
                                    
                            <div role="form" class="login-form">
                                <asp:Label ID="wrongLogin" class="errorMessage" runat="server" Text=""></asp:Label>
                                <div class="form-group">
                                    <label class="sr-only" for="form-username"><asp:Localize meta:resourcekey="loginForm_LabelUserName"  runat="server" ID="Localize4" Text="" /></label>
                                    <input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="userNameLg" required runat="server" meta:resourcekey="loginForm_inputUserName"/>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-password"><asp:Localize meta:resourcekey="loginForm_LabelPass"  runat="server" ID="Localize5" Text="" /></label>
                                    <input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="userPwLg" required runat="server" meta:resourcekey="loginForm_inputPass"/>
                                </div>
                                <asp:LinkButton ID="btnLogin" class="btn btn-success" type="submit" runat="server" OnClick="clcLogin"><asp:Localize meta:resourcekey="loginForm_LinkButton"  runat="server" ID="Localize6" Text="" /></asp:LinkButton>
                                <%--<button type="submit" class="btn" runat="server" style="display: none" OnClick="javascript:__doPostBack('ctl16','')"><asp:Localize meta:resourcekey="loginForm_Button"  runat="server" ID="Localize7" Text="" /></button>--%>
                            </div>
                                      
                        </div>
                    </div>
                        
                </div>

                <div class="col-sm-1 middle-border"></div>
                <div class="col-sm-1"></div>

                <div class="col-sm-5">

                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3><asp:Localize meta:resourcekey="registerForm_title"  runat="server" ID="Localize8" Text="" /></h3>
                                <p><asp:Localize meta:resourcekey="registerForm_paragraph"  runat="server" ID="Localize9" Text="" /></p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-pencil"></i>
                            </div>
                        </div>
                        <div id="registerDiv input" class="form-bottom">
                            <div role="form" class="registration-form">
                                <asp:Label ID="wrong" class="errorMessage" runat="server" Text=""></asp:Label>
                                <asp:Label ID="wrongPw" class="errorMessage" runat="server" Text=""></asp:Label>
                                <div class="form-group">
                                    <label class="sr-only" for="form-email"><asp:Localize meta:resourcekey="registerForm_labelEmail"  runat="server" ID="Localize10" Text="" /></label>
                                    <input type="text" name="form-email" placeholder="" class="form-email form-control" id="single_email" runat="server" meta:resourcekey="registerForm_inputEmail"/>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-first-name"><asp:Localize meta:resourcekey="registerForm_labelUserName"  runat="server" ID="Localize11" Text="" /></label>
                                    <input type="text" name="form-first-name" placeholder="" class="form-first-name form-control" id="singleName" runat="server" meta:resourcekey="registerForm_inputUserName"/>
                                </div>
                                <%--                       <div class="form-group">
                                    <label class="sr-only" for="form-last-name">Last name</label>
                                    <input type="text" name="form-last-name" placeholder="Last name..." class="form-last-name form-control" id="form-last-name">
                                </div>

                                <div class="form-group">
                                    <label class="sr-only" for="form-email">Email</label>
                                    <input type="text" name="form-email" placeholder="Confirm Email..." class="form-email form-control" id="form-email-confirm">
                                </div>--%>
                                <div class="form-group">
                                    <label class="sr-only" for="singlePw"><asp:Localize meta:resourcekey="registerForm_LabelPass"  runat="server" ID="Localize12" Text="" /></label>
                                    <asp:TextBox ID="singlePw" runat="server" TextMode="Password" placeholder="" class="form-email form-control" meta:resourcekey="registerForm_inputPass"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="s_confPw""><asp:Localize meta:resourcekey="registerForm_LabelConfPass"  runat="server" ID="Localize13" Text="" /></label>
                                    <asp:TextBox ID="s_confPw" name="s_confPw" runat="server" TextMode="Password" placeholder="" class="form-email form-control" meta:resourcekey="registerForm_inputConfPass"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="form-check-label" for="singleIsProvider" style="display:inline-flex; color:white; padding-left:0px">
                                    <input type="checkbox" name="form-checkbox" placeholder="" class="form-first-name form-control form-check-input" id="checkboxProvider" runat="server" style="margin-right: 10px; "><asp:Localize meta:resourcekey="registerForm_checkboxProvider"  runat="server" ID="Localize15" Text="" /></label>
                                </div>
                            </div>
                            <asp:LinkButton ID="regSingle" runat="server" class="btn btn-success" OnClick="Register_Single"><asp:Localize meta:resourcekey="registerForm_btnRegister"  runat="server" ID="Localize14" Text="" /></asp:LinkButton>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
 </div>
</asp:Content> 

<asp:Content ContentPlaceHolderID="ModalContent" runat="server">
    <div>
        <div class="b-popup" id="popup1" style="display: none;">
        <div class="b-popup-content" style="position: relative; height: 500px;">
            <p class="b-popup-text" style="line-height: 1.4;"><asp:Localize meta:resourcekey="popup_paragraph"  runat="server" ID="Localize16" Text="" /></p>
            <div style="display:block; margin: 0 auto;">
                <div> 
                    <input id="i_agree" type="checkbox" style="margin-left: -50px;"/>
                    <label style="display: inline-block; position: absolute;"><asp:Localize meta:resourcekey="popup_agree"  runat="server" ID="Localize17" Text="" /></label>
                </div>
                <%--<button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>--%>
                <button class="btn btn-success" OnClick="PopUpHide()"><asp:Localize meta:resourcekey="popup_close"  runat="server" ID="Localize18" Text="" /></button>
            </div>
        </div>
        </div>
    </div>
</asp:Content> 


<asp:Content ContentPlaceHolderID="ScriptsContent" runat="server">

    <script>
        var buttonLogin = document.getElementById('<%= btnLogin.ClientID %>');
        $(function () {
            $("#loginDiv input").keypress(function (e) {
                if (e.keyCode == 13) {
                    buttonLogin.click();
                }
            });
        });
        </script>

    <script>
        var checkboxProvider = document.getElementById('<%= checkboxProvider.ClientID %>');

        $(document).ready(function () {
            PopUpHide();
        });
        function PopUpShow() {
            $("#popup1").show();
        }
        function PopUpHide() {
            $("#popup1").hide();
            if (i_agree.checked) {
                checkboxProvider.checked = true;
            } else {
                checkboxProvider.checked = false;
            }
        }
    </script>

    <!-- Javascript -->
    <script src="assets/js/jquery.backstretch.min.js"></script>
    <script src="assets/js/scripts.js"></script>
    <script>  
        var eHasErrors = false;
        var pwHasErrors = false;

        $('#<%= single_email.ClientID %>').mouseout(function () {
            
            var text = $('#<%= single_email.ClientID %>').val();
            if (!validateEmail(text)) {
                <%--$("#<%= wrong.ClientID %>").text("Please enter a valid email *")--%>
                $("#<%= wrong.ClientID %>").text('<%= GetLocalResourceObject("enterValidEmail")%>');
                $("#<%= regSingle.ClientID %>").hide();
                eHasErrors = true;
            }

            else {
                if (pwHasErrors == false) {

                    $("#<%= regSingle.ClientID %>").show();

                }
                $("#<%= wrong.ClientID %>").text("");
                eHasErrors = false;

            }
        });

        $("#<%= s_confPw.ClientID %>").mouseout(function () {
            
            var text1 = $("#<%= s_confPw.ClientID %>").val();
            var text2 = $("#<%= singlePw.ClientID %>").val();
            if (!comparePWs(text1, text2)) {
                <%--$("#<%= wrongPw.ClientID %>").text("Passwords do not match *")--%>
                $("#<%= wrongPw.ClientID %>").text("<%= GetLocalResourceObject("enterValidPass")%>");
                $("#<%= regSingle.ClientID %>").hide();
                pwHasErrors = true;
            }

            else {
                if (eHasErrors == false) {

                    $("#<%= regSingle.ClientID %>").show();

                }
                $("#<%= wrongPw.ClientID %>").text("")
                pwHasErrors = false;
            }
        });


        function validateEmail(text) {
            var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
            return emailReg.test(text);
        }

        function comparePWs(text1, text2) {
            if (text1 != text2) {
                return false;
            }
            else {
                return true;
            }
        }
        </script>
    <script>
        function showPopup() {

        }
    </script>
    <script type="text/javascript" language="javascript">
        var numOfClick = 0;
        $(document).ready(function () {
            $(checkboxProvider).click(function () {
                numOfClick = numOfClick + 1;

                if (checkboxProvider.checked == true) {

                    PopUpShow();
                }
            });
        });
    </script>
    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->
</asp:Content>