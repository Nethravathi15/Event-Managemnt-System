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
public partial class CustSelectFood1 : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\EventDatabase.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        int numVar = 0;
        int pricevar = int.Parse(DetailsView1.Rows[2].Cells[1].Text);

        try
        {
            numVar = int.Parse(TextBox1.Text);
        }
        catch
        {
            MessageBox.Show("Please enter the quanity in numbers");
            return;
        }

        float bNoVar = 1000;
        Conn.Open();
        SqlCommand cmd3 = new SqlCommand();
        SqlDataReader dr3;
        cmd3.Connection = Conn;
        cmd3.CommandText = "select max(bNo) + 1 as BookingNo from BookingTab";
        dr3 = cmd3.ExecuteReader();
        if (dr3.Read())
        {
            bNoVar = float.Parse(dr3.GetValue(0).ToString());
        }
        Conn.Close();


        Conn.Open();
        SqlStr = "insert into BookingTab values(";
        SqlStr = SqlStr + "" + bNoVar + ",'" + string.Format("{0:dd-MMM-yyyy}", DateTime.Today.Date) + "','" + Session["CustEventName"].ToString() + "','" + Session["EventType"].ToString() + "','" + Session["CustVar"].ToString() + "','Food','" + Request.QueryString["vVar"].ToString() + "'," + pricevar + "," + numVar + "," + (pricevar * numVar) + ",'')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();

        MessageBox.Show("Food is Selected Successfully");

    }
}

