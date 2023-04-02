<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLoginpage.aspx.cs" Inherits="AdminLoginpage" %>

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
            Font-Size="Small" Style="z-index: 102; left: 2px; position: absolute; top: 176px"
            Width="80px" PostBackUrl="~/Default2.aspx">Home</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="Purple" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Thistle" Style="z-index: 113;
            left: 217px; position: absolute; top: 189px" Width="576px">&nbsp; Admin Login</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 106; left: 220px; position: absolute; top: 284px" Text="User Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 107; left: 222px; position: absolute; top: 339px" Text="Password"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 108; left: 329px; position: absolute;
            top: 278px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="* Enter the Login Name" Font-Bold="True" Font-Names="Verdana" Style="z-index: 109;
            left: 507px; position: absolute; top: 280px" Width="249px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="* Please enter the Password" Font-Bold="True" Font-Names="Verdana"
            Style="z-index: 110; left: 509px; position: absolute; top: 335px" Width="258px"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 111; left: 331px; position: absolute;
            top: 333px" TextMode="Password" Width="146px"></asp:TextBox>
        <asp:Button ID="Button1"   OnClick="Button1_Click"  runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 112;
            left: 378px; position: absolute; top: 403px" Text="Login" Width="109px"/>
    
    </div>
    </form>
</body>
</html>
