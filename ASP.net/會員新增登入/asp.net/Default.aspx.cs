using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : System.Web.UI.Page
{
    MySqlConnection conn;
    MySqlCommand cmd;
    MySqlDataReader reader;
    String queryStr;
    String name;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitEvevntMethod(object sender, EventArgs e)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "SELECT * FROM ASPTEST.userregistration where username ='"+tbusername.Text+"'AND password ='"+tbpassword.Text+"'";
        cmd = new MySqlCommand(queryStr, conn);
        reader = cmd.ExecuteReader();
        name = "";
        while(reader.HasRows && reader.Read())
        {
            name = reader.GetString(reader.GetOrdinal("firstnmae"))+""+
                reader.GetString(reader.GetOrdinal("lastname")) + "";
        }
        if(reader.HasRows)
        {
            Session["uname"] = name;
            Response.BufferOutput = true;
            Response.Redirect("loging.aspx", false);
        }
        else
        {
            tbpassword.Text = "登入錯誤"; 
        }
        reader.Close();
        conn.Close();
    }
}