using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Information : System.Web.UI.Page
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

    protected void btnLinkShoulder_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Information/shoulder");
    }

    protected void btnLinkChest_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Information/chest");
    }

    protected void btnLinkBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Information/back");
    }

    protected void btnLinkArms_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Information/arms");
    }

    protected void btnLinkLegs_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Information/legs");
    }
}