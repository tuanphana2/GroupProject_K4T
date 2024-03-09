using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject_K4T
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("TrangChu.aspx");
        }
        protected void LinkTrangChu_Click(object sender, EventArgs e)
        {
            Server.Transfer("TrangChu.aspx");
        }

        protected void LinkDongXe_Click(object sender, EventArgs e)
        {
            Server.Transfer("DongXe.aspx");
        }

        protected void LinkMuaXe_Click(object sender, EventArgs e)
        {
            Server.Transfer("MuaXe.aspx");
        }

        protected void LinkDangNhap_Click(object sender, EventArgs e)
        {
            Server.Transfer("DangNhap.aspx");
        }

        protected void LinkDangKy_Click(object sender, EventArgs e)
        {
            Server.Transfer("DangKy.aspx");
        }
    }
}