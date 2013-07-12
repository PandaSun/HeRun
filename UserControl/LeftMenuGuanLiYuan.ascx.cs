using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_LeftMenuGuanLiYuan : System.Web.UI.UserControl
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
        string ret = "class=\"left\" onmouseover=\"this.className='left-hover'\" onmouseout=\"this.className='left'\"";
        if (MenuId == Id)
        {
            ret = "class=\"left-hover\"";
        }
        return ret;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}