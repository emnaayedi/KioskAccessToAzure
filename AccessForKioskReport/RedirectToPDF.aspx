<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  

      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1"/>

    <link href="Styles.css" rel="stylesheet" type="text/css" />
   <script>
       $(document).ready(function () {
           $("#iframe").load(function () { setTimeout(function () { $(".inputforfocus").focus(); }, 100); });
       });
   </script>
   <%--  <script>
         $("#iframe").on("load", function (e) {
             $("#eIphoneHack", document.getElementById("iframe").contentWindow.document).css("display", "none").css("display", "initial");
         }
        --%>
<%--     </script>--%>
    <title></title>  
</head>  <body>    <form><div id="scroll-wrapper"  style="overflow:auto;-webkit-overflow-scrolling:touch">
    <iframe runat="server" height="100%" width="100%"  type="application/pdf"               scrolling="auto"
 allowtransparency="true" id="iframe"   >

    </iframe>                  <input type="hidden" class="inputforfocus"/>


      <span id="eIphoneHack"></span>
           </div> 
        </form>
</body>  
</html>  
