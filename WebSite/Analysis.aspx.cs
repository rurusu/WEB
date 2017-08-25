using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class Analysis : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader reader;
    String queryStr;
    string[] colors = { "#FFCC22", "#FF88C2", "#5599FF", "#9900FF", "#3A0088", "#FF00FF", "#AA0000" };

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = 10;

        if (Session["uname"] != null)
        {
            //用這個作法去做網頁登入前後的畫面???
            //預設id可以建比較多資料去秀圖片
            String username = (string)Session["uname"];
            FindIDbyUsername(username);
            id = Convert.ToInt32(FindIDbyUsername(username));
        }
        JavaScriptAdd(id);
        ShowGooglePieChart(id);
        ShowGoogleBarChart(id);
    }

    private void JavaScriptAdd(int id)
    {
        String csname1 = "Script1";
        Type cstype = this.GetType();
        ClientScriptManager cs = Page.ClientScript;
        if (!cs.IsStartupScriptRegistered(cstype, csname1))
        {
            String cstext1 = "google.load('visualization', '1.0', { 'packages': ['corechart'] });";
            cstext1 += "google.setOnLoadCallback(drawChart);";
            cstext1 += "google.setOnLoadCallback(drawBarChart);";

            cs.RegisterStartupScript(cstype, csname1, cstext1, true);
            //最後的參數寫成true。他幫我們的 JavaScript程式碼前後，自動加上<script>...</script>字樣。            
        }
    }

    private void ShowGoogleBarChart(int id)
    {
        String csname3 = "Script3";
        Type csBartype = this.GetType();
        ClientScriptManager csBar = Page.ClientScript;

        
        if (!csBar.IsClientScriptBlockRegistered(csBartype, csname3))
        {
            StringBuilder cstext3 = new StringBuilder();
            cstext3.Append("<script type=\"text/javascript\">  function drawBarChart() {");
            cstext3.Append(" var data = google.visualization.arrayToDataTable([");
            cstext3.Append("['運動類型', '總運動量',  { role: 'style' }],");                
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
            con = new SqlConnection(connString);
            con.Open();
            queryStr = "select s.SportName as 運動類型 ,sum(p.reps*p.sets) as 總運動量 from personal_sport_menu as p inner join SportType as s on p.SportID=s.SportID  where p.user_id = @user_name and p.SportID between 1 and 8  group by s.SportName ";
            cmd = new SqlCommand(queryStr, con);
            cmd.Parameters.AddWithValue("@user_name", id);
            reader = cmd.ExecuteReader();
            
            int lengh = reader.FieldCount / 2;
            int count = 0;
            while (reader.Read())
            {
                count++;
                for (int i = 0; i <= lengh; i += 2)
                {
                    cstext3.Append("['" + reader.GetValue(i).ToString() + "'," + reader.GetValue(i + 1).ToString() + ",'" + colors[count] + "']");
                    if (i != lengh)
                    {
                        cstext3.Append(",");
                    }
                    //reader.GetName(i)
                    // reader.GetValue(i)
                }
            }
            reader.Close();
            con.Close();
            cstext3.Append("]);");
            cstext3.Append("var options = { 'title': '健身紀錄分析長條圖', 'width': 500, 'height': 300, colors: ['#FFF' ] };");
            cstext3.Append("var chart = new google.visualization.BarChart(document.getElementById('ChartTwo'));");
            cstext3.Append("chart.draw(data, options);");
            cstext3.Append("}</script>");

            csBar.RegisterClientScriptBlock(csBartype, csname3, cstext3.ToString(), false);
        }
        //最後的參數寫成 false。因為這裡的 <script>我們自己寫在字串裡面了，不用他幫我們加上<script>...</script>字樣。
    }

    private void ShowGooglePieChart(int id)
    {
        String csname2 = "Script2";
        Type cstype = this.GetType();
        ClientScriptManager cs = Page.ClientScript;
       
        if (!cs.IsClientScriptBlockRegistered(cstype, csname2))
        {
            StringBuilder cstext2 = new StringBuilder();
            cstext2.Append("<script type=\"text/javascript\">  function drawChart() {");
            cstext2.Append("var data = new google.visualization.DataTable();");
            cstext2.Append("data.addColumn('string', '運動類型');");
            cstext2.Append("data.addColumn('number', '總運動量');");
            //  cstext2.Append("data.addRows([['三頭肌', 300], ['二頭肌', 200], ['肩膀', 150], ['胸部', 230], ['臀大肌', 160]]);");
            //if(Session["uname"]!=null)
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
            con = new SqlConnection(connString);
            con.Open();

            queryStr = "select s.SportName as 運動類型, sum(p.reps*p.sets) as 總運動量 from personal_sport_menu as p inner join SportType as s on p.SportID=s.SportID  where p.user_id = @user_name and p.SportID between 1 and 8 group by s.SportName";
            cmd = new SqlCommand(queryStr, con);
            cmd.Parameters.AddWithValue("@user_name", id);
            reader = cmd.ExecuteReader();

            cstext2.Append("data.addRows([");
            int lengh = reader.FieldCount / 2;
            while (reader.Read())
            {
                for (int i = 0; i <= lengh; i += 2)
                {
                    cstext2.Append("['" + reader.GetValue(i).ToString() + "'," + reader.GetValue(i + 1).ToString() + "]");

                    if (i != lengh)
                    {
                        cstext2.Append(",");
                    }
                }
            }
            reader.Close();
            con.Close();

            cstext2.Append("]);");
            cstext2.Append("var options = { 'title': '健身紀錄', 'width': 500, 'height': 400, is3D: true };");
            cstext2.Append("var chart = new google.visualization.PieChart(document.getElementById('ChartOne'));");
            cstext2.Append("chart.draw(data, options);");
            cstext2.Append("}</script>");

            cs.RegisterClientScriptBlock(cstype, csname2, cstext2.ToString(), false);

            
        }
        //最後的參數寫成 false。因為這裡的 <script>我們自己寫在字串裡面了，不用他幫我們加上<script>...</script>字樣。
    }

    private string FindIDbyUsername(string username)
    {
        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppString"].ConnectionString;
        String ID = "";
        con = new SqlConnection(connString);
        con.Open();
        queryStr = "";
        queryStr = "Select user_id from bjuser where u_name= @username";
        cmd = new SqlCommand(queryStr, con);
        cmd.Parameters.AddWithValue("@username", username);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            ID = string.Format("{0}", reader["user_id"]);
        }

        reader.Close();
        con.Close();
        return ID;
    }
}