using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("~/Account/Login");
        }
        activeTab(btnPersonal, pnlPersonal);
    }
    private void activeTab(Button btn, Panel pnl)
    {
        btnPersonal.BackColor = Color.FromArgb(255, 255, 255);
        btnPersonal.ForeColor = Color.FromArgb(0, 136, 0);
        btnSetPasswd.BackColor = Color.FromArgb(255, 255, 255);
        btnSetPasswd.ForeColor = Color.FromArgb(0, 136, 0);
        btnSetProfit.BackColor = Color.FromArgb(255, 255, 255);
        btnSetProfit.ForeColor = Color.FromArgb(0, 136, 0);
        btnSetAlert.BackColor = Color.FromArgb(255, 255, 255);
        btnSetAlert.ForeColor = Color.FromArgb(0, 136, 0);
        pnlPersonal.Visible = false;
        pnlSetPasswd.Visible = false;
        pnlSetProfit.Visible = false;
        pnlSetAlert.Visible = false;
        btn.BackColor = Color.FromArgb(0, 136, 0);
        btn.ForeColor = Color.FromArgb(255, 255, 255);
        pnl.Visible = true;
    }

    protected void btnPersonal_Click(object sender, EventArgs e)
    {
        activeTab(btnPersonal, pnlPersonal);
    }

    protected void btnSetPasswd_Click(object sender, EventArgs e)
    {
        activeTab(btnSetPasswd, pnlSetPasswd);
    }

    protected void btnSetProfit_Click(object sender, EventArgs e)
    {
        activeTab(btnSetProfit, pnlSetProfit);
    }

    protected void btnSetAlert_Click(object sender, EventArgs e)
    {
        activeTab(btnSetAlert, pnlSetAlert);
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {

    }
}