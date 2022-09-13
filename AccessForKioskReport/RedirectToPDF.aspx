<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <script>
        $(document).ready(function () {
            $("#iframe").load(function () { setTimeout(function () { $(".inputforfocus").focus(); }, 100); });
        });
    </script>
    <link href="Styles.css" rel="stylesheet" type="text/css" />

    <title></title>  
</head>  
<body > 
     <input type="hidden" class="inputforfocus"/>
 
    <iframe runat="server" class="iframe" type="application/pdf" scrolling="auto" id="iframe" frameborder="0" allowfullscreen="true" style="height:100%; width:100%;"  referrerpolicy="no-referrer" ></iframe>
<script>
    document.getElementById("iframe").contentWindow.onload = function () {
        this.document.getElementsByTagName("img")[0].style.width = "100%";
    };
</script>
</body>  
</html>  
