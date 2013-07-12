<%@ Page Language="C#" AutoEventWireup="true" CodeFile="md5.aspx.cs" Inherits="md5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ShowDialog() {
            showModalDialog("FangYuanImg.aspx?id=10", "", "dialogHeight=470px;dialogWidth=800px;center=yes;scrolling=no;");
        }

    </script>
    <style type="text/css">
        .style1
        {
            width: 200px;
        }
    </style>
</head>
<body onload="ShowDialog()">
    <form id="form1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" Height="52px" Width="465px"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    <br />
    <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="514px"></asp:TextBox>
    <br />
    <br />
    <div>
    
        <asp:Button ID="Button2" runat="server" Text="窗口" 
            onclick="Button2_Click" />
    
        <br />
        <br />
        <br />
        <table align="center" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td>
                    编号:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    城区:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    面积:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    价钱:</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
