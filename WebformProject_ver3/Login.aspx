<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            font-family: 微軟正黑體;
            font-size: large;
        }
        .auto-style3 {
            font-family: 微軟正黑體;
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">登入頁面</td>
            </tr>
            <tr>
                <td><span class="auto-style2">&nbsp; [<a href="Registration_t2.aspx">註冊</a>]</span></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAcc" runat="server" CssClass="auto-style2" Text="帳號"></asp:Label>
                    <asp:TextBox ID="txtAcc" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCode" runat="server" CssClass="auto-style2" Text="密碼"></asp:Label>
                    <asp:TextBox ID="txtCode" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblShow" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnLogin" runat="server" CssClass="auto-style2" Text="登入" OnClick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
