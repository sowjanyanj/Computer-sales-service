<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="bgroup9.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="hpcss.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
       <nav>
   <ul>
	<li class="logo"><img src="img/hpuser.png" alt=""/></li>
	<li>
        <asp:LinkButton ID="btsales" runat="server" CssClass="logos" OnClick="btsales_Click">Sales</asp:LinkButton><i class="fa fa-shopping-cart"></i> &nbsp;</li>
	<li>
        <asp:LinkButton ID="btpurchase" runat="server" CssClass="logos" OnClick="btpurchase_Click">Purchase</asp:LinkButton><i class="fa fa-truck"></i> &nbsp; </li>
	<li>
        <asp:LinkButton ID="btnstock" runat="server" CssClass="logos" OnClick="btnstock_Click">Inventory</asp:LinkButton><i class="fa fa-industry"></i> &nbsp;</li>
	<li>
        <asp:LinkButton ID="btnreport" runat="server" CssClass="logos" OnClick="btnreport_Click">Report</asp:LinkButton><i class="fa fa-file"></i> &nbsp; </li>
	<li>
        <asp:LinkButton ID="btnaddu" runat="server" CssClass="logos" OnClick="btnaddu_Click" style="left: 0px; top: 0px">Add new user</asp:LinkButton><i class="fa fa-user-plus"></i> &nbsp; </li>
	<li>
        <asp:LinkButton ID="btnlogout" runat="server" CssClass="logos" OnClick="btnlogout_Click">Logout</asp:LinkButton><i class="fa fa-sign-out-alt"></i> &nbsp; </li>
  </ul>
</nav>
<div class="wrapper">
<div class="section">
<div class="box-area">
<!--<p style="background-image:url('d:\loginbg.jpg');">
<h2 style="color:#2b2626">Hostree infotech</h2>-->
</div>
</div>
</div>
    </form>
</body>
</html>
