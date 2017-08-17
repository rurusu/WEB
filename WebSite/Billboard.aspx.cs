using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Billboard : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader reader;
    String queryStr;

    protected void Page_Load(object sender, EventArgs e)
    {
        activeTab(btnWeeks, pnlWeeks);
        lblTestMsg.Visible = false;
    }

    protected void btnTriceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "三頭肌";
        lblTestMsg.Visible = true;
        int UserID = 0;
        int SportType = 1;
    
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
    }
 
    protected void btnBiceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "二頭肌";
        lblTestMsg.Visible = true;
        int UserID = 0;
        int SportType = 2;
      
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "背肌";
        lblTestMsg.Visible = true;
        int UserID = 0;
        int SportType = 3;
     
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
    }

    protected void btnShoulders_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "肩膀";
        lblTestMsg.Visible = true;
        int UserID = 0;
        int SportType = 4;
     
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
    }

    protected void btnChest_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "胸肌";
        lblTestMsg.Visible = true;
        int UserID = 5;
        int SportType = 8;
       
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
    }

    protected void btnForearms_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "前臂";
        lblTestMsg.Visible = true;
        int UserID = 0;
        int SportType = 6;
      
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
    }

    protected void btnGlutes_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "臀肌";
        lblTestMsg.Visible = true;
        int UserID = 0;
        int SportType = 7;
      
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
    }

    protected void btnAbs_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "腹肌";
        lblTestMsg.Visible = true;
        int UserID = 0;
        int SportType = 8;
       
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
    }

    protected void btnWalking_Click(object sender, EventArgs e)
    {
        //SportID=9
        lblTestMsg.Text = "健走";
        lblTestMsg.Visible = true;
        int UserID = 0;
        int SportType = 9;
      
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);

        }

        /*月排行*/
        MonthRank(SportType);
    }

    protected void btnRunning_Click(object sender, EventArgs e)
    {
        //sportid =10
        lblTestMsg.Text = "跑步";
        lblTestMsg.Visible = true;
        int Sportype = 10;
        int UserID = 0;
       
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, Sportype);

            /*周排行*/
            WeekRank(Sportype);
        }
        MonthRank(Sportype);
    }

    protected void btnCycling_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "單車";
        lblTestMsg.Visible = true;
        int SportType = 11;
        int UserID = 0;
      
        if (Session["uname"] != null)
        {
            /*個人資料表*/
            string Username = (String)Session["uname"];
            string user_id = FindIDbyUsername(Username);
            UserID = Convert.ToInt32(user_id);
            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
    }

    /*方法*/
    private string FindIDbyUsername(string username)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
        String ID = "";
        con = new SqlConnection(connString);
        con.Open();
        queryStr = "";
        queryStr = "Select user_id from bjuser where u_name= @username";
        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@username", username);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            ID = string.Format("{0}", reader["user_id"]);
        }

        reader.Close();
        con.Close();
        return ID;
    }

    protected void MonthRank(int Sportype)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        switch (Sportype)
        {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                queryStr = " select Rank() over(order by 運動量總計 desc) as 名次,使用者, 運動量總計 from(select user_id as 使用者, sum(reps * sets) as 運動量總計 from personal_sport_menu where spdate between '2017-7-1'and ' 2017-7-31' and SportID = @SportType group by user_id ) a order by 名次";
                break;
            default:
                queryStr = "select Rank() over (order by 運動距離 desc) as 名次,使用者, 運動距離 from( select user_id as 使用者, sum(distance) as 運動距離 from personal_sport_menu where spdate between '2017-7-1'and ' 2017-7-31' and SportID=@SportType group by user_id ) a order by 名次";
                break;
        }

        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@SportType", Sportype);
        reader = cmd.ExecuteReader();
        gvMonths.DataSource = reader;
        gvMonths.DataBind();
        reader.Close();
        con.Close();
    }

    protected void WeekRank(int Sportype)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        switch (Sportype)
        {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                queryStr = " select Rank() over(order by 運動量總計 desc) as 名次,使用者, 運動量總計 from(select user_id as 使用者, sum(reps * sets) as 運動量總計 from personal_sport_menu where spdate between '2017-8-4'and '2017-8-11' and SportID = @SportType group by user_id ) a order by 名次";
                break;
            default:
                queryStr = "select Rank() over (order by 運動距離 desc) as 名次,使用者, 運動距離 from( select user_id as 使用者, sum(distance) as 運動距離 from personal_sport_menu where spdate between '2017-8-4'and ' 2017-8-11' and SportID=@Sporttype group by user_id ) a order by 名次";
                break;
        }

        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@Sporttype", Sportype);
        reader = cmd.ExecuteReader();
        if (reader.Read() && reader.HasRows)
        {
            gvWeeks.DataSource = reader;
            gvWeeks.DataBind();
        }
        else
        {
            lblShowWeek.Text = "目前還沒有紀錄喔，快來運動吧 !";
            gvWeeks.Visible = false;
        }

        reader.Close();
        con.Close();
    }

    protected void Personalinfo(int userid, int Sportype)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        queryStr = "";
        switch (Sportype)
        {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                queryStr = " Select spdate 運動日期,reps * sets 運動量,times 運動時間 from personal_sport_menu where user_id = @userid and SportID=@SportID ";
                break;
            default:
                queryStr = "Select spdate 運動日期,distance 運動距離,times 運動時間 from personal_sport_menu where user_id = @userid and SportID=@SportID";
                break;
        }

        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@userid", userid);
        cmd.Parameters.AddWithValue("@SportID", Sportype);
        reader = cmd.ExecuteReader();
        if (!reader.Read())
        {
            lblTestMsg.Text = "你還沒進行這項運動喔";
            gvPersonal.Visible = false;
        }
        else
        {
            gvPersonal.DataSource = reader;
            gvPersonal.DataBind();
        }

        reader.Close();
        con.Close();
    }

    /*click事件*/
    protected void btnMonths_Click(object sender, EventArgs e)
    {
        lblTestMsg.Visible = true;
        activeTab(btnMonths, pnlMonths);
    }

    protected void btnWeeks_Click(object sender, EventArgs e)
    {
        lblTestMsg.Visible = true;
        activeTab(btnWeeks, pnlWeeks);
    }

    private void activeTab(Button btn, Panel pnl)
    {
        btnWeeks.BackColor = Color.FromArgb(255, 255, 255);
        btnWeeks.ForeColor = Color.FromArgb(0, 136, 0);
        btnMonths.BackColor = Color.FromArgb(255, 255, 255);
        btnMonths.ForeColor = Color.FromArgb(0, 136, 0);
        pnlWeeks.Visible = false;
        pnlMonths.Visible = false;
        btn.BackColor = Color.FromArgb(0, 136, 0);
        btn.ForeColor = Color.FromArgb(255, 255, 255);
        pnl.Visible = true;
    }

    protected void btnSelectMonth_Click(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {

        }
    }

    protected void btnSelectWeek_Click(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {

        }
    }
}