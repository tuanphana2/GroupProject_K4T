using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject_K4T
{
    public partial class ChiTiet : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            string maxe = Request.QueryString["maxe"] + "";
            if (maxe != "")
            {
                string sql = "select * from LOAIXE, HANGXE where LOAIXE.MAHANG=HANGXE.MAHANG and MAXE=" + maxe;
                dl_chitiet.DataSource = ketnoi.laydulieu(sql);
                dl_chitiet.DataBind();
            }
            else
            {
                lbthongbao.Text = "Sản phẩm không tồn tại";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string maxe = ((Button)sender).CommandArgument;
            Response.Redirect("MuaXe.aspx?maxe=" + maxe);
        }
    }
}