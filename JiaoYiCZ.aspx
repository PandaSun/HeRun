<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JiaoYiCZ.aspx.cs" Inherits="JiaoYiCZ" %>

<%@ Register src="UserControl/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>

<%@ Register src="UserControl/jiaoyiguanli.ascx" tagname="jiaoyiguanli" tagprefix="uc2" %>

<%@ Register src="UserControl/LeftMenuYuanGong.ascx" tagname="LeftMenuYuanGong" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .kehu01
        {
            width: 765px;
            background-color:#F2F5FB;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc3:LeftMenuYuanGong ID="LeftMenuYuanGong1" runat="server"  MenuId="4"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc2:jiaoyiguanli ID="jiaoyiguanli1" runat="server"  MenuId="2"/>
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
            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                按<asp:DropDownList ID="drl1" runat="server" Height="23px" Width="90px">
                    <asp:ListItem Selected="True">房主姓名</asp:ListItem>
                    <asp:ListItem>或</asp:ListItem>
                </asp:DropDownList>
                查找:<asp:TextBox ID="txtDH" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="查找" onclick="Button1_Click" />
                <br />
                <br />
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
          AutoGenerateColumns="False" 
                     HorizontalAlign="Center" 
                    PageSize="11" Width="765px" 
           
             
                    AllowSorting="True" 
                    DataKeyNames="Jy_Id" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:HyperLinkField HeaderText="详细" NavigateUrl="#" Text="详细">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="Jy_Id" HeaderText="编号" ReadOnly="True" 
                            InsertVisible="False" SortExpression="Jy_Id" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Jy_YuanGong" HeaderText="员工" 
                            SortExpression="Jy_YuanGong">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Jy_FangYuanId" HeaderText="房源编号" 
                            SortExpression="Jy_FangYuanId">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Jy_FangZhu" HeaderText="房主姓名" 
                            SortExpression="Jy_FangZhu">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Jy_KeHu" HeaderText="客户姓名" SortExpression="Jy_KeHu">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Jy_JiaGe" HeaderText="租金(元)" 
                            SortExpression="Jy_JiaGe">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Jy_BeiZhu" HeaderText="备注" 
                            SortExpression="Jy_BeiZhu">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:HeRun2ConnectionString %>" 
                    DeleteCommand="DELETE FROM [JiaoYi] WHERE [Jy_Id] = @original_Jy_Id AND [Jy_YuanGong] = @original_Jy_YuanGong AND [Jy_FangYuanId] = @original_Jy_FangYuanId AND [Jy_FangZhu] = @original_Jy_FangZhu AND [Jy_KeHu] = @original_Jy_KeHu AND [Jy_JiaGe] = @original_Jy_JiaGe AND [Jy_BeiZhu] = @original_Jy_BeiZhu AND [Jy_ShiJian] = @original_Jy_ShiJian" 
                    InsertCommand="INSERT INTO [JiaoYi] ([Jy_YuanGong], [Jy_FangYuanId], [Jy_FangZhu], [Jy_KeHu], [Jy_JiaGe], [Jy_BeiZhu], [Jy_ShiJian]) VALUES (@Jy_YuanGong, @Jy_FangYuanId, @Jy_FangZhu, @Jy_KeHu, @Jy_JiaGe, @Jy_BeiZhu, @Jy_ShiJian)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [Jy_Id], [Jy_YuanGong], [Jy_FangYuanId], [Jy_FangZhu], [Jy_KeHu], [Jy_JiaGe], [Jy_BeiZhu], [Jy_ShiJian] FROM [JiaoYi]" 
                    UpdateCommand="UPDATE [JiaoYi] SET [Jy_YuanGong] = @Jy_YuanGong, [Jy_FangYuanId] = @Jy_FangYuanId, [Jy_FangZhu] = @Jy_FangZhu, [Jy_KeHu] = @Jy_KeHu, [Jy_JiaGe] = @Jy_JiaGe, [Jy_BeiZhu] = @Jy_BeiZhu, [Jy_ShiJian] = @Jy_ShiJian WHERE [Jy_Id] = @original_Jy_Id AND [Jy_YuanGong] = @original_Jy_YuanGong AND [Jy_FangYuanId] = @original_Jy_FangYuanId AND [Jy_FangZhu] = @original_Jy_FangZhu AND [Jy_KeHu] = @original_Jy_KeHu AND [Jy_JiaGe] = @original_Jy_JiaGe AND [Jy_BeiZhu] = @original_Jy_BeiZhu AND [Jy_ShiJian] = @original_Jy_ShiJian">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Jy_Id" Type="Int32" />
                        <asp:Parameter Name="original_Jy_YuanGong" Type="String" />
                        <asp:Parameter Name="original_Jy_FangYuanId" Type="Int32" />
                        <asp:Parameter Name="original_Jy_FangZhu" Type="String" />
                        <asp:Parameter Name="original_Jy_KeHu" Type="String" />
                        <asp:Parameter Name="original_Jy_JiaGe" Type="Int32" />
                        <asp:Parameter Name="original_Jy_BeiZhu" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Jy_ShiJian" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Jy_YuanGong" Type="String" />
                        <asp:Parameter Name="Jy_FangYuanId" Type="Int32" />
                        <asp:Parameter Name="Jy_FangZhu" Type="String" />
                        <asp:Parameter Name="Jy_KeHu" Type="String" />
                        <asp:Parameter Name="Jy_JiaGe" Type="Int32" />
                        <asp:Parameter Name="Jy_BeiZhu" Type="String" />
                        <asp:Parameter DbType="Date" Name="Jy_ShiJian" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Jy_YuanGong" Type="String" />
                        <asp:Parameter Name="Jy_FangYuanId" Type="Int32" />
                        <asp:Parameter Name="Jy_FangZhu" Type="String" />
                        <asp:Parameter Name="Jy_KeHu" Type="String" />
                        <asp:Parameter Name="Jy_JiaGe" Type="Int32" />
                        <asp:Parameter Name="Jy_BeiZhu" Type="String" />
                        <asp:Parameter DbType="Date" Name="Jy_ShiJian" />
                        <asp:Parameter Name="original_Jy_Id" Type="Int32" />
                        <asp:Parameter Name="original_Jy_YuanGong" Type="String" />
                        <asp:Parameter Name="original_Jy_FangYuanId" Type="Int32" />
                        <asp:Parameter Name="original_Jy_FangZhu" Type="String" />
                        <asp:Parameter Name="original_Jy_KeHu" Type="String" />
                        <asp:Parameter Name="original_Jy_JiaGe" Type="Int32" />
                        <asp:Parameter Name="original_Jy_BeiZhu" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Jy_ShiJian" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </td>
            <td>
                </td>
        </tr>
    </table>
</asp:Content>

