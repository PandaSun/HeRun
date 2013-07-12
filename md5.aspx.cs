using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class md5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox1.Text, "MD5");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}