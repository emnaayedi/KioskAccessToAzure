<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  

      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1"/>

    <link href="Styles.css" rel="stylesheet" type="text/css" />
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
   
     <script>
         $("#iframe").on("load", function (e) {
             $("#eIphoneHack", document.getElementById("eInnerWnd").contentWindow.document).css("display", "none").css("display", "initial");
         }
        
     </script>
    <title></title>  
</head>  <body>    <form><div id="scroll-wrapper" >
    <iframe runat="server" class="iframe"    allowtransparency="true" id="iframe" frameborder="0"   >
      
    </iframe>
      <span id="eIphoneHack"></span>
           </div> 
        </form>
</body>  
</html>  
