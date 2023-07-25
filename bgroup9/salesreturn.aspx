<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="salesreturn.aspx.cs" Inherits="bgroup9.salesreturn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 157px;
            left: 37px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 155px;
            left: 215px;
            z-index: 1;
            width: 146px;
            height: 14px;
        }
        .auto-style4 {
            width: 329px;
            height: 150px;
            position: absolute;
            top: 268px;
            left: 34px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 58px;
            left: 390px;
            z-index: 1;
            text-decoration: underline;
            font-size: x-large;
            width: 238px;
            height: 39px;
        }
        .auto-style6 {
            position: absolute;
            top: 222px;
            left: 36px;
            z-index: 1;
            width: 91px;
        }
        .auto-style7 {
            position: absolute;
            top: 482px;
            left: 42px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 532px;
            left: 44px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 148px;
            left: 727px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 148px;
            left: 800px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 481px;
            left: 297px;
            z-index: 1;
            height: 24px;
        }
        .auto-style12 {
            position: absolute;
            top: 522px;
            left: 297px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 588px;
            left: 45px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 583px;
            left: 297px;
            z-index: 1;
            width: 154px;
            height: 19px;
        }
        .auto-style16 {
            position: absolute;
            top: 694px;
            left: 56px;
            z-index: 1;
            width: 147px;
            height: 32px;
        }
        .auto-style17 {
            position: absolute;
            top: 467px;
            left: 615px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:Panel ID="Panel1" runat="server" Height="758px">
            <asp:Label ID="Label1" runat="server" Text="Select Bill No:" CssClass="auto-style2"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Quantity Ordered:"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Purchased Date:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style4">
            </asp:GridView>
            <strong>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="SALES RETURN"></asp:Label>
            </strong>
            <asp:Button ID="btnrefresh" runat="server" CssClass="auto-style6" Text="REFRESH" />
            <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="Date:"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style11" Text="Label"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style13" Text="Quantity returned:"></asp:Label>
            <asp:TextBox ID="txtrqty" runat="server" CssClass="auto-style15"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#33CC33" CssClass="auto-style16" ForeColor="Black" Text="Return" OnClick="Button1_Click" />
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label12" runat="server" CssClass="auto-style17" Text="Label"></asp:Label>
        </asp:Panel>
       
    </form>
</body>
</html>
