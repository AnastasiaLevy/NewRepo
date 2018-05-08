<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LondonCreate.aspx.cs" Inherits="TestSite.Create.LondonCreate" 
    culture="auto" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/bootstrap/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>   
    <section id="">

        <div class="box box1">
            <div class="col-lg-12">
                <hr />
                <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="title"  runat="server" ID="Localize48" Text="" />
                            <strong><asp:Localize meta:resourcekey="strong"  runat="server" ID="Localize1" Text="" /></strong>
                </h2>
                <hr />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Copy all" />
            </div>
        </div>
    </section>

    <section id="testInstructions">
        <div class="row ">
            <div class="box">
                <asp:CheckBox ID="CheckBox2" runat="server"  Text="Whole Test"/>
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Instructions"/>
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Parameters"/>

                <asp:CheckBox ID="CheckBox5" runat="server" Text="Instructions"/>
                <div class="clearfix"></div>
            </div>
        </div>
    </section>

</asp:Content>
