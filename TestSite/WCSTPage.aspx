<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WCSTPage.aspx.cs" Inherits="TestSite.WCSTPage" %>

<!DOCTYPE html>


<html>
<head>
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link href="cogTest.css" rel="stylesheet" />
    <link href="css/wcst.css" rel="stylesheet" />
    <title>WCST</title>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <script src="Scripts/underscore-min.js"></script>
    <script src="js/wcst.js"></script>
</head>
<body>
    <form runat="server">
          <asp:TextBox ID="userId" runat="server"  hidden="true"></asp:TextBox>
        <asp:TextBox ID="tId" runat="server" hidden="true"></asp:TextBox>
        <div id="wsct">
            <div class="variants"></div>
            <div class="answers"></div>
            <div class="qst"></div>
            <div id="msg"></div>
        </div>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                $('#wsct').wsct({
                    'variants': 'variants',
                    'answers': 'answers',
                    'question': 'qst'
                });
            });
		</script>
    </form>
</body>
</html>

