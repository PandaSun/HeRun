using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Yg_Id"] == null)
        {
        }
        else {
            Response.Redirect("Main.aspx");
        }

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string Name = txtName.Text;
        string Pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txtPwd.Text, "MD5");
        string Code = txtCode.Text;
        if (Code == Session["ValiCode"].ToString())
        {
            string strConn = ConfigurationManager.ConnectionStrings["strConn"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(strConn);

            string strSql = "select * from YuanGong where Yg_Name = '" + Name + "' and Yg_Pwd='" + Pwd + "'";
            SqlCommand sqlCmd = new SqlCommand(strSql, sqlConn);
            sqlConn.Open();
            SqlDataReader sqlRed = sqlCmd.ExecuteReader();
            if (sqlRed.Read())
            {
                Session["Yg_Id"] = sqlRed["Yg_Id"].ToString();
                Session["Yg_Name"] = sqlRed["Yg_Name"].ToString();
                Session["Yg_XingMing"] = sqlRed["Yg_XingMing"].ToString();
                Session["Yg_JiBie"] = sqlRed["Yg_JiBie"];
                Response.Redirect("main.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "shibai", "shibai()", true);
            }
            sqlConn.Close();
            sqlRed.Close();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "cuowu", "cuowu()", true);
        }

    }
}