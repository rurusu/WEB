using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Import : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String queryStr;
    SqlDataReader reader;

    protected void Page_Load(object sender, EventArgs e)
    {
        txtImpDistance.Enabled = false;
        txtImpReps.Enabled = false;
        txtImpSets.Enabled = false;
        txtImpTime.Enabled = false;
        DLselectPond.Enabled = false;
        if (!Page.IsPostBack)
        {
            DLselectPond.Items.Add("請選擇");
            for (int i = 5; i <= 400; i += 5)
            {
                DLselectPond.Items.Add(i.ToString());
            }
            DLselectPond.Text = "請選擇";
        }
       
    }
    
    protected void dlSelectSport_SelectedIndexChanged(object sender, EventArgs e)
    {
        divChange.Style.Add("background-image", "url('../image/import/" + dlSelectSport.SelectedIndex + ".png')");
        divChange.Style.Add("background-size", "200px");
        divChange.Style.Add("background-repeat", "no-repeat");
        divChange.Style.Add("background-attachment", "scroll");
        divChange.Style.Add("background-position-y", "center");
        divChange.Style.Add("background-position-x", "right");

        switch (dlSelectSport.SelectedIndex)
        {
            case 1:
            case 2:
            case 3:
                txtImpDistance.Enabled = true;
                txtImpTime.Enabled = true;
                break;
            default:
                txtImpReps.Enabled = true;
                txtImpSets.Enabled = true;
                DLselectPond.Enabled = true;
                break;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        users user = Session[Dictionary.SK_LOGGIN_User] as users;
        int UserID = user.user_id;

        if (dlSelectSport.SelectedIndex != 0)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
            con = new SqlConnection(connString);
            con.Open();
            queryStr = "";
            queryStr = "insert into pb (user_id, dates, sport_id, distance,sets,reps,times,pound,calories)values (@user_id,  GETDATE(),  @SportID, @distance,@sets,@reps, @times,@pound,0)";
            cmd = new SqlCommand(queryStr, con);
            cmd.Parameters.AddWithValue("@user_id", UserID);
            cmd.Parameters.AddWithValue("@SportID", dlSelectSport.SelectedIndex);
            cmd.Parameters.AddWithValue("@distance", txtImpDistance.Text);
            cmd.Parameters.AddWithValue("@times", wbfCtrlSelectSportTimes.SelectTimes);
            cmd.Parameters.AddWithValue("@reps", txtImpReps.Text);
            cmd.Parameters.AddWithValue("@sets", txtImpSets.Text);
            int ponds = 0;
            if (DLselectPond.Text == "請選擇")
                ponds = 0;
            else
                ponds = Convert.ToInt32(DLselectPond.Text);
            cmd.Parameters.AddWithValue("@pound",ponds);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/Import");
            /*
            dlSelectSport.ClearSelection();
            txtImpDistance.Text = "";
            txtImpReps.Text = "";
            txtImpSets.Text = "";
            lblAlert.Text = "";
            */
        }
        else {
            lblAlert.Text = "請選擇運動種類";
        }
    }
}