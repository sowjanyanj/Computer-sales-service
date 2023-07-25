<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerdetail.aspx.cs" Inherits="bgroup9.customerdetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 250px;
        }
        .auto-style3 {
            width: 354px;
            height: 262px;
            position: absolute;
            top: 199px;
            left: 825px;
            z-index: 1;
            bottom: 311px;
        }
        .auto-style4 {
            position: absolute;
            top: 227px;
            left: 291px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 371px;
            left: 291px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 457px;
            left: 280px;
            z-index: 1;
            width: 167px;
            height: 19px;
        }
        .auto-style7 {
            position: absolute;
            top: 592px;
            left: 285px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 227px;
            left: 467px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 458px;
            left: 482px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 592px;
            left: 471px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 197px;
            left: 693px;
            z-index: 1;
            width: 116px;
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Button ID="Button1" runat="server" BackColor="#33CC33" CssClass="auto-style11" Text="DISPLAY" />
        
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Height="719px" Width="679px">
             <h1><u><b>CUSTOMER DETAILS</b></u></h1>
            <asp:Label ID="Label1" runat="server" Text="Customer Id:"></asp:Label><br />
            <asp:TextBox ID="txtcid" runat="server" Height="37px" Width="247px" Enabled="False"></asp:TextBox>&nbsp
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter customer name" ControlToValidate="txtcname" CssClass="auto-style4" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br /><br />
            <asp:Label ID="Label2" runat="server" Text="Customer Name:"></asp:Label><br />
            <asp:TextBox ID="txtcname" runat="server" Height="42px" Width="248px"></asp:TextBox>
            &nbsp;
             <br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcname" CssClass="auto-style8" ErrorMessage="Enter alphabets" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>
             <br />
             <br />
             <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
             <br />
             <asp:TextBox ID="txtcaddress" runat="server" Height="38px" TextMode="MultiLine" Width="249px"></asp:TextBox>
             <br />
             <br />
             <br />
             <asp:Label ID="Label4" runat="server" Text="E-mail:"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcaddress" CssClass="auto-style5" ErrorMessage="Enter the address" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             <asp:TextBox ID="txtcemail" runat="server" Height="40px" Width="245px"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcemail" CssClass="auto-style6" ErrorMessage="Enter E-mail address" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcemail" CssClass="auto-style9" ErrorMessage="Wrong E-mail pattern" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             <br />
             <br />
             <br />
             <asp:Label ID="Label5" runat="server" Text="Contact Number:"></asp:Label>
             <br />
             <asp:TextBox ID="txtccontact" runat="server" Height="36px" Width="245px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtccontact" CssClass="auto-style7" ErrorMessage="Enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtccontact" CssClass="auto-style10" ErrorMessage="Enter 10 digits" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
             <br />
             <br />
            <asp:Button ID="btncadd" runat="server" Text="ADD" Height="40px" Width="112px" BackColor="#33CC33" OnClick="btncadd_Click" />&nbsp&nbsp
             <asp:Button ID="btncupdate" runat="server" BackColor="#33CC33" Height="39px" OnClick="btncupdate_Click" Text="UPDATE" Width="109px" />
             &nbsp;&nbsp;
             <asp:Button ID="btncremove" runat="server" BackColor="#33CC33" Height="36px" Text="REMOVE" Width="109px" OnClick="btncremove_Click" />
             &nbsp;&nbsp;
            <asp:Button ID="btncclear" runat="server" Text="CLEAR" Height="37px" Width="104px" BackColor="#33CC33" OnClick="btncclear_Click" />&nbsp;&nbsp; &nbsp;&nbsp;
         
             <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True">
             </asp:GridView>






        </asp:Panel>
        
       
    </form>
</body>
</html>
