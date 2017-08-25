<%@ Page Title="登入" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style type="text/css">
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
    <div class="row" style="margin-top: 20px;">
        <div class="col-xs-12">

            <table class="table-style">
                <tr>
                    <td rowspan="5" style="width: 175px; vertical-align: top; text-align: center;">
                        <h4>登入</h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">信箱</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="Email" CssClass="txt" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                            CssClass="text-danger" ErrorMessage="請使用您電子信箱作為登入帳號，不可空白。" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">密碼</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="txt" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="必須填寫密碼欄位。" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblShow" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:Button runat="server" OnClick="LogIn" Text="登入" CssClass="btn btn-link" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <p>
                            如果您不是會員的話，歡迎
                                <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">註冊</asp:HyperLink>
                        </p>
                    </td>
                </tr>
            </table>

        </div>

        <!--
        <div class="col-md-4">
            <section id="socialLoginForm">
                <uc:openauthproviders runat="server" id="OpenAuthLogin" />
            </section>
        </div>
        -->

    </div>
</asp:Content>

