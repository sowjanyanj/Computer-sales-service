<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="bgroup9.category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style2 {
            width: 1487px;
            height: 753px;
        }
        .auto-style3 {
            width: 888px;
            height: 535px;
            position: absolute;
            top: 88px;
            left: 13px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 145px;
            left: 55px;
            z-index: 1;
            width: 144px;
            height: 36px;
        }
        .auto-style5 {
            position: absolute;
            top: 226px;
            left: 57px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 65px;
            left: 55px;
            z-index: 1;
            width: 129px;
            height: 28px;
        }
        .auto-style7 {
            position: absolute;
            top: 65px;
            left: 247px;
            z-index: 1;
            width: 240px;
            height: 24px;
        }
        .auto-style8 {
            position: absolute;
            top: 135px;
            left: 248px;
            z-index: 1;
            width: 238px;
            height: 25px;
        }
        .auto-style9 {
            position: absolute;
            top: 223px;
            left: 248px;
            z-index: 1;
            width: 238px;
            height: 22px;
        }
        .auto-style10 {
            position: absolute;
            top: -6px;
            left: -2px;
            z-index: 1;
            width: 312px;
            height: 18px;
        }
        .auto-style13 {
            position: absolute;
            top: 143px;
            left: 513px;
        }
        .auto-style14 {
            position: absolute;
            top: 382px;
            left: 36px;
            z-index: 1;
            right: -123px;
        }
        .auto-style15 {
            position: absolute;
            top: -4px;
            left: 193px;
            z-index: 1;
            width: 161px;
            height: 30px;
        }
        .auto-style16 {
            position: absolute;
            top: 236px;
            left: 533px;
            z-index: 1;
            width: 96px;
            height: 26px;
        }
        .auto-style17 {
            position: absolute;
            top: 382px;
            left: 287px;
            z-index: 1;
            width: 90px;
            height: 32px;
        }
        .auto-style18 {
            position: absolute;
            top: 0px;
            left: 0px;
        }
        .auto-style19 {
            width: 1199px;
            height: 753px;
            position: absolute;
            top: 381px;
            left: 406px;
            z-index: 1;
        }
        .auto-style20 {
            width: 352px;
            height: 190px;
            position: absolute;
            top: 106px;
            left: 926px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 317px;
            left: 936px;
            z-index: 1;
            width: 101px;
            height: 33px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
        CATEGORY<asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
            <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="GST:"></asp:Label>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Category ID:"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Category Name:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7"></asp:TextBox>
            <asp:TextBox ID="txtcid" runat="server" CssClass="auto-style7"></asp:TextBox>
            <asp:TextBox ID="txtcname" runat="server" CssClass="auto-style8"></asp:TextBox>
            <asp:TextBox ID="txtgst" runat="server" CssClass="auto-style9"></asp:TextBox>
            <b class="auto-style13" style="z-index: 1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcname" CssClass="auto-style10" ErrorMessage="Enter category name" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcname" CssClass="auto-style15" ErrorMessage="Enter alphabets" ForeColor="Red" ValidationExpression="[A-Za-z]+$"></asp:RegularExpressionValidator>
            </b><b class="auto-style18" style="z-index: 1">
            <asp:Button ID="btnadd" runat="server" BackColor="#33CC33" CssClass="auto-style14" Height="32px" OnClick="btnadd_Click" Text="ADD" Width="88px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtgst" CssClass="auto-style16" ErrorMessage="Enter GST" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Button ID="btnremove" runat="server" BackColor="#33CC33" CssClass="auto-style1" Height="32px" OnClick="btnremove_Click" style="margin-right: 1px; z-index: 1; position: absolute; top: 384px; left: 155px;" Text="REMOVE" Width="99px" />
            <asp:Button ID="btnupdate" runat="server" BackColor="#33CC33" CssClass="auto-style17" OnClick="btnupdate_Click" Text="UPDATE" />
            </b><b class="auto-style18">
            <asp:Button ID="Button1" runat="server" BackColor="#33CC33" CssClass="auto-style19" Height="31px" OnClick="Button1_Click" Text="CLEAR" Width="105px" />
            </b>
        </asp:Panel>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" CssClass="auto-style20" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <asp:Button ID="btnrefresh" runat="server" BackColor="#33CC33" CssClass="auto-style21" OnClick="btnrefresh_Click" Text="REFRESH" />
        
    </form>
</body>
</html>
