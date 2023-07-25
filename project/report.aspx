<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="bgroup9.report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="reportstyle.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>

</head>
<body>
    <form id="form1" runat="server">
        <div class="txt">
<h1><center><b><u>Report</b></u></center></h1></div>
  <div class="box1">
<img src="img/sales.png" width="40%" height="40%"/><br /><br /><br />
        <asp:Button ID="button1" runat="server" Text="Purchase Report" OnClick="button1_Click"  />
    </div>
<div class="box2">
<img src="img/purchase.png" width="30%" height="35%"/><br /><br />
    <asp:Button ID="button2" runat="server" Text="Sales Report"  />
</div>

          



    </form>
</body>
</html>
