<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GongGaoTJ.aspx.cs" Inherits="GongGaoTJ" %>

<%@ Register src="UserControl/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc2" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register src="UserControl/gonggaoguanli.ascx" tagname="gonggaoguanli" tagprefix="uc1" %>

<%@ Register src="UserControl/LeftMenuYuanGong.ascx" tagname="LeftMenuYuanGong" tagprefix="uc3" %>

<%@ Register src="UserControl/LeftMenuDianZhang.ascx" tagname="LeftMenuDianZhang" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 49px;
        }
        .style6
        {
            width: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc4:LeftMenuDianZhang ID="LeftMenuDianZhang1" runat="server"  MenuId="88"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc1:gonggaoguanli ID="gonggaoguanli1" runat="server" MenuId="1" />
<br />
    <asp:Panel ID="Panel1" runat="server" GroupingText="添加公告:" Width="750px">
    <table style="width: 100%; height: 132px;">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td align="right" class="style6">
                标题：</td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtTM" runat="server"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="txtTM_TextBoxWatermarkExtender" 
                    runat="server" TargetControlID="txtTM" WatermarkCssClass="watermarked" 
                    WatermarkText="请在此输入题目.">
                </asp:TextBoxWatermarkExtender>
&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5">              
            </td>
            <td align="right" class="style6">
                内容：</td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtNR" runat="server" Height="62px" TextMode="MultiLine" 
                    Width="297px"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="txtNR_TextBoxWatermarkExtender" 
                    runat="server" TargetControlID="txtNR" WatermarkCssClass="watermarked" 
                    WatermarkText="请在此输入内容.">
                </asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td align="right" class="style6">
                <asp:Button ID="btnTJ" runat="server" Text="添加" onclick="btnTJ_Click" />
            </td>
            <td align="center" dir="ltr">
                <asp:Button ID="btnQC" runat="server" Text="清除" onclick="btnQC_Click" />
            </td>
            <td align="left">
                &nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" GroupingText="公告:" Width="740px">
    <asp:GridView ID="grvGG" runat="server" Height="300px" Width="750px" AllowPaging="True" 
                AutoGenerateColumns="False" HorizontalAlign="Center" CellPadding="4" 
                ForeColor="#333333" GridLines="None" onrowdeleted="grvGG_RowDeleted" 
                onrowdeleting="grvGG_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField HeaderText="查看" NavigateUrl="#" Text="查看">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="Gg_Name" HeaderText="标题">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" 
                Wrap="False" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" 
                Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="Gg_NeiRong" HeaderText="内容">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                Wrap="False" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="Gg_User" HeaderText="发布人">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" 
                Wrap="False" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" 
                Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="Gg_TianJiaShiJian" HeaderText="日期">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" 
                Wrap="False" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" 
                Wrap="False" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        </asp:Panel>
</asp:Content>

