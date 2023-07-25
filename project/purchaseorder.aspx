<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchaseorder.aspx.cs" Inherits="bgroup9.purchaseorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 56px;
            left: 43px;
            z-index: 1;
            width: 1360px;
            height: 1163px;
        }
        .auto-style2 {
            position: absolute;
            top: 6px;
            left: 516px;
            z-index: 1;
            width: 205px;
            height: 35px;
            font-family: Algerian;
            font-weight: bold;
        }
        .auto-style3 {
            width: 118px;
            height: 31px;
            position: absolute;
            left: 68px;
            top: 111px;
        }
        .auto-style4 {
            position: absolute;
            top: 107px;
            left: 262px;
            z-index: 1;
            width: 131px;
            height: 23px;
            right: 967px;
        }
        .auto-style5 {
            position: absolute;
            top: 176px;
            left: 71px;
            z-index: 1;
            width: 154px;
            height: 36px;
        }
        .auto-style6 {
            position: absolute;
            top: 176px;
            left: 262px;
            z-index: 1;
            right: 935px;
            width: 155px;
            height: 49px;
            bottom: 638px;
        }
        .auto-style7 {
            width: 45px;
            height: 22px;
            position: absolute;
            left: 68px;
            top: 450px;
        }
        .auto-style14 {
            position: absolute;
            top: 11px;
            left: 1068px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 11px;
            left: 1126px;
            z-index: 1;
            width: 72px;
        }
        .auto-style16 {
            position: absolute;
            top: 329px;
            left: 85px;
            z-index: 1;
            width: 272px;
            height: 24px;
            text-decoration: underline;
        }
        .auto-style17 {
            position: absolute;
            top: 513px;
            left: 65px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 511px;
            left: 255px;
            z-index: 1;
            width: 218px;
            height: 29px;
        }
        .auto-style19 {
            position: absolute;
            top: 585px;
            left: 63px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 576px;
            left: 258px;
            z-index: 1;
            height: 34px;
        }
        .auto-style21 {
            position: absolute;
            top: 654px;
            left: 61px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 654px;
            left: 256px;
            z-index: 1;
            height: 32px;
        }
        .auto-style23 {
            position: absolute;
            top: 104px;
            left: 869px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 817px;
            left: 343px;
            z-index: 1;
            width: 102px;
            height: 40px;
        }
        .auto-style26 {
            position: absolute;
            top: 819px;
            left: 511px;
            z-index: 1;
            width: 97px;
            height: 39px;
        }
        .auto-style28 {
            position: absolute;
            top: 454px;
            left: 462px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 583px;
            left: 442px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 654px;
            left: 445px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 583px;
            left: 607px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 448px;
            left: 259px;
            z-index: 1;
            width: 176px;
            height: 23px;
        }
        .auto-style34 {
            position: absolute;
            top: 519px;
            left: 497px;
            z-index: 1;
        }
        .auto-style35 {
            position: absolute;
            top: 104px;
            left: 993px;
            z-index: 1;
            height: 23px;
        }
        .auto-style36 {
            float: right;
            position: absolute;
            top: 181px;
            left: 925px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 734px;
            left: 66px;
            z-index: 1;
        }
        .auto-style38 {
            position: absolute;
            top: 727px;
            left: 262px;
            z-index: 1;
            width: 186px;
            height: 28px;
        }
        .auto-style39 {
            position: absolute;
            top: 383px;
            left: 72px;
            z-index: 1;
        }
        .auto-style42 {
            position: absolute;
            top: 841px;
            left: 682px;
            z-index: 1;
        }
        .auto-style43 {
            width: 639px;
            height: 152px;
            position: absolute;
            top: 913px;
            left: 107px;
            z-index: 1;
        }
        .auto-style44 {
            position: absolute;
            top: 386px;
            left: 252px;
            z-index: 1;
        }
        </style>
   
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="PURCHASE ORDER"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Purchase No:"></asp:Label>
            <asp:TextBox ID="txtpno" runat="server" CssClass="auto-style4" Enabled="False" ></asp:TextBox>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Supplier Name:"></asp:Label>
            <asp:DropDownList ID="supplierDropDownList" runat="server" CssClass="auto-style6" DataSourceID="SqlDataSource1" DataTextField="SName" DataValueField="SName">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString %>" SelectCommand="SELECT [SName] FROM [supplierdetails]"></asp:SqlDataSource>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Height="31px" Text="Category :" Width="118px"></asp:Label>
            <asp:DropDownList ID="categorydropdown" runat="server" CssClass="auto-style33">
                <asp:ListItem>Monitor</asp:ListItem>
                <asp:ListItem>Keyboad</asp:ListItem>
                <asp:ListItem>Mouse</asp:ListItem>
                <asp:ListItem>Printer</asp:ListItem>
                <asp:ListItem>Motherboard</asp:ListItem>
                <asp:ListItem>CPU</asp:ListItem>
                <asp:ListItem>UPS</asp:ListItem>
                <asp:ListItem>Harddisk</asp:ListItem>
                <asp:ListItem>Pendrive</asp:ListItem>
                <asp:ListItem>RAM</asp:ListItem>
                <asp:ListItem>Speaker</asp:ListItem>
                <asp:ListItem>Webcam</asp:ListItem>
                <asp:ListItem>Laptop power cable</asp:ListItem>
                <asp:ListItem>Modem</asp:ListItem>
                <asp:ListItem>Scanner</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style14" Text="Date:"></asp:Label>
            <asp:Label ID="lbldate" runat="server" CssClass="auto-style15" Text="Label"></asp:Label>
            <strong>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style16" Text="PRODUCT DESCRIPTION "></asp:Label>
            </strong>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style17" Text="Item Description:"></asp:Label>
            <asp:TextBox ID="txtitemdes" runat="server" CssClass="auto-style18"  TextMode="MultiLine"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" CssClass="auto-style19" Text="Brand:"></asp:Label>
            <asp:TextBox ID="txtbrand" runat="server" CssClass="auto-style20"></asp:TextBox>
            <asp:Label ID="Label12" runat="server" CssClass="auto-style21" Text="Quantity:"></asp:Label>
            <asp:TextBox ID="txtquantity" runat="server" CssClass="auto-style22"></asp:TextBox>
            <asp:Label ID="Label13" runat="server" CssClass="auto-style23" Text="Due Date:"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" CssClass="auto-style36" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged1" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
            <asp:Button ID="btnorder" runat="server" BackColor="#33CC33" CssClass="auto-style25" OnClick="btnorder_Click" Text="ORDER" />
            <asp:Button ID="btnclear" runat="server" BackColor="#33CC33" CssClass="auto-style26" Height="40px" OnClick="btnclear_Click" Text="CLEAR" Width="102px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="categorydropdown" CssClass="auto-style28" ErrorMessage="Select Category" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbrand" CssClass="auto-style30" ErrorMessage="Enter Brand Name" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtquantity" CssClass="auto-style31" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtbrand" CssClass="auto-style32" ErrorMessage="Enter Valid Brand Name" ForeColor="Red" ValidationExpression="[a-zA-Z]+$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtitemdes" CssClass="auto-style34" ErrorMessage="Enter Item Description" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtduedate" runat="server" CssClass="auto-style35"></asp:TextBox>
           
             <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:TextBox ID="txtitemid" runat="server" CssClass="auto-style44"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label15" runat="server" CssClass="auto-style39" Text="Item Id:"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btnadd" runat="server" CssClass="auto-style42" OnClick="btnadd_Click" Text="Add Product" />
            <br />
            <asp:Label ID="Label14" runat="server" CssClass="auto-style37" Text="Payment Mode:"></asp:Label>
            <asp:DropDownList ID="payment" runat="server" CssClass="auto-style38">
                <asp:ListItem>Cash</asp:ListItem>
                <asp:ListItem>Debit/Credit Card</asp:ListItem>
                <asp:ListItem>Cheques</asp:ListItem>
                <asp:ListItem>Mobile Payment</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style43">
                <Columns>
                    <asp:BoundField DataField="itemid" HeaderText="Item Id" />
                    <asp:BoundField DataField="brand" HeaderText="Brand" />
                    <asp:BoundField DataField="itemdesc" HeaderText="Item Description" />
                    <asp:BoundField DataField="qty" HeaderText="Quantity" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           <a href="disporder.aspx">View Order</a>
        </asp:Panel>


        
    </form>
   
</body>
</html>
