using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Confirm_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                SqlDataSource3.Insert();
                Label3.Text = "資料新增成功!";
                //註冊之後即登入
                Session["Email"] = Email.Text;
                Session["Password"] = Password.Text;
                Session.Timeout = 10;
                Response.Redirect("index.aspx");
            }
            catch
            {
                Label3.Text = "資料新增錯誤!";
            }
        }
    }
}