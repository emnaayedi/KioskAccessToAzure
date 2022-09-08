<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistraionForm.aspx.cs" Inherits="KioskAccessToAzure.RegistraionForm" %>  
  
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
</head>  
<body>  
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
</body>  
</html>  