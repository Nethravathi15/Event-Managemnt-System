<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Event Management</title>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" /><asp:Image ID="Image3" runat="server" ImageUrl="~/images/g3.bmp" Style="z-index: 101;
            left: 85px; position: absolute; top: 283px" Height="182px" Width="562px" />
        <asp:Image ID="Image4" runat="server" ImageUrl="~/images/g1.bmp" Style="z-index: 102;
            left: 85px; position: absolute; top: 479px" Height="182px" Width="562px" />
        &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl="~/images/g2.bmp" Style="z-index: 103;
            left: 85px; position: absolute; top: 675px" Height="182px" Width="562px" />
        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/g4.bmp" Style="z-index: 104;
            left: 85px; position: absolute; top: 871px" Height="182px" Width="562px" />
        &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Purple" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Thistle" Style="z-index: 105;
            left: 87px; position: absolute; top: 197px" Width="576px">&nbsp; Event Types</asp:HyperLink>
        &nbsp;
        <asp:Image ID="Image6" runat="server" ImageUrl="~/images/g5.bmp" Style="z-index: 106;
            left: 85px; position: absolute; top: 1068px" Height="182px" Width="562px" />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/AdminMainPage.aspx" Style="z-index: 108; left: 0px;
            position: absolute; top: 177px" Width="80px">Home</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>


