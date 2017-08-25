using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wbfUCSelectSport : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dlistSelectSport.Items.Add("");
        dlistSelectSport.Items.Add("三頭肌");
        dlistSelectSport.Items.Add("二頭肌");
        dlistSelectSport.Items.Add("背肌");
        dlistSelectSport.Items.Add("肩膀");
        dlistSelectSport.Items.Add("胸肌");
        dlistSelectSport.Items.Add("前臂");
        dlistSelectSport.Items.Add("臀肌");
        dlistSelectSport.Items.Add("腹肌");
        dlistSelectSport.Items.Add("健走");
        dlistSelectSport.Items.Add("跑步");
        dlistSelectSport.Items.Add("單車");
    }

    protected void dlistSelectSport_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}