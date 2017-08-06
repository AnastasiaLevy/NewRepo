<%@ Page Title="" Language="C#" MasterPageFile="~/TestPage.Master" AutoEventWireup="true" CodeBehind="Personality.aspx.cs" Inherits="TestSite.Tests.Personality" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tags" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="testName" runat="server">
    The Short-Form of the Coolidge Axis II Inventory (SCATI)
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="testDescription" runat="server">
    The SCATI is a 70-item inventory that assesses five primary criteria for 14 personality disorders, according to DSM-IV-TR (12 personality disorders) and DSM-III-R (sadistic and self-defeating personality disorders). There are three versions: a self-report form, and two significant other forms (one for reporting about a male adult and one for reporting about a female adult). The SCATI has demonstrated reliability and validity, and it has been designed and normed on adults ages 15 and older. The SCATI can be used to assess the presence of personality disorders and differentiate among 14 personality disorders.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentAbout" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contentMeasure" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="contentDetails" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="contentResearch" runat="server">
    <p>Coolidge, F. L., Segal, D. L., Cahill, B. S. & Simenson, J. T. (2010). Psychometric properties of a brief inventory for the screening of personality disorders: The SCATI. Psychology and Psychotherapy: Theory, Research and Practice, 83, 395-405. doi:10.1348/147608310X486363. [click <a target="_blank" href="/content/SCATI/Coolidge et al 2010 SCATI.pdf">here</a> for PDF copy]</p>

    <p>Watson, D. C., & Sinha, B. K. (2007). A normative study of the Coolidge axis‐II inventory, short form. Psychology and Psychotherapy: Theory, Research and Practice, 80(3), 437-441. [click <a target="_blank" href="/content/SCATI/Sinha and Watson 2007 SCATI.pdf">here</a> for PDF copy]</p>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="sampleReport" runat="server">
        		
  <p class="report"> <asp:LinkButton ID="report" runat="server"
       OnClick="report_Click">Sample report</asp:LinkButton></p>

</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="price" runat="server">

            <section id="price" runat="server">
            <div id="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="circle c1 img-circle" id="singlePr" runat="server">
                                <h4 class="blue">Single Test</h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">5</span>
                                <span class="price-small">.00</span>
                                <p>One Time Run</p>
                                <asp:Button ID="single" class="btn btn-info" runat="server" onClick="single_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c2 img-circle">
                                <h4 class="yellow">Set of 10</h4>
                                <span class="icon yellow"><i class="fa fa-usd"></i></span>
                                <span class="price-large yellow">40</span>
                                <span class="price-small">.00</span>
                                <p>Small Project</p>
                                <asp:Button ID="ten" class="btn btn-warning" runat="server" OnClick="ten_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c3 img-circle">
                                <h4 class="green">Set of 100</h4>
                                <span class="icon green"><i class="fa fa-usd "></i></span>
                                <span class="price-large green">80</span>
                                <span class="price-small">.00</span>
                                <p>Medium Size Project</p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" OnClick="hundred_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c4 img-circle">
                                <h4 class="red">Unlimited Use</h4>
                                <span class="icon red"><i class="fa fa-usd "></i></span>
                                <span class="price-large red">499</span>
                                <span class="price-small">.00</span>
                                <p>
                                    Any Number of Participants
                                <p>


                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server" OnClick="unlim_Click" Text="Buy Now" />
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
