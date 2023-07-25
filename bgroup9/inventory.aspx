<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inventory.aspx.cs" Inherits="bgroup9.inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="stockcss.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            height: 400px;
            margin-right: -200px;
            margin-left: auto;
            margin-top: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div class="txt">
<h1><center><b><u>Inventory</b></u></center></h1>
    <div class="auto-style1">
<img src="img/Stock.png" width="50%" height="50%" class="center" />
        <br />
        <br />
        <asp:Button ID="button1" runat="server" OnClick="button1_Click" Text="View Stock" Height="55px" Width="206px" />
   
        </div>
     <div class="abc">
 
       &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="ADD"/> 
        
         
    </div>
     <div>
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp  &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp   &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
         <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="DELETE" />
     </div>               
   
        <div>
    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  
          <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click" />
            </div>     
        </div>  
        </form>
</body>
</html>
