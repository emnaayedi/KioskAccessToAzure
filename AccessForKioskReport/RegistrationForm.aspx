﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="AccessForKioskReport.RegistrationForm" %>

  
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <meta name="viewport" content = "width =device-width, initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no"/>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
    <title></title>  
</head>  
<body> 
<div class="back">


  <div class="div-center">


    <div class="content container-fluid">
      <form runat="server">
       
        <div class="form-group d-flex align-items-center">
            <div class="d-inline-block">
         <img class="col-6" src="/images/aquila-logo.png"  >
                <img class="col-6 img" src="/images/aquila.png" />
            </div></div>
          <div class="form-group  d-flex align-items-center">
          <asp:TextBox type="password" class="form-control textbox" id="TextBox3" placeholder="Password" runat="server" required="true"/>
        </div>
          <div class="form-group  d-flex align-items-center">
        <asp:Button type="submit" id="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Login"/>
              </div>
      </form>

    </div>


</div>  </div>
    

</body>  
</html>  