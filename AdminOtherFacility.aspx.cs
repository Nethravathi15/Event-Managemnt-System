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
public partial class AdminOtherFacility : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\EventDatabase.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int numVar = 0;
        if (TextBox1.Text == "")
        {
            MessageBox.Show("Please enter the Other Facility Name");
            return;
        }

        try
        {
            numVar = int.Parse(TextBox2.Text);
        }
        catch
        {
            MessageBox.Show("Please enter the price in numbers");
            return;
        }

        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from FacilityTab where eventName='" + DropDownList1.Text + "' and FacilityName='" + TextBox1.Text + "'";
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            MessageBox.Show("This record is all ready present");
            return;

        }
        Conn.Close();


        Conn.Open();
        SqlStr = "insert into FacilityTab values(";
        SqlStr = SqlStr + "'" + DropDownList1.Text + "','" + TextBox1.Text + "'," + numVar + ",'" + TextBox3.Text + "')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
        MessageBox.Show("Record created successfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
