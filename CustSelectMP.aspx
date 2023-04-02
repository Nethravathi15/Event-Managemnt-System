<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustSelectMP.aspx.cs" Inherits="CustSelectMP" %>

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
            left: 148px; position: absolute; top: 181px" Width="576px">&nbsp; Man Power Selection</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Style="z-index: 106;
            left: 146px; position: absolute; top: 233px" Width="813px">
            <FooterStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ManpowerName" HeaderText="ManpowerName" SortExpression="ManpowerName" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
            </Columns>
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [ManpowerName], [price], [details] FROM [ManPowerTab] WHERE ([EventName] = @EventName) ORDER BY [ManpowerName]">
            <SelectParameters>
                <asp:SessionParameter Name="EventName" SessionField="EventType" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       
        
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMain1.aspx" Style="z-index: 104; left: 0px;
            position: absolute; top: 177px" Width="80px">Home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMain1.aspx" Style="z-index: 105; left: 146px;
            position: absolute; top: 657px" Width="80px">Back</asp:LinkButton>
       
       
        
     
    
    </div>
    </form>
</body>
</html>

