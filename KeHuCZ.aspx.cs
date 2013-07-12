using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using System.Configuration;
using System.Data.SqlClient;

public partial class KeHuCZ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        grvKH.Attributes.Add("style", "table-layout:fixed");
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sousuo();
    }



    public void sousuo()
    {
        string strXM = txtXM.Text;
        string strDH = txtDH.Text;
        linqKeHuDataContext kh = new linqKeHuDataContext();
        System.Linq.IQueryable<KeHu> query;
        //判断组合条件
        switch (drl1.SelectedValue)
        {
            case "和":
                query =
                from kehu in kh.KeHu
                where kehu.Kh_XingMing ==  txtXM.Text.Trim() && kehu.Kh_DianHua==txtDH.Text.Trim()
                select kehu;
                //把grvKH的数据源设置为查询结果query
                grvKH.DataSource = query;
                //把grvKH的索引设置为客户ID
                grvKH.DataKeyNames = new string[] { "Kh_id" };
                //grvKH重新绑定数据
                grvKH.DataBind();
                break;
            case "或":
                query =
                from kehu in kh.KeHu
                where kehu.Kh_XingMing == txtXM.Text.Trim() || kehu.Kh_DianHua == txtDH.Text.Trim()
                select kehu;
                grvKH.DataSource = query;
                grvKH.DataKeyNames = new string[] { "Kh_id" };
                grvKH.DataBind();
                break;

        }

    }

    protected void grvKH_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvKH.PageIndex = e.NewPageIndex;
        sousuo();
    }
    protected void grvKH_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grvKH.EditIndex = e.NewEditIndex;
        sousuo();
    }
    protected void grvKH_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grvKH.EditIndex = -1;
    }
    protected void grvKH_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grvKH_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlStr = "delete from KeHu where Kh_Id=" + Convert.ToInt32(grvKH.DataKeys[e.RowIndex].Value) + "";
        sql(sqlStr);
        sousuo();
    }
    protected void grvKH_SelectedIndexChanged(object sender, EventArgs e)
    {
        linqKeHuDataContext kh = new linqKeHuDataContext();
        Table<KeHu> kehulist = kh.GetTable<KeHu>();
        var query =
            from kehu in kehulist
            where kehu.Kh_Id == Convert.ToInt32( grvKH.DataKeys[grvKH.SelectedIndex].Value.ToString())
            select kehu;
        FormView1.DataSource = query;
        FormView1.DataBind();
        //dlvKeHu.DataSource = query;
        //dlvKeHu.DataBind();
    }
    protected void grvKH_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

    public void sql(string sql) {
        string strConn = ConfigurationManager.ConnectionStrings["strConn"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(strConn);
        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
        sqlConn.Open();
        sqlCmd.ExecuteNonQuery();
        sqlConn.Close();
    }
    protected void grvKH_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[0].ControlStyle.Width = Unit.Pixel(50);
        }
    }

    public void xiangxi()
    {

    }
}