using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using System.Configuration;
using System.Data.SqlClient;

public partial class GongGaoTJ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bangding();
        }

    }
    protected void btnQC_Click(object sender, EventArgs e)
    {
        txtNR.Text = "";
        txtTM.Text = "";
    }
    protected void btnTJ_Click(object sender, EventArgs e)
    {
        tianjia();
        bangding();
    }

    public void tianjia() {
        linqGongGaoDataContext gg = new linqGongGaoDataContext();
        GongGao newgg =  new GongGao();
        //保存添加者姓名
        newgg.Gg_User=  Session["Yg_XingMing"].ToString();
        newgg.Gg_UserId = Convert.ToInt32(Session["Yg_Id"]);
        newgg.Gg_Name = txtTM.Text.Trim();
        newgg.Gg_NeiRong = txtNR.Text.Trim();
        //利用系统函数DateTime.Now保存添加时间
        newgg.Gg_TianJiaShiJian = DateTime.Now;
        //往数据库提交添加请求
        gg.GongGao.InsertOnSubmit(newgg);
        //执行添加请求
        gg.SubmitChanges();
        //提示添加成功
        Response.Write("<Script language=javascript>");
        Response.Write("window.alert('添加公告成功!');");
        Response.Write("window.location='GongGaoTJ.aspx");
        Response.Write("'</script>");
    }

    public void bangding() {
        linqChengQuDataContext cq = new linqChengQuDataContext();
        Table<ChengQu> cqlist = cq.GetTable<ChengQu>();
        //读取数据库城区表信息
        var query =
            from chengqu in cqlist
            select cq;
        //设置grvCQ数据源为query
        grvCQ.DataSource = query;
        //设置grvCQ标识码为CQ_Id
        grvCQ.DataKeyNames = new string[] { "Cq_Id" };
        //执行grvCQ数据绑定
        grvCQ.DataBind();
    }
    protected void grvGG_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        bangding();
    }
    protected void grvGG_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strSql = "delete from GongGao where Gg_Id=" + Convert.ToInt32(grvGG.DataKeys[e.RowIndex].Value) + "";
        shanchu(strSql);
        bangding();
    }
    public void shanchu(string strSql) {
        string strConn = ConfigurationManager.ConnectionStrings["strConn"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(strConn);
        SqlCommand sqlCmd = new SqlCommand(strSql, sqlConn);
        sqlConn.Open();
        sqlCmd.ExecuteNonQuery();
        sqlConn.Close();
    }
}