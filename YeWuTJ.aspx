<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YeWuTJ.aspx.cs" Inherits="YeWuTJ" %>

<%@ Register src="UserControl/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>

<%@ Register src="UserControl/yewuweituo.ascx" tagname="yewuweituo" tagprefix="uc2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                .kehu01
        {
            width: 600px;
        }
        .style7
        {
            width: 76px;
        }
        .style8
        {
            height: 16px;
            width: 76px;
        }
        .style9
        {
            width: 40px;
        }
        .style10
        {
            height: 16px;
            width: 40px;
        }
        .style12
        {
            height: 16px;
            width: 232px;
        }
        .style13
        {
            width: 232px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc1:LeftMenu ID="LeftMenu1" runat="server"  MenuId="5"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc2:yewuweituo ID="yewuweituo1" runat="server" MenuId="1"/>
            <table cellpadding="0" cellspacing="0" class="kehu01">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">&nbsp;</td>
            <td align="right" class="style8">
                经纪人:</td>
            <td align="left" class="style12">
                <asp:Label ID="labJJR" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">&nbsp;</td>
            <td align="right" class="style8">
                客户:</td>
            <td align="left" class="style12">
                <asp:Label ID="labKH" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td align="right" class="style8">
                区域:</td>
            <td align="left" class="style12">
                <asp:DropDownList ID="drlSQ" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td align="right" class="style7">
                价格:</td>
            <td align="left" class="style13">
                <asp:TextBox ID="txtJG" runat="server" Width="118px"></asp:TextBox>
                

                
            <asp:Label runat="server" ID="labJG0">/月</asp:Label>

                <asp:RequiredFieldValidator runat="server" ForeColor="Red" 
                    ControlToValidate="txtJG" ErrorMessage="请输入价格!" ID="RequiredFieldValidator1"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator runat="server" ValidationExpression="^[0-9]*$" 
                    ForeColor="Red" ControlToValidate="txtJG" ErrorMessage="价格只能为数字!" 
                    ID="RegularExpressionValidator1"></asp:RegularExpressionValidator>


                
            </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td align="right" class="style7">
                面积:</td>
            <td align="left" class="style13">
                <asp:TextBox ID="txtMJ" runat="server" Width="123px"></asp:TextBox>

        <asp:Label runat="server" Text="㎡" ID="Label5"></asp:Label>

            <asp:RequiredFieldValidator runat="server" ForeColor="Red" 
                    ControlToValidate="txtMJ" ErrorMessage="请输入面积!" ID="RequiredFieldValidator2"></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator runat="server" ValidationExpression="^[0-9]*$" 
                    ForeColor="Red" ControlToValidate="txtMJ" ErrorMessage="面积只能为数字!" 
                    ID="RegularExpressionValidator2"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td align="right" class="style7">
                有效日期:</td>
            <td align="left" class="style13">
                <asp:TextBox ID="txtRQ" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtRQ_CalendarExtender" runat="server" 
                    TargetControlID="txtRQ">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td align="right" class="style7">
                其他:</td>
            <td align="left" class="style13">
                <asp:TextBox ID="txtQT" runat="server" Height="117px" TextMode="MultiLine"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="txtQT_TextBoxWatermarkExtender" 
                    runat="server" TargetControlID="txtQT" WatermarkText="在此输入其他要求." 
                    WatermarkCssClass="watermarked">
                </asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td align="right" class="style7">
                <asp:Button ID="btnTJ" runat="server" Text="添加" onclick="btnTJ_Click" />
            </td>
            <td align="center" class="style13">
                
                <asp:Button ID="btnQC" runat="server" Text="清除" onclick="btnQC_Click" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style7">
                </td>
            <td class="style13">
                </td>
        </tr>
    </table>
</asp:Content>

