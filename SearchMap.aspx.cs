using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class SearchMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (rblLX.SelectedValue == "2")
        {
            RadioButtonList3.Visible = false;
        }
        else {
            RadioButtonList3.Visible = true;
        }
        if (!Page.IsPostBack) {
            shangquan();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "load", "load()", true);
        }


        
    }

    public void shangquan()
    {
        linqShangQuanDataContext sq = new linqShangQuanDataContext();
        Table<ShangQuan> shangquanlist = sq.GetTable<ShangQuan>();
        var query =
            from shangquan in shangquanlist
            select shangquan;
        rblSQ.DataSource = query;
        rblSQ.DataTextField = "Sq_Name";
        rblSQ.DataValueField = "Sq_Id";
        rblSQ.DataBind();
        rblSQ.SelectedIndex = 0;
    }

    public void GetHouse()
    {
        //读取数据库连接字符串
        SqlConnection conn = new SqlConnection( ConfigurationManager.ConnectionStrings["strConn"].ConnectionString);
        string strSql="";
        //复制sql语句
        strSql = "select * from FangYuan";// where Fy_LeiXing = " + rblLX.SelectedValue;// +" and Fy_ShangQuan = " + rblSQ.SelectedValue + "
        //执行sql语句
        SqlCommand cmd = new SqlCommand(strSql, conn);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        //处理搜索结果
        System.Text.StringBuilder text = new System.Text.StringBuilder();
        if (ds.Tables.Count > 0)
        {
            Response.Write("var Houses=new Array();");

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                text.AppendFormat("Houses[{0}]  = '{1}';", i.ToString(), ds.Tables[0].Rows[i]["Fy_Id"].ToString() + "," + ds.Tables[0].Rows[i]["Fy_Gmaps"].ToString() + "," + ds.Tables[0].Rows[i]["Fy_MianJi"].ToString() + "," + ds.Tables[0].Rows[i]["Fy_JiaGe"].ToString());

            }
            text.Remove(text.Length - 1, 1);
            Response.Write(text);
        }
    }



    protected void rblLX_SelectedIndexChanged(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "load", "load()", true);
        Response.Write(rblLX.SelectedValue);
    }
    protected void rblSQ_SelectedIndexChanged(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "load", "load()", true);
    }
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "load", "load()", true);
    }
    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "load", "load()", true);
    }
    protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "load", "load()", true);
    }
}