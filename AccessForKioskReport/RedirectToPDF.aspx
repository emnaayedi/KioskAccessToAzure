<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <link href="Styles.css" rel="stylesheet" type="text/css" />

    <title></title>  
</head>  
<body > 
 
    <iframe runat="server" class="iframe" type="application/pdf" id="iframe" frameborder="0" allowfullscreen="true" style="height:100%; width:100%;"></iframe>
</body>  
</html>  
<script>
    $('#iframe').hide();
    var pdfFrame = document.getElementById('iframe');
    pdfFrame.contentWindow.location.replace(PDF_URL);
    $('#iframe').on('load', function () {
        $('#iframe').show();
        var documentWidth = $(document).width()
        var scale = (documentWidth / width) * 0.95;
        $('#iframe').css("-webkit-transform", "scale(" + scale + ")");
    });
</script>