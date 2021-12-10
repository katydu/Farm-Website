using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(GridView1.Rows.Count == 1)
        {
            Session["Email"] = Email.Text;
            Session["Password"] = Password.Text;
            Response.Redirect("index.aspx");
        }
        else
        {
            Label1.Text = "登入失敗！電子信箱或密碼錯誤";
        }
    }

    protected void Password_TextChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}