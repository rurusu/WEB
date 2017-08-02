using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test_v2_WUCtlGender : System.Web.UI.UserControl
{
    public string selectGender
    {
        get
        {
            return dlGender.Text;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dlGender.Items.Add("男");
            dlGender.Items.Add("女");
        }
        dlGender.Text = "男";
    }
}