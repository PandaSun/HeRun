<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FangYuanBJ.aspx.cs" Inherits="FangYuanBJ" %>

<%@ Register src="UserControl/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<%@ Register src="UserControl/FangYuanGuanLi.ascx" tagname="FangYuanGuanLi" tagprefix="uc2" %>

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
		            map.addControl(new GOverviewMapControl());
		            var center = new GLatLng(<% zuobiao();%>);
		            map.setCenter(center, 17);

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
        .bjstyle1
        {
            width: 359px;
            height: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMenu" Runat="Server">
    <uc1:LeftMenu ID="LeftMenu1" runat="server" MenuId="2" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" Runat="Server">
    <uc2:FangYuanGuanLi ID="FangYuanGuanLi1" runat="server" MenuId="3" />
        <table>
        <tr>
            <td colspan="4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtJG" ErrorMessage="请输入价格!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtJG" ErrorMessage="价格只能为数字!" ForeColor="Red" 
                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtMJ" ErrorMessage="请输入面积!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtMJ" ErrorMessage="面积只能为数字!" ForeColor="Red" 
                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtDZ" ErrorMessage="请输入地址!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                类型:<asp:DropDownList ID="drlLX" runat="server" 
                    AutoPostBack="True" onselectedindexchanged="drlLX_SelectedIndexChanged" 
                    Enabled="False">
                    <asp:ListItem Value="1">出租</asp:ListItem>
                    <asp:ListItem Value="2">出售</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                客户:<asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                门店:<asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                员工:<asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                城区:<asp:DropDownList ID="drlCQ" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td>
                商圈:<asp:DropDownList ID="drlSQ" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td>
                装修:<asp:DropDownList ID="drlZX" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td>
                状态:<asp:DropDownList ID="drlZT" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                房型:<asp:DropDownList ID="drlFX" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>

            <td>
                价格:<asp:TextBox ID="txtJG" runat="server" Height="17px" 
                    Width="104px" Enabled="False"></asp:TextBox>
                <asp:Label ID="labJG" runat="server">/月</asp:Label>
            </td>

            <td>
                面积:<asp:TextBox ID="txtMJ" runat="server" Height="18px" 
                    Width="85px" Enabled="False"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="㎡"></asp:Label>
            </td>
            <td>
                楼层:<asp:TextBox ID="txtLC" runat="server" Height="16px" 
                    Width="88px" Enabled="False"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Text="层"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Enabled="False" />
                家具</td>
            <td>
                <asp:CheckBox ID="CheckBox2" runat="server" Enabled="False" />
                宽带</td>
            <td>
                <asp:CheckBox ID="CheckBox3" runat="server" Enabled="False" />
                床</td>
            <td>
                <asp:CheckBox ID="CheckBox4" runat="server" Enabled="False" />
                厨房</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox5" runat="server" Enabled="False" />
                热水器</td>
            <td>
                <asp:CheckBox ID="CheckBox6" runat="server" Enabled="False" />
                电视</td>
            <td>
                <asp:CheckBox ID="CheckBox7" runat="server" Enabled="False" />
                有线</td>
            <td>
                <asp:CheckBox ID="CheckBox8" runat="server" Enabled="False" />
                电话</td>
        </tr>
        <tr>
            <td colspan="2">
                学校:<asp:TextBox ID="txtXX" runat="server" Enabled="False"></asp:TextBox>
                :</td>
            <td colspan="2">
                医院:<asp:TextBox ID="txtYY" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                商场超市:<asp:TextBox ID="txtSC" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td colspan="2">
                地址:<asp:TextBox ID="txtDZ" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                详细信息:</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                地图坐标:<input  type="text" maxlength="25" readonly="readonly" name="zuobiao"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtXiangX" runat="server" Height="250px" Width="359px" 
                    Enabled="False" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td colspan="2">
                <div id="gmaps" class="bjstyle1">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnTJ" runat="server" Text="编辑" onclick="btnTJ_Click" />
            </td>
            <td align="right">
                <asp:Button ID="btnQX" runat="server" Text="取消" onclick="btnQX_Click"  />
            </td>
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
</asp:Content>

