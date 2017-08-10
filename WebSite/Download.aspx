<%@ Page Title="下載 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
        h1, h2, h3, h4 {
            color: #22cf16;
        }
    </style>

    <h3>APP download page</h3>
    
    <div class="container-fluid">
	<div class="row">

		<div class="col-md-4">
            <!-- 手風琴開始 -->
            <div class="panel-group" id="panel-627209">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title collapsed" href="Android.aspx">APP for Android</a>
					</div>
                    <!--
                    <div id="panel-element-654722" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="../Android.aspx" target="_self">Android</a>
						</div>
					</div>
                    -->
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-627209" href="#panel-element-896757">APP for iPhone</a>
					</div>
					<div id="panel-element-896757" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="../iPhone.aspx" target="_self">iPhone</a>
						</div>
                        <div class="panel-body">
							<a href="../iPad.aspx">iPad</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-8">
            <img src="../image/jogging.jpg" style="max-width:100%; height:auto;" />
            <img alt="QR code" src="../image/qrTest.png" width="120px" />
		</div>

	</div>
</div>

</asp:Content>
