<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FangYuanCZ.aspx.cs" Inherits="FangYuanCZ" %>

<%@ Register src="UserControl/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<%@ Register src="UserControl/FangYuanGuanLi.ascx" tagname="FangYuanGuanLi" tagprefix="uc2" %>

<%@ Register src="UserControl/LeftMenuYuanGong.ascx" tagname="LeftMenuYuanGong" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .czstyle1
    {
        width: 732px;
        height: 400px;
    }

        .style1
        {
            width: 732px;
            height: 184px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc3:LeftMenuYuanGong ID="LeftMenuYuanGong1" runat="server" MenuId="2" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc2:FangYuanGuanLi ID="FangYuanGuanLi1" runat="server" MenuId="2" />
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                城区:<asp:DropDownList ID="drlCQ" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                商圈:<asp:DropDownList ID="drlSQ" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnSX" runat="server" Text="筛选房源" onclick="btnSX_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">精确查找:<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>编号</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtBH" runat="server"></asp:TextBox>
                <asp:Button ID="btnCZ" runat="server" Text="查找房源" onclick="btnCZ_Click" />
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="grvFY" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onpageindexchanging="grvFY_PageIndexChanging" 
                    Width="695px" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:HyperLinkField HeaderText="详细" Target="_blank" Text="详细" 
                            DataNavigateUrlFields="Fy_id" 
                            DataNavigateUrlFormatString="~/FangYuanBJ.aspx?id={0}" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="Fy_MianJi" HeaderText="面积(㎡)" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Fy_JiaGe" HeaderText="价格(￥)" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Fy_XueXiao" HeaderText="家具" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Fy_ShangChao" HeaderText="商场" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Fy_YiYuan" HeaderText="交通" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" 
                            Wrap="False" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataTemplate>
                        没有相关房源,请重新查找!
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                        HorizontalAlign="Left" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<br />
<br />
<br />
<br />
</asp:Content>

