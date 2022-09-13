<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  


    <link href="Styles.css" rel="stylesheet" type="text/css" />
  <%--   <script>
         document.getElementById("iframe").contentWindow.onload = function () {
             this.document.getElementsByTagName("img")[0].style.width = "100%";
         };
</script>--%>
    <title></title>  
</head>  <body>    <iframe runat="server" class="iframe" type="application/pdf"   scrolling="auto" id="iframe" frameborder="0" allowfullscreen="true" style="height: -webkit-fill-available;width: -webkit-fill-available" ></iframe>
            

</body>  
</html>  
