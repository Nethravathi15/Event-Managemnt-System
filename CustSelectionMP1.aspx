<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustSelectionMP1.aspx.cs" Inherits="CustSelectionMP1" %>

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
        &nbsp;
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
            DataSourceID="SqlDataSource1" ForeColor="Black" Height="283px" Style="z-index: 109;
            left: 151px; position: absolute; top: 249px" Width="565px">
            <FooterStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <Fields>
                <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName" />
                <asp:BoundField DataField="ManpowerName" HeaderText="ManpowerName" SortExpression="ManpowerName" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
            </Fields>
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [EventName], [ManpowerName], [price], [details] FROM [ManPowerTab] WHERE ([ManpowerName] = @ManpowerName)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ManpowerName" QueryStringField="vvar" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMain1.aspx" Style="z-index: 104; left: 0px;
            position: absolute; top: 177px" Width="80px">Home</asp:LinkButton>
     
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMain1.aspx" Style="z-index: 105; left: 155px;
            position: absolute; top: 630px" Width="179px" BackColor="#FFE0C0" Height="23px">Select other things</asp:LinkButton>
        <asp:Label ID="Label1" runat="server" Style="z-index: 106; left: 339px; position: absolute;
            top: 561px" Text="Enter the Quantity"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 455px; position: absolute;
            top: 559px" Width="84px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Style="z-index: 108;
            left: 547px; position: absolute; top: 553px" Text="Select this Venue" Width="168px" />
      
       
        
     
    
    </div>
    </form>
</body>
</html>



