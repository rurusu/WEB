using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using System.Data.SqlClient;

public partial class Account_Register : Page
{
    SqlConnection con;
    SqlCommand cmd;
    String queryStr;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        if (RequiredCode.IsValid && RequiredEmail.IsValid && RequiredFieldValidator1.IsValid && CompareCode.IsValid &&RequiredCode.IsValid&&RegularEmail.IsValid)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
            con = new SqlConnection(connString);
            con.Open();
            queryStr = "";
            queryStr = "insert into bjuser (u_name,u_birth,u_password,u_email,u_gender) values (@username,@Birth, @passwd, @Email, @Gender)";
            cmd = new SqlCommand(queryStr, con);
            cmd.Parameters.AddWithValue("@username", txtName.Text);
            cmd.Parameters.AddWithValue("@passwd", txtCode.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Birth", wbfCtrlSelectBirth.SelectDate);
            if (WUCtlGender1.selectGender == "男")
                cmd.Parameters.AddWithValue("@Gender", 1);
            else
                cmd.Parameters.AddWithValue("@Gender", 0);
            cmd.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("~/");
        }
    }
}