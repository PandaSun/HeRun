<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchMap.aspx.cs" Inherits="SearchMap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ditu.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAzr2EBOXUKnm_jVnk0OJI7xSosDVG8KKPE1-m51RBrvYughuyMxQ-i1QfUnH94QxWIa6N4U6MouMmBA&hl=zh-CN"type="text/javascript"></script>
    <script type="text/javascript">
		    function load()
		        {
                    //定义新的地图
		            var map = new GMap2(document.getElementById("Gmap"));
		            map.enableScrollWheelZoom();
                    //设置地图右上角小工具
		            map.addControl(new GSmallMapControl());
		            map.addControl(new GMapTypeControl());
		            map.addControl(new GOverviewMapControl());
                    //设置地图中心坐标位置
		            var center = new GLatLng(38.901988, 121.633759);
		            map.setCenter(center, 12);
                    //从数据库读取房源信息,并显示
                    <% GetHouse(); %>;   
                    for (i = 0; i < Houses.length; i++) {
                    var zuobiao = new Array();
                    zuobiao=Houses[i].split(",");
                    var point = new GLatLng(zuobiao[1],zuobiao[2]);
                        map.addOverlay(createMarker(point,i+1,zuobiao[3],zuobiao[4])); 
                    }
                    //定义房源标志
            function createMarker(point, number,mianji,jiaqian) {   
                var marker = new GMarker(point);
                var infoTabs=[
                    new GInfoWindowTab("基本信息:",'房源编号:'+ number +'<br/>'+ '面积:'+mianji+'平方米<br/>'+ '价钱:'+jiaqian+'元/月<br/>' + '<A HREF="#">查看详细信息</A>'),
                ];
              GEvent.addListener(marker, "click", function() {
                marker.openInfoWindowTabsHtml(infoTabs);   
              });
              return marker;   
            } 
		        }
                //载入地图
		    window.onload = load;
		    window.onunload = GUnload;
    </script>
    <style type="text/css">
                #banner
		{
		    width:960px;
			height:150px;
		}
        		#foot 
        {
	        position:absolute;
	        top:775px;
	        width:960px;
            background-image:url(Images/foot.gif);
        }
        
        .style1
        {
            width: 930px;
            height: 582px;
        }
        .style2
        {
            width: 170px;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="banner" style="background-image:url(Images/banner.gif)" ></div>
    <div>


        <asp:Panel ID="Panel1" runat="server" BackColor="White" GroupingText="地图找房" Width="950px">
            <table cellpadding="0" cellspacing="0" class="style1">
                <tr>
                    <td class="style2">
                        房屋城区:
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblLX" runat="server" AutoPostBack="True" 
                            Height="16px" RepeatDirection="Horizontal" Width="541px" 
                            onselectedindexchanged="rblLX_SelectedIndexChanged" 
                            DataSourceID="SqlDataSource1" DataTextField="Cq_Name" 
                            DataValueField="Cq_Id">
                        </asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:HeRunConnectionString1 %>" 
                            SelectCommand="SELECT * FROM [ChengQu]"></asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        房屋商圈:</td>
                    <td>
                        <asp:RadioButtonList ID="rblSQ" runat="server" AutoPostBack="True" 
                            Height="28px" RepeatDirection="Horizontal" 
                            onselectedindexchanged="rblSQ_SelectedIndexChanged">
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        房屋面积:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" 
                            Height="26px" RepeatDirection="Horizontal" 
                            onselectedindexchanged="RadioButtonList2_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="0">不限</asp:ListItem>
                            <asp:ListItem Value="50">0-50㎡</asp:ListItem>
                            <asp:ListItem Value="100">50-100㎡</asp:ListItem>
                            <asp:ListItem Value="150">100-150㎡</asp:ListItem>
                            <asp:ListItem Value="200">150-200㎡</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        房屋价格:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" 
                            RepeatDirection="Horizontal" 
                            onselectedindexchanged="RadioButtonList3_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="0">不限</asp:ListItem>
                            <asp:ListItem Value="500">0-500元</asp:ListItem>
                            <asp:ListItem Value="1000">500-1000元</asp:ListItem>
                            <asp:ListItem Value="1500">1000-1500元</asp:ListItem>
                            <asp:ListItem Value="2000">1500-2000元</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <div id="Gmap" style="width: 800px; height: 450px" align="center"></div> </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>


    
    </div>


    
    <div id="foot">
    <table width="960">
    <tr><td align="center">
       二手房租赁管理系统</td></tr>
    </table>
    </div>
    </form>
</body>
</html>
