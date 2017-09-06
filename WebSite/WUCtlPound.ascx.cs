using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCtlPound : System.Web.UI.UserControl
{
    public int getPound()
    {
        int Pound = Convert.ToInt32(DLPound.Text);
        return Pound;
    }
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (!Page.IsPostBack)
        {
            DLPound.Items.Add("請選擇");
            for(int i =5;i<=400;i+=5)
            {
                DLPound.Items.Add(i.ToString());
            }
            DLPound.Text = "請選擇";
        }
    }
}