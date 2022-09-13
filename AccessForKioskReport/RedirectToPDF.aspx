<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <link href="Styles.css" rel="stylesheet" type="text/css" />

    <title></title>  
</head>  
<body> 
<div style="position: absolute; overflow: hidden; left: 0px; top: 0px; border: solid 2px #555; width:594px; height:332px;">
<div style="overflow: hidden; margin-top: -100px; margin-left: -25px;">
</div>

     <iframe runat="server" class="iframe" id="iframe" scrolling="no" frameborder="0" style="border:none; overflow:scroll;position:absolute; width:100%; height:100vh" ></iframe>
       
        </div></div>
</body>  
</html>  