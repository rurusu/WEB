<%@ Page Title="紀錄分析 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Analysis.aspx.cs" Inherits="Analysis" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .btn {
            color: #00cccc;
            text-align: center;
        }

        .panel-group .btn:hover,
        .panel-group .btn:hover {
            text-decoration: none;
            color: #00cc00;
        }
    </style>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <img src="../image/index_sport_1.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-xs-2">

                <div class="panel-group" id="RightLink">
                    <div class="panel panel-default" style="border: none; text-align: right;">
                        <div class="panel-heading" style="background-color: transparent;">
                            <div style="padding: 2px">
                                <asp:Button ID="btnTriceps" runat="server" Text="健身系" CssClass="btn btn-link" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnBiceps" runat="server" Text="GPS系" CssClass="btn btn-link" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-xs-10">
                <div  style="width: 100%; border: 1px solid #555; color: #888888">
                    想說用法就跟排行榜一樣好了，直接將東西套進ID，Panel有點煩，左邊的按鈕還沒設定OnClick，所有的邊框跟區塊最後再調整
                </div>
                <div id="ChartOne" style="width: 100%; border: 1px solid #555">
                    第一個圖表，ID = ChartOne，邊框先別管
                </div>
                <div id="ChartTwo" style="width: 100%; border: 1px solid #555">
                    第二個圖表，ID = ChartTwo，邊框先別管
                </div>
                <div id="ChartThree" style="width: 100%; border: 1px solid #555">
                    第二個圖表，ID = ChartThree，邊框先別管
                </div>
            </div>
        </div>
    </div>
</asp:Content>
