<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCtlBirthdayBox.ascx.cs" Inherits="Test_v2_WUCtlBirthdayBox" %>
<style type="text/css">
    .WUCtlBirthdayBox-style1 {
        width: 40%;
    }
      
    .auto-style1 {
        width: 104px;
    }
    .auto-style2 {
        width: 89px;
    }
    .auto-style3 {
        width: 26%;
    }
      
</style>

<table class="auto-style3">
    <tr>
        <td class="auto-style1" >
            <asp:Label ID="lblYear" runat="server" Text="西元年"></asp:Label>
        </td>
        <td class="auto-style2" >
            <asp:Label ID="lblMonth" runat="server" Text="月"></asp:Label>
        </td>
        <td >
            <asp:Label ID="lblday" runat="server" Text="日"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style1" >
            <asp:DropDownList ID="dlYear" runat="server">
            </asp:DropDownList>
        </td>
        <td class="auto-style2" >
            <asp:DropDownList ID="dlMonth" runat="server">
            </asp:DropDownList>
        </td>
        <td >
            <asp:DropDownList ID="dlDay" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
</table>

