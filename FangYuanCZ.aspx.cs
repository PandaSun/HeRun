using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

public partial class FangYuanCZ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            chengqu();
            shangquan();
        }

    }
    public void chengqu()
    {
        linqChengQuDataContext cq = new linqChengQuDataContext();
        Table<ChengQu> chengqulist = cq.GetTable<ChengQu>();
        var query =
            from chengqu in chengqulist
            select chengqu;
        drlCQ.DataSource = query;
        drlCQ.DataTextField = "Cq_Name";
        drlCQ.DataValueField = "Cq_Id";
        drlCQ.DataBind();
        drlCQ.SelectedIndex = 0;
    }
    public void shangquan()
    {
        linqShangQuanDataContext sq = new linqShangQuanDataContext();
        Table<ShangQuan> shangquanlist = sq.GetTable<ShangQuan>();
        var query =
            from shangquan in shangquanlist
            select shangquan;
        drlSQ.DataSource = query;
        drlSQ.DataTextField = "Sq_Name";
        drlSQ.DataValueField = "Sq_Id";
        drlSQ.DataBind();
        drlSQ.SelectedIndex = 0;
    }
    protected void btnSX_Click(object sender, EventArgs e)
    {
        shaixuan();
    }
    public void shaixuan() {
        int CQ= Convert.ToInt32(drlCQ.SelectedValue);
        int SQ=Convert.ToInt32(drlSQ.SelectedValue);

        
        linqFangYuanDataContext fy = new linqFangYuanDataContext();
        Table<FangYuan> fangyuanlist = fy.GetTable<FangYuan>();
        var query =
            from fangyuan in fy.FangYuan
            where fangyuan.Fy_ChengQu==CQ && fangyuan.Fy_ShangQuan==SQ
            select fangyuan;
        grvFY.DataSource = query;
        grvFY.DataKeyNames = new string[] { "Fy_id" };
        grvFY.DataBind();
    
    }
    protected void grvFY_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvFY.PageIndex = e.NewPageIndex;
        shaixuan();
    }
    protected void btnCZ_Click(object sender, EventArgs e)
    {
        int BH = Convert.ToInt32(txtBH.Text.Trim());
        linqFangYuanDataContext fy = new linqFangYuanDataContext();
        Table<FangYuan> fangyuanlist = fy.GetTable<FangYuan>();
        var query =
            from fangyuan in fy.FangYuan
            where fangyuan.FY_Id == BH
            select fangyuan;
        grvFY.DataSource = query;
        grvFY.DataKeyNames = new string[] { "Fy_id" };
        grvFY.DataBind();

    }
}