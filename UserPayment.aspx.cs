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

public partial class UserPayment : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\EventDatabase.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    string s1,u1;
    protected void Page_Load(object sender, EventArgs e)
    {
        s1 = Session["CustEventName"].ToString();
        u1 = Session["CustVar"].ToString();


        Conn.Open();
        SqlStr = "select sum(total) from bookingTab where uname='" + u1 + "' and eventname='" + s1 + "'";
        SqlCommand cmd = new SqlCommand(SqlStr,Conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text = dr.GetValue(0).ToString();
        }
        Conn.Close();

        float bNoVar = 1000;
        Conn.Open();
        SqlCommand cmd3 = new SqlCommand();
        SqlDataReader dr3;
        cmd3.Connection = Conn;
        cmd3.CommandText = "select max(bNo) + 1 as NewNo from PaymentTab";
        dr3 = cmd3.ExecuteReader();
        if (dr3.Read())
        {
            if (dr3.IsDBNull(0)) bNoVar = 1001; else
            bNoVar = float.Parse(dr3.GetValue(0).ToString());
        }
        Conn.Close();
        TextBox1.Text = bNoVar.ToString();



    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        int billno = 0;
        try { billno = int.Parse(TextBox1.Text); }
        catch (System.Exception ex) { }

        int a1no = 0;
        try { a1no = int.Parse(TextBox2.Text); }
        catch (System.Exception ex) { }

        int advamt = 0;
        try { advamt = int.Parse(TextBox4.Text); }
        catch (System.Exception ex) { }

        Conn.Open();
        SqlStr = "insert into PaymentTab values(";
        SqlStr = SqlStr + "" + billno + ",";
        SqlStr = SqlStr + "'" + DateTime.Now + "',";
        SqlStr = SqlStr + "" + advamt + ",";
        SqlStr = SqlStr + "'" + Session["CustEventName"] + "',";
        SqlStr = SqlStr + "'" + Session["CustVar"] + "',";
        SqlStr = SqlStr + "'" + DropDownList1.Text + "',";
        SqlStr = SqlStr + "'" + TextBox3.Text + "')";
        
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();

        Response.Redirect("UserResForm.aspx?tid=" + billno + "&tamt=" + a1no);
    }
}
