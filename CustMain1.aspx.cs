using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CustMain1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = "Event Type : " + Session["EventType"].ToString();
            Label2.Text = "Event Name : " + Session["CustEventName"].ToString();
        }
        catch
        { }
    }
}
