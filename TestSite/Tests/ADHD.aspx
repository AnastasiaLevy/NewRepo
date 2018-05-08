<%@ Page Title="" Language="C#" MasterPageFile="~/TestPage.Master" AutoEventWireup="true" CodeBehind="ADHD.aspx.cs" Inherits="TestSite.Tests.ADHD"  
    culture="auto" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tags" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="testName" runat="server">
    <asp:Localize meta:resourcekey="Content3"  runat="server" ID="Localize48" Text="" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="testDescription" runat="server">
    <asp:Localize meta:resourcekey="Content4"  runat="server" ID="Localize1" Text="" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentAbout" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contentMeasure" runat="server">
    <ul>
        <li>
            <p><asp:Localize meta:resourcekey="Content6_paragraph1"  runat="server" ID="Localize2" Text="" /></p>
        </li>
        <li>
            <p><asp:Localize meta:resourcekey="Content6_paragraph2"  runat="server" ID="Localize3" Text="" /></p>
        </li>
        <li>
            <p><asp:Localize meta:resourcekey="Content6_paragraph3"  runat="server" ID="Localize4" Text="" /></p>
        </li>
        <li>
            <p><asp:Localize meta:resourcekey="Content6_paragraph4"  runat="server" ID="Localize5" Text="" /> </p>
        </li>
        <li>
            <p><asp:Localize meta:resourcekey="Content6_paragraph5"  runat="server" ID="Localize6" Text="" /></p>
        </li>
        <li>
            <p><asp:Localize meta:resourcekey="Content6_paragraph6"  runat="server" ID="Localize7" Text="" /></p>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="contentDetails" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="contentResearch" runat="server">

    <p><asp:Localize meta:resourcekey="Content8_paragraph1"  runat="server" ID="Localize8" Text="" /></p>

    <p><asp:Localize meta:resourcekey="Content8_paragraph2"  runat="server" ID="Localize9" Text="" /></p>

    <p><asp:Localize meta:resourcekey="Content8_paragraph3"  runat="server" ID="Localize10" Text="" /></p>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="sampleReport" runat="server">
   <p class="report"> <asp:LinkButton ID="report" runat="server" OnClick="report_Click"><asp:Localize meta:resourcekey="Content9_linkbutton"  runat="server" ID="Localize11" Text="" /></asp:LinkButton></p>
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="price" runat="server">
    
        <section id="price" runat="server">
            <div id="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="circle c1 img-circle" id="singlePr" runat="server">
                                <h4 class="blue"><asp:Localize meta:resourcekey="price_single_title"  runat="server" ID="Localize12" Text="" /></h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">5</span>
                                <span class="price-small">.00</span>
                                <p><asp:Localize meta:resourcekey="price_single_title"  runat="server" ID="Localize13" Text="" /></p>
                                <asp:Button ID="single" class="btn btn-info" runat="server" onClick="single_Click" Text="Buy Now" meta:resourcekey="price_single_btn" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c2 img-circle">
                                <h4 class="yellow"><asp:Localize meta:resourcekey="price_ten_title"  runat="server" ID="Localize14" Text="" /></h4>
                                <span class="icon yellow"><i class="fa fa-usd"></i></span>
                                <span class="price-large yellow">40</span>
                                <span class="price-small">.00</span>
                                <p><asp:Localize meta:resourcekey="price_ten_paragraph"  runat="server" ID="Localize15" Text="" /></p>
                                <asp:Button ID="ten" class="btn btn-warning" runat="server" OnClick="ten_Click" Text="Buy Now" meta:resourcekey="price_ten_btn" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c3 img-circle">
                                <h4 class="green"><asp:Localize meta:resourcekey="price_hundred_title"  runat="server" ID="Localize17" Text="" /></h4>
                                <span class="icon green"><i class="fa fa-usd "></i></span>
                                <span class="price-large green">80</span>
                                <span class="price-small">.00</span>
                                <p><asp:Localize meta:resourcekey="price_hundred_paragraph"  runat="server" ID="Localize16" Text="" /></p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" OnClick="hundred_Click" Text="Buy Now" meta:resourcekey="price_hundred_btn" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c4 img-circle">
                                <h4 class="red"><asp:Localize meta:resourcekey="price_unlim_title"  runat="server" ID="Localize18" Text="" /></h4>
                                <span class="icon red"><i class="fa fa-usd "></i></span>
                                <span class="price-large red">499</span>
                                <span class="price-small">.00</span>
                                <p>
                                    <asp:Localize meta:resourcekey="price_unlim_paragraph"  runat="server" ID="Localize19" Text="" />
                                <p>


                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server" OnClick="unlim_Click" Text="Buy Now" meta:resourcekey="price_unlim_btn" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->
                    </div>
                    <!-- .Container ends here -->
                </div>
                <!-- .Row ends here -->
            </div>
        </section>

</asp:Content>
