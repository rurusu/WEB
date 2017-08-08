using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;


public partial class Test_v2_Registration_t2 : System.Web.UI.Page
{

    /*
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr;
        MySqlDataReader reader;*/
    SqlConnection con;
    SqlCommand cmd;
    String queryStr;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblShow.Visible = false;
        lblNameCheck.Visible = false;
        
    }

    protected void BtnConfirm_Click(object sender, EventArgs e)
    {
        if (RequiredCode.IsValid && RequiredEmail.IsValid && RequiredFieldValidator1.IsValid && CompareCode.IsValid)
        {

            lblShow.Text = "新增資料成功";
            lblShow.Visible = true;
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
            con = new SqlConnection(connString);
            con.Open();
            queryStr = "";
            queryStr = "insert into SuruTest.dbo.bjuser (u_name,u_birth,u_password,u_email,u_gender) values (@username, @passwd, @Email, @Birth, @Gender)";
            cmd = new SqlCommand(queryStr, con);
            cmd.Parameters.AddWithValue("@username", txtName.Text);
            cmd.Parameters.AddWithValue("@passwd", txtCode.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Birth", datepicker.Text);
            if(WUCtlGender1.selectGender=="男")
                cmd.Parameters.AddWithValue("@Gender", 1);
            else
                cmd.Parameters.AddWithValue("@Gender", 0);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        /*

        if (RequiredCode.IsValid && RequiredEmail.IsValid && RequiredFieldValidator1.IsValid && CompareCode.IsValid)
        {
            lblShow.Text = "新增資料成功";
            lblShow.Visible = true;
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
            conn = new MySqlConnection(connString);
            conn.Open();
            queryStr = "";
            queryStr = "insert into BJWORK95.BJUser(u_name,u_password,u_email,u_birth,u_sex)value(@username,@passwd,@Email,@Birth@Gender)";
            cmd = new MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@username", txtName.Text);
            cmd.Parameters.AddWithValue("@passwd", txtCode.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Birth", datepicker.Text);
            cmd.Parameters.AddWithValue("@Gender", WUCtlGender1
                .selectGender);
            
            cmd.ExecuteNonQuery();
            conn.Close();
        }*/



    }

    


    }
   
        
    



    
