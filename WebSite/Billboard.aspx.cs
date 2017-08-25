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
        test.Visible = false;
        activeTab(btnWeeks, pnlWeeks);
        lblTestMsg.Visible = false;
        GetRank(1);
    }

    protected void btnTriceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "手臂";
        lblTestMsg.Visible = true;
        int SportType = 1;
        GetRank(SportType);
    }
 
    protected void btnBiceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "肩部";
        lblTestMsg.Visible = true;
        int SportType = 2;
        GetRank(SportType);

    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "背部";
        lblTestMsg.Visible = true;       
        int SportType = 3;
        GetRank(SportType);
    }

    protected void btnShoulders_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "胸部";
        lblTestMsg.Visible = true;        
        int SportType = 4;
        GetRank(SportType);
    }

    protected void btnChest_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "腿部";
        lblTestMsg.Visible = true;        
        int SportType = 5;
        GetRank(SportType);

    }

  /*  protected void btnForearms_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "前臂";
        lblTestMsg.Visible = true;
        int SportType = 6;
        GetRank(SportType);
    }

    protected void btnGlutes_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "臀肌";
        lblTestMsg.Visible = true;
        int SportType = 7;
        GetRank(SportType);
    }

    protected void btnAbs_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "腹肌";
        lblTestMsg.Visible = true;        
        int SportType = 8;
        GetRank(SportType);      
    }
    */
    protected void btnWalking_Click(object sender, EventArgs e)
    {
        //SportID=9
        lblTestMsg.Text = "跑步";
        lblTestMsg.Visible = true;        
        int SportType = 9;
        GetRank(SportType);
    }

    protected void btnRunning_Click(object sender, EventArgs e)
    {
        //sportid =10
        lblTestMsg.Text = "健走";
        lblTestMsg.Visible = true;
        int Sportype = 10;
        GetRank(Sportype);
    }

    protected void btnCycling_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "單車";
        lblTestMsg.Visible = true;
        int SportType = 11;
        GetRank(SportType);
    }

    /*方法*/
    protected void GetRank(int SportType)
    {
        if (Session[Dictionary.SK_LOGGIN_User] != null)
        {
            /*個人資料表*/
            bjuser user = Session[Dictionary.SK_LOGGIN_User] as bjuser;
            string Username = user.u_name;
            int UserID = user.user_id;
            string UserImg = user.u_photo;

            imgPersonalPic.ImageUrl = UserImg;
            lblBoardUserName.Text = Username;

            Personalinfo(UserID, SportType);
            /*周排行*/
            WeekRank(SportType);
        }
        MonthRank(SportType);
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
                queryStr = "  select Rank() over(order by 運動量總計 desc) as 名次,使用者, 運動量總計 from ( select b.u_name as 使用者, sum(p.reps * p.sets) as 運動量總計  from personal_sport_menu  as p inner join bjuser as b on p.user_id = b.user_id  where spdate between '2017-7-1'and '2017-7-31' and  p.SportID = @Sporttype group by b.u_name ) a order by 名次";
                break;
            default:
                queryStr = "select Rank() over(order by 健走距離 desc) as 名次,使用者, 健走距離 from ( select b.u_name as 使用者, sum(p.distance) as 健走距離  from personal_sport_menu  as p inner join bjuser as b on p.user_id = b.user_id  where spdate between '2017-7-1'and '2017-7-31' and  p.SportID = 9 group by b.u_name ) a order by 名次";
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
                queryStr = "select Rank() over(order by 運動量總計 desc) as 名次, 使用者, 名稱, 運動量總計 from ( select b.u_photo as  使用者, b.u_name as 名稱, sum(p.reps * p.sets) as 運動量總計  from personal_sport_menu  as p inner join bjuser as b on p.user_id = b.user_id  where spdate between '2017-8-4'and '2017-8-11' and  p.SportID = @Sporttype group by b.u_name,b.u_photo ) a order by 名次";
                break;
            default:
                queryStr = "select Rank() over(order by 運動量總計 desc) as 名次, 使用者, 名稱, 運動量總計 from ( select b.u_photo as  使用者, b.u_name as 名稱, sum(p.distance) as 運動量總計  from personal_sport_menu  as p inner join bjuser as b on p.user_id = b.user_id  where spdate between '2017-7-4'and '2017-8-11' and  p.SportID =@Sporttype group by b.u_name,b.u_photo ) a order by 名次";
                break;
        }

        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@Sporttype", Sportype);
        reader = cmd.ExecuteReader();
        /*  Response.Write("<table Class=\"board - style table table - style\" id=\"testable\"><tr>");
          for(int i = 0; i < reader.FieldCount; i++)        
              Response.Write("<td>" + reader.GetName(i) + "</td>");        
          Response.Write("</tr>");*/

        /*    while ( reader.Read())
            {
                Response.Write("<tr>");
                for(int i = 0; i < reader.FieldCount; i+=4)
                {
                    Response.Write("<td>" + reader[i].ToString() + "</td>");
                    Response.Write("<td><asp:Image   ImageUrl='" + reader[i+1].ToString() + "' /></td>");
                    Response.Write("<td>" + reader[i+2].ToString() + "</td>");
                    Response.Write("<td>" + reader[i+3].ToString() + "</td>");
                }*/

        /* runat=\"server\"*/
        //  Response.Write("</tr>");            
        /*  gvWeeks.DataSource = reader;
          gvWeeks.DataBind();*/
        //     }
        //   Response.Write("</table>");
        if (reader.HasRows)
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
       if (reader.HasRows)
        {
            gvPersonal.DataSource = reader;
            gvPersonal.DataBind();
            gvPersonal.Visible = true;
           lblshow.Visible = false;
        }
        else
        {
            lblshow.Text = "您還沒有進行這項運動喔!";
            lblshow.Visible = true;
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
}