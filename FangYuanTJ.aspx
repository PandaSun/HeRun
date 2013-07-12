<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FangYuanTJ.aspx.cs" Inherits="FangYuanTJ" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register src="UserControl/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<%@ Register src="UserControl/FangYuanGuanLi.ascx" tagname="FangYuanGuanLi" tagprefix="uc2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<%@ Register src="UserControl/LeftMenuYuanGong.ascx" tagname="LeftMenuYuanGong" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script
			src="http://ditu.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAzr2EBOXUKnm_jVnk0OJI7xSosDVG8KKPE1-m51RBrvYughuyMxQ-i1QfUnH94QxWIa6N4U6MouMmBA&hl=zh-CN"
			type="text/javascript"></script>

		<script type="text/javascript">
		    function load() {
		        if (GBrowserIsCompatible()) {
		            var map = new GMap2(document.getElementById("gmaps"));
		            map.enableScrollWheelZoom();
		            map.setMapType(G_HYBRID_MAP);
		            map.addControl(new GSmallMapControl());
		            map.addControl(new GMapTypeControl());
		            var center = new GLatLng(38.901988, 121.633759);
		            map.setCenter(center, 12);

		            var marker = new GMarker(center, { draggable: true });
		            map.addOverlay(marker);
		            document.getElementById("zuobiao").value = center.lat().toFixed(6) + "," + center.lng().toFixed(6);

		            GEvent.addListener(marker, "dragend", function () {
		                var point = marker.getPoint();
		                map.panTo(point);
		                document.getElementById("zuobiao").value = point.lat().toFixed(6) + "," + point.lng().toFixed(6);
		            });


		            GEvent.addListener(map, "moveend", function () {
		                map.clearOverlays();
		                var center = map.getCenter();
		                var marker = new GMarker(center, { draggable: true });
		                map.addOverlay(marker);
		                document.getElementById("zuobiao").value = center.lat().toFixed(6) + "," + center.lng().toFixed(6);

		                GEvent.addListener(marker, "dragend", function () {
		                    var point = marker.getPoint();
		                    map.panTo(point);
		                    document.getElementById("zuobiao").value = point.lat().toFixed(6) + "," + point.lng().toFixed(6);

		                });

		            });

		        }
		    }

		    window.onload = load;
		    window.onunload = GUnload;
    </script>
    <style type="text/css">
        .tjstyle1
        {
            width: 740px;
            height: 340px;
        }

        .style1
        {
            width: 760px;
        }

        .style2
        {
            width: 757px;
            height: 474px;
            background-color:#F2F5FB;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc3:LeftMenuYuanGong ID="LeftMenuYuanGong1" runat="server" MenuId="2" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server" >
    <uc2:FangYuanGuanLi ID="FangYuanGuanLi1" runat="server"  MenuId="1"/>
        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
        Height="517px" Width="765px" style="background-color:#F2F5FB;">
        <asp:TabPanel runat="server" HeaderText="基本信息" ID="TabPanel1">
    <ContentTemplate><table class="style2"><tr><td colspan="4">&nbsp;</td></tr><tr><td>
        客户姓名:<asp:Label 
            ID="labKeHu" runat="server"></asp:Label>
        </td><td>员工:<asp:Label ID="labYuanGong" runat="server"></asp:Label>
        </td><td>城区:<asp:DropDownList ID="drlCQ" runat="server">
            </asp:DropDownList>
        </td><td>商圈:<asp:DropDownList ID="drlSQ" runat="server">
            </asp:DropDownList>
        </td></tr><tr><td>价格:<asp:TextBox ID="txtJG" runat="server" Height="17px" 
                Width="104px"></asp:TextBox>
            <asp:Label ID="labJG0" runat="server">/月</asp:Label>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtJG" ErrorMessage="请输入价格!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td><td>
                &nbsp;</td><td>&nbsp;</td></tr><tr><td>面积:<asp:TextBox ID="txtMJ" runat="server" 
            Height="18px" Width="85px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="㎡"></asp:Label>
        </td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtMJ" ErrorMessage="请输入面积!" ForeColor="Red"></asp:RequiredFieldValidator>
        </td><td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtMJ" ErrorMessage="面积只能为数字!" ForeColor="Red" 
                ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
        </td><td>&nbsp;</td></tr><tr><td colspan="2">家具:<asp:TextBox ID="txtJiaju" 
            runat="server"></asp:TextBox>
        </td><td colspan="2">交通:<asp:TextBox ID="txtJiaotong" runat="server"></asp:TextBox></td></tr><tr><td colspan="2">
        商场:<asp:TextBox ID="txtShangchao" runat="server"></asp:TextBox>
        </td><td colspan="2">Gmaps:<input  type="text" maxlength="25" readonly="readonly" name="zuobiao"/> </td></tr><tr><td colspan="4"><div ID="gmaps" class="tjstyle1"></div></td></tr><tr><td>&nbsp;</td><td><asp:Button ID="btnTJ" runat="server" Text="添加" onclick="btnTJ_Click" /></td><td align="right">
        <asp:Button ID="Button2" runat="server" Text="清除" onclick="Button2_Click" /></td><td>&nbsp;</td></tr></table></ContentTemplate>

            </asp:TabPanel>
        <asp:TabPanel runat="server" HeaderText="图片视频" ID="TabPanel2">
        <ContentTemplate>
            <table cellpadding="0" cellspacing="0" class="style1">
                <tr>
                    <td>
                        详细信息:</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtXiangX" runat="server" Height="56px" Width="428px" 
                            TextMode="MultiLine"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtXiangX_TextBoxWatermarkExtender" 
                            runat="server" TargetControlID="txtXiangX" WatermarkCssClass="watermarked" 
                            WatermarkText="请在此输入房屋的详细信息..." Enabled="True">
                        </asp:TextBoxWatermarkExtender>

                            <div>
        图片上传:<br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:HiddenField ID="hifdImg1" runat="server" />
    <br />
    <asp:FileUpload ID="FileUpload2" runat="server" />
    <asp:HiddenField ID="hifdImg2" runat="server" />
    <br />
    <asp:FileUpload ID="FileUpload3" runat="server" />
    <asp:HiddenField ID="hifdImg3" runat="server" />
    <br />
    <asp:FileUpload ID="FileUpload4" runat="server" />
    <asp:HiddenField ID="hifdImg4" runat="server" />
         
</div>


                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
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
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
           
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
</asp:Content>