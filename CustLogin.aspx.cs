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

public partial class CustLogin : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\EventDatabase.mdf;Integrated Security=True;User Instance=True");

    string SqlStr, a, b;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from CustomerTab where uname='" + TextBox1.Text + "' and pword='" + TextBox2.Text + "'";
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
                Application["custVar"] = TextBox1.Text;
                Session["custVar"] = TextBox1.Text;
                Response.Redirect("CustMainPage.aspx");
            }
            else
            {
                MessageBox.Show("Entered UserName or Password is not correct");
            }
     }


}



