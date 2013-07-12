using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class FangYuanImg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id= Convert.ToInt32(Request.QueryString["id"]);
        string sql = "select Fy_Img1,Fy_Img2,Fy_Img3,Fy_Img4 from FangYuan where Fy_Id = " + id + "";
        string strConn = ConfigurationManager.ConnectionStrings["strConn"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(strConn) ;
        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);
        sqlConn.Open();
        SqlDataReader sqlRed = sqlCmd.ExecuteReader();
        sqlRed.Read();
        ImageButton1.ImageUrl = Image4.ImageUrl = sqlRed["Fy_Img1"].ToString();
        ImageButton2.ImageUrl = sqlRed["Fy_Img2"].ToString();
        ImageButton3.ImageUrl = sqlRed["Fy_Img3"].ToString();
        sqlConn.Close();
        sqlRed.Close();

    }


    public void show(string imageurl) { 
        Image4.ImageUrl=imageurl;
        Response.Write(imageurl);
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Image4.ImageUrl = ImageButton1.ImageUrl;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Image4.ImageUrl = ImageButton2.ImageUrl;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Image4.ImageUrl = ImageButton3.ImageUrl;
    }
}