using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rankingv3 : System.Web.UI.Page
{

    MySqlConnection conn;
    MySqlCommand cmd;
    MySqlDataReader read;
    String queryStr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnWalking_Click(object sender, EventArgs e)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
        //WebAppConnString要在Web.config裡面connection下定義
        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "select user_id as 使用者,spdate as 運動日期,distance as 運動距離  from BJWORK95.personal_sport_menu where sport_id=9 group by user_id order by distance desc limit 10";
        cmd = new MySqlCommand(queryStr, conn);
        read = cmd.ExecuteReader();
        
        GridView1.DataSource = read;
        GridView1.DataBind();        
        conn.Close();
        

    }

    protected void btnRunning_Click(object sender, EventArgs e)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;

        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "select user_id as 使用者,spdate as 運動日期,distance as 運動距離  from BJWORK95.personal_sport_menu where sport_id=10 group by user_id order by distance desc limit 10";
        cmd = new MySqlCommand(queryStr, conn);
        read = cmd.ExecuteReader();

        GridView1.DataSource = read;
        GridView1.DataBind();
        conn.Close();
    }

    protected void btnCycling_Click(object sender, EventArgs e)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;

        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "select user_id as 使用者,spdate as 運動日期,distance as 運動距離  from BJWORK95.personal_sport_menu where sport_id=11 group by user_id order by distance desc limit 10";
        cmd = new MySqlCommand(queryStr, conn);
        read = cmd.ExecuteReader();

        GridView1.DataSource = read;
        GridView1.DataBind();
        conn.Close();
    }
}