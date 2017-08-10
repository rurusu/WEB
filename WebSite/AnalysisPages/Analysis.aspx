<%@ Page Title="紀錄分析 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Analysis.aspx.cs" Inherits="Analysis" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <!-- 輪播圖片，但要手動點移一次才會動 -->
                <div class="carousel slide" id="carousel-527005">
                    <ol class="carousel-indicators">
                        <li class="active" data-slide-to="0" data-target="#carousel-527005"></li>
                        <li data-slide-to="1" data-target="#carousel-527005"></li>
                        <li data-slide-to="2" data-target="#carousel-527005"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img alt="Carousel Bootstrap First" src="../image/index_sport_1.jpg" />
                            <div class="carousel-caption">
                                <h4>圖片-1</h4>
                                <p>1600x500為佳</p>
                            </div>
                        </div>
                        <div class="item">
                            <img alt="Carousel Bootstrap Second" src="../image/index_sport_2.jpg" />
                            <div class="carousel-caption">
                                <h4>圖片-2</h4>
                                <p>1600x500為佳</p>
                            </div>
                        </div>
                        <div class="item">
                            <img alt="Carousel Bootstrap Third" src="../image/index_sport_3.jpg" />
                            <div class="carousel-caption">
                                <h4>圖片-3</h4>
                                <p>1600x500為佳</p>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-527005" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="right carousel-control" href="#carousel-527005" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>

            </div>
        </div>

        <hr />

        <div class="row">
            <!-- 右邊div連結 -->
            <div class="col-md-2">

                <div class="panel-group" id="panel-627209">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-body"><a href="#" runat="server">三頭肌</a></div>
                            <div class="panel-body"><a href="#" runat="server">二頭肌</a></div>
                            <div class="panel-body"><a href="#" runat="server">背部</a></div>
                            <div class="panel-body"><a href="#" runat="server">肩膀</a></div>
                            <div class="panel-body"><a href="#" runat="server">胸部</a></div>
                            <div class="panel-body"><a href="#" runat="server">前臂</a></div>
                            <div class="panel-body"><a href="#" runat="server">臂肌</a></div>
                            <div class="panel-body"><a href="#" runat="server">腹肌肌群</a></div>
                            <div class="panel-body"><a href="#" runat="server">游泳</a></div>
                            <div class="panel-body"><a href="#" runat="server">健走</a></div>
                            <div class="panel-body"><a href="#" runat="server">跑步</a></div>
                            <div class="panel-body"><a href="#" runat="server">單車</a></div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- 左邊正文 -->
            <div class="col-md-10">
                <div>
                    <h3>左邊是不是應該改成日期選取器？</h3>
                    <h3>還是用下拉式選單？</h3>
                    <h4>要抓API</h4>
                    <h6>這邊用4-8切，其他都用這切法好了</h6>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
