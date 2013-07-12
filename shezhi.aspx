<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shezhi.aspx.cs" Inherits="shezhi" %>

<%@ Register src="UserControl/FangDai.ascx" tagname="FangDai" tagprefix="uc1" %>
<%@ Register src="UserControl/GongJuWenDang.ascx" tagname="GongJuWenDang" tagprefix="uc2" %>

<%@ Register src="UserControl/LeftMenuGuanLiYuan.ascx" tagname="LeftMenuGuanLiYuan" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
            .kehu01
        {
            width: 750px;
        }
        .style2
        {
            width: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc3:LeftMenuGuanLiYuan ID="LeftMenuGuanLiYuan1" runat="server"  MenuId="1"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc2:GongJuWenDang ID="GongJuWenDang1" runat="server"  MenuId="1"/>
    <br />
    <div style="text-align:center;">
            <table cellpadding="0" cellspacing="0" align="center" class="kehu01">
        <tr>
            <td class="style2" >
                &nbsp;</td>
            <td >
                城区设置</td>
            <td ></td>
            <td>
                <br />
                <br />
                <br />
                商圈设置<br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    CssClass="style7" DataKeyNames="Cq_Id" DataSourceID="SqlDataSource1" 
                    EnablePersistedSelection="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Cq_Id" HeaderText="编号" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Cq_Id">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Cq_Name" HeaderText="城区" SortExpression="Cq_Name">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                    ConnectionString="<%$ ConnectionStrings:HeRunConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [ChengQu] WHERE [Cq_Id] = @original_Cq_Id AND [Cq_Name] = @original_Cq_Name" 
                    InsertCommand="INSERT INTO [ChengQu] ([Cq_Name]) VALUES (@Cq_Name)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [Cq_Id], [Cq_Name] FROM [ChengQu]" 
                    UpdateCommand="UPDATE [ChengQu] SET [Cq_Name] = @Cq_Name WHERE [Cq_Id] = @original_Cq_Id AND [Cq_Name] = @original_Cq_Name">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Cq_Id" Type="Int32" />
                        <asp:Parameter Name="original_Cq_Name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Cq_Name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Cq_Name" Type="String" />
                        <asp:Parameter Name="original_Cq_Id" Type="Int32" />
                        <asp:Parameter Name="original_Cq_Name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td ></td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="Sq_Id" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Sq_Id" HeaderText="编号" ReadOnly="True" 
                            SortExpression="Sq_Id">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Sq_Name" HeaderText="商圈" SortExpression="Sq_Name">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:HeRunConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [ShangQuan] WHERE [Sq_Id] = @original_Sq_Id AND [Sq_Name] = @original_Sq_Name" 
                    InsertCommand="INSERT INTO [ShangQuan] ([Sq_Id], [Sq_Name]) VALUES (@Sq_Id, @Sq_Name)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [Sq_Id], [Sq_Name] FROM [ShangQuan]" 
                    UpdateCommand="UPDATE [ShangQuan] SET [Sq_Name] = @Sq_Name WHERE [Sq_Id] = @original_Sq_Id AND [Sq_Name] = @original_Sq_Name">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Sq_Id" Type="Int32" />
                        <asp:Parameter Name="original_Sq_Name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Sq_Id" Type="Int32" />
                        <asp:Parameter Name="Sq_Name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Sq_Name" Type="String" />
                        <asp:Parameter Name="original_Sq_Id" Type="Int32" />
                        <asp:Parameter Name="original_Sq_Name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                </td>
            <td >
                </td>
            <td>
                </td>
        </tr>
    </table>

    </div>
    <br />
</asp:Content>

