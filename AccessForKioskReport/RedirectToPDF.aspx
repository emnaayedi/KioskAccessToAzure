<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <link href="Styles.css" rel="stylesheet" type="text/css" />

    <title></title>  
</head>  
<body> 


    <iframe runat="server" class="iframe" type="application/pdf" id="iframe" frameborder="0" allowfullscreen="true" style="height:100%; width:100%;"></iframe>
       
</body>  
</html>  
