<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMainPage.aspx.cs" Inherits="AdminMainPage" %>

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
            left: 0px; position: absolute; top: 737px" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 102; left: 4px; position: absolute; top: 181px"
            Width="80px" PostBackUrl="~/Default2.aspx">Home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/AdminEventType.aspx" Style="z-index: 103;
            left: 122px; position: absolute; top: 282px" Width="230px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Event Types</asp:LinkButton>
        <asp:LinkButton ID="LinkButton8" runat="server" BackColor="#00C0C0" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
            Height="25px" PostBackUrl="~/AdminEventTypelist.aspx" Style="z-index: 104; left: 351px;
            position: absolute; top: 282px" Width="48px">List</asp:LinkButton>
        &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/AdminVenueEntry.aspx" Style="z-index: 105;
            left: 122px; position: absolute; top: 321px" Width="230px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Venue Details</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/AdminFurnitureEntry.aspx" Style="z-index: 106;
            left: 122px; position: absolute; top: 360px" Width="230px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Furniture Details</asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/AdminFoodEntry.aspx" Style="z-index: 107;
            left: 122px; position: absolute; top: 399px" Width="230px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Food Details</asp:LinkButton>
        <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/AdminOtherFacility.aspx" Style="z-index: 108; left: 122px;
            position: absolute; top: 438px" Width="230px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">Other Facilities</asp:LinkButton>
        <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/AdminManpower.aspx" Style="z-index: 109;
            left: 122px; position: absolute; top: 480px" Width="230px" BackColor="#00C0C0" BorderColor="#000040" BorderStyle="Solid" BorderWidth="1px" Height="25px">ManPower Details</asp:LinkButton>
        <asp:LinkButton ID="LinkButton15" runat="server" BackColor="Cyan" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
            Height="25px" PostBackUrl="~/AdminCustEventList1.aspx" Style="z-index: 110; left: 123px;
            position: absolute; top: 524px" Width="275px">Customer Event List</asp:LinkButton>
        <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Medium" PostBackUrl="~/Default2.aspx" Style="z-index: 111; left: 122px;
            position: absolute; top: 600px" Width="277px" BackColor="#FFC080" BorderColor="#804040" BorderStyle="Solid" BorderWidth="1px" Height="23px">Logout</asp:LinkButton>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Purple" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Thistle" Style="z-index: 112;
            left: 120px; position: absolute; top: 191px" Width="576px">&nbsp; Admin Home</asp:HyperLink>
        <asp:LinkButton ID="LinkButton9" runat="server" BackColor="#00C0C0" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
            Height="25px" PostBackUrl="~/AdminVenueList.aspx" Style="z-index: 113; left: 351px;
            position: absolute; top: 321px" Width="48px">List</asp:LinkButton>
        <asp:LinkButton ID="LinkButton10" runat="server" BackColor="#00C0C0" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
            Height="25px" PostBackUrl="~/AdminFurnitureList.aspx" Style="z-index: 114; left: 351px;
            position: absolute; top: 360px" Width="48px">List</asp:LinkButton>
        <asp:LinkButton ID="LinkButton12" runat="server" BackColor="#00C0C0" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
            Height="25px" PostBackUrl="~/AdminFoodList.aspx" Style="z-index: 115; left: 351px;
            position: absolute; top: 399px" Width="48px">List</asp:LinkButton>
        <asp:LinkButton ID="LinkButton13" runat="server" BackColor="#00C0C0" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
            Height="25px" PostBackUrl="~/AdminFacilityList.aspx" Style="z-index: 116; left: 351px;
            position: absolute; top: 438px" Width="48px">List</asp:LinkButton>
        <asp:LinkButton ID="LinkButton14" runat="server" BackColor="#00C0C0" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
            Height="25px" PostBackUrl="~/AdminManPowerList.aspx" Style="z-index: 117; left: 351px;
            position: absolute; top: 480px" Width="48px">List</asp:LinkButton>
        <asp:LinkButton ID="LinkButton16" runat="server" BackColor="Cyan" BorderColor="#000040"
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
            Height="25px" PostBackUrl="~/AdminAdvanceList.aspx" Style="z-index: 119; left: 122px;
            position: absolute; top: 562px" Width="275px">Customer Advance List</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>