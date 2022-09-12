<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <link href="Styles.css" rel="stylesheet" type="text/css" />

    <title></title>  
</head>  
<body> 
    <div >

     <iframe runat="server" class="iframe" id="iframe" scrolling="yes" frameborder="0" style="border:none; overflow:scroll;position:absolute; width:100%; min-height:100%;" ></iframe>
       
        </div>
</body>  
</html>  