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
public partial class CustEventReg : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\EventDatabase.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    long bNoVar;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        int numVar = 0;
        if (TextBox1.Text == "")
        {
            MessageBox.Show("Please enter the Furniture Name");
            return;
        }

        //try
        //{
        //    numVar = int.Parse(TextBox2.Text);
        //}
        //catch
        //{
        //    MessageBox.Show("Please enter the price in numbers");
        //    return;
        //}


        //DateTime Test;
        //if (DateTime.TryParseExact(TextBox3.Text, "dd/MMM/yyyy", null, DateTimeStyles.None, out Test) == true)
        //    Response.Write("Date OK");
        //else
        //{
        //    Response.Write("Date Not OK");
        //    return;
        //}
        DateTime Test;
        if (DateTime.TryParseExact(TextBox3.Text, "dd/MMM/yyyy", null, System.Globalization.DateTimeStyles.None, out Test) == true)
        { }
        else
        {
            MessageBox.Show("Please Enter Proper Date");
            return;
        }

        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from CustEventTab where eventName='" + TextBox1.Text + "'";
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            MessageBox.Show("This Even Name is all ready present");
            return;

        }
        Conn.Close();


        Conn.Open();
        SqlStr = "insert into CustEventTab values(";
        SqlStr = SqlStr + "'" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Application["custVar"].ToString() + "')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
        MessageBox.Show("Record created successfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = string.Format("{0:dd/MMM/yyyy}", Calendar1.SelectedDate.Date);
        Calendar1.Visible = false;
    }
}

