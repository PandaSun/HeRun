using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Convert.ToInt32(Session["Yg_JiBie"]) <1)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            /*
            labXM.Text = Convert.ToString(Session["Yg_XingMing"]);
            labMD.Text = Convert.ToString(Session["Yg_MenDian"]);
            switch (Convert.ToString(Session["Yg_JiBie"]))
            {
                case "1":
                    labJB.Text = "员工";
                    break;
                case "2":
                    labJB.Text = "店长";
                    break;
                case "3":
                    labJB.Text = "经理";
                    break;
            }
             */
        }
    }
}
