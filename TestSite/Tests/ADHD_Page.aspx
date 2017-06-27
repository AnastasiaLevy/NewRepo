<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADHD_Page.aspx.cs" Inherits="TestSite.Tests.ADHD_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlRelationships" runat="server"></asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
    </div>
        <asp:Literal ID="questHtml" runat="server"></asp:Literal>
    </form>
</body>
</html>
