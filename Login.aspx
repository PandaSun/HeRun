<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="Scripts/default.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <title> 欢迎登录合润房产中介管理系统 </title>
    <script type="text/javascript">
        function shibai() {
            window.alert("用户名或密码错误!");
        }
        function cuowu() {
            window.alert("验证码错误!");
        }
    </script>
    <style type="text/css">
      #main
      {
        background-image:url(Images/login.gif);
        position: absolute;
        width:860px;
        height:500px;
        }
      #login
      {
	position: absolute;
	top:125px;
	left:443px;
	width: 310px;
	height: 204px;
        }
      #tablogin
      {
	    width: 300px;
      }
        .style1
        {
            text-align: center;
        }
        .style2
        {
            color: #FF0000;
        }
    </style>
    <script language="javascript" type="text/javascript">

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div id="main";>
        <div id="login">
                   <table id="tablogin">
                    <tr>
                      <td class="style1" colspan="3">欢迎登录二手房租赁系统</td>
                    </tr>
                    <tr>
                    <td align="right">用户名:</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtName" runat="server" Height="20px" Width="130px">15041130687</asp:TextBox>
                        <span class="style2">*</span></td>
                    </tr>
                    <tr><td align="right">密&nbsp; 码:</td><td colspan="2">
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Height="20px" 
                            Width="130px">ray</asp:TextBox>
                        <span class="style2">*</span></td></tr>
                    <tr><td align="right" valign="middle">验证码:</td><td colspan="2" valign="top">
                        <asp:TextBox ID="txtCode" runat="server" Height="20px" Width="90px"></asp:TextBox>
                        <span class="style2">*</span><img src="ValiCode.aspx" onclick="this.src=this.src+'?'"alt="看不清验证码,请单击."
style="cursor: hand;" />&nbsp;</td></tr>
                    <tr><td align="right">
                        <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" Text="登陆" />
                        </td>
                        <td align="center">
                            <asp:Button ID="btnQC" runat="server" Text="清除" />
                        </td><td>&nbsp;
                            </td></tr>
                       <tr>
                           <td align="left" colspan="3">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="txtName" ErrorMessage="请输入用户名!" 
                                   ForeColor="Red"></asp:RequiredFieldValidator>
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                   ControlToValidate="txtPwd" ErrorMessage="请输入密码!" ForeColor="Red"></asp:RequiredFieldValidator>
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                   ControlToValidate="txtCode" ErrorMessage="请输入验证码!" ForeColor="Red"></asp:RequiredFieldValidator>
                           </td>
                       </tr>
                    </table>
        </div>
    </div>
    </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnLogin" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnQC" EventName="Click" />
            </Triggers>
    </asp:UpdatePanel>
    </form>
</body>
</html>
