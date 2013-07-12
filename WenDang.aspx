<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WenDang.aspx.cs" Inherits="WenDang" %>

<%@ Register src="UserControl/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<%@ Register src="UserControl/GongJuWenDang.ascx" tagname="GongJuWenDang" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 745px;
            height: 285px;
        }
        .style3
        {
            width: 113px;
        }
        .style4
        {
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc1:LeftMenu ID="LeftMenu1" runat="server" MenuId="4" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc2:GongJuWenDang ID="GongJuWenDang1" runat="server" MenuId="1" />
<table cellpadding="0" cellspacing="0" class="style1">
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td align="center" colspan="3">
            <asp:Label ID="Label1" runat="server" Font-Names="华文楷体" Font-Size="X-Large" 
                Text="相关文档"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td align="center" class="style4">
            名字</td>
        <td align="center">
            简介</td>
        <td align="center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" >
            &nbsp;</td>
        <td align="left" class="style4">
            <a href="WenDang/租赁合同简版.doc">租赁合同简版</a></td>
        <td colspan="2">
            简单版本的租赁合同,适合一般租赁业务.</td>
        <td >
            </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td align="left" class="style4">
            <a href="WenDang/租赁合同中文版.doc">租赁合同中文版</a></td>
        <td colspan="2">
            正规版本的租赁合同,适合租赁要求较高客户.</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td align="left" class="style4">
            <a href="WenDang/租赁合同中英文版.doc">租赁合同中英文版</a></td>
        <td colspan="2">
            中英双板的租赁合同,适合与国外客户签订合同.</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td align="left" class="style4">
            <a href="WenDang/居间协议.doc">居间协议</a></td>
        <td colspan="2">
            客户与中介关于把房屋委托给中介进行租售的协议.</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td align="left" class="style4">
            <a href="WenDang/二手房独家委托协议.doc">二手房独家委托协议</a></td>
        <td colspan="2">
            客户把二手房全权委托给中介的协议.</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td align="left" class="style4">
            <a href="WenDang/房屋买卖合同.doc">房屋买卖合同</a></td>
        <td colspan="2">
            正规二手房买卖合同.</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td align="left" class="style4">
            <a href="WenDang/二手房交接书.doc">二手房交接书</a></td>
        <td colspan="2">
            二手房的交接合同书.</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

