using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Drawing;
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
        activeTab(btnWeeks, pnlWeeks);
        lblTestMsg.Visible = false;
    }

    protected void btnTriceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "三頭肌";
        lblTestMsg.Visible = true;
    }

    protected void btnBiceps_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "二頭肌";
        lblTestMsg.Visible = true;
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "背肌";
        lblTestMsg.Visible = true;
    }

    protected void btnShoulders_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "肩膀";
        lblTestMsg.Visible = true;
    }

    protected void btnChest_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "胸肌";
        lblTestMsg.Visible = true;
    }

    protected void btnForearms_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "前臂";
        lblTestMsg.Visible = true;
    }

    protected void btnGlutes_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "臀肌";
        lblTestMsg.Visible = true;
    }

    protected void btnAbs_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "腹肌";
        lblTestMsg.Visible = true;
    }

    protected void btnWalking_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "健走";
        lblTestMsg.Visible = true;

        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;

        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "select user_id as 使用者, spdate as 運動日期, distance as 運動距離 from BJWORK95.personal_sport_menu where sport_id=9 group by user_id order by distance desc limit 10";
        cmd = new MySqlCommand(queryStr, conn);
        read = cmd.ExecuteReader();

        gvWeeks.DataSource = read;
        gvWeeks.DataBind();
        conn.Close();
    }

    protected void btnRunning_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "跑步";
        lblTestMsg.Visible = true;

        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;

        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "select user_id as 使用者,spdate as 運動日期,distance as 運動距離  from BJWORK95.personal_sport_menu where sport_id=10 group by user_id order by distance desc limit 10";
        cmd = new MySqlCommand(queryStr, conn);
        read = cmd.ExecuteReader();

        gvWeeks.DataSource = read;
        gvWeeks.DataBind();
        conn.Close();
    }

    protected void btnCycling_Click(object sender, EventArgs e)
    {
        lblTestMsg.Text = "單車";
        lblTestMsg.Visible = true;

        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;

        conn = new MySqlConnection(connString);
        conn.Open();
        queryStr = "";
        queryStr = "select user_id as 使用者,spdate as 運動日期,distance as 運動距離  from BJWORK95.personal_sport_menu where sport_id=11 group by user_id order by distance desc limit 10";
        cmd = new MySqlCommand(queryStr, conn);
        read = cmd.ExecuteReader();

        gvWeeks.DataSource = read;
        gvWeeks.DataBind();
        conn.Close();
    }

    protected void btnMonths_Click(object sender, EventArgs e)
    {
        activeTab(btnMonths, pnlMonths);
    }

    protected void btnWeeks_Click(object sender, EventArgs e)
    {
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
}