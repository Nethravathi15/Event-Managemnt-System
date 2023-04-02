<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustSignup.aspx.cs" Inherits="CustSignup" %>

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
            left: -6px; position: absolute; top: 920px" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 102; left: 1px; position: absolute; top: 178px"
            Width="80px" PostBackUrl="~/Default2.aspx">Home</asp:LinkButton>
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 105; left: 100px; position: absolute; top: 187px" BackColor="DarkGray" Font-Size="X-Large" ForeColor="#804040" Width="582px">Customer Signup</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 106; left: 104px; position: absolute; top: 251px" Text="User Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 107; left: 102px; position: absolute; top: 299px" Text="Password"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 108; left: 254px; position: absolute;
            top: 251px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 109; left: 254px; position: absolute;
            top: 298px" Width="152px" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1"   OnClick="Button1_Click"  runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 110;
            left: 329px; position: absolute; top: 708px" Text="Submit" Width="188px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 111; left: 104px; position: absolute; top: 345px" Text="Retype Password"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 112; left: 254px; position: absolute;
            top: 340px" Width="153px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 113; left: 104px; position: absolute; top: 392px" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 114; left: 254px; position: absolute;
            top: 388px" Width="261px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 115; left: 104px; position: absolute; top: 439px" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Height="93px" Style="z-index: 116; left: 254px;
            position: absolute; top: 436px" TextMode="MultiLine" Width="261px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 118; left: 105px; position: absolute; top: 620px" Text="eMail" Width="85px"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 119; left: 254px; position: absolute;
            top: 569px" Width="261px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 120; left: 104px; position: absolute; top: 572px" Text="Mobile No"
            Width="106px"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 121; left: 254px; position: absolute;
            top: 613px" Width="261px"></asp:TextBox>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [CountryName] FROM [CountryNameTab] ORDER BY [CountryName]">
        </asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
    
    </div>
    </form>
</body>
</html>