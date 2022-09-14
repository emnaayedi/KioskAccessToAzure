<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  

      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1"/>

    <link href="Styles.css" rel="stylesheet" type="text/css" />
  <%-- <script>
       $(document).ready(function () {
           $("#iframe").load(function () {
               var iframe = $("#iframe");
               var newWindow = window.open(iframe.attr(src), 'Dynamic Popup', 'height=' + iframe.height() + ', width=' + iframe.width() + 'scrollbars=auto, resizable=no, location=no, status=no');
               newWindow.document.write(iframe[0].outerHTML);
               newWindow.document.close();
               iframe[0].outerHTML = ''; // to remove iframe in page.});
       });
   </script>--%>
   <%--  <script>
         $("#iframe").on("load", function (e) {
             $("#eIphoneHack", document.getElementById("iframe").contentWindow.document).css("display", "none").css("display", "initial");
         }
        --%>
<%--     </script>--%>
    <title></title>  
</head>  
<body>
<%--    <form>--%>
<%--<div id="scroll-wrapper"  style="overflow:auto;-webkit-overflow-scrolling:touch">--%>
    <iframe runat="server" height="100%" width="100%" target='_blank'  type="application/pdf" scrolling="auto"  id="iframe"   >
      
    </iframe>
    <%--  <span id="eIphoneHack"></span>
           </div> --%>
<%--        </form>--%>
</body>  
</html>  
