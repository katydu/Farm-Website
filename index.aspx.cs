using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Email"] != null && Session["Password"] != null)
        {
            afterLogin.Visible = true;
            beforeLogin.Visible = false;
            memberData.Text = "歡迎 " + DetailsView1.Rows[2].Cells[1].Text + " ！";
        }
        else
        {
            afterLogin.Visible = false;
            beforeLogin.Visible = true;
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        memberData.Text = "登出！";
        HtmlMeta meta = new HtmlMeta();
        meta.Attributes.Add("http-equiv", "REFRESH");
        meta.Content = "1; URL=index.aspx";
        this.Header.Controls.Add(meta);
    }

    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}