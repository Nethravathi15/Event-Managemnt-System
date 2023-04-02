<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserResForm.aspx.cs" Inherits="UserResForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Event Management</title>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="20pt"
            ForeColor="#C04000" Height="31px" Style="z-index: 100; left: 142px; position: absolute;
            top: 353px" Text="Thank you, " Width="695px" BackColor="#C0FFFF" BorderColor="#004040" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Names="Verdana" Font-Size="12pt" PostBackUrl="~/Default.aspx"
            Style="z-index: 101; left: 678px; position: absolute; top: 683px" Text="Logout"
            Width="155px" Height="36px" /><asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt"
            Style="z-index: 102; left: 692px; position: absolute; top: 285px" Text="Refresh"
            Width="144px" Height="42px" OnClick="Button1_Click" />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="20pt"
            ForeColor="#C04000" Height="31px" Style="z-index: 103; left: 142px; position: absolute;
            top: 414px" Text="Your Transaction is completed" Width="695px" BackColor="#C0FFFF" BorderColor="#004040" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="20pt"
            ForeColor="Green" Height="31px" Style="z-index: 104; left: 142px; position: absolute;
            top: 475px" Text="." Width="695px" BackColor="#C0FFFF" BorderColor="#004040" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="20pt"
            ForeColor="Green" Height="31px" Style="z-index: 105; left: 142px; position: absolute;
            top: 536px" Text="." Width="695px" BackColor="#C0FFFF" BorderColor="#004040" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
    <asp:Label ID="Label5" runat="server" BackColor="#C0FFFF" BorderColor="#004040" BorderStyle="Solid"
        BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="20pt" ForeColor="Green"
        Height="31px" Style="z-index: 106; left: 142px; position: absolute; top: 597px"
        Text="We will update further progress" Width="695px"></asp:Label>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 107;
            left: 0px; position: absolute; top: 0px" />
        <asp:Button ID="Button3" runat="server" Font-Names="Verdana" Font-Size="12pt" PostBackUrl="~/CustMainpage.aspx"
            Style="z-index: 109; left: 138px; position: absolute; top: 682px" Text="Cust Home"
            Width="155px" Height="36px" />

    
    </div>
    </form>
</body>
</html>



