<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchase.aspx.cs" Inherits="bgroup9.purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="purchasecss.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="txt">
<h1><center><b><u>Report</b></u></center></h1></div>
    <div class="box1">
<img src="img/customer.png" width="30%" height="40%"/><br /><br /><br /><br />
          <asp:Button ID="button1" runat="server" Text="Supplier Detail" OnClick="button1_Click"/>
    </div>
<div class="box2">
<img src="img/deal.png" width="38%" height="35%"/><br />
     <asp:Button ID="button2" runat="server" Text="Purchase Order" OnClick="button2_Click" />
</div>
<div class="box3">
<img src="img/return.jpg"  width="35%" height="40%"/><br /><br /><br /><br />
    <asp:Button ID="button3" runat="server" Text="Purchase Return" OnClick="button3_Click" />
</div>
           <div class="box4">
           </div>

         
         
          
           
           
            
<!--<button class="button button1">Suppier Detail</button>
<button class="button button2">Purchase Invoice</button>
<button class="button button3">Purchase Return</button>-->
    </form>
</body>
</html>
