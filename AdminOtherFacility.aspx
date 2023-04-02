<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminOtherFacility.aspx.cs" Inherits="AdminOtherFacility" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Event Management</title>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: -2px" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Logo2.bmp" Style="z-index: 101;
            left: 0px; position: absolute; top: 753px" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 102; left: 0px; position: absolute; top: 173px"
            Width="80px" PostBackUrl="~/AdminMainPage.aspx">Home</asp:LinkButton>
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 103px; position: absolute; top: 187px" BackColor="DarkGray" Font-Size="X-Large" ForeColor="#804040" Width="582px">Event Facility Details</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 104; left: 130px; position: absolute; top: 252px" Text="Event Name" Width="139px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 105; left: 130px; position: absolute; top: 295px" Text="Facility Name" Width="163px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 321px; position: absolute;
            top: 291px" Width="281px" Enabled="True"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 321px; position: absolute;
            top: 335px" Width="134px" Height="17px" Enabled="True"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 108; left: 130px; position: absolute; top: 336px" Text="Price / unit" Width="168px"></asp:Label>
        &nbsp;
        <asp:Button ID="Button1"   OnClick="Button1_Click"  runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 110;
            left: 437px; position: absolute; top: 511px" Text="Save" Width="170px" Height="35px" />
        &nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 111; left: 322px; position: absolute;
            top: 380px" Width="280px" Height="78px" TextMode="MultiLine"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 112; left: 130px; position: absolute; top: 387px" Text="Details" Width="125px"></asp:Label>
        &nbsp;
<asp:DropDownList ID="DropDownList1" runat="server" 
            DataTextField="EventName" DataValueField="EventName" Style="z-index: 113; left: 321px;
            position: absolute; top: 248px" Width="280px" DataSourceID="SqlDataSource1">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [EventName] FROM [EventTab] ORDER BY [EventName]"></asp:SqlDataSource>
        &nbsp;

    </div>
    </form>
</body>
</html>
