<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="supplier.aspx.cs" Inherits="bgroup9.supplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <!-- <link rel="stylesheet" href="purchasecss.css"/>-->
   
   
   
</head>
<body>
   
    <form id="form1" runat="server" class="auto-style1">
        
            <h1><u><b>SUPPLIER DETAILS</b></u></h1>
        
           
               <asp:Panel ID="Panel1" runat="server" Height="672px" Width="714px">
                   <b>
                   <br />
                   <br />
                   <br />
                   <br />
                   <asp:Label ID="lblsid" runat="server" Text="Supplier ID:" CssClass="auto-style3"></asp:Label>
                   <br />
                   <asp:TextBox ID="txtsid" runat="server" CssClass="input" Width="332px" Height="31px" Enabled="False" OnTextChanged="txtsid_TextChanged"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="lblsname" runat="server" Text="Supplier Name:"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter supplier name" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter alphabets" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>
                   <br />
                   <asp:TextBox ID="txtname" runat="server" CssClass="input" Width="326px" Height="34px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="lblsaddress" runat="server" Text="Address:"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsaddress" ErrorMessage="Enter address" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                   <asp:TextBox ID="txtsaddress" runat="server" CssClass="input" TextMode="MultiLine" Width="328px" Height="39px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="lblsemail" runat="server" Text="Email Id:"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsemail" ErrorMessage="Enter email id" ForeColor="Red"></asp:RequiredFieldValidator>
                   &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtsemail" ErrorMessage="Wrong email pattern" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   <br />
                   <asp:TextBox ID="txtsemail" runat="server" CssClass="input" TextMode="Email" Width="326px" Height="34px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="lblsphone" runat="server" Text="Contact Number:"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtsphone" ErrorMessage="Enter Phone number" ForeColor="Red"></asp:RequiredFieldValidator>
                   &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtsphone" ErrorMessage="Enter 10 digits" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                   <br />
                   <asp:TextBox ID="txtsphone" runat="server" CssClass="input" Width="323px" Height="28px"></asp:TextBox>
                   <br />
                   <br />
                   <br />
                   <asp:Button ID="btnadd" runat="server" BackColor="#33CC33" Height="32px" OnClick="btnadd_Click" Text="ADD" Width="88px" />
                   &nbsp; &nbsp;
                   <asp:Button ID="btnupdate" runat="server" BackColor="#33CC33" Height="32px" OnClick="btnupdate_Click" Text="UPDATE" Width="83px" />
                   &nbsp;
                   <asp:Button ID="btnremove" runat="server" BackColor="#33CC33" CssClass="auto-style1" Height="32px" OnClick="btnremove_Click" style="margin-right: 1px;" Text="REMOVE" Width="99px" />
                   &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#33CC33" CssClass="auto-style2" Height="31px" OnClick="Button1_Click" Text="CLEAR" Width="105px" />
                   &nbsp;<asp:Button ID="btnsave" runat="server" BackColor="#33CC33" Height="31px" OnClick="btnsave_Click" Text="DISPLAY" Width="99px" />
                   </b></asp:Panel>
            <b> &nbsp;
            <br />
                <asp:Button ID="BACK" runat="server" BackColor="#33CC33" Height="33px" OnClick="BACK_Click" Text="BACK" Width="107px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="33px" OnClick="Button2_Click" Text="NEXT" Width="103px" BackColor="#33CC33" />
                <br />
                <br /> <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br /> <br /> <br />
                &nbsp;
            <br />
                <br /> <br /> <br />
            &nbsp;
                   &nbsp;&nbsp;
            <br />
                <br /> <br /> <br />
            &nbsp;
            &nbsp;&nbsp;
            &nbsp;<br /></b>
                
            
           
             <br /> <br /> <br /> <br />
            <div>
                &nbsp &nbsp 
                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" style="z-index: 1; width: 609px; height: 331px; position: absolute; top: 80px; left: 787px;" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                  

                   
                
                </asp:GridView>
              
                &nbsp &nbsp &nbsp
                &nbsp
                &nbsp &nbsp &nbsp
                &nbsp 
                &nbsp &nbsp
            </div>
        <br />
      </form>
    </body>
</html>
