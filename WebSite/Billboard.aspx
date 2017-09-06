<%@ Page Title="排行榜 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Billboard.aspx.cs" Inherits="Billboard" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/forBillBoard.css" />
    <script type="text/javascript" src="../Scripts/div_goTop.js"></script>

    <br />
    <div class="row">
        <div class="col-sm-1">
        </div>

        <div class="col-sm-3">
            <div class="panel-group" id="RightLink">
                <div class="panel panel-default" style="border: none; text-align: center;">
                    <div class="panel-heading" style="background-color: transparent;">
                        <div style="background-color: #00cccc; color: #fff; height: 35px; line-height: 30px; display: inline-block; line-height: 10px; margin-bottom: 10px; width: 60%">
                            <h5>健身重訓</h5>
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/sport/sport4.png" CssClass="icon-style" />
                            <asp:Button ID="btnTriceps" runat="server" Text="手臂" CssClass="btn btn-link" OnClick="btnTriceps_Click" />
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/sport/sport5.png" CssClass="icon-style" />
                            <asp:Button ID="btnBiceps" runat="server" Text="肩部" CssClass="btn btn-link" OnClick="btnBiceps_Click" />
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/sport/sport6.png" CssClass="icon-style" />
                            <asp:Button ID="btnBack" runat="server" Text="背部" CssClass="btn btn-link" OnClick="btnBack_Click" />
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/sport/sport7.png" CssClass="icon-style" />
                            <asp:Button ID="btnShoulders" runat="server" Text="胸部" CssClass="btn btn-link" OnClick="btnShoulders_Click" />
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/sport/sport8.png" CssClass="icon-style" />
                            <asp:Button ID="btnChest" runat="server" Text="腿部" CssClass="btn btn-link" OnClick="btnChest_Click" />
                        </div>
                        <br />
                        <div style="background-color: #00cccc; color: #fff; height: 35px; line-height: 30px; display: inline-block; line-height: 10px; margin-bottom: 10px; width: 60%">
                            <h5>有氧挑戰</h5>
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/sport/sport1.png" CssClass="icon-style" />
                            <asp:Button ID="btnWalking" runat="server" Text="跑步" CssClass="btn btn-link" OnClick="btnWalking_Click" />
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/sport/sport2.png" CssClass="icon-style" />
                            <asp:Button ID="btnRunning" runat="server" Text="健走" CssClass="btn btn-link" OnClick="btnRunning_Click" />
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/sport/sport3.png" CssClass="icon-style" />
                            <asp:Button ID="btnCycling" runat="server" Text="單車" CssClass="btn btn-link" OnClick="btnCycling_Click" />
                        </div>
                        <br />

                        
                        <div style="background-color: #ff3300; color: #fff; height: 35px; line-height: 30px; display: inline-block; line-height: 10px; margin-bottom: 10px; width: 60%">
                            <h5>小遊戲</h5>
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/apple.png" CssClass="icon-style" />
                            <asp:Button ID="btnIOSGame" runat="server" Text="ios勝場戰績" CssClass="game-btn btn-link" OnClick="btnIOSGame_Click" />
                        </div>
                        

                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-6">

            <div style="max-width: 100%; padding-top: 10px;">

                <img src="../image/import/0.png" runat="server" id="imgRight" class="right-img" />

                <table id="PersonalRecord" class="table personal-table">
                    <thead>
                        <tr>
                            <td colspan="2">個&nbsp;人&nbsp;紀&nbsp;錄</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td rowspan="5">
                                <asp:Image runat="server" ID="imgPersonalPic" CssClass="image-style" />
                                <br />
                                <asp:Label runat="server" ID="lblBoardUserName" Text="" Font-Size="16px"></asp:Label>
                                <asp:Label ID="lblshow" runat="server" Text="" Visible="false" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="gvPersonal" runat="server" CssClass="per-record" OnRowDataBound="gvPersonal_RowDataBound"></asp:GridView>

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <hr />

            <asp:Label ID="lblTestMsg" runat="server" Text=""></asp:Label>

            <asp:Panel runat="server" ID="PanelForBillboard">
                <asp:Button runat="server" ID="btnWeeks" Text="週排行" CssClass="Panelbtn" OnClick="btnWeeks_Click" />
                <asp:Button runat="server" ID="btnMonths" Text="月排行" CssClass="Panelbtn" OnClick="btnMonths_Click" />

                <asp:Panel runat="server" ID="pnlWeeks">

                    <asp:Label runat="server" ID="lblShowWeek" Text="ShowWeek" CssClass="btn text-success" Visible="false"></asp:Label>
                    <asp:Button runat="server" ID="btnSelectWeek" Text="本週" OnClick="btnSelectWeek_Click" CssClass="btn btn-success btn-sm" Visible="false" />

                    <asp:GridView runat="server" ID="gvWeeks" OnRowDataBound="gvWeeks_RowDataBound" CssClass="board-style table table-style">
                    </asp:GridView>

                </asp:Panel>

                <asp:Panel runat="server" ID="pnlMonths">

                    <asp:Label runat="server" ID="lblShowMonth" Text="ShowMonth" CssClass="btn text-success" Visible="false"></asp:Label>

                    <asp:Button runat="server" ID="btnSelectMonth" Text="上個月" OnClick="btnSelectMonth_Click" CssClass="btn-link btn-month" />
                    <asp:Button runat="server" ID="btnSelectLastMonth" Text="本月" OnClick="btnSelectLastMonth_Click" CssClass="btn-link btn-month" />

                    <div>
                        <asp:GridView runat="server" ID="gvMonths" OnRowDataBound="gvMonths_RowDataBound" CssClass="board-style table table-style">
                        </asp:GridView>
                    </div>

                    <div>
                        <asp:GridView runat="server" ID="gvLastMonth" OnRowDataBound="gvMonths_RowDataBound" CssClass="board-style table table-style" Visible="false">
                        </asp:GridView>
                    </div>

                </asp:Panel>
                <asp:Panel runat="server" ID="test">

                    <table class="board-style table table-style">
                        <tr>
                            <td>名次</td>
                            <td>使用者</td>
                            <td>使用者</td>
                            <td>名稱</td>
                            <td>運動總量</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>
                                <asp:Image runat="server" CssClass="image-style" ImageUrl="~/photo/airplane@hotmail.com.png" />
                            </td>
                            <td>
                                <img src="/photo/airplane@hotmail.com.png" class="image-style" />
                            </td>
                            <td>艾爾普蘭</td>
                            <td>30</td>
                        </tr>
                    </table>

                </asp:Panel>
            </asp:Panel>

        </div>

        <!--
        <div class="col-sm-2" style="height:500px; vertical-align:bottom; background-color: #0099cc; margin-top: 10px; margin-left: -35px;">
            <img src="../image/import/0.png" id="Right" class="right-img" runat="server" />
        </div>
        -->

    </div>

    <div class="div-fly" id="goTop">
        <a href="#">
            <img src="../image/up-arrow.png" style="width: 30px; height: 30px;" /></a>
    </div>
</asp:Content>
