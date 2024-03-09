using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject_K4T
{
    public partial class MuaXe : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sqlxe = "select * from LOAIXE";
                DropDownList1.DataSource = ketnoi.laydulieu(sqlxe);
                DropDownList1.DataTextField = "TENXE";
                DropDownList1.DataValueField = "MAXE";
                DropDownList1.DataBind();
                string maxe = Request.QueryString["maxe"] + "";
                if (maxe != "")
                {
                    DropDownList1.SelectedIndex = Convert.ToInt32(maxe) - 1;
                    string sqlgia = "select GIA from LOAIXE where MAXE=" + maxe;
                    float gia = ketnoi.LayGia(sqlgia);
                    lbtbGia.Text = gia + "";
                }
                string tdn = Session["tdn"] + "";
                if (tdn != "")
                {
                    lbTDN.Text = tdn;
                    string sqlten = "select TENKHACHHANG from KHACHHANG where TENDANGNHAP='" + tdn + "'";
                    lbTen.Text = ketnoi.LayDuLieuChu(sqlten);
                    string sqlsdt = "select SDT from KHACHHANG where TENDANGNHAP='" + tdn + "'";
                    txtSDT.Text = ketnoi.LayDuLieuChu(sqlsdt);
                }
                else
                {
                    lbtbten.Text = "Bạn phải đăng nhập mới có thể đặt mua xe.";
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string maxe = DropDownList1.SelectedValue;
            string sqlgia = "select GIA from LOAIXE where MAXE=" + maxe;
            float gia = ketnoi.LayGia(sqlgia);
            lbtbGia.Text = gia + "";
        }
        protected void btDat_Click(object sender, EventArgs e)
        {
            if (lbTDN.Text != "")
            {
                if (DropDownList1.SelectedIndex >= 0)
                {
                    string maxe = DropDownList1.SelectedValue;
                    string sqlmaxe = "select MAXE from LOAIXE where MAXE=" + maxe;
                    float mx = ketnoi.LayGia(sqlmaxe);
                    lbmaxe.Text = mx + "";
                    string sqlgia = "select GIA from LOAIXE where MAXE=" + maxe;
                    float gia = ketnoi.LayGia(sqlgia);
                    lbtbGia.Text = gia + "";
                    string sql = "insert into DONHANG values('" + lbTDN.Text + "', " + lbmaxe.Text + ", " + lbtbGia.Text + ", '" + txtSDT.Text + "', GETDATE())";
                    int kq = ketnoi.CapNhat(sql);
                    if (kq > 0)
                        lbthongbao.Text = "Đặt mua thành công";
                    else
                        lbthongbao.Text = "Bạn đã mua xe này rồi.";
                }
                else
                    lbthongbao.Text = "Bạn chưa chọn loại xe cần mua.";
            }
            else
                lbthongbao.Text = "Bạn chưa đăng nhập.";

        }
    }
}