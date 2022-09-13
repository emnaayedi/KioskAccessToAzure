<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <link href="Styles.css" rel="stylesheet" type="text/css" />

    <title></title>  
</head>  
<body> 
    

               <iframe runat="server" class="iframe" id="iframe" allow="fullscreen" loading="lazy" scrolling="auto" frameborder="0" style="height:100%; width:100%;"></iframe>


</body>  
</html>  
<script>
    document.getElementById("iframe").contentWindow.onload = function () {
        this.document.getElementsByTagName("img")[0].style.width = "100%";
    };
</script>