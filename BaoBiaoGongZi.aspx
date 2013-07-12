<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BaoBiaoGongZi.aspx.cs" Inherits="BaoBiaoGongZi" %>

<%@ Register src="UserControl/chakanbaobiao.ascx" tagname="chakanbaobiao" tagprefix="uc1" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register src="UserControl/LeftMenuYuanGong.ascx" tagname="LeftMenuYuanGong" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc2:LeftMenuYuanGong ID="LeftMenuYuanGong1" runat="server" MenuId="6" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc1:chakanbaobiao ID="chakanbaobiao1" runat="server"  MenuId="1"/>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Times New Roman" 
        Font-Size="8pt" Height="486px" InteractiveDeviceInfos="(集合)" 
        WaitMessageFont-Names="Times New Roman" WaitMessageFont-Size="14pt" 
        Width="750px">
        <LocalReport ReportPath="Report1.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="dsGongzi" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetData" TypeName="HeRun2DataSetTableAdapters.GongZiTableAdapter">
    </asp:ObjectDataSource>
    <br />
</asp:Content>

