using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

public partial class FangYuanBJ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("FangYuanCZ.aspx");
        }
        else {
            int fyid = Convert.ToInt32(Request.QueryString["id"].ToString());
        }
         */
        Session["fyid"] = Convert.ToInt32(Request.QueryString["id"].ToString());
        if (!Page.IsPostBack)
        {
            chengqu();
            shangquan();
            zhuangtai();
            fangxing();
            zhuangxiu();
            FYdata();
        }
    }

    public void FYdata() {
        linqFangYuanDataContext fy = new linqFangYuanDataContext();
        Table<FangYuan> fangyuanlist = fy.GetTable<FangYuan>();
        var query =
            from fangyuan in fangyuanlist
            where fangyuan.FY_Id == Convert.ToInt32(Session["fyid"].ToString())
            select fangyuan;
        var a = query.ToArray()[0];

        drlLX.SelectedValue = a.Fy_LeiXing.ToString();
        Label1.Text = a.Fy_KeHu;
        Label2.Text = a.Fy_MenDian;
        Label3.Text = a.Fy_YuanGong;
        drlCQ.SelectedValue = a.Fy_ChengQu.ToString();
        drlSQ.SelectedValue = a.Fy_ShangQuan.ToString();
        drlZX.SelectedValue = a.Fy_ZhuangXiu.ToString();
        drlZT.SelectedValue = a.Fy_ZhuangTai.ToString();
        drlFX.SelectedValue = a.Fy_FangXing.ToString();
        txtJG.Text = a.Fy_JiaGe.ToString();
        txtMJ.Text = a.Fy_MianJi.ToString();
        txtLC.Text = a.Fy_LouCeng.ToString();
        CheckBox1.Checked = a.Fy_JiaJu;
        CheckBox2.Checked = a.Fy_KuanDai;
        CheckBox3.Checked = a.Fy_Chuang;
        CheckBox4.Checked = a.Fy_ChuFang;
        CheckBox5.Checked = a.Fy_ReShuiQi;
        CheckBox6.Checked = a.Fy_DianShi;
        CheckBox7.Checked = a.Fy_YouXian;
        CheckBox8.Checked = a.Fy_DianHua;
        txtXX.Text = a.Fy_XueXiao;
        txtYY.Text = a.Fy_YiYuan;
        txtSC.Text = a.Fy_ShangChao;
        txtDZ.Text = a.Fy_DiZhi;
        txtXiangX.Text = a.Fy_XiangXi;

        
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
    public void zhuangtai()
    {
        linqZhuangTaiDataContext zt = new linqZhuangTaiDataContext();
        Table<FangYuanZhuangTai> zhuangtailist = zt.GetTable<FangYuanZhuangTai>();
        var query =
            from zhuangtai in zhuangtailist
            select zhuangtai;
        drlZT.DataSource = query;
        drlZT.DataTextField = "Fyzt_Text";
        drlZT.DataValueField = "Fyzt_Id";
        drlZT.DataBind();
        drlZT.SelectedIndex = 0;
    }
    public void fangxing()
    {
        linqFangXingDataContext fx = new linqFangXingDataContext();
        Table<FangYuanFangXing> fangxinglist = fx.GetTable<FangYuanFangXing>();
        var query =
            from fangxing in fangxinglist
            select fangxing;
        drlFX.DataSource = query;
        drlFX.DataTextField = "Fyfx_Text";
        drlFX.DataValueField = "Fyfx_Id";
        drlFX.DataBind();
        drlFX.SelectedIndex = 0;
    }
    public void zhuangxiu()
    {
        linqZhuangXiuDataContext zx = new linqZhuangXiuDataContext();
        Table<FangYuanZhuangXiu> zhuangxiulist = zx.GetTable<FangYuanZhuangXiu>();
        var query =
            from zhuangxiu in zhuangxiulist
            select zhuangxiu;
        drlZX.DataSource = query;
        drlZX.DataTextField = "Fyzx_Text";
        drlZX.DataValueField = "Fyzx_Id";
        drlZX.DataBind();
        drlZX.SelectedIndex = 0;

    }
    public void zuobiao() {
        int linqid = Convert.ToInt32(Request.QueryString["id"].ToString());
        linqFangYuanDataContext fy = new linqFangYuanDataContext();
        Table<FangYuan> fangyuanlist = fy.GetTable<FangYuan>();
        var query =
            from fangyuan in fangyuanlist
            where fangyuan.FY_Id == linqid
            select fangyuan;
        var a = query.ToArray()[0];
        Response.Write(a.Fy_Gmaps);
    }
    protected void drlLX_SelectedIndexChanged(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "load", "load()", true);
        switch (Convert.ToInt32(drlLX.SelectedValue))
        {
            case 1: labJG.Text = "/月"; break;
            case 2: labJG.Text = "万元"; break;
        }
    }

    protected void btnTJ_Click(object sender, EventArgs e)
    {
        if (btnTJ.Text == "编辑")
        {
            btnTJ.Text = "更新";
            bianji();
        }
        else {
            btnTJ.Text = "编辑";
            gengxin();
            gengxin1();
        }

    }

    public void bianji() {
        drlCQ.Enabled = true;
        drlFX.Enabled = true;
        drlLX.Enabled = true;
        drlSQ.Enabled = true;
        drlZT.Enabled = true;
        drlZX.Enabled = true;
        txtDZ.Enabled = true;
        txtJG.Enabled = true;
        txtLC.Enabled = true;
        txtMJ.Enabled = true;
        txtSC.Enabled = true;
        txtXiangX.Enabled = true;
        txtXX.Enabled = true;
        txtYY.Enabled = true;
        CheckBox1.Enabled = true;
        CheckBox2.Enabled = true;
        CheckBox3.Enabled = true;
        CheckBox4.Enabled = true;
        CheckBox5.Enabled = true;
        CheckBox6.Enabled = true;
        CheckBox7.Enabled = true;
        CheckBox8.Enabled = true;
    }
    public void gengxin() {
        linqFangYuanDataContext fy = new linqFangYuanDataContext();
        var query =
            from fangyuan in fy.FangYuan
            where fangyuan.FY_Id == Convert.ToInt32(Session["fyid"].ToString())
            select fangyuan;
        foreach (var newfy in query)
        {
            newfy.Fy_LeiXing = Convert.ToInt32(drlLX.SelectedValue);
            newfy.Fy_ChengQu = Convert.ToInt32(drlCQ.SelectedValue);
            newfy.Fy_ShangQuan = Convert.ToInt32(drlSQ.SelectedValue);
            newfy.Fy_ZhuangXiu = Convert.ToInt32(drlZX.SelectedValue);
            newfy.Fy_ZhuangTai = Convert.ToInt32(drlZT.SelectedValue);
            newfy.Fy_FangXing = Convert.ToInt32(drlFX.SelectedValue);
            newfy.Fy_JiaGe = Convert.ToInt32(txtJG.Text.Trim());
            newfy.Fy_MianJi = Convert.ToInt32(txtMJ.Text.Trim());
            newfy.Fy_LouCeng = Convert.ToInt32(txtLC.Text.Trim());
            newfy.Fy_JiaJu = CheckBox1.Checked;
            newfy.Fy_KuanDai = CheckBox2.Checked;
            newfy.Fy_Chuang = CheckBox3.Checked;
            newfy.Fy_ChuFang = CheckBox4.Checked;
            newfy.Fy_ReShuiQi = CheckBox5.Checked;
            newfy.Fy_DianShi = CheckBox6.Checked;
            newfy.Fy_YouXian = CheckBox7.Checked;
            newfy.Fy_DianHua = CheckBox8.Checked;
            newfy.Fy_XueXiao = txtXX.Text.Trim();
            newfy.Fy_YiYuan = txtYY.Text.Trim();
            newfy.Fy_ShangChao = txtSC.Text.Trim();
            newfy.Fy_DiZhi = txtDZ.Text.Trim();
            newfy.Fy_XiangXi = txtXiangX.Text.Trim();
            newfy.Fy_Gmaps = Request.Form["zuobiao"].ToString();
        }
        fy.SubmitChanges();
    }
    public void gengxin1() {
        drlCQ.Enabled = false;
        drlFX.Enabled = false;
        drlLX.Enabled = false;
        drlSQ.Enabled = false;
        drlZT.Enabled = false;
        drlZX.Enabled = false;
        txtDZ.Enabled = false;
        txtJG.Enabled = false;
        txtLC.Enabled = false;
        txtMJ.Enabled = false;
        txtSC.Enabled = false;
        txtXiangX.Enabled = false;
        txtXX.Enabled = false;
        txtYY.Enabled = false;
        CheckBox1.Enabled = false;
        CheckBox2.Enabled = false;
        CheckBox3.Enabled = false;
        CheckBox4.Enabled = false;
        CheckBox5.Enabled = false;
        CheckBox6.Enabled = false;
        CheckBox7.Enabled = false;
        CheckBox8.Enabled = false;
    }
    protected void btnQX_Click(object sender, EventArgs e)
    {
        FYdata();
        gengxin1();
    }
}