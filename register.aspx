<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

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
    <link rel="stylesheet" href="css/register.css">
    <title>登入</title>

</head>

<body>
    <form id="form1" runat="server">
        <header>
            <div class='container'>
                <!--兩邊留白,讓內容都集中在中間-->
                <!--導覽列-->
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="index.html">
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
                        <h4>註冊</h4>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="offset-md-2 col-md-8 text-left">
                        <div class="form-group">
                            <label for="Email">電子信箱</label>
                            <asp:TextBox ID="Email" runat="server" placeholder="請輸入電子信箱" CssClass="form-control" required></asp:TextBox>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="請輸入正確格式的電子信箱" Font-Size="Small" ForeColor="Red" ValidationExpression="^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$"></asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group">
                            <label for="reEmail">確認電子信箱</label>
                            <asp:TextBox ID="reEmail" runat="server" placeholder="請再次輸入電子信箱" CssClass="form-control" required></asp:TextBox>

                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Email" ControlToValidate="reEmail" Display="Dynamic" ErrorMessage="驗證錯誤，請重新輸入" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>

                        </div>
                        <div class="form-group">
                            <label for="Password">密碼</label>
                            <asp:TextBox ID="Password" runat="server" CssClass="form-control" placeholder="請輸入密碼" required></asp:TextBox>
                            <small id="emailHelp" class="form-text text-muted">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Password" 
                                Display="Dynamic" ErrorMessage="密碼至少有一個數字和大/小寫英文字母，且長度在5到15之間" 
                                ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,30}$">
                            </asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label for="rePassword">再次確認密碼</label>
                            <asp:TextBox ID="rePassword" placeholder="請再次輸入密碼" CssClass="form-control" runat="server" required></asp:TextBox>
                            
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="Password" ControlToValidate="rePassword" Display="Dynamic" ErrorMessage="驗證錯誤，請重新輸入" ForeColor="Red" Font-Size="Small"></asp:CompareValidator>
                            
                        </div>
                        <div class="form-group">
                            <label for="name">姓名</label>
                            <asp:TextBox ID="Name" CssClass="form-control" runat="server" placeholder="請輸入姓名" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="phone">電話號碼</label>
                            <asp:TextBox ID="Phone" CssClass="form-control" placeholder="請輸入手機號碼" runat="server" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="請輸入正確格式的電話號碼" ControlToValidate="Phone" Display="Dynamic" Font-Size="Small" ForeColor="Red" ValidationExpression="09[0-9]{8}"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group text-center">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            <br />
                            <asp:Button ID="Confirm" CssClass="btn btn-primary" runat="server" Text="建立帳戶" OnClick="Confirm_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" DeleteCommand="DELETE FROM [Member] WHERE [mEmail] = @mEmail" InsertCommand="INSERT INTO [Member] ([mEmail], [mPassword], [mName], [mPhone]) VALUES (@mEmail, @mPassword, @mName, @mPhone)" SelectCommand="SELECT * FROM [Member]" UpdateCommand="UPDATE [Member] SET [mPassword] = @mPassword, [mName] = @mName, [mPhone] = @mPhone WHERE [mEmail] = @mEmail">
            <DeleteParameters>
                <asp:Parameter Name="mEmail" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="Email" Name="mEmail" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Password" Name="mPassword" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Name" Name="mName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Phone" Name="mPhone" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="mPassword" Type="String" />
                <asp:Parameter Name="mName" Type="String" />
                <asp:Parameter Name="mPhone" Type="String" />
                <asp:Parameter Name="mEmail" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" SelectCommand="SELECT [mEmail] FROM [Member] WHERE ([mEmail] = @mEmail)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Email" Name="mEmail" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:memberConnectionString %>" SelectCommand="SELECT [mPhone] FROM [Member] WHERE ([mPhone] = @mPhone)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Phone" Name="mPhone" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="mEmail" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="mEmail" HeaderText="mEmail" ReadOnly="True" SortExpression="mEmail" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="mPhone" HeaderText="mPhone" SortExpression="mPhone" />
            </Columns>
        </asp:GridView>
    </form>

</body>

</html>
