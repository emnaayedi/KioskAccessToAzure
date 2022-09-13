<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="AccessForKioskReport.RegistrationForm" %>

  
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <link href="Styles.css" rel="stylesheet" type="text/css" />

    <title></title>  
</head>  
<body> <div class="layout">
    <div class="center">
    <form id="form1" runat="server">  
        <div>  
            <table class="auto-style1">  
          
                <tr>  
                    <td> Password</td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr>  
           
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>  
        </div></div>
</body>  
</html>  