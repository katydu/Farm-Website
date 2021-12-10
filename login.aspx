<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	
	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC|Open+Sans&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/f5d6a93022.js" crossorigin="anonymous"></script><!--font awesome icon的引用-->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="css/login.css">
		<title>登入</title>
		
	</head>
	
	<body>
        <form id="form1" runat="server">
		<header>
            <div class='container'>
                <!--兩邊留白,讓內容都集中在中間-->
                <!--導覽列-->
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="index.aspx"><img src='pictures/index/logo.gif' width='100'></a>
                    <!--畫面螢幕縮小時將導覽列上的文字變成按鈕-->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <!--導覽按鈕按下去後下方長形選單-->
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#"><i class="fas fa-shopping-bag"></i>購買專區</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="resume-1.aspx"><i class="far fa-file"></i>農夫日誌</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"><i class="fas fa-question"></i>常見問題</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"><i class="far fa-user"></i>關於我們</a>
                            </li>
                        </ul>
                        <!--右邊登入按鈕-->
                            <button class="btn  my-2 my-sm-0" type="submit"><a href="login.aspx">登入</a></button>
                    </div>
                </nav>
            </div>
		</header>
		
		<section id="content">
			<div class="container">
				<div class="row ">
					<div class="col-md-12 text-center">
						<h4>登入</h4>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="offset-md-2 col-md-8 text-center">
							<div class="form-group">
								<label for="Email">電子信箱</label>
                                <asp:TextBox ID="Email" CssClass="form-control" placeholder="請輸入電子信箱" runat="server" required></asp:TextBox>
							</div>
							<div class="form-group">
								<label for="Password">密碼</label>
                                <asp:TextBox ID="Password" CssClass="form-control" placeholder="請輸入密碼" runat="server" required OnTextChanged="Password_TextChanged"></asp:TextBox>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
							</div>
                            <asp:Button ID="Button1" runat="server" Text="登入" CssClass="btn btn-primary" OnClick="Button1_Click"/>
							<p>還沒有帳戶嗎?趕快來註冊吧!</p>
                            <asp:LinkButton ID="Button2" runat="server" Text="註冊" CssClass="btn btn-primary" OnClick="Button2_Click"/>
					</div>
				</div>
			</div>
		</section>

		
	        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" SelectCommand="SELECT [mEmail], [mPassword] FROM [Member] WHERE (([mEmail] = @mEmail) AND ([mPassword] = @mPassword))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Email" Name="mEmail" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Password" Name="mPassword" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

		
	        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="mEmail" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="mEmail" HeaderText="mEmail" ReadOnly="True" SortExpression="mEmail" />
                    <asp:BoundField DataField="mPassword" HeaderText="mPassword" SortExpression="mPassword" />
                </Columns>
            </asp:GridView>
            </form>

		
	        </body>
	
</html>