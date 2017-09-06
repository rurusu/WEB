<%@ Page Title="個人主頁" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="Account_Personal" %>

<%@ Register src="WUCtlHeight.ascx" tagname="WUCtlHeight" tagprefix="uc1" %>
<%@ Register src="WUCtlWeight.ascx" tagname="WUCtlWeight" tagprefix="uc2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <style type="text/css">
        .row {
            height: 585px;
        }

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
            border: 1px dotted #0099cc;
        }

        .img {
            margin-top: 18px;
        }

        .panel-style {
            margin: 0px auto;
        }

        .lbl {
            margin-left: 15px;
        }

        .user-lbl {
            color: #009900;
            font-size: 16px;
        }
    </style>
    <div class="row">
        <asp:Panel runat="server" ID="PersonPanel">
            <asp:Button runat="server" ID="btnPersonal" Text="個人資料" CssClass="btn btn-link" OnClick="btnPersonal_Click" />
            <asp:Button runat="server" ID="btnSetPasswd" Text="更改密碼" CssClass="btn btn-link" OnClick="btnSetPasswd_Click" />
            <asp:Button runat="server" ID="btnSetProfit" Text="更改資料" CssClass="btn btn-link" OnClick="btnSetProfit_Click" />

            <script type="text/javascript">
                $(function () {
                    function preview(input) {
                        if (input.files && input.files[0]) {
                            var reader = new FileReader();
                            reader.onload = function (e) {
                                $('.imgShow').attr('src', e.target.result);
                            }
                            reader.readAsDataURL(input.files[0]);
                        }
                    }
                    $("body").on("change", ".fupAvatar", function () {
                        preview(this);
                    })
                })
            </script>

            <!-- 顯示個人資料 -->
            <asp:Panel runat="server" ID="pnlPersonal" CssClass="panel panel-style">

                <table class="table-style" style="margin: 0px auto;">
                    <tr>
                        <td colspan="3" style="color: #0099cc; text-align: center;">
                            <h4>個人基本資訊</h4>
                        </td>

                        <td colspan="2" style="color: #0099cc; padding-left: 20px;">
                            <h4>個人健康資訊</h4>
                        </td>

                    </tr>
                    <tr>
                        <td rowspan="12" style="width: 175px; text-align: center; vertical-align: top;">
                            <asp:Image runat="server" ID="imgAvatar" CssClass="img image-style" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 116px; height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">用戶名稱</asp:Label>
                        </td>
                        <td style="width: 180px;">
                            <asp:Label runat="server" ID="lblUserName" CssClass="user-lbl">UserName</asp:Label>
                        </td>

                        <td style="width: 150px; height: 55px; vertical-align: middle;">
                            <asp:Label runat="server" CssClass="lbl">身高</asp:Label>
                        </td>
                        <td style="width: 180px;">
                            <asp:Label runat="server" ID="lblUserHeight" CssClass="user-lbl">UserHeight</asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td style="width: 75px; height: 55px; vertical-align: middle;">
                            <asp:Label runat="server">用戶信箱</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserEmail" CssClass="user-lbl">UserEmail</asp:Label>
                        </td>

                        <td style="height: 55px; vertical-align: middle; padding-left: 3px;">
                            <asp:Label runat="server" CssClass="lbl">體重</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserWeight" CssClass="user-lbl">UserWeight</asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td style="height: 55px; vertical-align: middle; padding-left: 3px;">年齡</td>
                        <td>
                            <asp:Label runat="server" ID="lblYearsOld" CssClass="user-lbl">YearsOld</asp:Label>
                        </td>

                        <td style="height: 55px; vertical-align: middle; padding-left: 3px;">
                            <asp:Label runat="server" CssClass="lbl">BMI值</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserBMI" CssClass="user-lbl">UserBMI</asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td style="height: 55px; vertical-align: middle;"></td>
                        <td></td>

                        <td style="height: 55px; vertical-align: middle; padding-left: 3px;">
                            <asp:Label runat="server" CssClass="lbl">每日喝水量</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserDrinking" CssClass="user-lbl">UserDrinking</asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td style="height: 55px; vertical-align: middle;"></td>
                        <td></td>

                        <td style="height: 55px; vertical-align: middle; padding-left: 3px;">
                            <asp:Label runat="server" CssClass="lbl">每日基礎代謝量</asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblUserMeta" CssClass="user-lbl">UserMeta</asp:Label>
                        </td>

                    </tr>
                </table>

            </asp:Panel>

            <!-- 變更密碼 -->
            <asp:Panel runat="server" ID="pnlSetPasswd">
                <table class="table-style" style="margin: 0px auto;">
                    <tr>
                        <td rowspan="5" style="width: 175px; vertical-align: top; text-align: center; color: #0099cc;">
                            <h4>變更密碼</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">原密碼</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtOldPasswd" TextMode="Password" CssClass="txt"></asp:TextBox>
                            <asp:Label ID="lblCheck" runat="server" Style="font-size: medium; color: #C7254E; font-family: 微軟正黑體" Text="您的密碼不正確，請重新輸入"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">新密碼</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtNewPasswd" TextMode="Password" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">確認新密碼</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCheck" TextMode="Password" CssClass="txt"></asp:TextBox>
                            <!--<asp:CompareValidator ID="ComparePasswd" runat="server" ErrorMessage="密碼和確認密碼不相符。" ControlToCompare="txtNewPasswd" ControlToValidate="txtCheck" Display="Dynamic"></asp:CompareValidator>-->
                            <asp:Label ID="lblComfirmNew" runat="server" Style="font-size: medium; color: #C7254E; font-family: 微軟正黑體" Text="密碼和確認密碼不相符"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="btnSubmitPasswd" Text="送出" CssClass="btn btn-link" OnClick="btnSubmitPasswd_Click" />
                        </td>
                        <td>

                            <!-- <asp:Label ID="lblSuccess" runat="server" Text=""></asp:Label>-->

                        </td>
                    </tr>
                </table>
            </asp:Panel>

            <!-- 變更資料，很多種的資料 -->
            <asp:Panel runat="server" ID="pnlSetProfit">
                <table class="table-style" style="margin: 0px auto;">
                    <tr>
                        <td rowspan="4" style="width: 175px; vertical-align: top; text-align: center; color: #0099cc;">
                            <h4>上傳頭像</h4>
                            <h5>與</h5>
                            <h4>變更名稱</h4>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Image runat="server" ID="imgAvatarPreview" CssClass="image-style imgShow" />
                            <asp:FileUpload runat="server" ID="fupAvatar" CssClass="fupAvatar" />

                            <asp:Label runat="server" ID="lblAvatar" CssClass="lable-style">僅限100x100大小的.jpg或.png檔</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">使用者名稱</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSetName" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px;">
                            <asp:Button runat="server" ID="btnSubmitAvatar" Text="送出" CssClass="btn btn-link" OnClick="btnSubmitAvatar_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblMsg" Text="" Visible="false" runat="server" />
                        </td>
                    </tr>
                </table>
                <hr />
                <table class="table-style" style="margin: 0px auto;">
                    <tr>
                        <td rowspan="5" style="width: 175px; vertical-align: top; text-align: center; color: #0099cc;">
                            <h4>設定健康資料</h4>
                            <p>(身高:公分)</p>
                            <p>(體重:公斤)</p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td style="width: 90px;">
                            <asp:Label runat="server">身高</asp:Label>
                        </td>
                        <td style="width: 200px;">
                            <uc1:WUCtlHeight ID="WUCtlHeight" runat="server" />
                            <asp:Label ID="lblChexkHeight" runat="server" style="font-size: medium; color: #C7254E; font-family: 微軟正黑體" Text="身高必須要輸入" Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">體重</asp:Label>
                        </td>
                        <td>
                            <uc2:WUCtlWeight ID="WUCtlWeight" runat="server" />
                            <asp:Label ID="lblChexkWeight" runat="server" style="font-size: medium; color: #C7254E; font-family: 微軟正黑體" Text="體重必須要輸入" Visible="false"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Button runat="server" ID="btnSubmitHealthy" Text="送出" CssClass="btn btn-link" OnClick="btnSubmitHealthy_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblMsg2" Text="" Visible="false" runat="server" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>

            <!-- 提醒設定，如果有需要zzz -->
            <asp:Panel runat="server" ID="pnlSetAlert">
                <table class="table-style" style="margin: 0px auto;">
                    <tr>
                        <td rowspan="4" style="width: 175px; vertical-align: top; text-align: center; color: #0099cc;">
                            <h4>變更提醒設定</h4>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px;">
                            <asp:Label runat="server">喝水提醒</asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox runat="server" ID="ckbDrinking" />
                            <asp:Label runat="server">開啟提醒</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px;">
                            <asp:Label runat="server">戰鬥提醒</asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox runat="server" ID="ckbFight" />
                            <asp:Label runat="server">開啟提醒</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px;">
                            <asp:Label runat="server">激勵提醒</asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox runat="server" ID="ckbInspire" />
                            <asp:Label runat="server">開啟提醒</asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlComplete">
                <table>
                    <tr>
                        <td rowspan="4" style="width: 175px; vertical-align: top; text-align: center; color: #0099cc;">
                            <h4>密碼變更完成</h4>
                        </td>
                    </tr>
                </table>
            </asp:Panel>

        </asp:Panel>
    </div>
</asp:Content>
