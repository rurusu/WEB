<%@ Page Title="輸入紀錄 - " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Import.aspx.cs" Inherits="Import" %>

<%@ Register Src="~/wbfUCSelectSport.ascx" TagPrefix="uc1" TagName="wbfUCSelectSport" %>
<%@ Register Src="~/wbfCtrlSelectSportTimes.ascx" TagPrefix="uc1" TagName="wbfCtrlSelectSportTimes" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="row divChange">
        <div class="col-sm-12">
            <style type="text/css">
               .table-style {
                    width: 70%;
                    padding: 12px;
                    border: 0px;
                    background-color: transparent;
                    margin: 0px auto;
                }

                    .table-style tr,
                    .table-style td {
                        border: 0px;
                        padding: 5px;
                    }

                    .table-style td {
                        height: 40px;
                        line-height: 40px;
                    }

                    .table-style tr {

                    }

                        .table-style tr:first-child,
                        .table-style tr:nth-child(2),
                        .table-style tr:last-child {
                            border: none;
                        }

                select {
                    height: 26px;
                    border: 1px solid #0094ff;
                    border-radius: 3px;
                    padding: 3px;
                    margin: 5px;
                }

                .txt {
                    font-size: 12px;
                    color: #999999;
                    border: 1px solid #0094ff;
                    border-radius: 3px;
                    width: 200px;
                    height: 30px;
                    padding: 3px;
                    margin: 5px;
                }

                    .txt:focus {
                        color: #555555;
                    }

                .calories-style {
                    color: #33cc33;
                    font-size: 16px;
                    font-weight: bold;
                }

                .img-style {
                    width: 300px;
                    height: auto;
                }
            </style>
            <br />
            <div style="padding: 30px 0px;">
                <table runat="server" id="divChange" class="table-style">
                    <tr style="color: #0099cc;">
                        <td rowspan="10" style="width: 175px; vertical-align: top; text-align: center; color: #0099cc;">
                            <h4>輸入</h4>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px;">
                            <asp:Label runat="server">運動種類</asp:Label>
                            <asp:Label runat="server" ForeColor="red">*</asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="dlSelectSport" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dlSelectSport_SelectedIndexChanged">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>手臂</asp:ListItem>
                                <asp:ListItem>肩部</asp:ListItem>
                                <asp:ListItem>背部</asp:ListItem>
                                <asp:ListItem>胸部</asp:ListItem>
                                <asp:ListItem>腿部</asp:ListItem>
                                <asp:ListItem>跑步</asp:ListItem>
                                <asp:ListItem>健走</asp:ListItem>
                                <asp:ListItem>單車</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label runat="server" ID="lblAlert" ForeColor="red"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">每組</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtImpReps" CssClass="txt" Text=""></asp:TextBox>
                            <asp:Label runat="server">單位</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">運動組數</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtImpSets" CssClass="txt" Text=""></asp:TextBox>
                            <asp:Label runat="server">組</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">運動距離</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtImpDistance" CssClass="txt" Text=""></asp:TextBox>
                            <asp:Label runat="server">公里</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">運動時長</asp:Label>
                        </td>
                        <td>
                            <uc1:wbfCtrlSelectSportTimes runat="server" ID="wbfCtrlSelectSportTimes" />
                            <!--<asp:TextBox runat="server" ID="txtImpTime" CssClass="txt" Text=""></asp:TextBox>-->
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">預計消耗</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblShowCalories" CssClass="calories-style">卡路里</asp:Label>
                            <asp:Label runat="server">大卡</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button runat="server" ID="btnSubmit" Text="送出" CssClass="btn btn-link" OnClick="btnSubmit_Click" OnClientClick="return (confirm('確認送出？') ? confirm('運動紀錄送出成功') : true )" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</asp:Content>

