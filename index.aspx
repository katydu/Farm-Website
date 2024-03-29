﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

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
    <script src="https://kit.fontawesome.com/f5d6a93022.js" crossorigin="anonymous"></script>
    <!--font awesome icon的引用-->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/index.css">
    <title>首頁</title>

</head>

<body>
    <form id="form1" runat="server">

        <header>
            <div class='container'>
                <!--兩邊留白,讓內容都集中在中間-->
                <!--導覽列-->
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="index.aspx">
                        <img src='pictures/index/logo.gif' width='100'></a>
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
                            <!--<li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Dropdown
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </li>-->
                        </ul>
                        <!--右邊登入按鈕-->

                        <div id="afterLogin" runat="server">
                            <asp:Label ID="memberData" runat="server"></asp:Label>
                            <asp:Button ID="logout" runat="server" Text="登出" CssClass="btn btn-primary btn-lg" OnClick="logout_Click" />
                        </div>
                        <div id="beforeLogin" runat="server">
                            <asp:Button ID="login" runat="server" Text="登入" CssClass="btn btn-primary btn-lg" OnClick="login_Click"/>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" SelectCommand="SELECT * FROM [Member] WHERE (([mEmail] = @mEmail) AND ([mPassword] = @mPassword))">
                            <SelectParameters>
                                <asp:SessionParameter Name="mEmail" SessionField="Email" Type="String" />
                                <asp:SessionParameter Name="mPassword" SessionField="Password" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="mEmail" DataSourceID="SqlDataSource1" Visible="False">
                            <Fields>
                                <asp:BoundField DataField="mEmail" HeaderText="mEmail" ReadOnly="True" SortExpression="mEmail" />
                                <asp:BoundField DataField="mPassword" HeaderText="mPassword" SortExpression="mPassword" />
                                <asp:BoundField DataField="mName" HeaderText="mName" SortExpression="mName" />
                                <asp:BoundField DataField="mPhone" HeaderText="mPhone" SortExpression="mPhone" />
                            </Fields>
                        </asp:DetailsView>
                    </div>
                </nav>
            </div>
        </header>
        <hr style="width: 90%; height: 1px; border: none; background-color: #282828">
        <section id='intro'>

            <div class="jumbotron">
                <div class='container'>
                    <div class='row'>
                        <div class='col-md-12'>
                            <h1 class="display-4">美滿家祿園地</h1>
                            <p class="lead">非為營利 非為救濟 乃是服務</p>
                            <a class="btn btn-primary btn-lg" href="#" role="button">了解更多</a>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <hr style="width: 90%; height: 1px; border: none; background-color: #282828">
        <section id='second'>
            <div class="container">
                <div class='row'>
                    <div class='col-md-9 offset-md-1 text-center'>
                        <h3>靈魂人物</h3>
                        <div class='row'>
                            <div class='col-md-4 text-center'>
                                <img src='pictures/index/boss.JPG'>
                                <h4 style="margin-top: 13px;">謝興隆</h4>
                                <h5 style="margin-top: 13px;">理事長</h5>
                            </div>
                            <div class='col-md-8 text-left'>
                                <p class='lead'>美滿家祿園區，就是從互助協助多年成果，都可以呈現在園區，讓辛苦耕耘果實分享大家，並發揚儲蓄互助運動精神</p>
                            </div>
                        </div>
                    </div>
                    <div>
                    </div>
        </section>
        <section id='latest'>

            <div class="container">
                <div class='row'>
                    <div class='col-md-12 text-center'>
                        <h3>活動花絮</h3>
                        <div class='row'>
                            <div class='col-md-4 text-left'>
                                <div class='outer'>
                                    <a href='#'>
                                        <div class='upper'>
                                            <img src='pictures/event/01.jpg'>
                                            <div class='innertext'>
                                                <!--<span></span>
												<h4></h4>-->
                                            </div>
                                        </div>
                                        <div class='lower'>
                                            <h3>109年社員大會</h3>
                                            <span><i class="fas fa-map-marker-alt"></i>坪林國小禮堂</span><br>
                                            <span><i class="far fa-clock"></i>109年01月05日</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class='col-md-4 text-left'>
                                <div class='outer'>
                                    <a href='#'>
                                        <div class='upper'>
                                            <img src='pictures/event/02.jpg'>
                                            <div class='innertext'>
                                                <!--<span></span>
												<h4></h4>-->
                                            </div>
                                        </div>
                                        <div class='lower'>
                                            <h3>108年志工教育研習</h3>
                                            <span><i class="fas fa-map-marker-alt"></i>家錄社二樓</span><br>
                                            <span><i class="far fa-clock"></i>108年9月16日</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class='col-md-4 text-left'>
                                <div class='outer'>
                                    <a href='#'>
                                        <div class='upper'>
                                            <img src='pictures/event/03.jpg'>
                                            <div class='innertext'>
                                                <!--<span></span>
												<h4></h4>-->
                                            </div>
                                        </div>
                                        <div class='lower'>
                                            <h3>108年夫婦幹部聯誼活動</h3>
                                            <span><i class="fas fa-map-marker-alt"></i>尖石鄉運動公園</span><br>
                                            <span><i class="far fa-clock"></i>108年5月18日</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                    </div>
        </section>
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 text-center">
                        <img src="pictures/index/logo.gif">
                        <p>美滿家祿園地</p>
                    </div>
                    <div class="col-md-4 text-center">
                        <h4>連結</h4>
                        <ul>
                            <li><a href="shopping.html">購買專區</a></li>
                            <li><a href="resume-1.aspx">農夫日誌</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">常見問題</a></li>
                            <li><a href="#">關於我們</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 text-center">
                        <h4 class="text-center">聯絡我們</h4>
                        <p>
                            <span><i class="fas fa-map-marker-alt"></i>地址:</span>新竹縣關西鎮石岡子路319號<br>
                            <span><i class="fas fa-phone-alt"></i>連絡電話:</span>(03)586-9105<br>
                            <span><i class="fas fa-fax"></i>傳真:</span>(03)586-0155<br>
                            <span><i class="far fa-clock"></i>營業時間:</span>星期一至五 8:00~16:00<br>
                            <span><i class="far fa-envelope"></i>Email:</span><a href="mailto:xxx@gmail.com">chialu.credit@msa.hinet.net</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>

        <script src='js/script.js'></script>
    </form>
</body>

</html>
