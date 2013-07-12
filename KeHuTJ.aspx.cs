using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

public partial class KeHuTJ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        labJJ.Text = Session["Yg_XingMing"].ToString();
    }
    protected void btnTJ_Click(object sender, EventArgs e)
    {
        tianjia();
    }

    public void tianjia() {
        //各项信息填写完成后,把客户信息利用LINQ技术输入到KeHu表
        linqKeHuDataContext kh = new linqKeHuDataContext();
        KeHu newkh = new KeHu();
        newkh.Kh_XingMing = txtXM.Text;
        newkh.Kh_XingBie = RadioButtonList1.SelectedValue;
        newkh.Kh_DianHua = txtDH.Text;
        newkh.Kh_JingJiRenId = Convert.ToInt32(Session["Yg_Id"].ToString());
        newkh.Kh_ShenFenZheng = txtSF.Text;
        newkh.Kh_BeiZhu = txtBZ.Text;
        newkh.Kh_TianJiaShiJian= DateTime.Now;
        //提交插入新客户请求
        kh.KeHu.InsertOnSubmit(newkh);
        //执行插入新客户
        kh.SubmitChanges();
        //提示插入新客户成功
        Response.Write("<Script language=javascript>");
        Response.Write("window.alert('添加客户成功!');");
        Response.Write("window.location='KeHuTJ.aspx");
        Response.Write("'</script>");
    }
}