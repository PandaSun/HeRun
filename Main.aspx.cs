using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net;
using System.Data.Linq;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        ggbangding();
        fybangding();
        ywbangding();
        */
    }
    /*
    public void ggbangding() {
        linqGongGaoDataContext gg = new linqGongGaoDataContext();
        Table<GongGao> gonggaolist = gg.GetTable<GongGao>();
        var query =
            from gonggao in gonggaolist
            orderby gonggao.Gg_TianJiaShiJian descending
            select gonggao;
        grvGG.DataSource = query;
        grvGG.DataKeyNames = new string[] { "Gg_Id" };
        grvGG.DataBind();
    }

    public void fybangding()
    {
        linqFangYuanDataContext fy = new linqFangYuanDataContext();
        Table<FangYuan> fangyuanlist = fy.GetTable<FangYuan>();
        var query =
            from fangyuan in fangyuanlist
            orderby fangyuan.Fy_TianJiaRiQi descending
            select fangyuan;
        grvFY.DataSource = query;
        grvFY.DataKeyNames = new string[] { "FY_Id" };
        grvFY.DataBind();

    }

    public void ywbangding() {
        linqYeWuDataContext yw = new linqYeWuDataContext();
        Table<YeWu> yewulist = yw.GetTable<YeWu>();
        var query =
            from yewu in yewulist
            orderby yewu.Yw_TianJiaShiJian descending
            select yewu;
        grvYW.DataSource = query;
        grvYW.DataKeyNames = new string[] { "Yw_Id" };
        grvYW.DataBind();
    
    }
    protected void grvFY_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        for (int i = -1; i < grvFY.Rows.Count; i++)
        {
            string lbl = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Fy_LeiXing"));
            if (lbl == "1")
            {
                lbl = "出租";
            }
        }
    }
     */ 
}