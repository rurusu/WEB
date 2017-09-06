using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using WebSite;
using System.Linq;

public partial class Account_Login : Page
{
    SqlConnection con;
    SqlCommand cmd;
    String queryStr;
    SqlDataReader reader;

    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterHyperLink.NavigateUrl = "Register";
        OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
        var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        if (!String.IsNullOrEmpty(returnUrl))
        {
            RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        }
    }

    protected void LogIn(object sender, EventArgs e)
    {
        
        LinqDataContext lqdb = new LinqDataContext();
        users user = lqdb.users.FirstOrDefault(m => m.u_email.Equals(Email.Text) && m.u_password.Equals(Password.Text));
        if (user != null)
        {
            Session[Dictionary.SK_LOGGIN_User] = user;
            Response.BufferOutput = true;
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            lblShow.Text = "帳號或密碼錯誤，請重新輸入";
        }      
    }
}