<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ranking-v2.aspx.cs" Inherits="ranking_v2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 661px;
        }
        .auto-style2 {
            height: 80px;
            text-align: left;
        }
        .auto-style4 {
            height: 80px;
            text-align: right;
        }
        .auto-style5 {
            font-family: 微軟正黑體;
        }
        .auto-style6 {
            height: 100px;
        }
        .auto-style7 {
            height: 283px;
            text-align: center;
        }
        .auto-style8 {
            font-family: "微軟正黑體 Light";
        }
        .pic-style1{
            height:100px                       
        }
        .pix-style2{
            height:200px
        }
        .pic-style3{
            height:100px;
            background-color:#ffffff ;                                  
        }
        .auto-style12 {
            height: 200px;
            font-family: "微軟正黑體 Light";
        }
        .auto-style14 {
            text-align: center;
            font-family: "微軟正黑體 Light";
            font-size: xx-large;
            
        }
        .color1{
            background-color:#00AAAA;
            color:#ffffff;
        }
        .color2{
            text-align: center;
            font-family: "微軟正黑體 Light";
            font-size: xx-large;
            background-color:#FFFF00;
        }
        .auto-style15 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" style="font-family: 微軟正黑體; font-size: x-large; text-align: left; margin-top: 0px;" Text="BJWork" />
                    <asp:Button ID="btnInfor" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="運動資訊" />
                    <asp:Button ID="btnRank" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="排行榜" />
                    <asp:Button ID="btnAnalyze" runat="server" style="font-family: 微軟正黑體; font-size: large; text-align: left" Text="運動分析" />
                    <asp:Button ID="btnMatchmen" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="火柴人" />
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
                    <asp:Button ID="btnSerch" runat="server" CssClass="auto-style5" Text="Serch" />
                    <asp:Button ID="btnLogIN" runat="server" CssClass="auto-style5" style="text-align: justify" Text="LogIN" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2" style="text-align: center">
                    <asp:Button ID="btnTriceps" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="三頭肌" />
                    <asp:Button ID="btnBiceps" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="二頭肌" />
                    <asp:Button ID="btnBack" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="背部" />
                    <asp:Button ID="btnShoulders" runat="server" style="font-family: 微軟正黑體; font-size: large; text-align: left" Text="肩膀" />
                    <asp:Button ID="btnChest" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="胸部" Width="82px" />
                    <asp:Button ID="btnForearms" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="前臂" />
                    <asp:Button ID="btnGlutes" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="臀肌" />
                    <asp:Button ID="btnAbs" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="腹肌肌群" />
                    <asp:Button ID="btnWalking" runat="server" style="font-family: 微軟正黑體; font-size: large; text-align: left" Text="健走" />
                    <asp:Button ID="btnRunning" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="跑步" Width="82px" />
                    <asp:Button ID="btnCycling" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="公路自行車" Width="101px" />
                </td>
            </tr>
            <tr>
                <td colspan="2"  class="color2">
                    ---------------我的個人紀錄---------------</td>
            </tr>
            
            <tr>
                <td colspan="2" class="auto-style7">
                    <img src="pict/a12.png" class="auto-style12" />
                    <br />
                    <table class="auto-style15">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br class="auto-style8" />
                    </td>
            </tr>
            
            <tr>
                <td colspan="2" class="color2">
                    ---------------紀錄保持人---------------</td>
            </tr>
            
        </table>
    
    </div>
        <table class="auto-style14" align="center">
            <tr>
                <td class="color1">1.
                    <img src="pict/a1.png" class="pic-style1"/>
&nbsp;2017-7-25&nbsp; 10組(每組10下)</td>
            </tr>
            <tr>
                <td>2.
                    <img src="pict/a2.png" class="pic-style1" />
&nbsp;2017-7-24&nbsp;&nbsp;&nbsp; 8組(每組10下)</td>
            </tr>
            <tr>
                <td class="color1">3.
                    <img src="pict/a3.png" class="pic-style3"/>
&nbsp;2017-7-25&nbsp;&nbsp;&nbsp; 8組(每組&nbsp; 8下)</td>
            </tr>
            <tr>
                <td>4.
                    <img src="pict/a4.png" class="pic-style1" />
&nbsp;2017-7-23&nbsp;&nbsp; 9組(每組&nbsp; 7下)</td>
            </tr>
            <tr>
                <td class="color1">5.
                    <img src="pict/a5.png" class="pic-style3"/>
&nbsp;2017-7-23&nbsp;&nbsp; 8組(每組&nbsp; 7下)</td>
            </tr>
            <tr>
                <td>6.
                    <img src="pict/a6.png" class="pic-style1" />
&nbsp;2017-7-25&nbsp; 10組(每組10下)</td>
            </tr>
            <tr>
                <td class="color1">7.
                    <img src="pict/a7.png" class="pic-style1" />
&nbsp;2017-7-25&nbsp; 10組(每組10下)</td>
            </tr>
            <tr>
                <td>8.
                    <img src="pict/a8.png" class="pic-style1" />
&nbsp;2017-7-25&nbsp; 10組(每組10下)</td>
            </tr>
            <tr>
                <td class="color1">9.
                    <img src="pict/a9.png"  class="pic-style1"/>
&nbsp;2017-7-25&nbsp; 10組(每組10下)</td>
            </tr>
            <tr>
                <td>10.
                    <img src="pict/a10.png"  class="pic-style1"/>
&nbsp;2017-7-25&nbsp; 10組(每組10下)</td>
            </tr>
        </table>
    </form>
</body>
</html>
