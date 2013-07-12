<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KeHuTJ.aspx.cs" Inherits="KeHuTJ" %>

<%@ Register src="UserControl/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<%@ Register src="UserControl/KeHuGuanLi.ascx" tagname="KeHuGuanLi" tagprefix="uc2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register src="UserControl/LeftMenuYuanGong.ascx" tagname="LeftMenuYuanGong" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .kehu01
        {
            width: 750px;
        }
        .style2
        {
            height: 20px;
        }
        .style3
        {
            height: 11px;
        }
        .style4
        {
            height: 11px;
            font-size: x-large;
            text-align: left;
        }
    .style5
    {
        height: 92px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc3:LeftMenuYuanGong ID="LeftMenuYuanGong1" runat="server"  MenuId="1"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc2:KeHuGuanLi ID="KeHuGuanLi1" runat="server" MenuId="1" />
    <br />
    <br />
    <div style="text-align:center;">
            <table cellpadding="0" cellspacing="0" class="kehu01">
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="style3">
                </td>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;
                添加客户</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td align="right">
                客户姓名:</td>
            <td align="left">
                <asp:TextBox ID="txtXM" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtXM" ErrorMessage="客户姓名不能为空!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td >
                </td>
            <td align="right" >
                客户性别:</td>
            <td align="left" >
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td >
                </td>
        </tr>
        <tr>
            <td>
                </td>
            <td align="right">
                客户电话:</td>
            <td align="left">
                <asp:TextBox ID="txtDH" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtDH" ErrorMessage="请填写正确电话!" ForeColor="Red" 
                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td>
                </td>
            <td align="right">
                经纪人:</td>
            <td align="left">
                <asp:Label ID="labJJ" runat="server"></asp:Label>
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td>
                </td>
            <td align="right">
                客户身份证:</td>
            <td align="left">
                <asp:TextBox ID="txtSF" runat="server"></asp:TextBox>
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td align="right" class="style5">
                客户备注:</td>
            <td align="left" class="style5">
                <asp:TextBox ID="txtBZ" runat="server" Height="100px" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="txtBZ_TextBoxWatermarkExtender" 
                    runat="server" TargetControlID="txtBZ" WatermarkCssClass="watermarked" 
                    WatermarkText="请在此输入客户备注...">
                </asp:TextBoxWatermarkExtender>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td align="right" class="style2">
                &nbsp;</td>
            <td align="left" class="style2">
                <asp:Button ID="btnTJ" runat="server" Text="添加" onclick="btnTJ_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="btnQC" runat="server" Text="清除" />
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
                </td>
            <td>
                </td>
            <td>
                </td>
        </tr>
    </table>

    </div>
</asp:Content>

