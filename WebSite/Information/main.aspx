<%@ Page Title="健身資訊 - " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="Information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <!--<link rel="stylesheet" type="text/css" href="../Content/forInforMain.css" />-->
    <link rel="stylesheet" type="text/css" href="../Content/forInformation.css" />

    <br />
    <br />
    <br />

    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

    <div class="row">
        <div class="col-sm-1">
        </div>
        <div class="col-sm-3">
            <div class="panel-group" id="RightLink">
                <div class="panel panel-default" style="border: none; text-align: center;">
                    <div class="panel-heading" style="background-color: transparent;">
                        <div style="background-color: #00cccc; color: #fff; height: 40px; line-height: 30px; display: inline-block; line-height: 30px; margin-bottom: 30px; width: 60%">
                            <h4>健身資訊</h4>
                        </div>
                        <br />
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/iphone.png" CssClass="icon-style" />
                            <asp:Button ID="btnSensor" runat="server" Text="健身重訓" OnClick="btnSensor_Click" CssClass="btn btn-link" data-toggle="tooltip" data-placement="bottom" title="肌肉重量訓練的相關訊息" />
                        </div>
                        <br />
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/gps.png" CssClass="icon-style" />
                            <asp:Button ID="btnGPS" runat="server" Text="有氧挑戰" OnClick="btnGPS_Click" CssClass="btn btn-link" data-toggle="tooltip" data-placement="bottom" title="跑步、健走、單車等相關訊息" />
                        </div>
                        <br />
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/health-care.png" CssClass="icon-style" />
                            <asp:Button ID="btnLife" runat="server" Text="生活飲食" OnClick="btnLife_Click" CssClass="btn btn-link" data-toggle="tooltip" data-placement="bottom" title="健康的生活及飲食習慣讓你增肌不增肥\^0^/" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <style type="text/css">
            
        </style>

        <div class="col-sm-6">
            <br />
            <table class="tb table-set">
                <tr>
                    <td style="text-align: right; color: red"></td>
                    <td style="width: 80px;"></td>
                    <td style="width: 200px;">&nbsp;</td>
                    <td style="text-align: center; color: red">
                        <asp:ImageButton runat="server" ImageUrl="~/image/info/btn-shoulder-1.png" ID="btnLinkShoulder" OnClick="btnLinkShoulder_Click" CssClass="sport-btn btn-img sr" data-toggle="tooltip" data-placement="right" title="點擊查看肩膊的訓練教學" />
                        <!--
                        <asp:Button runat="server" Text="肩膀" />
                        -->
                    </td>
                </tr>
                <script type="text/javascript">
                    $(function () {
                        $('.sr').hover(function () {
                            $('.col-sm-2>img').attr({ src: '../image/import/2.png' });
                        },
                            function () {
                                $('.col-sm-2>img').attr({ src: '../image/import/0.png' });
                            });
                    });
                </script>
                <tr>
                    <td style="text-align: right; color: red">&nbsp;</td>
                    <td style="text-align: right;">
                        <asp:ImageButton runat="server" ImageUrl="~/image/info/btn-chest-1.png" ID="btnLinkChest" OnClick="btnLinkChest_Click" CssClass="sport-btn btn-img ct" data-toggle="tooltip" data-placement="top" title="點擊查看胸部的訓練教學" />
                        <!--
                        <asp:Button runat="server" Text="胸部" />
                        -->
                    </td>
                    <td>&nbsp;</td>
                    <td style="text-align: left; color: red"></td>
                </tr>
                <script type="text/javascript">
                    $(function () {
                        $('.ct').hover(function () {
                            $('.col-sm-2>img').attr({ src: '../image/import/4.png' });
                        },
                            function () {
                                $('.col-sm-2>img').attr({ src: '../image/import/0.png' });
                            });
                    });
                </script>
                <tr>
                    <td style="text-align: right; color: red"></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="text-align: left; color: red">
                        <asp:ImageButton runat="server" ImageUrl="~/image/info/btn-back-1.png" ID="btnLinkBack" OnClick="btnLinkBack_Click" CssClass="sport-btn btn-left btn-img bk" data-toggle="tooltip" data-placement="right" title="點擊查看背部的訓練教學" />
                        <!--
                        <asp:Button runat="server" Text="背部" />
                        -->
                    </td>
                </tr>
                <script type="text/javascript">
                    $(function () {
                        $('.bk').hover(function () {
                            $('.col-sm-2>img').attr({ src: '../image/import/3.png' });
                        },
                            function () {
                                $('.col-sm-2>img').attr({ src: '../image/import/0.png' });
                            });
                    });
                </script>
                <tr>
                    <td style="text-align: right; color: red"></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="text-align: left; color: red"></td>
                </tr>
                <tr>
                    <td style="text-align: right; color: red">&nbsp;</td>
                    <td style="text-align: right;">
                        <asp:ImageButton runat="server" ImageUrl="~/image/info/btn-arms-1.png" ID="btnLinkArms" OnClick="btnLinkArms_Click" CssClass="sport-btn btn-img as" data-toggle="tooltip" data-placement="bottom" title="點擊查看手臂的訓練教學" />
                        <!--
                        <asp:Button runat="server" Text="手臂" OnClick="btnLinkArms_Click" CssClass="sport-btn btn-link" data-toggle="tooltip" data-placement="bottom" title="點擊查看手臂的訓練教學" />
                        -->
                    </td>
                    <td>&nbsp;</td>
                    <td style="text-align: left; color: red"></td>
                </tr>
                <script type="text/javascript">
                    $(function () {
                        $('.as').hover(function () {
                            $('.col-sm-2>img').attr({ src: '../image/import/1.png' });
                        },
                            function () {
                                $('.col-sm-2>img').attr({ src: '../image/import/0.png' });
                            });
                    });
                </script>
                <tr>
                    <td style="text-align: right; color: red"></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="text-align: center; color: red">
                        <asp:ImageButton runat="server" ImageUrl="~/image/info/btn-legs-1.png" ID="btnLinkLegs" OnClick="btnLinkLegs_Click" CssClass="sport-btn btn-img ls" data-toggle="tooltip" data-placement="right" title="點擊查看腿部的訓練教學" />
                        <!--
                        <asp:Button runat="server" Text="腿部" CssClass="sport-btn btn-link" data-toggle="tooltip" data-placement="right" title="點擊查看腿部的訓練教學" />
                        -->
                    </td>
                </tr>
                <script type="text/javascript">
                    $(function () {
                        $('.ls').hover(function () {
                            $('.col-sm-2>img').attr({ src: '../image/import/5.png' });
                        },
                            function () {
                                $('.col-sm-2>img').attr({ src: '../image/import/0.png' });
                            });
                    });
                </script>
                <tr>
                    <td style="text-align: right; color: red"></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="text-align: left; color: red"></td>
                </tr>
                <tr>
                    <td style="text-align: right; color: red"></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="text-align: left; color: red"></td>
                </tr>
                <tr>
                    <td style="text-align: right; color: red"></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="text-align: left; color: red"></td>
                </tr>
            </table>
        </div>

        <div class="col-sm-2" style="height:500px; vertical-align:bottom;">
            
        </div>

    </div>

</asp:Content>

