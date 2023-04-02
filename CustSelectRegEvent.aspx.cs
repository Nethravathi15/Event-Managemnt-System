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
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class CustSelectRegEvent : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\EventDatabase.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select eventType from CustEventTab where eventName='" + DropDownList1.Text + "'";
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            Session["EventType"] = dr.GetValue(0).ToString();
        }
        else { Session["EventType"] = "";
        MessageBox.Show("Please select the correct EventName");
        return;
        }
        Conn.Close();
        MessageBox.Show(Session["EventType"].ToString());
        Session["CustEventName"] = DropDownList1.Text;
        Response.Redirect("CustMain1.aspx");

    }
}
