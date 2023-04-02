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
            left: 0px; position: absolute; top: 0px" />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/admin.bmp" Style="z-index: 101;
            left: 103px; position: absolute; top: 257px" PostBackUrl="~/AdminLoginpage.aspx" />
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/CustLogin.bmp" Style="z-index: 102;
            left: 103px; position: absolute; top: 334px" PostBackUrl="~/CustLogin.aspx" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Logo2.bmp" Style="z-index: 103;
            left: -6px; position: absolute; top: 600px" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 104; left: 1px; position: absolute; top: 179px"
            Width="80px" PostBackUrl="~/Default.aspx">Home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="~/AdminEventTypes.aspx" Style="z-index: 108; left: 553px;
            position: absolute; top: 493px" Width="203px">Event Types</asp:LinkButton>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/event01.gif" Style="z-index: 106;
            left: 552px; position: absolute; top: 187px" Height="270px" Width="406px" />
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/CustSignup.bmp"
            Style="z-index: 107; left: 103px; position: absolute; top: 411px" PostBackUrl="~/CustSignup.aspx" />
        &nbsp;
    
    </div>
    </form>
</body>
</html>
