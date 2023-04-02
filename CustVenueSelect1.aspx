<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustVenueSelect1.aspx.cs" Inherits="CustVenueSelect1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Event Management</title>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" /><asp:Image ID="Image2" runat="server" ImageUrl="~/images/Logo2.bmp" Style="z-index: 101;
            left: 2px; position: absolute; top: 705px" />
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Purple" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Thistle" Style="z-index: 102;
            left: 148px; position: absolute; top: 181px" Width="576px">&nbsp; Venue Selection</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMain1.aspx" Style="z-index: 103; left: 0px;
            position: absolute; top: 177px" Width="80px">Home</asp:LinkButton>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84"
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
            DataSourceID="SqlDataSource1" Height="231px" Style="z-index: 104; left: 155px;
            position: absolute; top: 274px" Width="567px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName" />
                <asp:BoundField DataField="VenueName" HeaderText="VenueName" SortExpression="VenueName" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="Facilities" HeaderText="Facilities" SortExpression="Facilities" />
                <asp:BoundField DataField="vaddress" HeaderText="vaddress" SortExpression="vaddress" />
            </Fields>
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [EventName], [VenueName], [price], [Facilities], [vaddress] FROM [VenueTab] WHERE ([VenueName] = @VenueName)">
            <SelectParameters>
                <asp:QueryStringParameter Name="VenueName" QueryStringField="vvar" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMain1.aspx" Style="z-index: 105; left: 153px;
            position: absolute; top: 599px" Width="179px" BackColor="#FFE0C0" Height="23px">Select other things</asp:LinkButton>
        <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Style="z-index: 107;
            left: 547px; position: absolute; top: 553px" Text="Select this Venue" Width="168px" />
       
        
     
    
    </div>
    </form>
</body>
</html>

