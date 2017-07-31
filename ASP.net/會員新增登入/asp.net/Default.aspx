<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <p>This is Home Page</p>
    <a href ="registrtion.aspx">Registration</a> | <a href ="#">Home</a>
    <form id="form1" runat="server">
        <p>Enter User Name</p>
        <asp:TextBox ID ="tbusername" runat="server"></asp:TextBox>
        <p>Enter User Password</p>
        <asp:TextBox ID ="tbpassword" runat="server" />
        <asp:Button ID ="btnsubmmit" Text ="Log" runat ="server"  OnClick ="submitEvevntMethod"/>
    <div>
    
    </div>
    </form>
</body>
</html>
