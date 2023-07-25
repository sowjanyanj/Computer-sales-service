<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sales.aspx.cs" Inherits="bgroup9.sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="salesstyle.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="txt">
<h1><b> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <u>Sales</b></h1>
 </div>  
<div class="box1" id="s">
<img src="img/customer.png" width="33%" height="40%"/><u></u><br /><br />
    <asp:Button ID="button1" runat="server" Text="Customer Detail" OnClick="button1_Click" />
</div>
<div class="box2">
   <br /><br />
    <img src="img/invoice.png" width="35%" height="40%"/> <br /><br />
 <asp:Button ID="button2" runat="server" Text="Sales Invoice" OnClick="button2_Click"/>
</div>
<div class="box3">
 <img src="img/return.jpg" width="30%" height="40%"/><br /><br />
    <asp:Button ID="button3" runat="server" Text="Sales Return" OnClick="button3_Click" />
</div>
 
    </form>
</body>
</html>
