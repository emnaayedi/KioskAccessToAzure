<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" EnableEventValidation="false" Inherits="AccessForKioskReport.RedirectToPDF" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  

      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1"/>

    <link href="Styles.css" rel="stylesheet" type="text/css" />
 <script>
     function LoadDoucment () {
         var file = '<%=URL%>';
         window.location.href = "/reports/" + file;
     }

 </script>
 
    <title></title>  
</head>  
<body onload="LoadDoucment()" >

</body>  
</html>  
