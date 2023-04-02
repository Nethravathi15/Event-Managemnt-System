<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustMain1.aspx.cs" Inherits="CustMain1" %>

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
            Width="80px" PostBackUrl="~/CustMainpage.aspx">Home</asp:LinkButton>
        &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
            Style="z-index: 103; left: 511px; position: absolute; top: 277px" Text="." Width="448px"></asp:Label>
        &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/CustSelectVenue.aspx" Style="z-index: 104;
            left: 123px; position: absolute; top: 273px" Width="258px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Select Venue</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/CustSelectFurniture.aspx" Style="z-index: 105;
            left: 123px; position: absolute; top: 312px" Width="258px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Select Furniture</asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/CustSelectFood.aspx" Style="z-index: 106;
            left: 123px; position: absolute; top: 351px" Width="258px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Select Food</asp:LinkButton>
        <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/CustSelectOF.aspx" Style="z-index: 107; left: 123px;
            position: absolute; top: 390px" Width="258px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Select Other Facilities</asp:LinkButton>
        <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/CustSelectMP.aspx" Style="z-index: 108;
            left: 123px; position: absolute; top: 432px" Width="258px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Select ManPower</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#C0FFFF" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
            Height="25px" PostBackUrl="~/CustViewCart1.aspx" Style="z-index: 113; left: 122px;
            position: absolute; top: 477px" Width="258px">View Selections</asp:LinkButton>
        <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/Default2.aspx" Style="z-index: 110; left: 122px;
            position: absolute; top: 547px" Width="261px" BackColor="#FFC080" BorderColor="#804040" BorderStyle="Solid" BorderWidth="1px" Height="23px">Logout</asp:LinkButton>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Purple" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Thistle" Style="z-index: 111;
            left: 120px; position: absolute; top: 191px" Width="576px">&nbsp; Selection  Home</asp:HyperLink>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"
            Style="z-index: 112; left: 512px; position: absolute; top: 315px" Text="." Width="448px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
