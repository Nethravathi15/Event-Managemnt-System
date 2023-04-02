<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminCustEventListDetails.aspx.cs" Inherits="AdminCustEventListDetails" %>

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
            left: 148px; position: absolute; top: 181px" Width="576px">&nbsp; Customer Selection Detail  List</asp:HyperLink>
       
        
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 103; left: 0px;
            position: absolute; top: 177px" Width="80px">Home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 104; left: 152px;
            position: absolute; top: 610px" Width="80px">Back</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
            CellPadding="4" DataSourceID="SqlDataSource1" Style="z-index: 106; left: 150px;
            position: absolute; top: 245px" Width="809px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="bNo" HeaderText="bNo" SortExpression="bNo" />
                <asp:BoundField DataField="selType" HeaderText="selType" SortExpression="selType" />
                <asp:BoundField DataField="selName" HeaderText="selName" SortExpression="selName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            </Columns>
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [bNo], [selType], [selName], [Price], [qty], [Total] FROM [BookingTab] WHERE ([EventName] = @EventName) ORDER BY [bNo]">
            <SelectParameters>
                <asp:QueryStringParameter Name="EventName" QueryStringField="vvar" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
            </div>
    </form>
</body>
</html>