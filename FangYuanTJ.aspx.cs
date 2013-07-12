using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

public partial class FangYuanTJ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            chengqu();
            shangquan();
            labKeHu.Text = Request.QueryString["kh"].ToString();
            labYuanGong.Text = Session["Yg_XingMing"].ToString();
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


    protected void btnTJ_Click(object sender, EventArgs e)
    {
        savafile(FileUpload1, hifdImg1);
        savafile(FileUpload2, hifdImg2);
        savafile(FileUpload3, hifdImg3);
        savafile(FileUpload4, hifdImg4);
        tianjia();

    }

    public void tianjia() {
        linqFangYuanDataContext fy = new linqFangYuanDataContext();
        //定义新对象newfy
        FangYuan newfy = new FangYuan();
        newfy.Fy_KeHuId = Convert.ToInt32(Request.QueryString["Id"]);
        newfy.Fy_YuanGongId =Convert.ToInt32(Session["Yg_Id"].ToString());
        newfy.Fy_ChengQu = Convert.ToInt32(drlCQ.SelectedValue);
        newfy.Fy_ShangQuan = Convert.ToInt32(drlSQ.SelectedValue);
        newfy.Fy_JiaGe = Convert.ToInt32(txtJG.Text.Trim());
        newfy.Fy_MianJi = Convert.ToInt32(txtMJ.Text.Trim());
        newfy.Fy_JiaoTong = txtJiaotong.Text.Trim();
        newfy.Fy_ShangChao = txtShangchao.Text.Trim();
        newfy.Fy_XiangXi = txtXiangX.Text.Trim();
        /*newfy.Fy_Img1 = hifdImg1.Value.ToString();
        newfy.Fy_Img2 = hifdImg2.Value.ToString();
        newfy.Fy_Img3 = hifdImg3.Value.ToString();
        newfy.Fy_Img4 = hifdImg4.Value.ToString(); */
        newfy.Fy_Gmaps =Request.Form["zuobiao"].ToString();
        //利用DateTime.Now函数取得当前系统时间
        newfy.Fy_TianJiaRiQi = DateTime.Now;
        //提交添加新房源申请
        fy.FangYuan.InsertOnSubmit(newfy);
        //执行添加新房源
        fy.SubmitChanges();
        //提示添加成功
        Response.Write("<Script language=javascript>");
        Response.Write("window.alert('添加房源成功!');");
        //转到新页面,查看刚才添加房源信息
        Response.Write("window.location='FangYuanBJ.aspx?id=");
        Response.Write(newfy.FY_Id);
        Response.Write("'</script>");
    }

    protected void savafile(FileUpload filup, HiddenField hifdimg)
    {
        bool isAllow = false;
        string Path = Server.MapPath("~/upfile/");
        if (filup.HasFile)
        {
            string fileType = System.IO.Path.GetExtension(filup.FileName).ToLower();
            string[] allowFile = { ".gif", ".png", ".jpeg", ".jpg", ".flv" };
            for (int i = 0; i < allowFile.Length; i++)
            {
                if (fileType == allowFile[i])
                {
                    isAllow = true;
                }
            }

        }
        if (isAllow == true)
        {
            string a = filup.FileName.Split('.')[0];
            string b;
            b = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(a, "MD5");
            filup.PostedFile.SaveAs(Path + b + System.IO.Path.GetExtension(filup.FileName));
            hifdimg.Value = "upfile/" + b + System.IO.Path.GetExtension(filup.FileName);

        }
        else
        {
            
        }
    }

    protected void btnSc1_Click(object sender, EventArgs e)
    {
        savafile(FileUpload1,hifdImg1);
    }

    protected void btnSc2_Click(object sender, EventArgs e)
    {
        savafile(FileUpload2, hifdImg2);
    }
    protected void btnSc3_Click(object sender, EventArgs e)
    {
        savafile(FileUpload3, hifdImg3);
    }
    protected void btnSc4_Click(object sender, EventArgs e)
    {
        savafile(FileUpload4, hifdImg4);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}