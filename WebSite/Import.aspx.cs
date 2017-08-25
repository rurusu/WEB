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
            case 4:
            case 5:
                txtImpReps.Enabled = true;
                txtImpSets.Enabled = true;
                break;
            default:
                txtImpDistance.Enabled = true;
                txtImpTime.Enabled = true;
                break;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        bjuser user = Session[Dictionary.SK_LOGGIN_User] as bjuser;
        int UserID = user.user_id;

        if (dlSelectSport.SelectedIndex != 0)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
            con = new SqlConnection(connString);
            con.Open();
            queryStr = "";
            queryStr = "insert into personal_sport_menu (user_id, spdate, SportID, distance, reps, sets, times, finish) " +
            "values (@user_id, @spdate, @SportID, @distance, @reps, @sets, @times, @finish)";
            cmd = new SqlCommand(queryStr, con);
            cmd.Parameters.AddWithValue("@user_id", UserID);
            cmd.Parameters.AddWithValue("@spdate", DateTime.Now.ToString("yyyy-MM-dd"));
            cmd.Parameters.AddWithValue("@SportID", dlSelectSport.SelectedIndex);
            cmd.Parameters.AddWithValue("@distance", txtImpDistance.Text);
            cmd.Parameters.AddWithValue("@reps", txtImpReps.Text);
            cmd.Parameters.AddWithValue("@sets", txtImpSets.Text);
            cmd.Parameters.AddWithValue("@times", wbfCtrlSelectSportTimes.SelectTimes);
            cmd.Parameters.AddWithValue("@finish", 1);
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