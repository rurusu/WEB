using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Billboard : System.Web.UI.Page
{

    MySqlConnection conn;
    MySqlCommand cmd;
    MySqlDataReader read;
    String queryStr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnTriceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "三頭肌";
    }

    protected void btnBiceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "二頭肌";
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "背肌";
    }

    protected void btnShoulders_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "肩膀";
    }

    protected void btnChest_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "胸肌";
    }

    protected void btnForearms_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "前臂";
    }

    protected void btnGlutes_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "臀肌";
    }

    protected void btnAbs_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "腹肌";
    }

    protected void btnWalking_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "健走";

        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;

        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "select user_id as 使用者, spdate as 運動日期, distance as 運動距離 from BJWORK95.personal_sport_menu where sport_id=9 group by user_id order by distance desc limit 10";
        cmd = new MySqlCommand(queryStr, conn);
        read = cmd.ExecuteReader();

        BillboardTable.DataSource = read;
        BillboardTable.DataBind();
        conn.Close();
    }

    protected void btnRunning_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "跑步";

        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;

        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "select user_id as 使用者,spdate as 運動日期,distance as 運動距離  from BJWORK95.personal_sport_menu where sport_id=10 group by user_id order by distance desc limit 10";
        cmd = new MySqlCommand(queryStr, conn);
        read = cmd.ExecuteReader();

        BillboardTable.DataSource = read;
        BillboardTable.DataBind();
        conn.Close();
    }

    protected void btnCycling_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "單車";

        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;

        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "select user_id as 使用者,spdate as 運動日期,distance as 運動距離  from BJWORK95.personal_sport_menu where sport_id=11 group by user_id order by distance desc limit 10";
        cmd = new MySqlCommand(queryStr, conn);
        read = cmd.ExecuteReader();

        BillboardTable.DataSource = read;
        BillboardTable.DataBind();
        conn.Close();
    }
}