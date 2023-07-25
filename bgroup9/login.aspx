<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="bgroup9.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href ="loginstylesheet.css" rel="stylesheet" />
    <title></title>
    </head>
<body>
    <div class="background">
        <!-- <div class="shape"></div>-->
        <!--<div class="shape"></div>-->
   
    <form id="form1" runat="server">
        <h3>Login </h3>
        <asp:Label ID="Label1" runat="server" Text="User Name" CssClass="label" Font-Bold="True"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter valid user name" ForeColor="Red" ValidationExpression="^[A-Z][a-zA-Z|\s]*$"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtname" runat="server" CssClass="input"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="label" TextMode="Password"></asp:Label>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Password must contain atleast 6 characters: uppercase,lowercase , digits and special character" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{6,15}$"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtpass" runat="server" CssClass="input"></asp:TextBox>
        
        <asp:Button ID="loginbtn" runat="server" Text="Login" CssClass="Button" OnClick="Button1_Click" BackColor="#00CC66" ForeColor="Black" />
        <br />
       <!--<div class="pass"><asp:HyperLink ID="linkforgotpassword" runat="server">Forgot password?</asp:HyperLink></div>-->
        <div class="pass">
            <asp:LinkButton ID="LinkButtonpass" runat="server" OnClick="LinkButtonpass_Click">Forgot password?</asp:LinkButton></div>
       <!-- <div class="message">Do not have a account?<a href="register.aspx"> Create new account</a></div>-->
        
    </form>
         </div>
</body>

</html>