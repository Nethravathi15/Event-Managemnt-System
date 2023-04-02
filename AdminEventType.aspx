<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminEventType.aspx.cs" Inherits="AdminEventType" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Event Management</title>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Logo2.bmp" Style="z-index: 101;
            left: -6px; position: absolute; top: 600px" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 102; left: 1px; position: absolute; top: 174px"
            Width="80px" PostBackUrl="~/AdminMainPage.aspx">Home</asp:LinkButton>
    
     <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 36px; position: absolute; top: 219px" BackColor="Purple" Font-Size="XX-Large" ForeColor="Thistle" Width="576px">&nbsp; Event Type Entry Form</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 104; left: 39px; position: absolute; top: 290px" Text="Event Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 105; left: 41px; position: absolute; top: 348px" Text="Details"></asp:Label>
        &nbsp; &nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 207px; position: absolute;
            top: 285px" Width="205px"></asp:TextBox>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 206px; position: absolute;
            top: 343px" Width="403px" Height="83px" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button1"   OnClick="Button1_Click"  runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 109;
            left: 311px; position: absolute; top: 478px" Text="Save" Width="109px" />
    
    </div>
    </form>
</body>
</html>
