<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sorder.aspx.cs" Inherits="bgroup9.sorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style17 {
            position: absolute;
            top: 52px;
            left: 54px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 97px;
            left: 58px;
            z-index: 1;
            width: 109px;
            right: 1465px;
        }
        .auto-style18 {
            position: absolute;
            top: 50px;
            left: 194px;
            z-index: 1;
            height: 20px;
            width: 49px;
        }
        .auto-style19 {
            position: absolute;
            top: 95px;
            left: 198px;
            z-index: 1;
        }
        .auto-style20 {
            width: 1612px;
            height: 1px;
            position: absolute;
            top: 119px;
            left: 6px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 144px;
            left: 57px;
            z-index: 1;
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style7 {
            position: absolute;
            top: 212px;
            left: 32px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 212px;
            left: 193px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 260px;
            left: 32px;
            z-index: 1;
            height: 24px;
        }
        .auto-style22 {
            position: absolute;
            top: 253px;
            left: 195px;
            z-index: 1;
            height: 18px;
        }
        .auto-style11 {
            position: absolute;
            top: 305px;
            left: 37px;
            z-index: 1;
            width: 72px;
            height: 18px;
            bottom: 241px;
        }
        .auto-style15 {
            position: absolute;
            top: 354px;
            left: 38px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 293px;
            left: 193px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 344px;
            left: 192px;
            z-index: 1;
        }
        .auto-style26 {
            width: 1612px;
            height: 0px;
            position: absolute;
            top: 379px;
            left: 23px;
            z-index: 1;
        }
        .auto-style45 {
            position: absolute;
            top: 404px;
            left: 46px;
            z-index: 1;
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style46 {
            height: 1247px;
        }
        .auto-style47 {
            width: 1612px;
            height: 1px;
            position: absolute;
            top: 453px;
            left: 49px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 482px;
            left: 283px;
            z-index: 1;
            width: 86px;
            height: 29px;
        }
        .auto-style49 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 552px;
            left: 36px;
            z-index: 1;
        }
        .auto-style50 {
            position: absolute;
            top: 494px;
            left: 49px;
            z-index: 1;
            width: 150px;
        }
        .auto-style51 {
            position: absolute;
            top: 524px;
            left: 669px;
            z-index: 1;
        }
        .auto-style52 {
            position: absolute;
            top: 516px;
            left: 844px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 579px;
            left: 669px;
            z-index: 1;
        }
        .auto-style53 {
            position: absolute;
            top: 574px;
            left: 849px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 718px;
            left: 680px;
            z-index: 1;
        }
        .auto-style54 {
            position: absolute;
            top: 629px;
            left: 673px;
            z-index: 1;
        }
        .auto-style55 {
            position: absolute;
            top: 672px;
            left: 674px;
            z-index: 1;
        }
        .auto-style56 {
            position: absolute;
            top: 630px;
            left: 851px;
            z-index: 1;
        }
        .auto-style57 {
            position: absolute;
            top: 677px;
            left: 857px;
            z-index: 1;
        }
        .auto-style58 {
            position: absolute;
            top: 733px;
            left: 858px;
            z-index: 1;
        }
        .auto-style34 {
            position: absolute;
            top: 855px;
            left: 491px;
            z-index: 1;
            width: 171px;
            height: 31px;
            bottom: 138px;
        }
        .auto-style59 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 923px;
            left: 211px;
            z-index: 1;
        }
        .auto-style60 {
            position: absolute;
            top: 796px;
            left: 874px;
            z-index: 1;
        }
        .auto-style61 {
            position: absolute;
            top: 1120px;
            left: 687px;
            z-index: 1;
        }
        .auto-style62 {
            position: absolute;
            top: 1115px;
            left: 855px;
            z-index: 1;
        }
        .auto-style63 {
            position: absolute;
            top: 1228px;
            left: 883px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style46">
            <hr class="auto-style26" />
            <asp:Panel ID="Panel1" runat="server" Height="1057px">
                <asp:Label ID="Label15" runat="server" CssClass="auto-style17" Text="Bill Number:"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Date:"></asp:Label>
                <asp:Label ID="lblbillno" runat="server" CssClass="auto-style18" Text="Label"></asp:Label>
                <asp:Label ID="lbldate" runat="server" CssClass="auto-style19" Text="Label"></asp:Label>
                <hr class="auto-style20" />
                <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text="Customer ID:"></asp:Label>
                <asp:Label ID="lblcustid" runat="server" CssClass="auto-style21" Text="Label"></asp:Label>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text="Customer Name:"></asp:Label>
                <asp:TextBox ID="txtcustname" runat="server" CssClass="auto-style22"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style11" Text="Address:"></asp:Label>
                <asp:Label ID="Label13" runat="server" CssClass="auto-style15" Text="Contact Number:"></asp:Label>
                <asp:TextBox ID="txtcno" runat="server" CssClass="auto-style24"></asp:TextBox>
                <asp:TextBox ID="txtcustadd" runat="server" CssClass="auto-style23"></asp:TextBox>
                
                <strong>
                <asp:Label ID="Label32" runat="server" CssClass="auto-style45" Text="Product Details"></asp:Label>
                <asp:Label ID="Label17" runat="server" CssClass="auto-style47" Text="Select Category:"></asp:Label>
                </strong>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style50" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="Category">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString10 %>" SelectCommand="SELECT [Category] FROM [stock]"></asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" BackColor="#33CC33" CssClass="auto-style33" OnClick="Button1_Click" Text="REFRESH" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CssClass="auto-style49" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
                        <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
                        <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    </Columns>
                </asp:GridView>
                <asp:Button ID="btnbill" runat="server" BackColor="#33CC33" CssClass="auto-style34" OnClick="btnbill_Click" Text="Add to bill" />
                <asp:Label ID="lbltotal" runat="server" CssClass="auto-style60" Text="0"></asp:Label>
                <asp:Label ID="lblgrdtotal" runat="server" CssClass="auto-style63" Text="0"></asp:Label>
                <asp:GridView ID="GridView2" runat="server" CssClass="auto-style59">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString11 %>" SelectCommand="SELECT [ItemID], [ItemDescription], [Brand], [Quantity] FROM [stock] WHERE ([Category] = @Category)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Category" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label35" runat="server" CssClass="auto-style61" Text="Grand Total:"></asp:Label>
                <asp:Label ID="Label18" runat="server" CssClass="auto-style51" Text="Item ID:"></asp:Label>
                <asp:TextBox ID="txtitemdes" runat="server" CssClass="auto-style56"></asp:TextBox>
                <asp:TextBox ID="txtbrand" runat="server" CssClass="auto-style53"></asp:TextBox>
                <asp:TextBox ID="txtitemid" runat="server" CssClass="auto-style52"></asp:TextBox>
                <asp:Label ID="Label22" runat="server" CssClass="auto-style27" Text="Brand:"></asp:Label>
                <asp:Label ID="Label20" runat="server" CssClass="auto-style25" Text="Price:"></asp:Label>
                <asp:Label ID="Label33" runat="server" CssClass="auto-style54" Text="Item Description:"></asp:Label>
                <asp:TextBox ID="txtprice" runat="server" CssClass="auto-style58" OnTextChanged="txtprice_TextChanged"></asp:TextBox>
                <asp:Label ID="Label34" runat="server" CssClass="auto-style55" Text="Quantity"></asp:Label>
                <asp:TextBox ID="txtqty" runat="server" CssClass="auto-style57" ></asp:TextBox>
                <asp:TextBox ID="txtgrandtotal" runat="server" CssClass="auto-style62" OnTextChanged="txtgrandtotal_TextChanged"></asp:TextBox>
                
            </asp:Panel>
        </div>
        <p>
        <strong>
        
        <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Text="Customer Details"></asp:Label>
        </strong>
        </p>
    </form>
</body>
</html>
