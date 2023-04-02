<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustSelectVenue.aspx.cs" Inherits="CustSelectVenue" %>

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
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMain1.aspx" Style="z-index: 104; left: 153px;
            position: absolute; top: 606px" Width="80px">Back</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
            CellPadding="4" DataSourceID="SqlDataSource1" Style="z-index: 106; left: 149px;
            position: absolute; top: 237px" Width="812px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="VenueName" HeaderText="VenueName" SortExpression="VenueName" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="Facilities" HeaderText="Facilities" SortExpression="Facilities" />
                <asp:BoundField DataField="vaddress" HeaderText="vaddress" SortExpression="vaddress" />
            </Columns>
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [VenueName], [price], [Facilities], [vaddress] FROM [VenueTab] WHERE ([EventName] = @EventName) ORDER BY [VenueName]">
            <SelectParameters>
                <asp:SessionParameter Name="EventName" SessionField="EventType" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
     
    
    </div>
    </form>
</body>
</html>


