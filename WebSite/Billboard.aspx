<%@ Page Title="排行榜 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Billboard.aspx.cs" Inherits="Billboard" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/forBillBoard.css" />

    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12" style="border-radius: 5px;">
                <img src="../image/index_sport_2.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-xs-2">

                <div class="panel-group" id="RightLink">
                    <div class="panel panel-default" style="border: none; text-align: right;">
                        <div class="panel-heading" style="background-color: transparent;">
                            <div style="padding: 2px">
                                <asp:Button ID="btnTriceps" runat="server" Text="手臂" CssClass="btn btn-link" OnClick="btnTriceps_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnBiceps" runat="server" Text="肩部" CssClass="btn btn-link" OnClick="btnBiceps_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnBack" runat="server" Text="背部" CssClass="btn btn-link" OnClick="btnBack_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnShoulders" runat="server" Text="胸部" CssClass="btn btn-link" OnClick="btnShoulders_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnChest" runat="server" Text="腿部" CssClass="btn btn-link" OnClick="btnChest_Click" />
                            </div>

                            <div style="padding: 2px">
                                <asp:Button ID="btnWalking" runat="server" Text="跑步" CssClass="btn btn-link" OnClick="btnWalking_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnRunning" runat="server" Text="健走" CssClass="btn btn-link" OnClick="btnRunning_Click" />
                            </div>
                            <div style="padding: 2px">
                                <asp:Button ID="btnCycling" runat="server" Text="單車" CssClass="btn btn-link" OnClick="btnCycling_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xs-10">

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
                                    <asp:Image runat="server" ID="imgPersonalPic" CssClass="image-style" />
                                    <br />
                                    <asp:Label runat="server" ID="lblBoardUserName" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="gvPersonal" runat="server" CssClass="per-record"></asp:GridView>
                                    <asp:Label ID="lblshow" runat="server" Text="" Visible="false" />
                                </td>
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

                        <asp:Label runat="server" ID="lblShowWeek" Text="ShowWeek" CssClass="btn text-success" Visible="false"></asp:Label>
                        <asp:Button runat="server" ID="btnSelectWeek" Text="本週" OnClick="btnSelectWeek_Click" CssClass="btn btn-success btn-sm" Visible="false" />

                        <asp:GridView runat="server" ID="gvWeeks" CssClass="board-style table table-style">
                        </asp:GridView>

                    </asp:Panel>

                    <asp:Panel runat="server" ID="pnlMonths">

                        <asp:Label runat="server" ID="lblShowMonth" Text="ShowMonth" CssClass="btn text-success" Visible="false"></asp:Label>
                        <asp:Button runat="server" ID="btnSelectMonth" Text="7月" OnClick="btnSelectMonth_Click" CssClass="btn btn-success btn-sm" Visible="false" />

                        <!--<asp:Repeater runat="server" ID="reptImg">
                            <ItemTemplate>
                                <asp:Image runat="server" ID="imgCrown" BoundColumnName="名次" ImageList="1, ~/image/board/crown-1st.png" />
                            </ItemTemplate>
                        </asp:Repeater>-->
                        <asp:GridView runat="server" ID="gvMonths" OnRowDataBound="gvMonths_RowDataBound" CssClass="board-style table table-style">
                        </asp:GridView>

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
        </div>
    </div>

</asp:Content>
