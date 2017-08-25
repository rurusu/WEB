<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wbfCtrlSelectBirth.ascx.cs" Inherits="Account_wbfCtrlSelectBirth" %>

<table>
    <tr>
        <td>
            <asp:Label ID="lblYear" runat="server" Text="西元年"></asp:Label>
            <asp:DropDownList ID="dlYear" runat="server"></asp:DropDownList>
        </td>
        <td>
            <asp:Label ID="lblMonth" runat="server" Text="月"></asp:Label>
            <asp:DropDownList ID="dlMonth" runat="server"></asp:DropDownList>
        </td>
        <td>
            <asp:Label ID="lblday" runat="server" Text="日"></asp:Label>
            <asp:DropDownList ID="dlDay" runat="server"></asp:DropDownList>
        </td>
    </tr>
</table>
