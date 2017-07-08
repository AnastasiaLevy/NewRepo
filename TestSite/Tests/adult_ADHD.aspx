<%@ Page Title="" Language="C#" MasterPageFile="~/TestPage.Master" AutoEventWireup="true" CodeBehind="adult_ADHD.aspx.cs" Inherits="TestSite.Tests.adult_ADHD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tags" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="testName" runat="server">
    COOLIDGE CORRECTIONAL INVENTORY (CCI)
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="testDescription" runat="server">
    The CCI is a 250 item, self-report, psychological and neuropsychological inventory based on the current Diagnostic and Statistical Manual of Mental Disorders (DSM-IV-TR). Designed for the assessment of correctional inmates and juvenile offenders (15 years and older). The CCI was created (a) to be a cost-effective measure of psychological problems, (b) to be a DSM-IV-TR aligned measure of Axis I clinical syndromes and Axis II personality disorders, (c) to measure neuropsychological symptoms such as memory problems, inattention, language dysfunction, and neurosomatic problems, and neuropsychological syndromes such as neurocognitive disorder, adult ADHD, and executive function deficits of the frontal lobes, and (d) to allow the differential diagnosis of those inmates who have clinically diagnosable syndromes from those who do not. Each of the 250 items is answered on a 4-point Likert-type scale ranging from 1 (strongly false), 2 (more false than true), 3 (more true than false), to 4 (strongly true). The CCI has been normed on and tested with thousands of criminal offenders. Another unique feature of the CCI is that it has a reliable and valid significant-other form.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentAbout" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contentMeasure" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="contentDetails" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="contentResearch" runat="server">
    ESSENTIAL REFERENCE

    <p>Coolidge, F. L., Segal, D. L., Klebe, K. J., Cahill, B. S., & Whitcomb, J. M. (2009). Psychometric properties of the Coolidge Correctional Inventory in a sample of 3,962 prison inmates. Behavioral Sciences and the Law, 27, 713-726. [click <a target="_blank" href="/content/CCI/CCI 2009.pdf">here</a> for PDF copy]</p>



    <p>OTHER CCI RESEARCH AND PUBLICATIONS</p>

    <p>Evaluation of Sexual Offenders</p>
    <p>Francia, C. A., Coolidge, F. L., White, L. A., Segal, D. L., Cahill, B. S., & Estey, A. J. (2010). Personality disorder profiles in incarcerated male rapists and child molesters. American Journal of Forensic Psychology, 28, 1-14. [click <a target="_blank" href="/content/CCI/Francia and Coolidge et al AJFP 2010.pdf">here</a> for PDF copy]</p>

    <p>Psychological Evaluation of Dictators/Mad Persons</p>
    <p>Coolidge, F. L., & Segal, D. L. (2009). Is Kim Jong-il like Saddam Hussein and Adolf Hitler? A personality disorder evaluation. Behavioral Sciences of Terrorism and Political Aggression, 1, 195-202. [click <a target="_blank" href="/content/CCI/Kim-Jong-il 2009.pdf">here</a> for PDF copy]</p>

    <p>Coolidge, F. L., Davis, F. L., & Segal, D. L. (2007). Understanding madmen: A DSM-IV assessment of Adolf Hitler. Individual Differences Research, 5, 30-43. [click <a target="_blank" href="/content/CCI/Hitler- Final Copy 2007.pdf">here</a> for PDF copy]</p>

    <p>Coolidge, F. L., & Segal, D. L. (2007). Is Saddam Hussein like Adolf Hitler? A personality disorder investigation. Military Psychology, 19, 1-11. [click <a target="_blank" href="/content/CCI/Hussein and Hitler 2007 Military Psychology.pdf">here</a> for PDF copy]</p>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="sampleReport" runat="server">
   <p class="report"> <asp:LinkButton ID="report" runat="server" OnClick="report_Click">Sample report</asp:LinkButton></p>
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
