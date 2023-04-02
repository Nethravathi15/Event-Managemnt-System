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

public partial class AdminCustEventList1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("AdminCustEventListDetails.aspx?vvar=" + GridView1.SelectedRow.Cells[1].Text);
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
