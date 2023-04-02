<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustSelectFurniture.aspx.cs" Inherits="CustSelectFurniture" %>

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
            left: 148px; position: absolute; top: 181px" Width="576px">&nbsp; Furniture Selection</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            Style="z-index: 106; left: 148px; position: absolute; top: 240px" Width="816px">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="FurnitureName" HeaderText="FurnitureName" SortExpression="FurnitureName" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
            </Columns>
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [FurnitureName], [price], [description], [details] FROM [FurnitureTab] WHERE ([EventName] = @EventName)">
            <SelectParameters>
                <asp:SessionParameter Name="EventName" SessionField="EventType" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMain1.aspx" Style="z-index: 104; left: 0px;
            position: absolute; top: 177px" Width="80px">Home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMain1.aspx" Style="z-index: 105; left: 146px;
            position: absolute; top: 605px" Width="80px">Back</asp:LinkButton>
       
        
     
    
    </div>
    </form>
</body>
</html>
