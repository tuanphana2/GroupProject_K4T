using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject_K4T
{
    public partial class DangNhap : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btDangNhap_Click(object sender, EventArgs e)
        {
            string tdn = txtTDN.Text;
            string mk = txtMK.Text;
            if (tdn == "")
            {
                lbtbNhapTDN.Text = "Bạn chưa nhập tên đăng nhập.";
                lbthongbao.Text = "";
            }
            else
            {
                lbtbNhapTDN.Text = "";
                if (mk == "")
                {
                    lbtbMK.Text = "Bạn chưa nhập mật khẩu.";
                    lbthongbao.Text = "";
                }
                else
                {
                    lbtbMK.Text = "";
                    string sql = "select * from TAIKHOAN where TENDANGNHAP='" + tdn + "' and MATKHAU='" + mk + "'";
                    DataTable dt = ketnoi.laydulieu(sql);
                    if (dt.Rows.Count != 0)
                    {
                        Session["tdn"] = tdn;
                        Server.Transfer("TrangChu.aspx");
                    }
                    else
                        lbthongbao.Text = "Tên đăng nhập hoặc mật khẩu chưa chính xác.";
                }
            }
        }
    }
}