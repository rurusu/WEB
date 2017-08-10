<%@ Page Title="排行 - 二頭肌" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Biceps.aspx.cs" Inherits="BillboardPages_Biceps" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .btn {
            text-align: left;
        }
        .btn-margin {
            margin-left: 50px;
        }
        
    </style>

    <div class="container-fluid">
        <h1><%: Title %></h1>
        <div class="row">
            <div class="col-md-12">
                <img src="../image/index_sport_1.jpg" style="max-width: 100%">
            </div>
            
        </div>
        <hr />
        <div class="row">
            <div class="col-md-2">

                <div class="panel-group" id="panel-627209">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-body"><a href="Triceps.aspx" runat="server">三頭肌</a></div>
                            <div class="panel-body"><a href="Biceps.aspx" runat="server">二頭肌</a></div>
                            <div class="panel-body"><a href="#" runat="server">背部</a></div>
                            <div class="panel-body"><a href="#" runat="server">肩膀</a></div>
                            <div class="panel-body"><a href="#" runat="server">胸部</a></div>
                            <div class="panel-body"><a href="#" runat="server">前臂</a></div>
                            <div class="panel-body"><a href="#" runat="server">臂肌</a></div>
                            <div class="panel-body"><a href="#" runat="server">腹肌肌群</a></div>
                            <div class="panel-body"><a href="#" runat="server">游泳</a></div>
                            <div class="panel-body"><a href="#" runat="server">健走</a></div>
                            <div class="panel-body"><a href="#" runat="server">跑步</a></div>
                            <div class="panel-body"><a href="#" runat="server">單車</a></div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-md-10">

            </div>
        </div>
    </div>
</asp:Content>