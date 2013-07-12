using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JiaoYiCZ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }


    public void search()
    {
        string strSearch = txtXM.Text;
        linqJiaoYiDataContext jy = new linqJiaoYiDataContext();
        System.Linq.IQueryable<JiaoYi> query;
        //判断组合条件
                query =
                from jiaoyi in jy.JiaoYi
                where jiaoyi.Jy_FangZhuName ==  txtSearch.Text.Trim
                select jiaoyi;
                //把grvJY的数据源设置为查询结果query
                grvJY.DataSource = query;
                //把grvJY的索引设置为交易ID
                grvJY.DataKeyNames = new string[] { "Jy_id" };
                //grvJY重新绑定数据
                grvJY.DataBind();

        }



}