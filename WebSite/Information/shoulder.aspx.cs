using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Information_shoulder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSensor_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Information/main");
    }

    protected void btnGPS_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Information/outdoor");
    }

    protected void btnLife_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Information/health_life");
    }

}