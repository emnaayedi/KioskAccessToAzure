<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  

      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1"/>

    <link href="Styles.css" rel="stylesheet" type="text/css" />
 <script>
  /*   $(document).ready(function () {*/
     function loadPDF() {
         var path = '<%=URL%>';
         var token = '<%=TOKEN%>';

         //window.location.href = path;
         //let stateObj = {
         //   TOKEN : "",
         //}

         //history.replaceState(stateObj, TOKEN, "")
         //window.history.back();
        
     };

 </script>
 
    <title></title>  
</head>  
<body onload="loadPDF()">
<%--    <form>--%>
<%--<div id="scroll-wrapper"  style="overflow:auto;-webkit-overflow-scrolling:touch">--%>
   <iframe runat="server" height="100%" width="100%" target="_blank"  type="application/pdf" scrolling="auto"  id="iframe"   >
      
    </iframe>
    <%--  <span id="eIphoneHack"></span>
           </div> --%>
<%--        </form>--%>
</body>  
</html>  
