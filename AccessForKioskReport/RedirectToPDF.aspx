<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  


    <link href="Styles.css" rel="stylesheet" type="text/css" />
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
   
     <script>
         document.getElementById("iframe").contentWindow.onload = function () {
             this.document.getElementsByTagName("img")[0].style.height = "100%";
         };
</script>
    <title></title>  
</head>  <body>    <form><div id="wrapper" style="width: 100%; height: 100%; overflow: auto; -webkit-overflow-scrolling: touch;">
    <iframe runat="server" class="iframe" type="application/pdf"   scrolling="no" id="iframe" frameborder="0" width="1000" height="600"  ></iframe>
           </div> 
        </form>
</body>  
</html>  
