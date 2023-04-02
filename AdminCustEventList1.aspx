<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminCustEventList1.aspx.cs" Inherits="AdminCustEventList1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Event Management</title>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 30px; position: absolute; top: -3px" />
       
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Logo2.bmp" Style="z-index: 101;
            left: 2px; position: absolute; top: 705px" />
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Purple" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Thistle" Style="z-index: 102;
            left: 148px; position: absolute; top: 181px" Width="813px">&nbsp; Customer Registered Event Lists</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 103; left: 0px;
            position: absolute; top: 177px" Width="80px">Home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 104; left: 153px;
            position: absolute; top: 606px" Width="80px">Back</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EventName" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1" 
            style="z-index: 1; left: 296px; top: 242px; position: absolute; height: 133px; width: 187px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="EventName" HeaderText="EventName" ReadOnly="True" 
                    SortExpression="EventName" />
                <asp:BoundField DataField="EventType" HeaderText="EventType" 
                    SortExpression="EventType" />
                <asp:BoundField DataField="TotalPeople" HeaderText="TotalPeople" 
                    SortExpression="TotalPeople" />
                <asp:BoundField DataField="eventDate" HeaderText="eventDate" 
                    SortExpression="eventDate" />
                <asp:BoundField DataField="details" HeaderText="details" 
                    SortExpression="details" />
                <asp:BoundField DataField="uName" HeaderText="uName" SortExpression="uName" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            
            SelectCommand="SELECT [EventName], [EventType], [TotalPeople], [eventDate], [details], [uName] FROM [CustEventTab]" 
            DeleteCommand="DELETE FROM [CustEventTab] WHERE [EventName] = @EventName" 
            InsertCommand="INSERT INTO [CustEventTab] ([EventName], [EventType], [TotalPeople], [eventDate], [details], [uName]) VALUES (@EventName, @EventType, @TotalPeople, @eventDate, @details, @uName)" 
            UpdateCommand="UPDATE [CustEventTab] SET [EventType] = @EventType, [TotalPeople] = @TotalPeople, [eventDate] = @eventDate, [details] = @details, [uName] = @uName WHERE [EventName] = @EventName">
            <DeleteParameters>
                <asp:Parameter Name="EventName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EventName" Type="String" />
                <asp:Parameter Name="EventType" Type="String" />
                <asp:Parameter Name="TotalPeople" Type="String" />
                <asp:Parameter Name="eventDate" Type="DateTime" />
                <asp:Parameter Name="details" Type="String" />
                <asp:Parameter Name="uName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EventType" Type="String" />
                <asp:Parameter Name="TotalPeople" Type="String" />
                <asp:Parameter Name="eventDate" Type="DateTime" />
                <asp:Parameter Name="details" Type="String" />
                <asp:Parameter Name="uName" Type="String" />
                <asp:Parameter Name="EventName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    
    </div>
    </form>
</body>
</html>
