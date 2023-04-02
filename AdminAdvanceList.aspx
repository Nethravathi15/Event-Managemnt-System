<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminAdvanceList.aspx.cs" Inherits="AdminAdvanceList" %>

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
            left: 2px; position: absolute; top: 705px" />
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Purple" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Thistle" Style="z-index: 102;
            left: 148px; position: absolute; top: 181px" Width="813px">&nbsp; Customer Advance Payment</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 103; left: 0px;
            position: absolute; top: 177px" Width="80px">Home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 104; left: 153px;
            position: absolute; top: 606px" Width="80px">Back</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333"
            GridLines="None" Style="z-index: 106; left: 150px; position: absolute; top: 246px"
            Width="810px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="bNo" HeaderText="bNo" SortExpression="bNo" />
                <asp:BoundField DataField="bDate" HeaderText="bDate" SortExpression="bDate" />
                <asp:BoundField DataField="EventType" HeaderText="EventType" SortExpression="EventType" />
                <asp:BoundField DataField="uName" HeaderText="uName" SortExpression="uName" />
                <asp:BoundField DataField="paytype" HeaderText="paytype" SortExpression="paytype" />
                <asp:BoundField DataField="advAmt" HeaderText="advAmt" SortExpression="advAmt" />
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [bNo], [bDate], [EventType], [uName], [paytype], [advAmt] FROM [PaymentTab] ORDER BY [bNo] DESC">
        </asp:SqlDataSource>

    
    </div>
    </form>
</body>
</html>
