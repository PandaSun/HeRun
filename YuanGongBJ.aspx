<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YuanGongBJ.aspx.cs" Inherits="YuanGongBJ" %>

<%@ Register src="UserControl/YuanGongGuanLi.ascx" tagname="YuanGongGuanLi" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HeRun2ConnectionString %>" 
        SelectCommand="SELECT * FROM [YuanGong]"></asp:SqlDataSource>
    <uc1:YuanGongGuanLi ID="YuanGongGuanLi1" runat="server" />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Yg_Id" 
        DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">编号:
                <asp:Label ID="Yg_IdLabel" runat="server" Text='<%# Eval("Yg_Id") %>' />
                <br />
                账号:
                <asp:Label ID="Yg_NameLabel" runat="server" Text='<%# Eval("Yg_Name") %>' />
                <br />
                <br />
                姓名:
                <asp:Label ID="Yg_XingMingLabel" runat="server" 
                    Text='<%# Eval("Yg_XingMing") %>' />
                <br />
                性别:
                <asp:Label ID="Yg_XingBieLabel" runat="server" 
                    Text='<%# Eval("Yg_XingBie") %>' />
                <br />
                电话:
                <asp:Label ID="Yg_DianHuaLabel" runat="server" 
                    Text='<%# Eval("Yg_DianHua") %>' />
                <br />
                状态:
                <asp:Label ID="Yg_ZhuangTaiLabel" runat="server" 
                    Text='<%# Eval("Yg_ZhuangTai") %>' />
                <br />
                级别:
                <asp:Label ID="Yg_JiBieLabel" runat="server" Text='<%# Eval("Yg_JiBie") %>' />
                <br />
                身份证号:
                <asp:Label ID="Yg_ShenFenLabel" runat="server" 
                    Text='<%# Eval("Yg_ShenFen") %>' />
                <br />
                离职日期:
                <asp:Label ID="Yg_LiZhiLabel" runat="server" Text='<%# Eval("Yg_LiZhi") %>' />
                <br />
                备注:
                <asp:Label ID="Yg_BeiZhuLabel" runat="server" Text='<%# Eval("Yg_BeiZhu") %>' />
                <br />
                添加日期:
                <asp:Label ID="Yg_TianJiaLabel" runat="server" 
                    Text='<%# Eval("Yg_TianJia") %>' />
                <br />
            </li>
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">编号:
                <asp:Label ID="Yg_IdLabel" runat="server" Text='<%# Eval("Yg_Id") %>' />
                <br />
                账号:
                <asp:Label ID="Yg_NameLabel" runat="server" Text='<%# Eval("Yg_Name") %>' />
                <br />
                <br />
                姓名:
                <asp:Label ID="Yg_XingMingLabel" runat="server" 
                    Text='<%# Eval("Yg_XingMing") %>' />
                <br />
                性别:
                <asp:Label ID="Yg_XingBieLabel" runat="server" 
                    Text='<%# Eval("Yg_XingBie") %>' />
                <br />
                电话:
                <asp:Label ID="Yg_DianHuaLabel" runat="server" 
                    Text='<%# Eval("Yg_DianHua") %>' />
                <br />
                状态:
                <asp:Label ID="Yg_ZhuangTaiLabel" runat="server" 
                    Text='<%# Eval("Yg_ZhuangTai") %>' />
                <br />
                级别:
                <asp:Label ID="Yg_JiBieLabel" runat="server" Text='<%# Eval("Yg_JiBie") %>' />
                <br />
                身份证号:
                <asp:Label ID="Yg_ShenFenLabel" runat="server" 
                    Text='<%# Eval("Yg_ShenFen") %>' />
                <br />
                离职日期:
                <asp:Label ID="Yg_LiZhiLabel" runat="server" Text='<%# Eval("Yg_LiZhi") %>' />
                <br />
                备注:
                <asp:Label ID="Yg_BeiZhuLabel" runat="server" Text='<%# Eval("Yg_BeiZhu") %>' />
                <br />
                添加日期:
                <asp:Label ID="Yg_TianJiaLabel" runat="server" 
                    Text='<%# Eval("Yg_TianJia") %>' />
                <br />
            </li>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            未返回数据。
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">编号:
                <asp:Label ID="Yg_IdLabel" runat="server" Text='<%# Eval("Yg_Id") %>' />
                <br />
                账号:
                <asp:Label ID="Yg_NameLabel" runat="server" Text='<%# Eval("Yg_Name") %>' />
                <br />
                <br />
                姓名:
                <asp:Label ID="Yg_XingMingLabel" runat="server" 
                    Text='<%# Eval("Yg_XingMing") %>' />
                <br />
                性别:
                <asp:Label ID="Yg_XingBieLabel" runat="server" 
                    Text='<%# Eval("Yg_XingBie") %>' />
                <br />
                电话:
                <asp:Label ID="Yg_DianHuaLabel" runat="server" 
                    Text='<%# Eval("Yg_DianHua") %>' />
                <br />
                状态:
                <asp:Label ID="Yg_ZhuangTaiLabel" runat="server" 
                    Text='<%# Eval("Yg_ZhuangTai") %>' />
                <br />
                级别:
                <asp:Label ID="Yg_JiBieLabel" runat="server" Text='<%# Eval("Yg_JiBie") %>' />
                <br />
                身份证号:
                <asp:Label ID="Yg_ShenFenLabel" runat="server" 
                    Text='<%# Eval("Yg_ShenFen") %>' />
                <br />
                离职日期:
                <asp:Label ID="Yg_LiZhiLabel" runat="server" Text='<%# Eval("Yg_LiZhi") %>' />
                <br />
                备注:
                <asp:Label ID="Yg_BeiZhuLabel" runat="server" Text='<%# Eval("Yg_BeiZhu") %>' />
                <br />
                添加日期:
                <asp:Label ID="Yg_TianJiaLabel" runat="server" 
                    Text='<%# Eval("Yg_TianJia") %>' />
                <br />
            </li>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">编号:
                <asp:Label ID="Yg_IdLabel" runat="server" Text='<%# Eval("Yg_Id") %>' />
                <br />
                账号:
                <asp:Label ID="Yg_NameLabel" runat="server" Text='<%# Eval("Yg_Name") %>' />
                <br />
                <br />
                姓名:
                <asp:Label ID="Yg_XingMingLabel" runat="server" 
                    Text='<%# Eval("Yg_XingMing") %>' />
                <br />
                性别:
                <asp:Label ID="Yg_XingBieLabel" runat="server" 
                    Text='<%# Eval("Yg_XingBie") %>' />
                <br />
                电话:
                <asp:Label ID="Yg_DianHuaLabel" runat="server" 
                    Text='<%# Eval("Yg_DianHua") %>' />
                <br />
                状态:
                <asp:Label ID="Yg_ZhuangTaiLabel" runat="server" 
                    Text='<%# Eval("Yg_ZhuangTai") %>' />
                <br />
                级别:
                <asp:Label ID="Yg_JiBieLabel" runat="server" Text='<%# Eval("Yg_JiBie") %>' />
                <br />
                身份证号:
                <asp:Label ID="Yg_ShenFenLabel" runat="server" 
                    Text='<%# Eval("Yg_ShenFen") %>' />
                <br />
                离职日期:
                <asp:Label ID="Yg_LiZhiLabel" runat="server" Text='<%# Eval("Yg_LiZhi") %>' />
                <br />
                备注:
                <asp:Label ID="Yg_BeiZhuLabel" runat="server" Text='<%# Eval("Yg_BeiZhu") %>' />
                <br />
                添加日期:
                <asp:Label ID="Yg_TianJiaLabel" runat="server" 
                    Text='<%# Eval("Yg_TianJia") %>' />
                <br />
            </li>
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">编号:
                <asp:Label ID="Yg_IdLabel" runat="server" Text='<%# Eval("Yg_Id") %>' />
                <br />
                账号:
                <asp:Label ID="Yg_NameLabel" runat="server" Text='<%# Eval("Yg_Name") %>' />
                <br />
                姓名:
                <asp:Label ID="Yg_XingMingLabel" runat="server" 
                    Text='<%# Eval("Yg_XingMing") %>' />
                <br />
                性别:
                <asp:Label ID="Yg_XingBieLabel" runat="server" 
                    Text='<%# Eval("Yg_XingBie") %>' />
                <br />
                电话:
                <asp:Label ID="Yg_DianHuaLabel" runat="server" 
                    Text='<%# Eval("Yg_DianHua") %>' />
                <br />
                状态:
                <asp:Label ID="Yg_ZhuangTaiLabel" runat="server" 
                    Text='<%# Eval("Yg_ZhuangTai") %>' />
                <br />
                级别:
                <asp:Label ID="Yg_JiBieLabel" runat="server" Text='<%# Eval("Yg_JiBie") %>' />
                <br />
                身份证号:
                <asp:Label ID="Yg_ShenFenLabel" runat="server" 
                    Text='<%# Eval("Yg_ShenFen") %>' />
                <br />
                离职日期:
                <asp:Label ID="Yg_LiZhiLabel" runat="server" Text='<%# Eval("Yg_LiZhi") %>' />
                <br />
                备注:
                <asp:Label ID="Yg_BeiZhuLabel" runat="server" Text='<%# Eval("Yg_BeiZhu") %>' />
                <br />
                添加日期:
                <asp:Label ID="Yg_TianJiaLabel" runat="server" 
                    Text='<%# Eval("Yg_TianJia") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
</asp:Content>

