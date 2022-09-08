<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectToPDF.aspx.cs" Inherits="KioskAccessToAzure.RedirectToPDF" %>

<%
    Response.RedirectLocation = "https://pdfreportsaquila.blob.core.windows.net/soaktestreports/Kiosk_Report_2022_09_06_1131.pdf?sp=r&st=2022-09-08T16:14:12Z&se=2022-09-09T00:14:12Z&spr=https&sv=2021-06-08&sr=b&sig=D9Sk8U0oqgY2AAkKE7xRqvC%2BQUdT5J7sCXBmBqa6r5M%3D";
    Response.StatusCode = 301;   //   301 = Moved Permanently   |   302 = Object moved   |   307 = Temporary redirect
%>