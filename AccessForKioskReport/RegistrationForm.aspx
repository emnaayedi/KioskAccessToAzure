<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="AccessForKioskReport.RegistrationForm" %>

  
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <link href="Styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("[id*=Button1]").click(function () {
            $("[id*=hfGridHtml]").val($(".Container").html());
        });
    });
</script>
    <title></title>  
</head>  
<body> <div class="layout">
  
    <div class="center">
    <form id="form1" runat="server">  
          <div id="logo"></div>
        <div id="logo2"></div>
        <div>  
            <table class="auto-style1">  
<%--                <tr><td><p id="title">Login</p></td></tr>--%>
                <tr >  
                    <td> 
<%--                        <image src="images/lock.png" id="lockimage"></image>   --%>
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
            <asp:HiddenField ID="hfGridHtml" runat="server" />

    </form>  
        </div></div>
      <asp:Panel ID="Panel1" runat="server" hidden="true" CssClass="Container">
   <iframe runat="server" height="100%" width="100%" target='blank'  type="application/pdf" scrolling="auto"  id="iframe">     
    </iframe>
        </asp:Panel>

</body>  
</html>  