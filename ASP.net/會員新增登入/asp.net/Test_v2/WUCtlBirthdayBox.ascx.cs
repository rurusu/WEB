using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test_v2_WUCtlBirthdayBox : System.Web.UI.UserControl
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
            for(int i = 1; i <= 100; i++)
            {
                dlYear.Items.Add(DateTime.Now.AddYears((i - 50)).ToString("yyyy"));
                if(i<13)
                {
                    dlMonth.Items.Add(i.ToString("00"));
                    if (i == 2)//2月份
                    {
                        for(int j = 1; j <= 28; j++)
                        {
                            dlDay.Items.Add(j.ToString("00"));
                        }
                    }
                    if(i==1||i==3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12)
                    {
                        for (int j = 1; j <= 31; j++)
                        {
                            dlDay.Items.Add(j.ToString("00"));
                        }
                    }
                    if (i == 4 || i == 6 || i == 9 || i == 11 )
                    {
                        for (int j = 1; j <= 30; j++)
                        {
                            dlDay.Items.Add(j.ToString("00"));
                        }
                    }
                }
            }
            dlYear.Text = DateTime.Now.ToString("yyyy");
            dlMonth.Text = DateTime.Now.ToString("MM");
            dlDay.Text = DateTime.Now.ToString("DD");
        }
    }
}