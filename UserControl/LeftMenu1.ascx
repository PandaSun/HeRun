<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftMenu1.ascx.cs" Inherits="UserControl_LeftMenu" %>
<style type="text/css">

</style>
<table cellspacing="0" cellpadding="0" width="100" border="0">
        <tbody align="center">
            <tr>
                <td valign="top" background="Images/main_26.gif" height="39">
                    <div class="aa01">菜单栏</div>
                </td>
            </tr>
            <tr>
                       <td valign="top">
                    <a href="KeHuCZ.aspx">
                        <div <%=SetMenuClass(1) %>>
                            公告管理</div>
                    </a><a href="FangYuanCZ.aspx">
                        <div <%=SetMenuClass(2) %>>
                            财务报表</div>
                    </a><a href="GongJu.aspx">
                        <div <%=SetMenuClass(3) %>>
                            员工管理</div>
                    </a><a href="YeWuCZ.aspx">
                        <div <%=SetMenuClass(4) %>>
                            系统设置</div>
                    </a><a href="YeWuCZ.aspx">
                        <div <%=SetMenuClass(5) %>>
                            数据备份</div>
                    </a>
                </td>
            </tr>
            <tr>
                <td valign="top"><img height="20" alt="" src="images/main_59.gif" width="150"></td>
            </tr>
            <tr>
                <td valign="top"></td>
            </tr>
        </tbody>
    </table>
