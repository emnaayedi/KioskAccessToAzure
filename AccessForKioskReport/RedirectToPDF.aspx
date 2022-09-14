<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  

<head runat="server">  
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>


    <link href="Styles.css" rel="stylesheet" type="text/css" />
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <style>
      #container { overflow: auto; -webkit-overflow-scrolling: touch; height:500px; }
    </style>
  <%--   <script>
         document.getElementById("iframe").contentWindow.onload = function () {
             this.document.getElementsByTagName("img")[0].style.width = "100%";
         };
</script>--%>
    <title></title>  
</head>  <body>    <form>    <div id="container">    <embed runat="server" class="iframe" type="application/pdf"   scrolling="auto" id="iframe" frameborder="0" allowfullscreen="true"  />
           </div> 
        </form>
</body>  
</html>  
