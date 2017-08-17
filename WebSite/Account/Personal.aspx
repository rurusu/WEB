<%@ Page Title="個人主頁" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="Account_Personal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>
        <asp:Panel runat="server" ID="PersonPanel">
            <asp:Button runat="server" ID="btnPersonal" Text="個人資料" CssClass="btn btn-link" OnClick="btnPersonal_Click" />
            <asp:Button runat="server" ID="btnSetPasswd" Text="更改密碼" CssClass="btn btn-link" OnClick="btnSetPasswd_Click" />
            <asp:Button runat="server" ID="btnSetProfit" Text="更改資料" CssClass="btn btn-link" OnClick="btnSetProfit_Click" />
            <asp:Button runat="server" ID="btnSetAlert" Text="提醒設定" CssClass="btn btn-link" OnClick="btnSetAlert_Click" />
            <!-- 顯示個人資料 -->

            <asp:Panel runat="server" ID="pnlPersonal" CssClass="panel">
                <table class="table-style" style="width: 100%;">
                    <tr style="text-align: center;">
                        <td colspan="3" style="border-bottom: 1px solid #cccccc">
                            <p style="font-size: 14px;"><strong>個人基本資訊</strong></p>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="4" style="width: 175px; text-align: center;">
                            <asp:Image runat="server" ID="imgAvatar" CssClass="image-style" />
                        </td>
                    </tr>
                    <tr style="">
                        <td style="width: 116px; height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">用戶名稱&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserName">UserName</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">用戶信箱&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserEmail">UserEmail</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">年齡階層&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblYearsOld">YearsOld</asp:Label>
                        </td>
                    </tr>
                </table>

                <table class="table-style" style="width: 100%;">
                    <tr style="text-align: center;">
                        <td colspan="3" style="border-bottom: 1px solid #cccccc">
                            <p style="font-size: 14px;"><strong>個人健康資訊</strong></p>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="6" style="width: 175px; text-align: center;"></td>
                    </tr>
                    <tr style="">
                        <td style="height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">身高&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserHeight">UserHeight</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 75px; height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">體重&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserWeight">UserWeight</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">BMI值&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserBMI">UserBMI</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">每日喝水量&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserDrinking">UserDrinking</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 116px; height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">每日基礎代謝量&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserMeta">UserMeta</asp:Label>
                        </td>
                    </tr>
                </table>

            </asp:Panel>

            <!-- 變更密碼 -->
            <asp:Panel runat="server" ID="pnlSetPasswd">
                <table class="table-style">
                    <tr>
                        <td rowspan="5" style="width: 175px; vertical-align: top; text-align: center;">
                            <h4>變更密碼</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">原密碼&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtOldPasswd" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">新密碼&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtNewPasswd" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">確認新密碼&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCheck" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="btnSubmitPasswd" Text="送出" CssClass="btn btn-link" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>

            <style type="text/css">
                .txt {
                    font-size: 12px;
                    color: #999999;
                    border: 1px solid #0094ff;
                    width: 200px;
                    height: 30px;
                    padding: 3px;
                    margin: 5px;
                }

                    .txt:focus {
                        color: #555555;
                    }

                .txt-left {
                    text-align: left;
                }

                .table-style {
                    padding: 12px;
                    margin-top: 12px;
                    border: 0px;
                }

                    .table-style tr,
                    .table-style td {
                        border: 0px;
                        padding: 5px;
                    }

                .lable-style {
                    font-size: 12px;
                    color: #ff0000;
                }

                .image-style {
                    width: 100px;
                    height: 100px;
                    margin-bottom: 6px;
                }
            </style>

            <!-- 變更資料，很多種的資料 -->
            <asp:Panel runat="server" ID="pnlSetProfit">
                <table class="table-style">
                    <tr>
                        <td rowspan="4" style="width: 175px; vertical-align: top; text-align: center;">
                            <h4>上傳頭像</h4>
                            <h5>與</h5>
                            <h4>變更名稱</h4>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Image runat="server" ID="imgAvatarUpload" CssClass="image-style" />
                            <!--
                            <asp:TextBox runat="server" ID="txtAvatarPath" ReadOnly="true">上傳檔案路徑</asp:TextBox>
                            <asp:Button runat="server" ID="btnUpload" Text="上傳檔案" OnClick="btnUpload_Click" />
                            -->
                            <asp:FileUpload runat="server" ID="fupAvatar" CssClass="fupAvatar" />
                            <asp:Label runat="server" CssClass="lable-style">僅限100x100大小的.jpg或.png檔</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">姓名&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSetName" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px;">
                            <asp:Button runat="server" ID="btnSubmitAvatar" Text="送出" CssClass="btn btn-link" />
                        </td>
                    </tr>
                </table>
                <hr />
                <table class="table-style">
                    <tr>
                        <td rowspan="5" style="width: 175px; vertical-align: top; text-align: center;">
                            <h4>設定健康資料</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">身高&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSetHeight" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">體重&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSetWeight" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px;">
                            <asp:Label runat="server">每日喝水量&nbsp;:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSetDrinking" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="btnSubmitHealthy" Text="送出" CssClass="btn btn-link" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>

            <!-- 提醒設定，如果有需要zzz -->
            <asp:Panel runat="server" ID="pnlSetAlert">

            </asp:Panel>
        </asp:Panel>
    </div>
</asp:Content>
