<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wbfCtrlSelectSportTimes.ascx.cs" Inherits="wbfCtrlSelectSportTimes" %>

<table>
    <tr>
        <td>
            <asp:DropDownList ID="dlHours" runat="server"></asp:DropDownList>
            <asp:Label ID="lblHours" runat="server" Text="時"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="dlMinutes" runat="server"></asp:DropDownList>
            <asp:Label ID="lblMinutes" runat="server" Text="分"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="dlSsecond" runat="server"></asp:DropDownList>
            <asp:Label ID="lblSsecond" runat="server" Text="秒"></asp:Label>
        </td>
    </tr>
</table>
