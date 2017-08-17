<%@ Page Title="註冊" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<%@ Register src="wbfCtrlSelectBirth.ascx" tagname="wbfCtrlSelectBirth" tagprefix="uc1" %>

<%@ Register src="WUCtlGender.ascx" tagname="WUCtlGender" tagprefix="uc2" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>建立新帳戶。</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtName" CssClass="col-md-2 control-label">使用者名稱</asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                <!--<asp:TextBox runat="server" ID="UserName" CssClass="form-control" />-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="必須填寫使用者名稱欄位。" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtCode" CssClass="col-md-2 control-label">密碼</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtCode" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredCode" runat="server" ControlToValidate="txtCode"
                    CssClass="text-danger" ErrorMessage="必須填寫密碼欄位。" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtConfirm" CssClass="col-md-2 control-label">確認密碼</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtConfirm" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredConfirm" runat="server" ControlToValidate="txtConfirm"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="必須填寫確認密碼欄位。" />
                <asp:CompareValidator ID="CompareCode" runat="server" ControlToCompare="txtCode" ControlToValidate="txtConfirm"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="密碼和確認密碼不相符。" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">電子信箱</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtEmail"  CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="必須填寫信箱欄位。" />
                <asp:RegularExpressionValidator ID="RegularEmail" runat="server"
                     ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email格式不符，請重新填寫" CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">生日</asp:Label>
            <div class="col-md-10">
                <uc1:wbfCtrlSelectBirth ID="wbfCtrlSelectBirth" runat="server"  CssClass="form-control"  />                                
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">性別</asp:Label>
            <div class="col-md-10">
                <uc2:WUCtlGender ID="WUCtlGender1" runat="server" />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="註冊" />
            </div>
        </div>
    </div>
</asp:Content>

