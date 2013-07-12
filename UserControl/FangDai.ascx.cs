using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_FangYuanGuanLi : System.Web.UI.UserControl
{
    public int _MenuId;
    public int MenuId
    {
        set
        {
            _MenuId = value;
        }
        get
        {
            object o = _MenuId;
            return o != null ? (int)o : 0;
        }
    }
    public string SetMenuClass(int Id)
    {
        string ret = "class=\"top\" onmouseover=\"this.className='top1'\" onmouseout=\"this.className='top'\"";
        if (MenuId == Id)
        {
            ret = "class=\"top1\"";
        }
        return ret;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}