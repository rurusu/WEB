using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Test_v2_Registration_t2 : System.Web.UI.Page
{
    MySqlConnection conn;
    MySqlCommand cmd;
    String queryStr;
    MySqlDataReader reader;
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
            conn = new MySqlConnection(connString);
            conn.Open();
            queryStr = "";
            queryStr = "insert into BJWORK95.BJUser(u_name,u_password,u_email,u_birth,u_sex)value(@username,@passwd,@Email,@Birth,@Gender)";
            cmd = new MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@username", txtName.Text);
            cmd.Parameters.AddWithValue("@passwd", txtCode.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Birth", WUCtlBirthdayBox1.SelectDate);
            cmd.Parameters.AddWithValue("@Gender", WUCtlGender1
                .selectGender);
            
            cmd.ExecuteNonQuery();
            conn.Close();
        }
       


    }

    


    }
   
        
    



    
