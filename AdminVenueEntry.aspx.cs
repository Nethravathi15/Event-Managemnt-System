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
public partial class AdminVenueEntry : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\EventDatabase.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    long bNoVar;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Conn.Open();
        //SqlCommand cmd3 = new SqlCommand();
        //SqlDataReader dr3;
        //cmd3.Connection = Conn;
        //cmd3.CommandText = "select max(bNo) + 1 as appNo from BerthBookingTab";
        //dr3 = cmd3.ExecuteReader();
        //dr3.Read();
        //bNoVar = long.Parse(dr3.GetValue(0).ToString());
        //Conn.Close();
        int numVar = 0;
        if (TextBox1.Text == "")
        {
            MessageBox.Show("Please enter the Venue Name");
            return;
        }

        try
        {
            numVar = int.Parse(TextBox2.Text);
        }
        catch {
            MessageBox.Show("Please enter the price in numbers");
            return;
        }

        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from VenueTab where eventName='" + DropDownList1.Text + "' and venueName='" + TextBox1.Text + "'";
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            MessageBox.Show("This record is all ready present");
            return;

        }
        Conn.Close();


        Conn.Open();
        SqlStr = "insert into VenueTab values(";
        SqlStr = SqlStr + "'" + DropDownList1.Text + "','" + TextBox1.Text + "'," + numVar + ",'" + TextBox3.Text + "','" + TextBox4.Text + "')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
        MessageBox.Show("Record created successfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}

