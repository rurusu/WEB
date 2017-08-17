using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_UserSet : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String queryStr;
    SqlDataReader reader;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("~/Account/Login");
        }
        else
        {
            lblMsg.Text = "您現在以 " + (String)(Session["uname"]) + " 的身分登入。";
        }
    }
}