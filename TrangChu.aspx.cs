using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject_K4T
{
    public partial class Home : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadXeHot();
                LoadXeMoi();
            }
        }
        private void LoadXeHot()
        {
            string sqlXeHot = "SELECT TOP 5 * FROM LOAIXE ORDER BY NEWID()";
            DataTable dtXeHot = ketnoi.laydulieu(sqlXeHot);
            if (dtXeHot != null && dtXeHot.Rows.Count > 0)
            {
                DataList2.DataSource = dtXeHot;
                DataList2.DataBind();
            }
        }
        private void LoadXeMoi()
        {
            string sqlXeMoi = "SELECT TOP 5 * FROM LOAIXE ORDER BY NEWID()";
            DataTable dtXeMoi = ketnoi.laydulieu(sqlXeMoi);
            if (dtXeMoi != null && dtXeMoi.Rows.Count > 0)
            {
                DataList1.DataSource = dtXeMoi;
                DataList1.DataBind();
            }
        }
        protected void btnXemChiTietXeMoi_Click(object sender, EventArgs e)
        {
            string maxe = ((Button)sender).CommandArgument;
            Response.Redirect("ChiTiet.aspx?maxe=" + maxe);
        }
        protected void btnXemChiTietXeHot_Click(object sender, EventArgs e)
        {
            string maxe = ((Button)sender).CommandArgument;
            Response.Redirect("ChiTiet.aspx?maxe=" + maxe);
        }
    }
}