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
        LoginHyperLink.NavigateUrl = "Login";
        lblDoubleAcc.Visible = false;

        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        if(RequiredEmail.IsValid&& RegularEmail.IsValid)
        {
            LinqDataContext lqdb = new LinqDataContext();
            users user = lqdb.users.FirstOrDefault(m => m.u_email.Equals(txtEmail.Text));
            if(user == null)
            {
                if (RequiredCode.IsValid && RequiredFieldValidator1.IsValid && CompareCode.IsValid && RequiredCode.IsValid)
                {
                    String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
                    con = new SqlConnection(connString);
                    con.Open();
                    queryStr = "";
                    queryStr = "insert into users (u_name,u_photo,u_password,u_email,u_birth,u_sex) values (@username, @photo, @passwd, @Email, @Birth, @Gender)";
                    cmd = new SqlCommand(queryStr, con);
                    cmd.Parameters.AddWithValue("@photo", "~/photo/default.png");
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
            else
            {
                lblDoubleAcc.Visible = true;
                txtEmail.Text = "";
                txtName.Text = "";
                txtCode.Text = "";
                txtConfirm.Text = "";
            }
        }
        
    }
}