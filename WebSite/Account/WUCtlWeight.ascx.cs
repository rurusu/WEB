using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_WUCtlWeight : System.Web.UI.UserControl
{
    public float getWeight()
    {
        float weight = float.Parse(DLInteger.Text + "." + DLdecimal.Text);
            return weight;               
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DLInteger.Items.Add("0");
            for(int  i = 30; i <= 250; i++)
            {
                DLInteger.Items.Add(i.ToString());
            }
            for(int i = 0; i <= 9; i++)
            {
                DLdecimal.Items.Add(i.ToString());
            }
            DLInteger.Text = "0";
            DLdecimal.Text = "0";
        }
    }
}