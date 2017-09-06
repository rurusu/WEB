<%@ Page Title="紀錄分析 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Analysis.aspx.cs" Inherits="Analysis" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/forAnalysis.css" />
    <script type="text/javascript" src="../Scripts/div_goTop.js"></script>

    <div class="row">
        <div class="col-sm-12">
            <img src="../image/index-1.jpg" style="max-width: 100%; margin: 0 auto;">
        </div>
        <div class="col-sm-2">

            <div class="panel-group" id="Select">
                <br />
                <div class="panel panel-default panel-title">
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <asp:Image runat="server" ImageUrl="~/image/iphone.png" CssClass="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#Select" href="#info-1">
                            健身重訓
                        </a>
                    </div>

                    <div id="info-1" class="info-arti panel-collapse collapse">
                        <div class="panel-body">
                            <asp:Button runat="server" Text="Jan" CssClass="btn btn-link"  ID="btnW1" OnClick="btnW1_Click" /><br />
                            <asp:Button runat="server" Text="Feb" CssClass="btn btn-link" ID="btnW2"  OnClick="btnW2_Click"/><br />
                            <asp:Button runat="server" Text="Mar" CssClass="btn btn-link" ID="btnW3" OnClick="btnW3_Click"/><br />
                            <asp:Button runat="server" Text="Apr" CssClass="btn btn-link" ID="btnW4"  OnClick="btnW4_Click"/><br />
                            <asp:Button runat="server" Text="May" CssClass="btn btn-link" ID="btnW5"  OnClick="btnW5_Click" /><br />
                            <asp:Button runat="server" Text="Jun" CssClass="btn btn-link" ID="btnW6"  OnClick="btnW6_Click"/><br />
                            <asp:Button runat="server" Text="Jul" CssClass="btn btn-link"  ID="btnW7"  OnClick="btnW7_Click"/><br />
                            <asp:Button runat="server" Text="Aug" CssClass="btn btn-link"  ID="btnW8"  OnClick="btnW8_Click"/><br />
                            <asp:Button runat="server" Text="Sep" CssClass="btn btn-link"  ID="btnW9"  OnClick="btnW9_Click"/><br />
                            <asp:Button runat="server" Text="Oct" CssClass="btn btn-link"  ID="btnW10"  OnClick="btnW10_Click"/><br />
                            <asp:Button runat="server" Text="Nov" CssClass="btn btn-link" ID="btnW11"  OnClick="btnW11_Click"/><br />
                            <asp:Button runat="server" Text="Dec" CssClass="btn btn-link" ID="btnW12"  OnClick="btnW12_Click"/><br />
                        </div>
                        
                    </div>
                    <br />
                    <div class="panel-heading" style="background-color: #00cccc;">
                        <asp:Image runat="server" ImageUrl="~/image/gps.png" CssClass="icon-style" />
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#Select" href="#info-2">
                            有氧挑戰
                        </a>
                    </div>

                    <div id="info-2" class="info-arti panel-collapse collapse">
                        <div class="panel-body">
                            <asp:Button runat="server" Text="Jan" CssClass="btn btn-link" ID="btnO1"  OnClick="btnO1_Click"/><br />
                            <asp:Button runat="server" Text="Feb" CssClass="btn btn-link" ID="btnO2"  OnClick="btnO2_Click" /><br />
                            <asp:Button runat="server" Text="Mar" CssClass="btn btn-link" ID="btnO3"  OnClick="btnO3_Click"/><br />
                            <asp:Button runat="server" Text="Apr" CssClass="btn btn-link"  ID="btnO4"  OnClick="btnO4_Click"/><br />
                            <asp:Button runat="server" Text="May" CssClass="btn btn-link" ID="btnO5"  OnClick="btnO5_Click" /><br />
                            <asp:Button runat="server" Text="Jun" CssClass="btn btn-link"  ID="btnO6"  OnClick="btnO6_Click"/><br />
                            <asp:Button runat="server" Text="Jul" CssClass="btn btn-link"  ID="btnO7"  OnClick="btnO7_Click"/><br />
                            <asp:Button runat="server" Text="Aug" CssClass="btn btn-link"  ID="btnO8"  OnClick="btnO8_Click"/><br />
                            <asp:Button runat="server" Text="Sep" CssClass="btn btn-link" ID="btnO9"  OnClick="btnO9_Click" /><br />
                            <asp:Button runat="server" Text="Oct" CssClass="btn btn-link" ID="btnO10"  OnClick="btnO10_Click" /><br />
                            <asp:Button runat="server" Text="Nov" CssClass="btn btn-link" ID="btnO11"  OnClick="btnO11_Click" /><br />
                            <asp:Button runat="server" Text="Dec" CssClass="btn btn-link" ID="btnO12"  OnClick ="btnO12_Click"/><br />
                        </div>
                    </div>
                </div>
                <!--
                <div class="panel panel-default" style="border: none; text-align: center;">
                    <div class="panel-heading" style="background-color: transparent;">
                        <br />
                        <div style="background-color: #00cccc; color: #fff; height: 40px; line-height: 30px; display: inline-block; line-height: 30px; margin-bottom: 30px; width: 60%">
                            <h4>分析項目</h4>
                        </div>
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/iphone.png" CssClass="icon-style" />
                            <asp:Button ID="btnTriceps" runat="server" Text="健身重訓" CssClass="btn btn-link" />
                        </div>
                        <br />
                        <div style="padding: 2px">
                            <asp:Image runat="server" ImageUrl="~/image/gps.png" CssClass="icon-style" />
                            <asp:Button ID="btnBiceps" runat="server" Text="有氧挑戰" CssClass="btn btn-link" />
                        </div>
                    </div>
                </div>
                -->
            </div>

        </div>

        <div class="col-sm-9">
            <iframe src="CChart_final.aspx" width="100%" height="200px" frameborder="0" scrolling="no"></iframe>
            <div style="display: inline-block; width: 350px; overflow: hidden; float:left;">
                <div id="ChartOne">
                    <asp:Label runat="server" ID="lblPie" Text="" />
                </div>
            </div>
            <div style="display: inline-block; width: 440px; overflow: hidden; float:left; padding-top: 20px;">
                <div id="ChartTwo">
                    <asp:Label runat="server" ID="lblBar" Text="" />
                </div>
            </div>
        </div>
    </div>

    <div class="div-fly" id="goTop">
        <a href="#">
            <img src="../image/up-arrow.png" style="width: 30px; height: 30px;" /></a>
    </div>
</asp:Content>
