using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class registrtion : System.Web.UI.Page
{
    MySqlConnection conn;
    MySqlCommand cmd;
    String queryStr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void registerEventMethod(object sender, EventArgs e)
    {
        registeruser();
    }
    private void registeruser()
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
        
        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "INSERT INTO ASPTEST.userregistration(firstnmae, lastname, email, phonenumber, username, password)" +
            "VALUES('" + tbfirstname.Text + "','" + tblasttname.Text + "','" + tbemail.Text + "','" + tbphone.Text + "','" + tbusername.Text + "','" + tbpassword.Text + "')";
        cmd = new MySqlCommand(queryStr, conn);
        cmd.ExecuteReader();
        conn.Close();

    }
}