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

    public int getID()
    {
        int id = 10;
        if (Session[Dictionary.SK_LOGGIN_User] != null)
        {
            users user = Session[Dictionary.SK_LOGGIN_User] as users;
            id = user.user_id;
        }
        return id;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
        /*JavaScriptAdd(id);
        ShowGooglePieChart(id);
        ShowGoogleBarChart(id);*/
    }

    private void JavaScriptAdd()
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

    private void ShowGoogleBarChart(int id ,string type, int month)
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
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
            con = new SqlConnection(connString);
            con.Open();
              if (type == "WorkOut")
            {
                switch (month)
                {
                    case 1:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-1-1' and '2017-1-31' group by s.sport_name";                    
                        break;
                    case 2:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-2-1' and '2017-2-28' group by s.sport_name";                     
                        break;
                    case 3:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-3-1' and '2017-3-31' group by s.sport_name";
                     
                        break;
                    case 4:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-4-1' and '2017-4-31' group by s.sport_name";
                    
                        break;
                    case 5:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-5-1' and '2017-5-31' group by s.sport_name";
               
                        break;
                    case 6:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-6-1' and '2017-6-30' group by s.sport_name";
                    
                        break;
                    case 7:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-7-1' and '2017-7-31' group by s.sport_name";                    
                        break;
                    case 8:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-8-1' and '2017-10-31' group by s.sport_name";                  
                        break;
                    case 9:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-9-1' and '2017-9-30' group by s.sport_name";                    
                        break;
                    case 10:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-10-1' and '2017-10-31' group by s.sport_name";
                       
                        break;
                    case 11:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-11-1' and '2017-11-30' group by s.sport_name";                    
                        break;
                    default:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-12-1' and '2017-12-31' group by s.sport_name";                      
                        break;
                }              
            }
            else
            {
                switch (month)
                {
                    case 1:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-1-1' and  '2017-1-31' group by s.sport_name";
                        break;
                    case 2:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-2-1' and  '2017-2-28' group by s.sport_name";
                        break;
                    case 3:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-3-1' and  '2017-3-31' group by s.sport_name";
                        break;
                    case 4:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-4-1' and  '2017-4-30' group by s.sport_name";
                        break;
                    case 5:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-5-1' and  '2017-5-31' group by s.sport_name";

                        break;
                    case 6:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-6-1' and  '2017-6-30' group by s.sport_name";

                        break;
                    case 7:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-7-1' and  '2017-7-31' group by s.sport_name";
                        break;
                    case 8:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-8-1' and  '2017-8-31' group by s.sport_name";
                        break;
                    case 9:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-9-1' and  '2017-9-30' group by s.sport_name";
                        break;
                    case 10:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-10-1' and  '2017-10-31' group by s.sport_name";

                        break;
                    case 11:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-11-1' and '2017-11-30' group by s.sport_name";
                        break;
                    default:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-12-1' and  '2017-12-31' group by s.sport_name";
                        break;
                }
            }
            cmd = new SqlCommand(queryStr, con);
            cmd.Parameters.AddWithValue("@user_name", id);
            reader = cmd.ExecuteReader();
            
            int lengh = reader.FieldCount / 2;
            int count = 0;
            if (reader.HasRows  )
            {
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
            }
            else
            {
                lblBar.Text = "本月沒有運動資料";
                lblBar.Visible = true;
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

    private void ShowGooglePieChart(int id, string type, int month)
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
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["BJwork"].ConnectionString;
            con = new SqlConnection(connString);
            con.Open();
            if (type == "WorkOut")
            {
                switch (month)
                {
                    case 1:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-1-1' and '2017-1-31' group by s.sport_name";
                        break;
                    case 2:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-2-1' and '2017-2-28' group by s.sport_name";
                        break;
                    case 3:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-3-1' and '2017-3-31' group by s.sport_name";

                        break;
                    case 4:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-4-1' and '2017-4-31' group by s.sport_name";

                        break;
                    case 5:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-5-1' and '2017-5-31' group by s.sport_name";

                        break;
                    case 6:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-6-1' and '2017-6-30' group by s.sport_name";

                        break;
                    case 7:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-7-1' and '2017-7-31' group by s.sport_name";
                        break;
                    case 8:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-8-1' and '2017-10-31' group by s.sport_name";
                        break;
                    case 9:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-9-1' and '2017-9-30' group by s.sport_name";
                        break;
                    case 10:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-10-1' and '2017-10-31' group by s.sport_name";

                        break;
                    case 11:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-11-1' and '2017-11-30' group by s.sport_name";
                        break;
                    default:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-12-1' and '2017-12-31' group by s.sport_name";
                        break;
                }
            }
            else
            {
                switch (month)
                {
                    case 1:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-1-1' and  '2017-1-31' group by s.sport_name";
                        break;
                    case 2:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-2-1' and  '2017-2-28' group by s.sport_name";
                        break;
                    case 3:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-3-1' and  '2017-3-31' group by s.sport_name";
                        break;
                    case 4:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-4-1' and  '2017-4-30' group by s.sport_name";
                        break;
                    case 5:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-5-1' and  '2017-5-31' group by s.sport_name";

                        break;
                    case 6:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-6-1' and  '2017-6-30' group by s.sport_name";

                        break;
                    case 7:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-7-1' and  '2017-7-31' group by s.sport_name";
                        break;
                    case 8:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-8-1' and  '2017-8-31' group by s.sport_name";
                        break;
                    case 9:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-9-1' and  '2017-9-30' group by s.sport_name";
                        break;
                    case 10:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-10-1' and  '2017-10-31' group by s.sport_name";

                        break;
                    case 11:
                        queryStr = "select s.sport_name as 運動類型, sum(p.reps*p.sets) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 4 and 8 and dates between '2017-11-1' and '2017-11-30' group by s.sport_name";
                        break;
                    default:
                        queryStr = "select s.sport_name as 運動類型, sum(p.distance) as 總運動量 from pb as p inner join sport_type as s on p.sport_id=s.sport_id  where p.user_id = @user_name and p.sport_id between 1 and 3 and dates between '2017-12-1' and  '2017-12-31' group by s.sport_name";
                        break;
                }
            }
            cmd = new SqlCommand(queryStr, con);
            cmd.Parameters.AddWithValue("@user_name", id);
            reader = cmd.ExecuteReader();

            cstext2.Append("data.addRows([");
            int lengh = reader.FieldCount / 2;
            if (reader.HasRows)
            {
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

    

    protected void btnW1_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 1;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(),type,Month);
    }

    protected void btnW2_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 2;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW3_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 3;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW4_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 4;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW5_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 5;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW6_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 6;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW7_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 7;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW8_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 8;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW9_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 9;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW10_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 10;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW11_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 11;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnW12_Click(object sender, EventArgs e)
    {
        string type = "WorkOut";
        int Month = 12;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO1_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 1;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO2_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 2;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO3_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 3;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);

    }

    protected void btnO4_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 4;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO5_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 5;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO6_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 6;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO7_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 7;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO8_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 8;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO9_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 9;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO10_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 10;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO11_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 11;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }

    protected void btnO12_Click(object sender, EventArgs e)
    {
        string type = "Oxygen";
        int Month = 12;
        JavaScriptAdd();
        ShowGooglePieChart(getID(), type, Month);
        ShowGoogleBarChart(getID(), type, Month);
    }
}