<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustMainpage.aspx.cs" Inherits="CustMainpage" %>

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
            left: -1px; position: absolute; top: 666px" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 102; left: 4px; position: absolute; top: 181px"
            Width="80px" PostBackUrl="~/Default2.aspx">Home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/CustEventTypes1.aspx" Style="z-index: 103;
            left: 122px; position: absolute; top: 282px" Width="258px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Event Types</asp:LinkButton>
        &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/CustEventReg.aspx" Style="z-index: 105;
            left: 122px; position: absolute; top: 321px" Width="258px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Register an Event Booking</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/CustSelectRegEvent.aspx" Style="z-index: 106;
            left: 122px; position: absolute; top: 360px" Width="258px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Select Registered Event</asp:LinkButton>
        &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/Default2.aspx" Style="z-index: 110; left: 122px;
            position: absolute; top: 547px" Width="277px" BackColor="#FFC080" BorderColor="#804040" BorderStyle="Solid" BorderWidth="1px" Height="23px">Logout</asp:LinkButton>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Purple" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Thistle" Style="z-index: 111;
            left: 120px; position: absolute; top: 191px" Width="576px">&nbsp; Customer  Home</asp:HyperLink>
        &nbsp; &nbsp; &nbsp;
    
    </div>
    </form>
</body>
</html>