<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passwordreset.aspx.cs" Inherits="bgroup9.passwordreset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="presetcss.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            left: 1%;
            top: 0%;
        }
        .auto-style2 {
            width: 430px;
            height: 684px;
            position: absolute; /*transform: translate(-50%,-50%);*/
            left: 50%;
            top: 50%;
        }
    </style>
</head>
<body>
    <div class="auto-style2">
        <!-- <div class="shape"></div>-->
        <!--<div class="shape"></div>-->
   
    <form id="form2" runat="server" class="auto-style1">
        <h3>Reset Password</h3>
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter valid user name" ForeColor="Red" ValidationExpression="^[A-Z][a-zA-Z|\s]*$"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtusername" runat="server" CssClass="input"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Phone no"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="Please enter 10 digits" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtphone" runat="server" CssClass="input" TextMode="Phone"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="         Wrong mail pattern" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtemail" runat="server" CssClass="input" TextMode="Email"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Password" ></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="Password must contain atleast 6 characters: uppercase,lowercase , digits and special character" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtpass" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="Password do not match" ForeColor="Red"></asp:CompareValidator>
        <asp:TextBox ID="txtcpass" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
        <div class="button">
            <asp:Button ID="Button1" runat="server" Text="Ok" OnClick="Button1_Click" CssClass="button" />
        </div>
        <br />
        
     </form>
      </div>
    
</body>
</html>


