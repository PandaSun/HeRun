using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BaoBiaoGongZi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {   //把需要查看报表类型赋值给变量
            string rdlc= Request.QueryString["rdlc"].ToString();
            //匹配变量值
            switch (rdlc)
            {
                case "工资":
                    //把报表设置为工资报表
                    ReportViewer1.LocalReport.ReportPath = "gongzi.rdlc";
                    break;
                    //把报表设置为业绩报表
                case "业绩":
                    ReportViewer1.LocalReport.ReportPath = "yeji.rdlc";
                    break;
            }
        }
    }
}