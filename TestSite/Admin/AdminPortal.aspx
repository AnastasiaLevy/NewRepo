<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPortal.aspx.cs" Inherits="TestSite.Admin.AdminPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../cogTest.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div><asp:Localize meta:resourcekey="container_title1"  runat="server" ID="Localize2" Text="" /></div>
            <div>
                <asp:GridView ID="gvUsers" runat="server" CellPadding="20" RowStyle-Height="40px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"  ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                    <Columns>

                        <asp:TemplateField HeaderText="Make Provider" HeaderStyle-Width="20%" ItemStyle-Width="20%" meta:resourcekey="container_gvUsers_columns1"
                            FooterStyle-Width="10%">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="Make Provider" CausesValidation="false" ID="lbRemoveTestFromUserList" OnClick="makeProvider_Click" meta:resourcekey="container_gvUsers_LinkBtn1"></asp:LinkButton>
                            </ItemTemplate>

                            <FooterStyle Width="10%"></FooterStyle>
                            <HeaderStyle Width="10%"></HeaderStyle>
                            <ItemStyle Width="10%"></ItemStyle>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="Make Provider" HeaderStyle-Width="20%" ItemStyle-Width="20%" meta:resourcekey="container_gvUsers_TemplateField"
                            FooterStyle-Width="10%">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="Reset Password" CausesValidation="false" meta:resourcekey="container_gvUsers_LinkBtn2"
                                    ID="resetPw" OnClick="lbRemoveTestFromUserList_Click"></asp:LinkButton>
                            </ItemTemplate>

                            <FooterStyle Width="10%"></FooterStyle>
                            <HeaderStyle Width="10%"></HeaderStyle>
                            <ItemStyle Width="10%"></ItemStyle>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>

            </div>
            <div ><asp:Localize meta:resourcekey="container_title2"  runat="server" ID="Localize1" Text="" />
                <div>
                    <asp:GridView ID="gvProviderTests" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </div>

            </div>
            <div><asp:Localize meta:resourcekey="container_title3"  runat="server" ID="Localize3" Text="" /></div>
            <div class="row">
                <asp:DropDownList ID="ddlProviders" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="ddlTests" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="ddlOptions" runat="server"></asp:DropDownList>
                <asp:TextBox ID="txtNumLeft" runat="server"></asp:TextBox>
                <asp:Button ID="btnAssign" runat="server" Text="Assign" onClick="btnAssign_Click" />
            </div>
            <div><asp:Localize meta:resourcekey="container_title4"  runat="server" ID="Localize4" Text="" /></div>
            <div>
                <asp:GridView ID="gvMessages" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
            <div><asp:Localize meta:resourcekey="container_title5"  runat="server" ID="Localize5" Text="" /></div>
            <div>
                <asp:GridView ID="gvErrors" runat="server" OnPageIndexChanging="OnPaging" PageSize="5" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                    <PagerSettings Mode="Numeric"
                        Position="Bottom"
                        PageButtonCount="10" />

                    <PagerStyle BackColor="LightBlue"
                        Height="30px"
                        VerticalAlign="Bottom"
                        HorizontalAlign="Center" />

                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
