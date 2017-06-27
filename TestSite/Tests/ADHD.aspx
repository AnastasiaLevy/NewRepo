<%@ Page Title="" Language="C#" MasterPageFile="~/TestPage.Master" AutoEventWireup="true" CodeBehind="ADHD.aspx.cs" Inherits="TestSite.Tests.ADHD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tags" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="testName" runat="server">
    COOLIDGE PERSONALITY AND NEUROPSYCHOLOGICAL INVENTORY FOR CHILDREN (CPNI)
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="testDescription" runat="server">
    The CPNI is designed to assess psychopathology and neuropsychological dysfunction in children and adolescents ages 5 to 17 years old. The CPNI is a 200-item, parent-as-respondent inventory that assesses over 35 clinical and neuropsychological disorders, and it is aligned with the diagnoses in DSM-5, including 10 childhood personality disorders, conduct disorder, ADHD, oppositional defiant disorder, separation anxiety disorder, depression, maturational delay, autism, gender dysphoria, and neurocognitive dysfunction.The CPNI norms are based on 780 children and adolescents (30 boys and 30 girls at each age level from 5 to 17 years old).
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentAbout" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contentMeasure" runat="server">
    <ul>
        <li>
            <p>9 childhood personality disorders (and Conduct Disorder) from criteria in DSM-5. </p>
        </li>
        <li>
            <p>Major Clinical Syndromes including Major Depressive Disorder, Generalized Anxiety Disorder, Attention-Deficit Hyperactivity Disorder, Oppositional Defiant Disorder, Separation Anxiety Disorder, Gender Dysphoria, Autism, Anorexia, Bulimia, and others.  </p>
        </li>
        <li>
            <p>A General Neuropsychological Deficits Scale with 8 subscales assessing Learning Difficulties, Memory Problems, and others </p>
        </li>
        <li>
            <p>Executive Dysfunctions of the Frontal Lobe scale (with 3 subscales).  </p>
        </li>
        <li>
            <p>11 Clinical Scales assessing psychotic thinking, aggression, emotional coldness, sleep disturbances, social anxiety, self-esteem, paranoia, apathy, hostility.</p>
        </li>
        <li>
            <p>A Validity Scale which assesses excessive denial and malingering.</p>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="contentDetails" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="contentResearch" runat="server">

    <p>Coolidge, F. L., DenBoer, J. W., & Segal, D. L. (2004). Personality and neuropsychological correlates of bullying behavior: An empirical investigation. Personality and Individual Differences, 36, 1559-1569. [click here for PDF copy]</p>

    <p>Coolidge, F. L., Thede, L. L. & Young, S. E. (2002). The heritability of gender identity disorder in a child and adolescent twin sample. Behavior Genetics, 32, 251-257. [click here for PDF copy]</p>

    <p>Coolidge, F. L., Thede, L. L., Stewart, S. E., & Segal, D. L. (2002). The Coolidge Personality and Neuropsychological Inventory for Children (CPNI): Preliminary psychometric characteristics. Behavior Modification, 26, 550-566. [click here for PDF copy]</p>
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
                                <asp:Button ID="ten" class="btn btn-warning" runat="server" OnClick="ten_Click" Text="Call Us" />
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
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" OnClick="hundred_Click" Text="Call Us" />
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


                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server" OnClick="unlim_Click" Text="Call Us" />
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
