
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewstock.aspx.cs" Inherits="bgroup9.viewstock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 342px;
            height: 152px;
            position: absolute;
            top: 70px;
            left: 11px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 293px;
            left: 51px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 385px;
            left: 56px;
            z-index: 1;
            height: 22px;
        }
        .auto-style5 {
            position: absolute;
            top: 379px;
            left: 249px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 430px;
            left: 56px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 422px;
            left: 252px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 281px;
            left: 250px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 335px;
            left: 53px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 329px;
            left: 245px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 480px;
            left: 54px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 468px;
            left: 256px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 537px;
            left: 58px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 546px;
            left: 253px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 247px;
            left: 56px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnupdateprice" runat="server" CssClass="auto-style14" Text="Update Price" />
        <asp:Label ID="lbldesc" runat="server" CssClass="auto-style7" Text="Label"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text="Enter Unit Price"></asp:Label>
        <asp:TextBox ID="UnitPrice" runat="server" CssClass="auto-style12" ></asp:TextBox>
        <asp:Button ID="btnprice" runat="server" CssClass="auto-style13" OnClick="btnprice_Click" Text="Add Price" />
        <asp:Button ID="btnrefresh" runat="server" CssClass="auto-style15" OnClick="btnrefresh_Click" Text="Refresh" />
        <asp:GridView ID="GridViewstock" runat="server" AutoGenerateSelectButton="True" Height="138px" Width="342px" CssClass="auto-style1" OnSelectedIndexChanged="GridViewstock_SelectedIndexChanged"></asp:GridView>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Item Id"></asp:Label>
        <asp:Label ID="txtcategory" runat="server" CssClass="auto-style9" Text="Category"></asp:Label>
        <asp:Label ID="lblid" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Item Description"></asp:Label>
        <asp:Label ID="lblbrand" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text="Brand"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString12 %>" SelectCommand="SELECT [Category] FROM [stock]"></asp:SqlDataSource>
        <asp:Label ID="Category" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
    </form>
</body>
</html>
