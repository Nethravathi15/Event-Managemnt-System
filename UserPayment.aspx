<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPayment.aspx.cs" Inherits="UserPayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Event Management</title>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div>
  <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="23px"
            Style="z-index: 100; left: 111px; position: absolute; top: 337px" Text="Bill No"
            Width="169px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 101;
            left: 309px; position: absolute; top: 334px" Width="174px"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="19px"
            Style="z-index: 102; left: 108px; position: absolute; top: 386px" Text="Bill Amount"
            Width="171px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="19px"
            Style="z-index: 103; left: 110px; position: absolute; top: 467px" Text="Payment Type"
            Width="171px"></asp:Label>
    <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="19px"
        Style="z-index: 104; left: 109px; position: absolute; top: 512px" Text="Payment Details"
        Width="171px"></asp:Label>
    &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 105;
            left: 0px; position: absolute; top: 0px" />
      &nbsp; &nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Font-Names="Verdana" Font-Size="Medium" Height="19px"
            Style="z-index: 106; left: 309px; position: absolute; top: 378px" Width="175px" Enabled="False"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Names="Verdana" Font-Size="12pt" Height="19px"
            Style="z-index: 107; left: 111px; position: absolute; top: 429px" Text="Advance Amount"
            Width="171px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Font-Names="Verdana" Font-Size="Medium"
            Height="20px" Style="z-index: 108; left: 310px; position: absolute; top: 425px"
            Width="175px"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" Font-Names="Verdana" Font-Size="Medium"
        Height="62px" Style="z-index: 109; left: 309px; position: absolute; top: 512px" Width="374px" TextMode="MultiLine"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 110; left: 309px;
        position: absolute; top: 468px" Width="172px">
        <asp:ListItem>Credit Card</asp:ListItem>
        <asp:ListItem>Debit Card</asp:ListItem>
        <asp:ListItem>Cash On Delivery</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList>
    &nbsp;
    &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 111;
            left: 352px; position: absolute; top: 618px" Text="Submit" Width="131px" OnClick="Button1_Click" />
    &nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="20pt"
            ForeColor="#C04000" Height="31px" Style="z-index: 112; left: 105px; position: absolute;
            top: 269px" Text="Payment Details Entry" Width="382px"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Height="21px" PostBackUrl="~/CustMainpage.aspx" Style="z-index: 114;
            left: 5px; position: absolute; top: 181px" Width="80px">Home</asp:LinkButton>



    
    </div>
    </form>
</body>
</html>



