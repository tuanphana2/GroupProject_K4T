using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject_K4T
{
    public partial class DongXe : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from LOAIXE, HANGXE where LOAIXE.MAHANG=HANGXE.MAHANG";
            dl_muaxe.DataSource = ketnoi.laydulieu(sql);
            dl_muaxe.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string maxe = ((Button)sender).CommandArgument;
            Response.Redirect("MuaXe.aspx?maxe=" + maxe);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string maxe = ((Button)sender).CommandArgument;
            Response.Redirect("ChiTiet.aspx?maxe=" + maxe);
        }
    }
}