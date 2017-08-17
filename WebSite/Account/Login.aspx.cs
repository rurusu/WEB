using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using WebSite;

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
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
        con = new SqlConnection(connString);
        con.Open();
        queryStr = "";
        queryStr = "select * from bjuser where u_name = @username and u_password =@userpasswd";
        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@username", UserName.Text);
        cmd.Parameters.AddWithValue("@userpasswd", Password.Text);
        reader = cmd.ExecuteReader();
        String name = "";

        bool CookiePersistent = RememberMe.Checked;
        string UserGroup = "bjuser";

        while (reader.HasRows && reader.Read())
        {
            name = reader.GetString(reader.GetOrdinal("u_name"));
        }
        if (reader.HasRows)
        {
            Session["uname"] = name;

            if (CookiePersistent == false)
            {
                FormsAuthenticationTicket authTicket = new FormsAuthenticationTicket(1, UserName.Text,
                                                       DateTime.Now, DateTime.Now.AddMinutes(60), CookiePersistent, UserGroup);
                String encryptedTicket = FormsAuthentication.Encrypt(authTicket);
                HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);

                authCookie.Expires = authTicket.Expiration;

                Response.Cookies.Add(authCookie);
            }
            Response.BufferOutput = true;
            Response.Redirect("~/");
        }
        else
        {
            lblShow.Text = "帳號或密碼錯誤，請重新輸入";
        }
        reader.Close();
        con.Close();
    }
}