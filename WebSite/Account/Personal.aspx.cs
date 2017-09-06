using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_Personal : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection conn;
    SqlCommand cmd;
    String queryStr;
    SqlDataReader reader;

    LinqDataContext lqdb = new LinqDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session[Dictionary.SK_LOGGIN_User] == null)
        {
            Response.Redirect("~/Account/Login");
        }
        GetPerInf();
        activeTab(btnPersonal, pnlPersonal);
        lblCheck.Visible = false;
        lblComfirmNew.Visible = false;
    }

    private void activeTab(Button btn, Panel pnl)
    {
        btnPersonal.BackColor = Color.FromArgb(255, 255, 255);
        btnPersonal.ForeColor = Color.FromArgb(0, 136, 0);
        btnSetPasswd.BackColor = Color.FromArgb(255, 255, 255);
        btnSetPasswd.ForeColor = Color.FromArgb(0, 136, 0);
        btnSetProfit.BackColor = Color.FromArgb(255, 255, 255);
        btnSetProfit.ForeColor = Color.FromArgb(0, 136, 0);
        pnlPersonal.Visible = false;
        pnlSetPasswd.Visible = false;
        pnlSetProfit.Visible = false;
        pnlSetAlert.Visible = false;
        pnlComplete.Visible = false;
        btn.BackColor = Color.FromArgb(0, 136, 0);
        btn.ForeColor = Color.FromArgb(255, 255, 255);
        pnl.Visible = true;
    }

    protected void btnPersonal_Click(object sender, EventArgs e)
    {
             GetPerInf();        
    }

    protected void btnSetPasswd_Click(object sender, EventArgs e)
    {
        activeTab(btnSetPasswd, pnlSetPasswd);
    }

    protected void btnSetProfit_Click(object sender, EventArgs e)
    {
       /* txtSetHeight.Text = "";
        txtSetWeight.Text = "";*/
        activeTab(btnSetProfit, pnlSetProfit);
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {

    }

    protected void btnSubmitAvatar_Click(object sender, EventArgs e)
    {

        users user = Session[Dictionary.SK_LOGGIN_User] as users;
        users update = lqdb.users.FirstOrDefault(m => m.u_email.Equals(user.u_email));
        String FileSave = user.u_photo;
        if (fupAvatar.HasFile)
        {           
            String FileName = user.u_email + ".png";
            String FilePath = Server.MapPath("~/photo/");
            FileSave = FilePath + FileName;
            fupAvatar.SaveAs(FileSave);
            user.u_photo = "~/photo/" + FileName;
            update.u_photo = "photo/" + FileName;
            lqdb.SubmitChanges();
            lblMsg.Text = "更改完成";
            lblMsg.Visible = true;
        }
        if(txtSetName.Text!="")
        {
            user.u_name = txtSetName.Text;
            update.u_name = txtSetName.Text;
            lqdb.SubmitChanges();
            lblMsg.Text = "更改完成";
            lblMsg.Visible = true;
        }    
       
        activeTab(btnSetProfit, pnlSetProfit);

    }

    protected void btnSubmitPasswd_Click(object sender, EventArgs e)
    {
        
        users user = lqdb.users.FirstOrDefault(m => m.u_password.Equals(txtOldPasswd.Text));
        if (user != null)
        {
            if(txtNewPasswd.Text==txtCheck.Text)
            {
                user.u_password = txtNewPasswd.Text;
                lqdb.SubmitChanges();
                activeTab(btnSetPasswd, pnlComplete);
               
            }
            else
            {
                lblComfirmNew.Visible = true;
                txtNewPasswd.Text = "";
                txtCheck.Text = "";
                activeTab(btnSetPasswd, pnlSetPasswd);
            }
        }
        else
        {
            lblCheck.Visible = true;
            txtOldPasswd.Text = "";
            txtNewPasswd.Text = "";
            txtCheck.Text = "";
            activeTab(btnSetPasswd, pnlSetPasswd);
        }
    }

    protected void btnSubmitHealthy_Click(object sender, EventArgs e)
    {
        users user = Session[Dictionary.SK_LOGGIN_User] as users;
      
        if (WUCtlHeight.getHeight()==0)
        {
            lblChexkHeight.Visible = true;
        }
        else if (WUCtlHeight.getHeight() < 54)
        {
            lblChexkHeight.Text = "輸入身高錯誤，請重新選擇";
            lblChexkHeight.Visible = true;
        }
        else if(WUCtlWeight.getWeight()==0)
        {
            lblChexkWeight.Visible = true;
        }
        else if (WUCtlWeight.getWeight() <30)
        {
            lblChexkWeight.Text = "輸入體重錯誤，請重新選擇";
            lblChexkWeight.Visible = true;
        }
        else 
        {
            float textHeight = WUCtlHeight.getHeight();
            float textWeight =WUCtlWeight.getWeight();
            var insert = new user_health
            {
                user_id = user.user_id,              
                age = Getage(),
                height = textHeight,
                weight = (decimal)textWeight,
                dates = DateTime.Now,
                BMI = (Decimal)GetBMI(textWeight,textHeight),
                BMR = (Decimal)GetBMR(textWeight, textHeight,Getage()),
                drink_liter = (Decimal)GetDrink(textWeight),                
            };

            lqdb.user_health.InsertOnSubmit(insert);
            lqdb.SubmitChanges();
          
            lblChexkHeight.Visible = false;
            lblChexkWeight.Visible = false;
            lblMsg2.Text = "更新身高體重成功";
            lblMsg2.Visible = true;          
        }
        activeTab(btnSetProfit, pnlSetProfit);
    }
    /*方法*/
    protected void GetPerInf()
    {
        users user = Session[Dictionary.SK_LOGGIN_User] as users;
        users update = lqdb.users.FirstOrDefault(m => m.u_email.Equals(user.u_email));
        imgAvatar.ImageUrl = user.u_photo;
        lblUserName.Text = user.u_name;
        lblUserEmail.Text = user.u_email;
        lblYearsOld.Text = Getage().ToString();
       
        string height = "";
        string weight = "";
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
        //String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;

        con = new SqlConnection(connString);
        con.Open();
        queryStr = "";
        queryStr = "select top(1) * from user_health where user_id=@id order by dates desc";        
        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@id", user.user_id);
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            height = string.Format("{0:F1}", reader["height"]);
            weight = string.Format("{0:F1}", reader["weight"]);
            lblUserHeight.Text = height + " 公分";
            lblUserWeight.Text = weight + " 公斤";
            lblUserBMI.Text = string.Format("{0:F2}", reader["BMI"]);
            lblUserDrinking.Text = string.Format("{0:F2}  c.c.", reader["drink_liter"]);
            lblUserMeta.Text = string.Format("{0:F2} 大卡", reader["BMR"]);
        }
        else
        {
            lblUserHeight.Text = "尚未有資料";
            lblUserWeight.Text = "尚未有資料";
            lblUserBMI.Text = "尚未有資料";
            lblUserDrinking.Text = "尚未有資料";
            lblUserMeta.Text = "尚未有資料";
        }
        reader.Close();
        con.Close();
        activeTab(btnPersonal, pnlPersonal);
    }
    protected int Getage()
    {
        users user = Session[Dictionary.SK_LOGGIN_User] as users;
        string birthyear = "";
        int BirthYear = 0;
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        queryStr = "select Year(u_birth) as 出生年 from users where user_id =@id";
        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@id", user.user_id);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            birthyear = string.Format("{0}", reader["出生年"]);
        }       
        reader.Close();
        con.Close();
        BirthYear = Convert.ToInt32(birthyear);
        string year_now = DateTime.Now.Year.ToString();
        int y_now = Convert.ToInt32(year_now);
        int age = y_now - BirthYear;
        return age;
    }
   protected float  GetDrink(float weight)
    {
         float milliliter = 0;
        milliliter = (float)weight * 30;
        return milliliter;
    }   
    protected float GetBMR(float weight,float height,int age)
    { //基礎代謝率
        float BMR = 0;
        float wei = 0;
        float hei = 0;
        float userage = 0;
        users user = Session[Dictionary.SK_LOGGIN_User] as users;
        if (user.u_sex == false)
        {//woman
            wei = (float)9.6 * weight;
            hei = (float)1.8 * height;
            userage = Getage() * (float)4.7;
            BMR = wei + hei - age + 655;
        }
        else
        {
            wei = (float)13.7 * weight;
            hei = 5 * height;
            userage = Getage() * (float)6.8;
            BMR = wei + hei - age + 66;
        }

           
        return BMR;
    }
   
    protected float GetBMI(float weight,float height)
    {
        float hei = height / 100;
        float BMI = weight/(hei*hei);
        return BMI;
    }
    /*abandon*/
    protected float GetBMI()
    {/*不用*/
        float wei = 0;
        float hei = 0;
        users user = Session[Dictionary.SK_LOGGIN_User] as users;
        // user_health health = lqdb.user_health.FirstOrDefault(m => m.user_id == user.user_id);
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        queryStr = "";
        queryStr = "select top(1) * from user_health where user_id=@id order by health_num desc";
        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@id", user.user_id);
        reader = cmd.ExecuteReader();       
        while (reader.Read())
        {
            string weight = string.Format("{0}", reader["weight"]);
            string height = string.Format("{0}", reader["height"]);
            wei = float.Parse(weight);
            hei = float.Parse(height)/100;
        }       
        reader.Close();
        con.Close();
        float BMI = wei / (hei * hei);
        return BMI;

    }
    protected float GetBMR()
    {//不用
        users user = Session[Dictionary.SK_LOGGIN_User] as users;
        user_health health = lqdb.user_health.FirstOrDefault(m => m.user_id == user.user_id);
        float BMR = 0;
        float wei = 0;
        float hei = 0;
        float age = 0;

        if (user.u_sex == false)
        {
            //女
            wei = (float)9.6 * (float)health.weight;
            hei = (float)1.8 * (float)health.height;
            age = Getage() * (float)4.7;
            BMR = wei + hei - age + 655;

        }
        else
        {
            wei = (float)13.7 * (float)health.weight;
            hei = 5 * (float)health.height;
            age = Getage() * (float)6.8;
            BMR = wei + hei - age + 66;
        }
        return BMR;
    }
}