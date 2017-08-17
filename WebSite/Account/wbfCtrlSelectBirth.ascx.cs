﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_wbfCtrlSelectBirth : System.Web.UI.UserControl
{
    public string SelectDate
    {
        get
        {
            return dlYear.Text + "-" + dlMonth.Text + "-" + dlDay.Text;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            for (int i = -60; i <= 0; i++)
            {
                dlYear.Items.Add(DateTime.Now.AddYears((i)).ToString("yyyy"));
            }
            for (int i = 1; i < 32; i++)
            {
                if (i < 13)
                    dlMonth.Items.Add(i.ToString("00"));
                if (i < 32)
                    dlDay.Items.Add(i.ToString("00"));
            }
            dlYear.Text = DateTime.Now.ToString("yyyy");
            dlMonth.Text = DateTime.Now.ToString("MM");
            dlDay.Text = DateTime.Now.ToString("DD");
        }
    }
}