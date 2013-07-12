using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

public partial class YeWuTJ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   
        labJJR.Text= Session["Yg_XingMing"].ToString();
        labBH.Text=Request.QueryString["id"].ToString();
        labKH.Text = Request.QueryString["kh"].ToString();
        if (!Page.IsPostBack) {

            shangquan();
        }

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
    protected void btnQC_Click(object sender, EventArgs e)
    {
        txtJG.Text = "";
        txtMJ.Text = "";
        txtQT.Text = "";
        txtRQ.Text = "";
    }
    protected void btnTJ_Click(object sender, EventArgs e)
    {
        linqYeWuDataContext yw = new linqYeWuDataContext();
        YeWu newyw = new YeWu();
        newyw.Yw_JingJi = Session["Yg_XingMing"].ToString();
        newyw.Yw_JingJiId = Convert.ToInt32(Session["Yg_Id"]);
        newyw.Yw_KeHu = labKH.Text;
        newyw.Yw_KeHuId = Convert.ToInt32(labBH.Text);
        newyw.Yw_LeiXing =  Convert.ToInt32(drlLX.SelectedValue);
        newyw.Yw_MianJi = Convert.ToInt32(txtMJ.Text);
        newyw.Yw_JiaGe = Convert.ToInt32(txtJG.Text);
        newyw.Yw_ShangQuan = Convert.ToInt32(drlSQ.SelectedValue);
        newyw.Yw_BeiZhu = txtQT.Text;
        newyw.Yw_YouXiaoQi = Convert.ToDateTime(txtRQ.Text);
        newyw.Yw_TianJiaShiJian = DateTime.Now;

        yw.YeWu.InsertOnSubmit(newyw);
        yw.SubmitChanges();
        Response.Write("<Script language=javascript>");
        Response.Write("window.alert('添加业务成功!');");
        Response.Write("window.location='YeWuBJ.aspx?id=");
        Response.Write(newyw.Yw_Id);
        Response.Write("'</script>");
    }
}