<%@ Page Title="下載 - " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="iPhone.aspx.cs" Inherits="iPhone" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
        h1, h2, h3, h4 {
            color: #22cf16;
        }
    </style>

    <h3>iPhone page.</h3>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
            <div class="panel-group" id="panel-627209">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-627209" href="#panel-element-654722">APP for Android</a>
					</div>
                    <div id="panel-element-654722" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="../Android.aspx">Android</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-627209" href="#panel-element-896757">APP for iPhone</a>
					</div>
					<div id="panel-element-896757" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="../iPhone.aspx">iPhone</a>
						</div>
                        <div class="panel-body">
							<a href="../iPad.aspx">iPad</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-8">
			<img src="../image/download_ios.png" width="200px" />
		</div>
	</div>
    </div>
</asp:Content>