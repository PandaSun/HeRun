<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FangYuanImg.aspx.cs" Inherits="FangYuanImg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function hello()
        {alert("Hello");}
    
    </script>
    <style type="text/css">
        .style1
        {
            width: 760px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <% string img4 = Request.QueryString["id"].ToString();%>

            <table cellpadding="0" cellspacing="0" class="style1">
                <tr>
                    <td>
        点击查看图片:</td>
                    <td>
            查看房源视频:</td>
                </tr>
                <tr>
                    <td>
          <asp:ImageButton ID="ImageButton1" runat="server" Height="77px" Width="77px" 
              onclick="ImageButton1_Click"/>
          <asp:ImageButton ID="ImageButton2" runat="server" Height="77px" Width="77px" 
              onclick="ImageButton2_Click"/>
          <asp:ImageButton ID="ImageButton3" runat="server" Height="77px" Width="77px" 
              onclick="ImageButton3_Click"/>                  
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:Image ID="Image4" runat="server" Height="240px" Width="350px" />
                    </td>
                    <td>
        <object id="Flash" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="350" height="240">
          <param name="movie" value="upfile/Flvplayer.swf" />
          <param name="quality" value="high" />
          <param name="allowFullScreen" value="true" />
          <param name="FlashVars" value="vcastr_file=<%Response.Write(img4);%>.flv&LogoText=&BufferTime=3&IsAutoPlay=0" />
        </object>
                    </td>
                </tr>

            </table>
    </div>
    </form>
</body>
</html>
