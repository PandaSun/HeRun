<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KeHuCZ.aspx.cs" Inherits="KeHuCZ" %>

<%@ Register src="UserControl/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<%@ Register src="UserControl/KeHuGuanLi.ascx" tagname="KeHuGuanLi" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .kehu01
        {
            width: 765px;
            background-color:#F2F5FB;
        }
        .style1
        {
            width: 750px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc1:LeftMenu ID="LeftMenu1" runat="server" MenuId="1"  />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc2:KeHuGuanLi ID="KeHuGuanLi1" runat="server" MenuId="2" />
    <table cellpadding="0" cellspacing="0" class="kehu01">
        <tr>
            <td>
               </td>
            <td>
                </td>
            <td>
               </td>
        </tr>
        <tr>
            <td>
               </td>
            <td> 姓名为:
                <asp:TextBox ID="txtXM" runat="server"></asp:TextBox>
                <asp:DropDownList ID="drl1" runat="server">
                    <asp:ListItem Selected="True">和</asp:ListItem>
                    <asp:ListItem>或</asp:ListItem>
                </asp:DropDownList>
                电话为:<asp:TextBox ID="txtDH" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="查找" onclick="Button1_Click" />
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td >
                </td>
            <td >
                <asp:GridView ID="grvKH" runat="server" AllowPaging="True" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    onpageindexchanging="grvKH_PageIndexChanging" AutoGenerateColumns="False" 
                     HorizontalAlign="Center" onrowediting="grvKH_RowEditing" 
                    PageSize="11" Width="765px" onrowcancelingedit="grvKH_RowCancelingEdit" 
                    onrowcommand="grvKH_RowCommand" onrowdatabound="grvKH_RowDataBound" 
                    onrowdeleting="grvKH_RowDeleting" onrowupdating="grvKH_RowUpdating" 
                    onselectedindexchanged="grvKH_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Kh_Id" HeaderText="编号" ReadOnly="True" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Kh_XingMing" HeaderText="姓名" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="45px" 
                            Wrap="False" />
                        <ItemStyle Width="45px" HorizontalAlign="Center" VerticalAlign="Middle" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Kh_XingBie" HeaderText="性别" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Kh_DianHua" HeaderText="电话" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Kh_ShenFenZheng" HeaderText="身份证" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Kh_BeiZhu" HeaderText="备注" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" 
                            Wrap="False" />
                        </asp:BoundField>
                        <asp:CommandField ShowEditButton="True" HeaderText="编辑" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" 
                            Wrap="False" />
                        </asp:CommandField>
                        <asp:CommandField ShowSelectButton="True" HeaderText="详细" SelectText="详细" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        </asp:CommandField>
                        <asp:CommandField ShowDeleteButton="True" HeaderText="删除" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        </asp:CommandField>
                        <asp:HyperLinkField DataNavigateUrlFields="Kh_XingMing,Kh_Id" 
                            DataNavigateUrlFormatString="FangYuanTJ.aspx?kh={0}&amp;id={1}" HeaderText="添加" 
                            Text="房源" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        </asp:HyperLinkField>
                        <asp:HyperLinkField DataNavigateUrlFields="Kh_XingMing,Kh_Id" 
                            DataNavigateUrlFormatString="YeWuTJ.aspx?kh={0}&amp;id={1}" HeaderText="添加" 
                            Text="委托" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" 
                            Wrap="False" />
                        </asp:HyperLinkField>
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
                <asp:Panel ID="Panel1" runat="server" GroupingText="详细信息">
                <asp:FormView ID="FormView1" runat="server">
                        <ItemTemplate>
                            <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td>
                                        <strong>编号:</strong> <%#Eval("Kh_Id") %>
                                    </td>
                                    <td>
                                        <strong>姓名:</strong><%#Eval("Kh_XingMing") %></td>
                                    <td>
                                        <strong>性别:</strong><%#Eval("Kh_XingBie") %></td>
                                    <td>
                                        <strong>电话:</strong><%#Eval("Kh_DianHua") %></td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>经纪人:</strong><%#Eval("Kh_JingJiRen") %></td>
                                    <td>
                                        <strong>身份证:</strong><%#Eval("Kh_ShenFenZheng")%></td>
                                    <td colspan="2">
                                        <strong>添加时间:</strong><%#Eval("Kh_TianJiaShiJian")%></td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <strong>备注:</strong><%#Eval("Kh_BeiZhu") %></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                </asp:Panel>
                </td>
            <td>
                </td>
        </tr>
    </table>
</asp:Content>

