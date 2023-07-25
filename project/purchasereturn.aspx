<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchasereturn.aspx.cs" Inherits="bgroup9.purchasereturn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 130px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style3 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style5 {
            width: 152px;
            height: 152px;
            position: absolute;
            top: 234px;
            left: 19px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 130px;
            left: 314px;
            z-index: 1;
            width: 214px;
            height: 34px;
        }
        .auto-style9 {
            position: absolute;
            top: 450px;
            left: 38px;
            z-index: 1;
            width: 210px;
        }
        .auto-style10 {
            position: absolute;
            top: 451px;
            left: 345px;
            z-index: 1;
            width: 216px;
            height: 20px;
        }
        .auto-style11 {
            position: absolute;
            top: 515px;
            left: 43px;
            z-index: 1;
            right: 1111px;
            height: 33px;
        }
        .auto-style12 {
            position: absolute;
            top: 521px;
            left: 353px;
            z-index: 1;
            width: 96px;
        }
        .auto-style13 {
            position: absolute;
            top: 580px;
            left: 45px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 571px;
            left: 346px;
            z-index: 1;
            width: 202px;
            height: 22px;
        }
        .auto-style15 {
            position: absolute;
            top: 193px;
            left: 27px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 646px;
            left: 49px;
            z-index: 1;
            width: 188px;
            height: 21px;
        }
        .auto-style17 {
            position: absolute;
            top: 653px;
            left: 352px;
            z-index: 1;
            width: 45px;
            height: 20px;
        }
        .auto-style18 {
            position: absolute;
            top: 716px;
            left: 52px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 722px;
            left: 349px;
            z-index: 1;
            width: 174px;
            height: 19px;
            right: 932px;
        }
        .auto-style20 {
            position: absolute;
            top: 822px;
            left: 538px;
            z-index: 1;
            width: 151px;
            height: 36px;
        }
        .auto-style21 {
            position: absolute;
            top: 508px;
            left: 676px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 514px;
            left: 945px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 576px;
            left: 684px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 583px;
            left: 949px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 448px;
            left: 678px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 452px;
            left: 948px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <strong>
        <asp:Panel ID="Panel1" runat="server" Height="906px" Width="1378px">
        <asp:Label ID="Label1" runat="server" Text="Select the purchase order no:" CssClass="auto-style2"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6" DataSourceID="SqlDataSource1" DataTextField="PurchaseOrderNo" DataValueField="PurchaseOrderNo">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString3 %>" SelectCommand="SELECT [PurchaseOrderNo] FROM [purchaseorder]"></asp:SqlDataSource>
            <strong>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style21" Text="Item Description:"></asp:Label>
            </strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style5" DataKeyNames="ItemID" DataSourceID="SqlDataSource2" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="PurchaseOrderNo" HeaderText="PurchaseOrderNo" SortExpression="PurchaseOrderNo" />
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" ReadOnly="True" SortExpression="ItemID" />
                <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                <asp:BoundField DataField="PurchaseDate" HeaderText="PurchaseDate" SortExpression="PurchaseDate" />
                <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="PaymentMode" HeaderText="PaymentMode" SortExpression="PaymentMode" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup9ConnectionString2 %>" SelectCommand="SELECT [PurchaseOrderNo], [ItemID], [SName], [PurchaseDate], [DueDate], [Category], [ItemDescription], [Brand], [Quantity], [PaymentMode] FROM [purchaseorder] WHERE ([PurchaseOrderNo] = @PurchaseOrderNo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="PurchaseOrderNo" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <strong>
        
            <asp:Label runat="server" CssClass="auto-style16" Text="Quantity Ordered:"></asp:Label>
            <asp:Button ID="txtrefresh" runat="server" BackColor="#33CC33" CssClass="auto-style15" ForeColor="Black" OnClick="txtrefresh_Click" Text="REFRESH" />
            <asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text="Purchase Received Date:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14" TextMode="Date"></asp:TextBox>
            
            <asp:Label ID="lblodate" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
            
            <asp:TextBox ID="txtpbillno" runat="server" CssClass="auto-style10" ></asp:TextBox>
            .<asp:Label ID="Label4" runat="server" CssClass="auto-style11" Text="Purchase Ordered Date:"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Purchase Return"></asp:Label>
            <strong>
            <asp:Button ID="Buttonretuen" runat="server" BackColor="#33CC33" CssClass="auto-style20" OnClick="Button1_Click" Text="RETURN" />
            </strong>
        
        
            <asp:Label ID="Label8" runat="server" CssClass="auto-style23" Text="Brand"></asp:Label>
        
        
        </strong>
            <asp:Label ID="lblitemdes" runat="server" CssClass="auto-style22" Text="Label" style="height: 23px"></asp:Label>
            <asp:Label ID="lblbrand" runat="server" CssClass="auto-style24" Text="Label"></asp:Label>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style25" Text="Category:"></asp:Label>
            <asp:Label ID="Labelcat" runat="server" CssClass="auto-style26" Text="Label"></asp:Label>
            </asp:Panel>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Enter Purchase Bill No:"></asp:Label>
        <asp:Label ID="lblQorder" runat="server" CssClass="auto-style17" Text="Label"></asp:Label>
        <asp:TextBox ID="txtqreturned" runat="server" CssClass="auto-style19"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style18" Text="Quantity to be returned:"></asp:Label>
        </strong>
    </form>
</body>
</html>
