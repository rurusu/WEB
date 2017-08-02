<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrtion.aspx.cs" Inherits="registrtion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <p>&nbsp;</p>
    <a href ="Default.aspx">Home</a> | <a href ="#">Registration</a>
    <form id="form1" runat="server">
    <div>
       <p> Enter First Name</p>
        <asp:TextBox ID ="tbfirstname" Text="" runat="server"></asp:TextBox>
        <p> Enter Last Name</p>
        <asp:TextBox ID ="tblasttname" Text="" runat="server"></asp:TextBox>
         <p> Email</p>
        <asp:TextBox ID ="tbemail" Text="" runat="server"></asp:TextBox>
         <p> Enter Phone Number</p>
        <asp:TextBox ID ="tbphone" Text="" runat="server"></asp:TextBox>
         <p> Enter User Name</p>
        <asp:TextBox ID ="tbusername" Text="" runat="server"></asp:TextBox>
         <p> Enter Password</p>
        <asp:TextBox ID ="tbpassword" Text="" runat="server"></asp:TextBox>
        <asp:Button ID ="btnregistration" Text="Register" runat ="server" OnClick="registerEventMethod" />
    </div>
    </form>
</body>
</html>
