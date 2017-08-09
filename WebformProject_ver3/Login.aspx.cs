using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String queryStr;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        queryStr = "";
        queryStr = "select * from bjuser where u_name = @username and u_password =@userpasswd";
        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@username", txtAcc.Text);
        cmd.Parameters.AddWithValue("@userpasswd", txtCode.Text);
        reader = cmd.ExecuteReader();
        String name = "";
        while (reader.HasRows && reader.Read())
        {
            name = reader.GetString(reader.GetOrdinal("u_name"));
        }
        if (reader.HasRows)
        {
            Session["uname"] = name;
            Response.BufferOutput = true;
            Response.Redirect("Default.aspx");
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblShow.Text = "帳號或密碼錯誤，請重新輸入";
        }
        reader.Close();
        con.Close();
    }
}