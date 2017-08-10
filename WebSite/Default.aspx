<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript" src="Scripts/div_goTop.js"></script>

    <style type="text/css">
        /*花花*/
        .div-fly {
            left: 10px;
            bottom: 10px;
            width: 30px;
            height: 30px;
            float: left;
            position: fixed;
            display: none;
        }
        #goTop {
            
        }
        /*主體*/
        body {
            font-family: 微軟正黑體;
        }
        /*輪播器*/
        .carousel-caption p {
            font-size: 12px;
        }
        /*下方DIV圖片說明*/
        .describe-style {
            padding: 30px;
            display: inline-block;
            max-width: 100%;
        }
        .download-logo {
            width: 200px;
        }
        .download-logo-style {
            display: inline-block;
            max-width: 100%;
            padding: 30px;
        }
        .qr {
            width: 100px;
        }
        .qr-style {
            display: inline-block;
            max-width: 100%;
            padding: 30px;
        }

    </style>

    <div>
        <div class="carousel slide" id="index-carousel" data-ride="carousel">
            <ol class="carousel-indicators">
                <li class="active" data-slide-to="0" data-target="#index-carousel"></li>
                <li data-slide-to="1" data-target="#index-carousel"></li>
                <li data-slide-to="2" data-target="#index-carousel"></li>
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
            <a class="left carousel-control" href="#index-carousel" data-slide="prev" hidden="hidden"><span class="glyphicon glyphicon-chevron-left"></span></a>
            <a class="right carousel-control" href="#index-carousel" data-slide="next" hidden="hidden"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>

    </div>

    <div class="jumbotron">
        <div class="row">
            <div class="col-md-6 describe-style" style="max-width: 50%;">
                <p>下載下載下載下載下載下載下載下載下載下載</p>
                <p>DOWNLOAD, DOWNLOAD, DOWNLOAD, DOWNLOAD, DOWNLOAD, DOWNLOAD</p>
            </div>
            <div class="col-md-6" style="max-width: 50%;">
                <div class="download-logo-style">
                    <img src="image/download_ios.png" class="download-logo" style="margin-right: 20px; margin-bottom: 10px;" />
                </div>
                <div class="qr-style">
                    <img src="image/qrTest.png" class="qr" style="margin-left: 20px; margin-bottom: 10px;" />
                </div>
            </div>
        </div>
    </div>

    <div class="jumbotron">
        <div class="row">
            <div class="col-md-6 describe-style" style="max-width: 50%;">
                <p>下載下載下載下載下載下載下載下載下載下載</p>
                <p>DOWNLOAD, DOWNLOAD, DOWNLOAD, DOWNLOAD, DOWNLOAD, DOWNLOAD</p>
            </div>
            <div class="col-md-6" style="max-width: 50%;">
                <div class="download-logo-style">
                    <img src="image/download_ios.png" class="download-logo" style="margin-right: 20px; margin-bottom: 10px;" />
                </div>
                <div class="qr-style">
                    <img src="image/qrTest.png" class="qr" style="margin-left: 20px; margin-bottom: 10px;" />
                </div>
            </div>
        </div>
    </div>

    <div class="jumbotron">
        <div class="row">
            <div class="col-md-6 describe-style" style="max-width: 50%;">
                <p>下載下載下載下載下載下載下載下載下載下載</p>
                <p>DOWNLOAD, DOWNLOAD, DOWNLOAD, DOWNLOAD, DOWNLOAD, DOWNLOAD</p>
            </div>
            <div class="col-md-6" style="max-width: 50%;">
                <div class="download-logo-style">
                    <img src="image/download_ios.png" class="download-logo" style="margin-right: 20px; margin-bottom: 10px;" />
                </div>
                <div class="qr-style">
                    <img src="image/qrTest.png" class="qr" style="margin-left: 20px; margin-bottom: 10px;" />
                </div>
            </div>
        </div>
    </div>

    <!-- 花花goTop -->
    <div class="div-fly" id="goTop">
        <a href="#"><img src="../image/flower_icon.png" style="width: 30px; height: 30px;" /></a>
    </div>


</asp:Content>
