<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftMenuYuanGong.ascx.cs" Inherits="UserControl_LeftMenuYuanGong" %>
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
                <td valign="top" align="center">
                    <a href="KeHuCZ.aspx">
                        <div <%=SetMenuClass(1) %>>
                            客户管理</div></a>
                    <a href="FangYuanCZ.aspx">
                        <div <%=SetMenuClass(2) %>>
                            房源管理</div></a>
                    <a href="YeWuCZ.aspx">
                        <div <%=SetMenuClass(3) %>>
                            业务委托</div></a>
                    <a href="JiaoYiCZ.aspx">
                        <div <%=SetMenuClass(4) %>>
                            交易管理</div></a>
                    <a href="GongJu.aspx">
                        <div <%=SetMenuClass(5) %>>
                            合同文档</div></a>
                    <a href="BaoBiaoFenDian.aspx">
                        <div <%=SetMenuClass(6) %>>
                            业绩报表</div></a>
                     <a href="BaoBiaoFenDian.aspx">
                        <div <%=SetMenuClass(7) %>>
                            个人资料</div></a>
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
