<%@ Page Title="紀錄分析 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Analysis.aspx.cs" Inherits="Analysis" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/forAnalysis.css" />

    <div class="row">
        <div class="col-sm-12">
            <img src="../image/index_sport_1.jpg" style="max-width: 100%; border: 1px solid transparent; border-radius: 5px;">
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-sm-2">

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

        <div class="col-sm-10">
            <div style="clear: left;">
                <div id="ChartOne" class="chart-style"></div>
                <div class="record-style">
                    <asp:Label runat="server" ID="lbl1stOne" CssClass="lbl">手臂&nbsp;:&nbsp;</asp:Label><br />
                    <asp:Label runat="server" ID="lbl1stTwo" CssClass="lbl">肩部&nbsp;:&nbsp;</asp:Label><br />
                    <asp:Label runat="server" ID="lbl1stThree" CssClass="lbl">背部&nbsp;:&nbsp;</asp:Label><br />
                    <asp:Label runat="server" ID="lbl1stFour" CssClass="lbl">胸部&nbsp;:&nbsp;</asp:Label><br />
                    <asp:Label runat="server" ID="lbl1stFive" CssClass="lbl">腿部&nbsp;:&nbsp;</asp:Label>
                </div>
            </div>

            <div style="clear: left;">
                <div id="ChartTwo" class="chart-style"></div>
                <div class="record-style">
                    <asp:Label runat="server" ID="lbl2ndOne" CssClass="lbl">手臂&nbsp;:&nbsp;</asp:Label><br />
                    <asp:Label runat="server" ID="lbl2ndTwo" CssClass="lbl">肩部&nbsp;:&nbsp;</asp:Label><br />
                    <asp:Label runat="server" ID="lbl2ndThree" CssClass="lbl">背部&nbsp;:&nbsp;</asp:Label><br />
                    <asp:Label runat="server" ID="lbl2ndFour" CssClass="lbl">胸部&nbsp;:&nbsp;</asp:Label><br />
                    <asp:Label runat="server" ID="lbl2ndFive" CssClass="lbl">腿部&nbsp;:&nbsp;</asp:Label>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
