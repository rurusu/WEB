<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ranking_v1.aspx.cs" Inherits="Ranking_v1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>BJWork--Be Join Work Out--  Rank</title>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap-theme.min.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 524px;
        }
        .auto-style3 {
            font-family: 微軟正黑體;
            font-size: large;
        }
    </style>
    
</head>
<body>

    <form id="form1" runat="server">

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button> <a class="navbar-brand" href="#">BJWork</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">運動資訊</a>
						</li>
						<li>
							<a href="#">排行榜</a>
						</li>
                        <li>
							<a href="#">運動分析</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Action</a>
								</li>
								<li>
									<a href="#">Another action</a>
								</li>
								<li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">One more separated link</a>
								</li>
							</ul>
						</li>
					</ul>
						<div class="form-group">
							<input type="text" class="form-control"/>
						</div> 
						<button type="submit" class="btn btn-default">
							Submit
						</button>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#">個人資料</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Action</a>
								</li>
								<li>
									<a href="#">Another action</a>
								</li>
								<li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
			<div class="btn-group">
				 
				<button class="btn btn-default" type="button">
					<em ></em> 三頭肌
				</button> 
				<button class="btn btn-default" type="button">
					<em ></em> 二頭肌
				</button> 
				<button class="btn btn-default" type="button">
					<em ></em> 背部
				</button> 
				<button class="btn btn-default" type="button">
					<em ></em> 肩膀
				</button>
                <button class="btn btn-default" type="button">
					<em ></em> 胸部
				</button>
                <button class="btn btn-default" type="button">
					<em ></em> 前臂
				</button>
                <button class="btn btn-default" type="button">
					<em ></em> 臀肌
				</button>
                <button class="btn btn-default" type="button">
					<em ></em> 腹肌肌群
				</button>
                <button class="btn btn-default" type="button">
					<em ></em> 健走
				</button>
                <button class="btn btn-default" type="button">
					<em ></em> 跑步
				</button>
                <button class="btn btn-default" type="button">
					<em ></em> 公路自行車
				</button>
			</div>
           
		</div>
	    <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbBJSportRecord %>" SelectCommand="SELECT * FROM [BJ_SportRecord]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="流水號" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                        <Columns>
                            <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="SportID" SortExpression="SportID">
                                <EditItemTemplate>
                                    <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="SportID" Mode="Edit" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <table class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("運動日期") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text='<%# Eval("SportID") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text='<%# Eval("消耗卡路里") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="運動日期" HeaderText="運動日期" SortExpression="運動日期" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
	</div>
</div>
    <script src="bootstrap.min.js"></script>
    <script src="jquery.min.js"></script>
    
    </form>
    
  </body>
</html>
