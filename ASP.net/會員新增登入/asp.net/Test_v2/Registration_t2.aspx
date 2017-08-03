<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration_t2.aspx.cs" Inherits="Test_v2_Registration_t2" %>

<%@ Register src="WUCtlBirthdayBox.ascx" tagname="WUCtlBirthdayBox" tagprefix="uc1" %>

<%@ Register src="WUCtlGender.ascx" tagname="WUCtlGender" tagprefix="uc2" %>

<!DOCTYPE html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 24px;
        }
    </style>
</head>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>註冊頁面</td>
        </tr>
        <tr>
            <td>[<a href="Default.aspx">首頁</a>]</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblName" runat="server" Text="帳號"></asp:Label>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="用戶欄位不可空白" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:Label ID="lblNameCheck" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCode" runat="server" Text="密碼"></asp:Label>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredCode" runat="server" ControlToValidate="txtCode" Display="Dynamic" ErrorMessage="密碼欄位不可空白" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblConfirm" runat="server" Text="密碼確認"></asp:Label>
                <asp:CompareValidator ID="CompareCode" runat="server" ControlToCompare="txtConfirm" ControlToValidate="txtCode" ErrorMessage="密碼輸入不符，請再次輸入" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="E-mal"></asp:Label>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="RegularEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email格式不符，請重新填寫" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email欄位不可為空" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblBirth" runat="server" Text="生日"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:WUCtlBirthdayBox ID="WUCtlBirthdayBox1" runat="server" />
            </td>
        </tr>       
        <tr>
            <td class="auto-style4">性別</td>
        </tr>
        <tr>
            <td>
                <uc2:WUCtlGender ID="WUCtlGender1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblShow" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnConfirm" runat="server" Text="確認" OnClick="BtnConfirm_Click" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
