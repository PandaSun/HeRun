<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" 
            DataKeyNames="Cq_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            HeaderText="城区">
            <EditItemTemplate>
                Cq_Name:
                <asp:TextBox ID="Cq_NameTextBox" runat="server" Text='<%# Bind("Cq_Name") %>' />
                <br />
                Cq_Id:
                <asp:Label ID="Cq_IdLabel1" runat="server" Text='<%# Eval("Cq_Id") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <InsertItemTemplate>
                Cq_Name:
                <asp:TextBox ID="Cq_NameTextBox" runat="server" Text='<%# Bind("Cq_Name") %>' />
                <br />

                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                Cq_Name:
                <asp:Label ID="Cq_NameLabel" runat="server" Text='<%# Bind("Cq_Name") %>' />
                <br />
                Cq_Id:
                <asp:Label ID="Cq_IdLabel" runat="server" Text='<%# Eval("Cq_Id") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:HeRunConnectionString1 %>" 
            SelectCommand="SELECT [Cq_Name], [Cq_Id] FROM [ChengQu]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
