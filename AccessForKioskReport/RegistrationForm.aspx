<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="AccessForKioskReport.RegistrationForm" %>

  
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <link href="Styles.css" rel="stylesheet" type="text/css" />

    <title></title>  
</head>  
<body> <div class="layout">
    <div id="logo"></div>
        <div id="logo2"></div>
    <div class="center">
    <form id="form1" runat="server">  
        <div>  
            <table class="auto-style1">  
                <tr><td><p id="title">Login</p></td></tr>
                <tr >  
                    <td>  <image src="images/lock.png" id="lockimage"></image>   
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" placeholder="Password" TextMode="Password"></asp:TextBox>  
                 </td>  
                </tr>  
           
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>  
        </div></div>
</body>  
</html>  