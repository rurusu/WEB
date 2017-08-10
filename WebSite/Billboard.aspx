<%@ Page Title="排行榜 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Billboard.aspx.cs" Inherits="Billboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .btn {
            text-align: left;
            width:100%;
        }
        .panel-group .btn:hover {
            text-decoration: none;
        }

        .btn-margin {
            margin-left: 50px;
        }

        .table-style {
            border: none;
        }

            .table-style th a {
                color: #fff;
                text-decoration: none;
            }

            .table-style th,
            .table-style tr,
            .table-style td {
                border: none;
            }

            .table-style th {
                background-color: #008800;
                color: #fff;
            }

                .table-style th:first-child {
                    width: 120px;
                }

            .table-style tr {
                padding-left: 8px;
            }

                .table-style tr:hover {
                    background-color: #e2fce2;
                }

        .personal-table {
            background-color: #fff;
            border-radius: 4px;
        }

            .personal-table thead {
                text-align: center;
                background-color: #e2fce2;
            }
            .personal-table thead {
                font-size: 18px;
                font:600;
            }

            .personal-table tbody tr:first-child {
                text-align: center;
            }

                .personal-table tbody tr:first-child td {
                    vertical-align: middle;
                    width:40%;
                    background-color: #b0fcb0;

                }
        .Panelbtn {
            width: 100px;
            height: 30px;
            border: none;
        }
    </style>

    <h1>BillBoard</h1>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <img src="../image/index_sport_1.jpg" style="max-width: 100%">
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-2">

                <div class="panel-group" id="RightLink">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div style="padding: 2px">
                                <asp:Button ID="btnTriceps" runat="server" Text="三頭肌" CssClass="btn btn-link" OnClick="btnTriceps_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnBiceps" runat="server" Text="二頭肌" CssClass="btn btn-link" OnClick="btnBiceps_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnBack" runat="server" Text="背肌" CssClass="btn btn-link" OnClick="btnBack_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnShoulders" runat="server" Text="肩膀" CssClass="btn btn-link" OnClick="btnShoulders_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnChest" runat="server" Text="胸肌" CssClass="btn btn-link" OnClick="btnChest_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnForearms" runat="server" Text="前臂" CssClass="btn btn-link" OnClick="btnForearms_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnGlutes" runat="server" Text="臀肌" CssClass="btn btn-link" OnClick="btnGlutes_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnAbs" runat="server" Text="腹肌" CssClass="btn btn-link" OnClick="btnAbs_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnWalking" runat="server" Text="健走" CssClass="btn btn-link" OnClick="btnWalking_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnRunning" runat="server" Text="跑步" CssClass="btn btn-link" OnClick="btnRunning_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnCycling" runat="server" Text="單車" CssClass="btn btn-link" OnClick="btnCycling_Click" />
                            </div>
                        </div>
                    </div>
                </div>

                <%--
                <div class="btn-group-vertical">
                    <!-- 要設Button事件 -->
                    <!-- 點擊後導向各類排行榜頁面 -->
                    <!-- 有N頁 -->
                    <!-- 還是改成別的???????? -->
                    <!-- divLink比較簡單的樣子 -->
                    <asp:Button ID="btnTriceps" runat="server" Text="三頭肌" CssClass="btn btn-link" OnClick="btnTriceps_Click"  />
                    <asp:Button ID="btnBiceps" runat="server" Text="二頭肌" CssClass="btn btn-link" OnClick="btnBiceps_Click" />
                    <asp:Button ID="btnBack" runat="server" Text="背肌" CssClass="btn btn-link" OnClick="btnBack_Click" />
                    <asp:Button ID="btnShoulders" runat="server" Text="肩膀" CssClass="btn btn-link" OnClick="btnShoulders_Click" />
                    <asp:Button ID="btnChest" runat="server" Text="胸肌" CssClass="btn btn-link" OnClick="btnChest_Click" />
                    <asp:Button ID="btnForearms" runat="server" Text="前臂" CssClass="btn btn-link" OnClick="btnForearms_Click" />
                    <asp:Button ID="btnGlutes" runat="server" Text="臀肌" CssClass="btn btn-link" OnClick="btnGlutes_Click" />
                    <asp:Button ID="btnAbs" runat="server" Text="腹肌" CssClass="btn btn-link" OnClick="btnAbs_Click" />
                    <asp:Button ID="btnSwimming" runat="server" Text="游泳" CssClass="btn btn-link" OnClick="btnSwimming_Click" />
                    <asp:Button ID="btnWalking" runat="server" Text="健走" CssClass="btn btn-link" OnClick="btnWalking_Click" />
                    <asp:Button ID="btnRunning" runat="server" Text="跑步" CssClass="btn btn-link" OnClick="btnRunning_Click" />
                    <asp:Button ID="btnCycling" runat="server" Text="單車" CssClass="btn btn-link" OnClick="btnCycling_Click" />
                </div>
                --%>
            </div>

            <div class="col-md-10">

                <div style="max-width: 100%">
                    <table id="PersonalRecord" class="table personal-table">
                        <thead>
                            <tr>
                                <td colspan="2">個&nbsp;人&nbsp;紀&nbsp;錄</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td rowspan="5">
                                    <p style="color:#888">顯示個人圖片（ID為PersonalPic）</p>
                                    <asp:Image runat="server" ID="PersonalPic" />
                                    <asp:Label runat="server" ID="BoardUserName" Text="Alice"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="Item" Text="項目名稱"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="Record" Text="項目紀錄"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <hr />

                <asp:Label ID="lblTestMsg" runat="server" Text="TestMsg"></asp:Label>

                <asp:Panel runat="server" ID="PanelForBillboard">
                    <asp:Button runat="server" ID="btnWeeks" Text="週排行" CssClass="Panelbtn" OnClick="btnWeeks_Click" />
                    <asp:Button runat="server" ID="btnMonths" Text="月排行" CssClass="Panelbtn" OnClick="btnMonths_Click" />
                    <asp:Panel runat="server" ID="pnlWeeks">
                        <asp:Label runat="server" ID="lblShowWeek" Text="ShowWeek"></asp:Label>
                        <asp:GridView runat="server" ID="gvWeeks" CssClass="table table-style"></asp:GridView>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlMonths">
                        <asp:Label runat="server" ID="lblShowMonth" Text="ShowMonth"></asp:Label>
                        <asp:GridView runat="server" ID="gvMonths" CssClass="table table-style"></asp:GridView>
                    </asp:Panel>
                </asp:Panel>

            </div>
        </div>
    </div>

</asp:Content>
