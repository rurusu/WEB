<%@ Page Title="註冊 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<%@ Register Src="wbfCtrlSelectBirth.ascx" TagName="wbfCtrlSelectBirth" TagPrefix="uc1" %>

<%@ Register Src="WUCtlGender.ascx" TagName="WUCtlGender" TagPrefix="uc2" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <br />
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <style type="text/css">
        .row {
            height: 585px;
        }

        .txt {
            font-size: 12px;
            color: #999999;
            border: 1px solid #0094ff;
            border-radius: 3px;
            width: 200px;
            height: 28px;
            padding: 3px;
            margin: 5px;
        }

            .txt:focus {
                color: #555555;
                border: none;
            }

        .txt-left {
            text-align: left;
        }

        .table-style {
            padding: 12px;
            margin-top: 12px;
            border: 0px;
        }

            .table-style td {
                height: 30px;
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

        select {
            color: #444;
            height: 26px;
            border: 1px solid #0094ff;
            border-radius: 3px;
        }
    </style>

    <div class="row">
        <table class="table-style" style="margin: 0px auto;">
            <tr>
                <td rowspan="20" style="width: 175px; vertical-align: top; text-align: center; color: #0099cc;">
                    <h4>加入會員</h4>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">電子信箱</asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="txt" />
                    <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="必須填寫信箱欄位。" />
                    <asp:RegularExpressionValidator ID="RegularEmail" runat="server"
                        ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email格式不符，請重新填寫" CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                    <asp:Label ID="lblDoubleAcc" runat="server" Text="電子信箱重複，請使用新的電子信箱申請帳號" CssClass="text-danger"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">使用者名稱</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                        CssClass="text-danger" ErrorMessage="必須填寫使用者名稱欄位。" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">密碼</asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtCode" TextMode="Password" CssClass="txt" />
                    <asp:RequiredFieldValidator ID="RequiredCode" runat="server" ControlToValidate="txtCode"
                        CssClass="text-danger" ErrorMessage="必須填寫密碼欄位。" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">確認密碼</asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtConfirm" TextMode="Password" CssClass="txt" />
                    <asp:RequiredFieldValidator ID="RequiredConfirm" runat="server" ControlToValidate="txtConfirm"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="必須填寫確認密碼欄位。" />
                    <asp:CompareValidator ID="CompareCode" runat="server" ControlToCompare="txtCode" ControlToValidate="txtConfirm"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="密碼和確認密碼不相符。" />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server">生日</asp:Label>
                </td>
                <td>
                    <uc1:wbfCtrlSelectBirth ID="wbfCtrlSelectBirth" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">性別</asp:Label>
                </td>
                <td>
                    <uc2:WUCtlGender ID="WUCtlGender1" runat="server" />
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="註冊" CssClass="btn btn-link" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <p>
                        已是會員？請直接
                    <asp:HyperLink runat="server" ID="LoginHyperLink" ViewStateMode="Disabled">登入</asp:HyperLink>
                    </p>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

