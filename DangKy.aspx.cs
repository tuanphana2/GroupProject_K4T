using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject_K4T
{
    public partial class DangKy : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            string tdn = txtTDN.Text + "";
            string mk = txtMK.Text + "";
            string hoten = txtTen.Text + "";
            string tuoi = txtTuoi.Text + "";
            string gioitinh = rblGT.SelectedItem.Text + "";
            string sdt = txtSDT.Text + "";
            string diachi = txtDC.Text + "";
            string cccd = txtCCCD.Text + "";
            if (tdn == "")
                lbtbNhapTDN.Text = "Bạn chưa nhập tên đăng nhập.";
            else
            {
                lbtbNhapTDN.Text = "";
                if (mk == "")
                    lbtbMK.Text = "Bạn chưa nhập mật khẩu.";
                else
                {
                    lbtbMK.Text = "";
                    if (hoten == "")
                        lbtbNhapTen.Text = "Bạn chưa nhập tên.";
                    else
                    {
                        lbtbNhapTen.Text = "";
                        if (sdt == "")
                            lbtbSDT.Text = "Bạn chưa nhập SĐT.";
                        else
                        {
                            if (cccd == "")
                                lbtbNhapCCCD.Text = "Bạn chưa nhập CCCD.";
                            else
                            {
                                lbtbNhapCCCD.Text = "";
                                string sql_dulieu = "select * from TAIKHOAN where TENDANGNHAP='" + tdn + "'";
                                DataTable dt = ketnoi.laydulieu(sql_dulieu);
                                if (dt.Rows.Count != 0)
                                {
                                    lbtbTDN.Text = "Tên đăng nhập đã tồn tại.";
                                }
                                else
                                {
                                    string sql_tk = "insert into TAIKHOAN values('" + tdn + "', '" + mk + "')";
                                    int kq = ketnoi.CapNhat(sql_tk);
                                    string sql_ttkh = "insert into KHACHHANG " +
                                        "values('" + tdn + "', N'" + hoten + "', " + tuoi + ", N'" + gioitinh + "', '" + sdt + "', N'" + diachi + "', '" + cccd + "')";
                                    int kq1 = ketnoi.CapNhat(sql_ttkh);
                                    if (kq > 0 && kq1 > 0)
                                        Server.Transfer("DangNhap.aspx");
                                    else
                                        lbthongbao.Text = "Đăng ký không thành công";
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}