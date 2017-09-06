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
    int SportType;
   

    protected void Page_Load(object sender, EventArgs e)
    {
        test.Visible = false;
        activeTab(btnWeeks, pnlWeeks);
        //lblTestMsg.Visible = false;

        //btnSelectLastMonth.Text = DateTime.Now.ToString("yyyy/MM");
        //btnSelectMonth.Text= DateTime.Parse(DateTime.Now.ToString("yyyy-MM-01")).AddMonths(-1).ToString("yyyy/MM");
        btnSelectMonth.Text = DateTime.Now.ToString("yyyy/MM");
        btnSelectLastMonth.Text = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-01")).AddMonths(-1).ToString("yyyy/MM");
        string type = "手臂";
        GetRank(4, type);
        RightImg(4);
    }

    protected void btnTriceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "手臂";
        string type = lblTestMsg.Text;
        SportType = 4;
        GetRank(SportType, type);
        RightImg(SportType);
        lblTestMsg.Visible = false;
    }
 
    protected void btnBiceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "肩部";
        string type = lblTestMsg.Text;
        SportType = 5;
        GetRank(SportType, type);
        RightImg(SportType);
        lblTestMsg.Visible = false;
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "背部";
        string type = lblTestMsg.Text;
        SportType = 6;
        GetRank(SportType, type);
        RightImg(SportType);
        lblTestMsg.Visible = false;
    }

    protected void btnShoulders_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "胸部";
        string type = lblTestMsg.Text;
        SportType = 7;
        GetRank(SportType, type);
        RightImg(SportType);
        lblTestMsg.Visible = false;
    }

    protected void btnChest_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "腿部";
        string type = lblTestMsg.Text;
        SportType = 8;
        GetRank(SportType, type);
        RightImg(SportType);
        lblTestMsg.Visible = false;
    }

  
    protected void btnWalking_Click(object sender, EventArgs e)
    {
        //SportID=9
        lblTestMsg.Text = "跑步";
        string type = lblTestMsg.Text;
        SportType = 1;
        GetRank(SportType, type);
        RightImg(SportType);
        lblTestMsg.Visible = false;
    }

    protected void btnRunning_Click(object sender, EventArgs e)
    {
        //sportid =10
        lblTestMsg.Text = "健走";
        string type = lblTestMsg.Text;
        SportType = 2;
        GetRank(SportType, type);
        RightImg(SportType);
        lblTestMsg.Visible = false;
    }

    protected void btnCycling_Click(object sender, EventArgs e)
    {
        
        lblTestMsg.Text = "單車";
        string type = lblTestMsg.Text;
        SportType = 3;
        GetRank(SportType, type);
        RightImg(SportType);
        lblTestMsg.Visible = false;
    }

    protected void RightImg(int p)
    {
        switch (p)
        {
            case 1:
                imgRight.Src = "../image/bills/outdoor-run.png";
                break;
            case 2:
                imgRight.Src = "../image/bills/outdoor-hike.png";
                break;
            case 3:
                imgRight.Src = "../image/bills/outdoor-bike.png";
                break;
            case 4:
                imgRight.Src = "../image/bills/gym-arms.png";
                break;
            case 5:
                imgRight.Src = "../image/bills/gym-shoulder.png";
                break;
            case 6:
                imgRight.Src = "../image/bills/gym-back.png";
                break;
            case 7:
                imgRight.Src = "../image/bills/gym-chest.png";
                break;
            case 8:
                imgRight.Src = "../image/bills/gym-legs.png";
                break;
            default:
                imgRight.Src = "~/image/bills/game.gif";
                break;
        }
    }

    /*方法*/
    protected void GetRank(int SportType , string type)
    {
        ClearGridview();
        if (Session[Dictionary.SK_LOGGIN_User] != null)
        {
            /*個人資料表*/
            users user = Session[Dictionary.SK_LOGGIN_User] as users;                       

            imgPersonalPic.ImageUrl = user.u_photo;
            lblBoardUserName.Text = user.u_name;

            Personalinfo(user.user_id, SportType);
            /*周排行*/
            WeekRank(SportType,type);
        }
        MonthRank(SportType, type);
        LastMonthRank(SportType, type);
        PanelForBillboard.Visible = true;
    }
    

    protected void MonthRank(int Sportype,string type)
    {
        string MonthHead = DateTime.Now.ToString("yyyy-MM-01");
        string MonthTail= DateTime.Parse(DateTime.Now.ToString("yyyy-MM-01")).AddMonths(1).AddDays(-1).ToString("yyyy-MM-dd");
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        switch (Sportype)
        {
            case 1:
            case 2:
            case 3:
                queryStr = "select Rank() over(order by 健走距離 desc) as 名次,使用者, 健走距離 from ( select b.u_name as 使用者, sum(p.distance) as 健走距離 from pb as p inner join users as b on p.user_id = b.user_id where dates between @Head and @Tail and  p.sport_id = @SportType group by b.u_name ) a order by 名次";
                break;
            default:
                queryStr = "  select Rank() over(order by 運動量總計 desc) as 名次,使用者, 運動量總計 from (select b.u_name as 使用者, sum(p.reps * p.sets) as 運動量總計  from pb  as p inner join users as b on p.user_id = b.user_id where dates between @Head and @Tail and  p.sport_id = @SportType group by b.u_name ) a order by 名次";
                break;

        }

        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@SportType", Sportype);
        cmd.Parameters.AddWithValue("@Head", MonthHead);
        cmd.Parameters.AddWithValue("@Tail", MonthTail);
        reader = cmd.ExecuteReader();
        gvMonths.DataSource = reader;
        gvMonths.DataBind();
        reader.Close();
        con.Close();
    }
    protected  void LastMonthRank(int Sportype,string type)
    {
        string lastMonthHead = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-01")).AddMonths(-1).ToString("yyyy-MM-01");
        string lastMonthTail = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-01")).AddDays(-1).ToString("yyyy-MM-dd");
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        switch (Sportype)
        {
            case 1:
            case 2:
            case 3:
                queryStr = "select Rank() over(order by 健走距離 desc) as 名次,使用者, 健走距離 from ( select b.u_name as 使用者, sum(p.distance) as 健走距離 from pb as p inner join users as b on p.user_id = b.user_id where dates between @Head and @Tail and  p.sport_id = @SportType group by b.u_name ) a order by 名次";
                break;
            default:
                queryStr = "  select Rank() over(order by 運動量總計 desc) as 名次,使用者, 運動量總計 from (select b.u_name as 使用者, sum(p.reps * p.sets) as 運動量總計  from pb  as p inner join users as b on p.user_id = b.user_id where dates between @Head and @Tail and  p.sport_id = @SportType group by b.u_name ) a order by 名次";
                break;

        }

        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@SportType", Sportype);
        cmd.Parameters.AddWithValue("@Head", lastMonthHead);
        cmd.Parameters.AddWithValue("@Tail", lastMonthTail);
        reader = cmd.ExecuteReader();
        gvLastMonth.DataSource = reader;
        gvLastMonth.DataBind();
        reader.Close();
        con.Close();

    }
    protected void WeekRank(int Sportype,string type)
    {
        String weekStart = DateTime.Now.AddDays(-7).ToString("yyyy-MM-dd");
        String weekfinal = DateTime.Now.ToString("yyyy-MM-dd");
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        switch (Sportype)
        {
            case 1:
            case 2:
            case 3:
                queryStr = "select Rank() over(order by 健走距離 desc) as 名次,使用者, 健走距離 from ( select b.u_name as 使用者, sum(p.distance) as 健走距離 from pb as p inner join users as b on p.user_id = b.user_id where dates between @weekHead and @weekTail  and  p.sport_id = @SportType group by b.u_name ) a order by 名次";
                break;
            default:
                queryStr = "  select Rank() over(order by 運動量總計 desc) as 名次,使用者, 運動量總計 from (select b.u_name as 使用者, sum(p.reps * p.sets) as 運動量總計  from pb  as p inner join users as b on p.user_id = b.user_id where dates between @weekHead and @weekTail and  p.sport_id = @SportType group by b.u_name ) a order by 名次";
                break;
        }

        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@Sporttype", Sportype);
        cmd.Parameters.AddWithValue("@weekHead", weekStart);
        cmd.Parameters.AddWithValue("@weekTail", weekfinal);
        reader = cmd.ExecuteReader();
        
        if (reader.HasRows)
        {
            lblShowWeek.Text = type;
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
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        queryStr = "";
        switch (Sportype)
        {
            case 1:
            case 2:
            case 3:
                queryStr = " Select convert(varchar,dates,111) as 運動日期,distance 運動距離,times 運動時間 from pb where user_id = @userid and sport_id=@SportID";
                break;
            default:
                queryStr = " select convert(varchar,dates,111) as 運動日期 , (sets*reps) 運動量 , pound as 磅數, times 運動時間 from pb where user_id=@userid and sport_id =@SportID";
                break;            
        }

        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@userid", userid);
        cmd.Parameters.AddWithValue("@SportID", Sportype);
        reader = cmd.ExecuteReader();
       if (reader.HasRows)
        {
            
            
            gvPersonal.DataSource = reader;
            gvPersonal.DataBind();
            gvPersonal.Visible = true;
         
        }
        reader.Close();
        con.Close();
    }

    /*click事件*/
    protected void btnMonths_Click(object sender, EventArgs e)
    {
        //lblTestMsg.Visible = true;
        
        activeTab(btnMonths, pnlMonths);
    }

    protected void btnWeeks_Click(object sender, EventArgs e)
    {
        //lblTestMsg.Visible = true;
        
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
        activeTab(btnMonths, pnlMonths);
        gvMonths.Visible = true;
        gvLastMonth.Visible = false;
    }

    protected void btnSelectWeek_Click(object sender, EventArgs e)
    {
        
    }

    protected void gvMonths_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[0].Text == "1")
            {
                e.Row.CssClass = "st-style";
            }
            else if (e.Row.Cells[0].Text == "2")
            {
                e.Row.CssClass = "nd-style";
            }
            else if (e.Row.Cells[0].Text == "3")
            {
                e.Row.CssClass = "rd-style";
            }
        }
    }

    protected void gvWeeks_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[0].Text == "1")
            {
                e.Row.CssClass = "st-style";
            }
            else if (e.Row.Cells[0].Text == "2")
            {
                e.Row.CssClass = "nd-style";
            }
            else if (e.Row.Cells[0].Text == "3")
            {
                e.Row.CssClass = "rd-style";
            }
        }
    }

    protected void btnSelectLastMonth_Click(object sender, EventArgs e)
    {
        activeTab(btnMonths, pnlMonths);
        gvLastMonth.Visible = true;
        gvMonths.Visible = false;
    }

    protected void btnIOSGame_Click(object sender, EventArgs e)
    {
        PanelForBillboard.Visible = false;
        iosgame();
        SportType = 9;
        RightImg(SportType);
    }

    protected void iosgame()
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        queryStr = "";
        queryStr = "select Top(10) Rank() over(order by 勝場數 desc) as 名次, 玩家,勝場數 from (select u_name as 玩家,u_win as 勝場數 from users)a order by 1";
        cmd = new SqlCommand(queryStr, con);
        reader = cmd.ExecuteReader();
        gvPersonal.DataSource = reader;
        gvPersonal.DataBind();
        reader.Close();
        con.Close();
    }

    protected void ClearGridview()
    {
        gvLastMonth.DataSource = null;
        gvLastMonth.DataBind();
        gvMonths.DataSource = null;
        gvMonths.DataBind();
        gvPersonal.DataSource = null;
        gvPersonal.DataBind();
        gvWeeks.DataSource = null;
        gvWeeks.DataBind();

    }

    protected void gvPersonal_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[0].Text == "1")
            {
                e.Row.CssClass = "st-style";
            }
            else if (e.Row.Cells[0].Text == "2")
            {
                e.Row.CssClass = "nd-style";
            }
            else if (e.Row.Cells[0].Text == "3")
            {
                e.Row.CssClass = "rd-style";
            }
        }
    }
}