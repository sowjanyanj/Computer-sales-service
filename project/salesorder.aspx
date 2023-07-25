<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="salesorder.aspx.cs" Inherits="bgroup9.salesorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1219px;
            height: 1455px;
        }
        .auto-style4 {
            position: absolute;
            top: 87px;
            left: 23px;
            z-index: 1;
            width: 109px;
            right: 1331px;
        }
        .auto-style5 {
            position: absolute;
            top: 90px;
            left: 228px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 173px;
            left: 53px;
            z-index: 1;
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style7 {
            position: absolute;
            top: 231px;
            left: 37px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 274px;
            left: 40px;
            z-index: 1;
            height: 24px;
        }
        .auto-style11 {
            position: absolute;
            top: 319px;
            left: 44px;
            z-index: 1;
            width: 72px;
            height: 18px;
            bottom: 323px;
        }
        .auto-style15 {
            position: absolute;
            top: 370px;
            left: 45px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 54px;
            left: 28px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 51px;
            left: 227px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 546px;
            left: 44px;
            z-index: 1;
            height: 21px;
            width: 137px;
        }
        .auto-style21 {
            position: absolute;
            top: 546px;
            left: 188px;
            z-index: 1;
            width: 128px;
            height: 32px;
        }
        .auto-style23 {
            position: absolute;
            top: 539px;
            left: 607px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 620px;
            left: 598px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 679px;
            left: 612px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 727px;
            left: 617px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 775px;
            left: 611px;
            z-index: 1;
            width: 89px;
        }
        .auto-style33 {
            position: absolute;
            top: 547px;
            left: 340px;
            z-index: 1;
            width: 86px;
            height: 29px;
        }
        .auto-style34 {
            position: absolute;
            top: 899px;
            left: 739px;
            z-index: 1;
            width: 171px;
            height: 31px;
            bottom: 122px;
        }
        .auto-style36 {
            position: absolute;
            top: 1196px;
            left: 831px;
            z-index: 1;
        }
        .auto-style40 {
            position: absolute;
            top: 1233px;
            left: 831px;
            z-index: 1;
            height: 22px;
        }
        .auto-style41 {
            position: absolute;
            left: 1044px;
            z-index: 1;
            top: 1237px;
            width: 21px;
        }
        .auto-style42 {
            position: absolute;
            top: 1276px;
            left: 831px;
            z-index: 1;
            height: 20px;
        }
        .auto-style43 {
            position: absolute;
            top: 1274px;
            left: 1046px;
            z-index: 1;
        }
        .auto-style44 {
            position: absolute;
            top: 1345px;
            left: 580px;
            z-index: 1;
            width: 194px;
            height: 43px;
            }
        .auto-style45 {
            position: absolute;
            top: 471px;
            left: 47px;
            z-index: 1;
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style47 {
            width: 1207px;
            height: -2px;
            position: absolute;
            top: 146px;
            left: 14px;
            z-index: 1;
        }
        .auto-style48 {
            width: 1216px;
            height: 0px;
            position: absolute;
            top: 438px;
            left: 9px;
            z-index: 1;
        }
        .auto-style49 {
            position: absolute;
            top: 1195px;
            left: 1004px;
            z-index: 1;
            width: 58px;
            height: 17px;
        }
        .auto-style50 {
            position: absolute;
            top: 1276px;
            left: 1006px;
            z-index: 1;
            width: 60px;
            height: 24px;
        }
        .auto-style52 {
            width: 951px;
            height: 177px;
            position: absolute;
            top: 954px;
            left: 152px;
            z-index: 1;
        }
        .auto-style54 {
            position: absolute;
            top: 275px;
            left: 233px;
            z-index: 1;
        }
        .auto-style55 {
            position: absolute;
            top: 324px;
            left: 230px;
            z-index: 1;
        }
        .auto-style57 {
            position: absolute;
            top: 376px;
            left: 229px;
            z-index: 1;
        }
        .auto-style58 {
            position: absolute;
            top: 225px;
            left: 245px;
            z-index: 1;
        }
        .auto-style59 {
            position: absolute;
            top: 545px;
            left: 877px;
            z-index: 1;
        }
        .auto-style60 {
            position: absolute;
            top: 614px;
            left: 879px;
            z-index: 1;
            width: 162px;
        }
        .auto-style61 {
            position: absolute;
            top: 676px;
            left: 887px;
            z-index: 1;
        }
        .auto-style62 {
            position: absolute;
            top: 717px;
            left: 883px;
            z-index: 1;
        }
        .auto-style63 {
            position: absolute;
            top: 776px;
            left: 890px;
            z-index: 1;
        }
        .auto-style64 {
            position: absolute;
            top: 825px;
            left: 854px;
            z-index: 1;
            width: 57px;
            height: 21px;
        }
        .auto-style65 {
            position: absolute;
            top: 1193px;
            left: 1047px;
            z-index: 1;
        }
        .auto-style66 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 608px;
            left: 77px;
            z-index: 1;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
       
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        
       
        <asp:Label ID="lbldate" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
        <strong>
        
        <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Text="Customer Details"></asp:Label>
        </strong>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text="Customer ID:"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString8 %>" SelectCommand="SELECT [CId] FROM [customerdetails]"></asp:SqlDataSource>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text="Customer Name:"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="auto-style11" Text="Address:"></asp:Label>
        <asp:Label ID="Label13" runat="server" CssClass="auto-style15" Text="Contact Number:"></asp:Label>
        <asp:Label ID="lblcustid" runat="server" CssClass="auto-style58" Text="Label"></asp:Label>
        <asp:TextBox ID="txtadd" runat="server" CssClass="auto-style55"></asp:TextBox>
        <asp:TextBox ID="txtcno" runat="server" CssClass="auto-style57"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Date:"></asp:Label>
        +<asp:Label ID="Label15" runat="server" CssClass="auto-style17" Text="Bill Number:"></asp:Label>
        <asp:Label ID="Lblbillno" runat="server" CssClass="auto-style18" Text="Label"></asp:Label>
        <asp:Label ID="Label17" runat="server" CssClass="auto-style20" Text="Select Category:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style21" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="Category">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString7 %>" SelectCommand="SELECT [ItemID], [Category], [ItemDescription], [Brand], [Quantity] FROM [stock] WHERE ([Category] = @Category)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Category" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString4 %>" SelectCommand="SELECT [Category] FROM [stock] WHERE ([Quantity] &gt; @Quantity)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="Quantity" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="txtprice" runat="server" CssClass="auto-style63"></asp:TextBox>
        <asp:TextBox ID="txtqty" runat="server" CssClass="auto-style62"></asp:TextBox>
        <asp:TextBox ID="txtcustname" runat="server" CssClass="auto-style54"></asp:TextBox>
        <hr class="auto-style48" />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CssClass="auto-style66" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
                <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString14 %>" SelectCommand="SELECT [ItemID], [ItemDescription], [Brand], [Quantity], [UnitPrice] FROM [stock] WHERE ([Category] = @Category)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Category" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblgrandtotal" runat="server" CssClass="auto-style43" Text="Label"></asp:Label>
        <asp:Label ID="Label31" runat="server" CssClass="auto-style42" Text="Grand Total:"></asp:Label>
        <asp:Label ID="Label29" runat="server" CssClass="auto-style40" Text="Tax:"></asp:Label>
        <asp:Label ID="lbltax" runat="server" CssClass="auto-style41" Text="0"></asp:Label>
        <asp:Label ID="Label35" runat="server" CssClass="auto-style50" Text="Rs."></asp:Label>
        <asp:Label ID="lbltotal" runat="server" CssClass="auto-style64" Text="0"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style65" >0</asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#33CC33" CssClass="auto-style33" OnClick="Button1_Click" Text="REFRESH" />
        <strong>
        <asp:Label ID="Label32" runat="server" CssClass="auto-style45" Text="Product Details"></asp:Label>
        </strong>
        <asp:Label ID="Label25" runat="server" CssClass="auto-style31" Text="Unit Price:"></asp:Label>
        <asp:Label ID="Label26" runat="server" CssClass="auto-style36" Text="Net Amount:"></asp:Label>
        <asp:Label ID="Label24" runat="server" CssClass="auto-style29" Text="Quantity:"></asp:Label>
        <asp:Label ID="Label22" runat="server" CssClass="auto-style27" Text="Brand:"></asp:Label>
        <asp:Label ID="Label20" runat="server" CssClass="auto-style25" Text="Item Description:"></asp:Label>
        <asp:Label ID="Label18" runat="server" CssClass="auto-style23" Text="Item ID:"></asp:Label>
        <asp:Button ID="btnbill" runat="server" BackColor="#33CC33" CssClass="auto-style34" OnClick="btnbill_Click" Text="Add to bill" />
        <asp:Button ID="btnprint" runat="server" BackColor="#33CC33" CssClass="auto-style44" Text="Print"  />
        <hr class="auto-style47" />
        <asp:Label ID="Label34" runat="server" CssClass="auto-style49" Text="Rs."></asp:Label>
        
       
        
        
       
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style52" >
            <Columns>
                <asp:BoundField DataField="itemid" HeaderText="Item Id" />
                <asp:BoundField DataField="brand" HeaderText="Brand" />
                <asp:BoundField DataField="itemdesc" HeaderText="Item Description" />
                <asp:BoundField DataField="qty" HeaderText="Quantity" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="total" HeaderText="Total" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        
       
        
        
       
        <asp:TextBox ID="lblid" runat="server" CssClass="auto-style59"></asp:TextBox>
        <asp:TextBox ID="lbldes" runat="server" CssClass="auto-style60"></asp:TextBox>
        <asp:TextBox ID="lblbrand" runat="server" CssClass="auto-style61"></asp:TextBox>
        
       
        
        
       
    </form>
</body>
</html>
