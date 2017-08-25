using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wbfCtrlSelectSportTimes : System.Web.UI.UserControl
{
    public string SelectTimes
    {
        get
        {
            return dlHours.Text + ":" + dlMinutes.Text + ":" + dlSsecond.Text;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            for (int i = 0; i < 25; i++)
            {
                dlHours.Items.Add(i.ToString("00"));
            }
            for (int i = 0; i <= 60; i++)
            {
                if (i < 60)
                    dlMinutes.Items.Add(i.ToString("00"));
                if (i < 60)
                    dlSsecond.Items.Add(i.ToString("00"));
            }

            dlHours.Text = "";
            dlMinutes.Text = "";
            dlSsecond.Text = "";
        }
    }
}