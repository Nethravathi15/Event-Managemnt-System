<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustSelectRegEvent.aspx.cs" Inherits="CustSelectRegEvent" %>

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
            left: 148px; position: absolute; top: 181px" Width="576px">&nbsp; Select Registered Event</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/CustMainpage.aspx" Style="z-index: 103; left: 0px;
            position: absolute; top: 177px" Width="80px">Home</asp:LinkButton>
        &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="EventName" DataValueField="EventName" Font-Names="Verdana" Font-Size="X-Large"
            Style="z-index: 104; left: 147px; position: absolute; top: 322px" Width="418px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [EventName] FROM [CustEventTab] WHERE ([uName] = @uName) ORDER BY [EventName]">
            <SelectParameters>
                <asp:SessionParameter Name="uName" SessionField="CustVar" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" Style="z-index: 106;
            left: 574px; position: absolute; top: 322px" Text="Select" Width="154px" />

    
    </div>
    </form>
</body>
</html>

