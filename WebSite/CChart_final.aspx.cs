using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test_CChart_final : System.Web.UI.Page
{
    public int getID()
    {
        int ID = 8;
        if (Session[Dictionary.SK_LOGGIN_User] != null)
        {
            users user = Session[Dictionary.SK_LOGGIN_User] as users;
            ID = user.user_id;
        }
        return ID;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}