<%@ Page Title="排行榜 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Billboard.aspx.cs" Inherits="Billboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .btn {
            text-align: left;
        }
        .btn-margin {
            margin-left: 50px;
        }

        .panel-body:hover,
        .panel-body:focus{
            text-decoration: none;
        }

        table {
            border: none;
            background-color: aliceblue;
            padding: 8px;
        }
        table th a {
            color: #fff;
            text-decoration: none;
        }
        table th,
        table tr,
        table td {
            border: none;
        }
        table th:first-child {
            width: 100px;
        }
        table th {
            height: 30px;
            width: 500px;
            background-color: #25cd3b;
            color: #fff;
            border-bottom: 2px solid #008800;
            padding: 3px;
        }
        table tr {
            height: 50px;
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
                            <div class="panel-body"><asp:Button ID="btnTriceps" runat="server" Text="三頭肌" CssClass="btn btn-link" OnClick="btnTriceps_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnBiceps" runat="server" Text="二頭肌" CssClass="btn btn-link" OnClick="btnBiceps_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnBack" runat="server" Text="背肌" CssClass="btn btn-link" OnClick="btnBack_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnShoulders" runat="server" Text="肩膀" CssClass="btn btn-link" OnClick="btnShoulders_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnChest" runat="server" Text="胸肌" CssClass="btn btn-link" OnClick="btnChest_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnForearms" runat="server" Text="前臂" CssClass="btn btn-link" OnClick="btnForearms_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnGlutes" runat="server" Text="臀肌" CssClass="btn btn-link" OnClick="btnGlutes_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnAbs" runat="server" Text="腹肌" CssClass="btn btn-link" OnClick="btnAbs_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnWalking" runat="server" Text="健走" CssClass="btn btn-link" OnClick="btnWalking_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnRunning" runat="server" Text="跑步" CssClass="btn btn-link" OnClick="btnRunning_Click" /></div>
                            <div class="panel-body"><asp:Button ID="btnCycling" runat="server" Text="單車" CssClass="btn btn-link" OnClick="btnCycling_Click" /></div>
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
                <asp:Label ID="lblTestMsg" runat="server" Text="TestMsg"></asp:Label>
                <asp:GridView ID="BillboardTable" runat="server">
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
