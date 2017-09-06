<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript" src="Scripts/div_goTop.js"></script>
    <script type="text/javascript" src="Scripts/modernizr.custom.86080.js"></script>
    <link rel="stylesheet" type="text/css" href="Content/demo.css" />
    <link rel="stylesheet" type="text/css" href="Content/Background.css" />

    <style type="text/css">
        /* QR */
        .div-qr {
            right: 150px;
            bottom: 50px;
            width: 80px;
            height: auto;
            float: right;
            position: fixed;
            border-radius: 5px;
        }
        /* go top */
        .div-fly {
            left: 20px;
            bottom: 20px;
            width: 44px;
            height: 44px;
            float: left;
            position: fixed;
            opacity: 0.7;
            background-color: #33cc33;
            display: none;
            text-align: center;
            line-height: 40px;
            border-radius: 3px;
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

    <ul class="cb-slideshow">
        <li>
            <span>Image 01</span>
            <div><h3></h3></div>
        </li>
        <li>
            <span>Image 02</span>
            <div><h3></h3></div>
        </li>
        <li>
            <span>Image 03</span>
            <div><h3></h3></div>
        </li>
        <li>
            <span>Image 04</span>
            <div><h3></h3></div>
        </li>
        <li>
            <span>Image 05</span>
            <div><h3></h3></div>
        </li>
        <li>
            <span>Image 06</span>
            <div><h3></h3></div>
        </li>
    </ul>

    <!-- goTop -->
    <div class="div-fly" id="goTop">
        <a href="#">
            <img src="../image/up-arrow.png" style="width: 30px; height: 30px;" /></a>
    </div>

    <!-- QR -->
    <div class="div-qr">
        <img src="image/qrTest.png" style="width: 170px; height: auto; border: 2px solid #0099cc;" />
    </div>

</asp:Content>
