using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace GroupProject_K4T
{
    public class LopKetNoi : System.Web.UI.Page
    {
        SqlConnection con;
        private void ketnoi()
        {
            string sqlcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="
            + Server.MapPath("/App_Data/Database1.mdf") + ";Integrated Security=True";
            con = new SqlConnection(sqlcn);
            con.Open();
        }
        private void dongketnoi()
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
        public DataTable laydulieu(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                ketnoi();
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }
        public int CapNhat(string sql)
        {
            int ketqua = 0;
            try
            {
                ketnoi();
                SqlCommand cmd = new SqlCommand(sql, con);
                ketqua = cmd.ExecuteNonQuery();
            }
            catch
            {
                ketqua = 0;
            }
            finally
            {
                dongketnoi();
            }
            return ketqua;
        }
        public string LayDuLieuChu(string sql)
        {
            string ketqua = "";
            try
            {
                ketnoi();
                SqlCommand cmd = new SqlCommand(sql, con);
                ketqua = (string)cmd.ExecuteScalar();
            }
            catch
            {
                ketqua = "";
            }
            finally
            {
                dongketnoi();
            }
            return ketqua;
        }
        public float LayGia(string sql)
        {
            float ketqua = 0;
            try
            {
                ketnoi();
                SqlCommand cmd = new SqlCommand(sql, con);
                ketqua = Convert.ToSingle(cmd.ExecuteScalar());
            }
            catch
            {
                ketqua = 0;
            }
            finally
            {
                dongketnoi();
            }
            return ketqua;
        }
    } 
}