<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CChart_final.aspx.cs" Inherits="test_CChart_final" %>
<%@Import NameSpace = "System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title></title>
    <script type='text/javascript' src='https://www.gstatic.com/charts/loader.js'></script>
      <script type='text/javascript'>
        google.charts.load("current", { packages: ["calendar"] });
        //{ packages: ['calendar'] },
       google.charts.setOnLoadCallback(drawCalendarChart);
      //  google.chart.setOnLoadCallback(drawPieChart);
        
        function drawCalendarChart() {
            var dataTable = new google.visualization.DataTable();
            dataTable.addColumn({type: 'date', id: 'Date' });
            dataTable.addColumn({type: 'number', id: '類型' });
            dataTable.addRows([
                <%
    SqlConnection Conn = new SqlConnection("server=bjwork95.cjng4ulqqzae.ap-northeast-1.rds.amazonaws.com;User ID=BJwork; Password=bjwork95; Database=BJWORK95");
        Conn.Open();
        String querryStr = "select cast(Year(dates) as nvarchar)+','+cast(Month(dates) as nvarchar)+','+cast(Day(dates) as nvarchar), sport_id from pb where user_id=@user_name";
        SqlCommand cmd = new SqlCommand(querryStr,Conn);
        cmd.Parameters.AddWithValue("@user_name", getID());
        SqlDataReader reader = cmd.ExecuteReader();
        int lengh = reader.FieldCount / 2;
         while (reader.Read())
            {                
                for (int i = 0; i <= lengh; i += 2)
                {
        Response.Write("[new Date(" + reader.GetValue(i).ToString() + ")," + reader.GetValue(i + 1).ToString() + "]");
    if (i != lengh)
                    {
        Response.Write(",");
    }
                }
            }
            reader.Close();
            Conn.Close();
        %>
            ]);
                  var chart = new google.visualization.Calendar(document.getElementById('calendar_basic'));
          
                  var options = {
                      title: '運動日曆', height: 300, colorAxis: { colors: ['#00BBFF', '#FFFF77'] }, noDataPattern: { backgroundColor: '#FFFFFF', color: '#FFFFFF' },

                      calendar: {
                          cellSize: 15,
                          cellColor: { stroke: '#CCEEFF', strokeOpacity: 1, strokeWidth: 2,cellsize:7 },
                          dayOfWeekRightSpace: 10,
                          daysOfWeek: '日一二三四五六',
                          monthOutlineColor: {
                              stroke: '#550088',
                              strokeOpacity: 1, strokeWidth: 2 
                          },
                           unusedMonthOutlineColor: {
                               stroke: '#009FCC',
                              strokeOpacity: 1,
                              strokeWidth: 1
                          },
                      }
            };

            chart.draw(dataTable, options);
        }
      </script>      
</head>
<body>
    <form id="form1" runat="server">
    <div id="calendar_basic" style="width: 1000px; height: 350px; margin:0px auto;"></div>
    </form>
</body>
</html>
