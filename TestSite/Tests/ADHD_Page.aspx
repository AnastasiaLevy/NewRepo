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
<script src="../js/jquery.js"></script>
<script>

    $(".fg-button").on('click', function (e) {
        var paramString = "";
     
        e.preventDefault();
        if (!isValidForm()) {
            alert("Show error message here");
        }
        else {
            for (i = 1; i < 10; i++) {
                var name = "q" + i;
                var value = $('input[name="' + name + '"]:checked').val();
           
                    paramString += name + ':' + value + ';';
            }
        }
        PostValues(paramString);
      
    });

    function PostValues(data)
    {
        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'ADHD_Page.aspx/GetParams',
          
            data: JSON.stringify({
                paramString: data,
                api_transaction_id: $('input[name="api_transaction_id"]').val(),
                api_patient_id: $('input[name="api_patient_id"]').val(),
            }),
            type: 'POST',
            success: function (resp) {
             alert("")
            },
            error: function (resp) {
                alert("The results were not saved correctly");

            }
        });
    }
    //$(".fg-button").click(function (e) {

    //    for (i= 1; i < 50; i ++)
    //    {
    //        var name = "q" + i;
    //        alert($('input[name="' + name + '"]:checked').val())
    //        var t= isValidForm();
    //            e.preventDefault(); //prevent the default action


    //    }

    function isValidForm() {
        var clean = true;
        for (i = 1; i < 10; i++) {
            var name = "q" + i;
            var value = $('input[name="' + name + '"]:checked').val();
            if (!value) {
                var field = $('#' + name).closest('tr');
                field.css('background-color', 'red');

                clean = false;
            }
        }
        return clean;


    }
</script>
