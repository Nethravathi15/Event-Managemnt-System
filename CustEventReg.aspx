<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustEventReg.aspx.cs" Inherits="CustEventReg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Event Management</title>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: -2px; position: absolute; top: -12px" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Logo2.bmp" Style="z-index: 101;
            left: 0px; position: absolute; top: 753px" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 102; left: 0px; position: absolute; top: 173px"
            Width="80px" PostBackUrl="~/CustMainpage.aspx">Home</asp:LinkButton>
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 127px; position: absolute; top: 184px" BackColor="DarkGray" Font-Size="X-Large" ForeColor="#804040" Width="582px">Customer Event Registration</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 104; left: 132px; position: absolute; top: 293px" Text="Event Type" Width="190px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 105; left: 132px; position: absolute; top: 254px" Text="Cust Event Name" Width="189px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 323px; position: absolute;
            top: 253px" Width="281px" Enabled="True"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 323px; position: absolute;
            top: 335px" Width="134px" Height="17px" Enabled="True"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 108; left: 132px; position: absolute; top: 338px" Text="Total Peoples" Width="188px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Height="93px" Style="z-index: 109; left: 323px;
            position: absolute; top: 425px" Width="277px" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button1"   OnClick="Button1_Click"  runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 110;
            left: 432px; position: absolute; top: 572px" Text="Save" Width="170px" Height="35px" />
            
            <asp:Button ID="Button2"   OnClick="Button2_Click"  runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 111;
            left: 471px; position: absolute; top: 377px" Text="Calendar" Width="138px" Height="27px" />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
            BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
            ForeColor="#663399" Height="200px" ShowGridLines="True" Style="z-index: 112;
            left: 323px; position: absolute; top: 407px" Visible="False" Width="280px" OnSelectionChanged="Calendar1_SelectionChanged">
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            <SelectorStyle BackColor="#FFCC66" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        </asp:Calendar>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 113; left: 323px; position: absolute;
            top: 380px" Width="133px" Height="18px"></asp:TextBox>
        &nbsp;
        
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 114; left: 131px; position: absolute; top: 382px" Text="Event Date" Width="189px" Height="20px"></asp:Label>
        &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" 
            DataTextField="EventName" DataValueField="EventName" Style="z-index: 115; left: 323px;
            position: absolute; top: 290px" Width="287px" DataSourceID="SqlDataSource1">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>"
            SelectCommand="SELECT [EventName] FROM [EventTab] ORDER BY [EventName]"></asp:SqlDataSource>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 116; left: 132px; position: absolute; top: 429px" Text="Details" Width="189px"></asp:Label>
        

    </div>
    <p>
        &nbsp;</p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="book before 5 days" 
            style="z-index: 1; left: 646px; top: 379px; position: absolute; margin-top: 0px"></asp:RequiredFieldValidator>
    </p>
    </form>
</body>
</html>

