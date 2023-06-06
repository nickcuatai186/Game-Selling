using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace BaiTapTongHop
{
    public partial class ThemSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Web_BH.mdf;Integrated Security=True;Connect Timeout=30");
            string insertStr = "INSERT INTO SanPham VALUES (@MaSP, @TenSP, @DonViTinh, @DonGia,@Tinhtrang,@Danhgia,@Mota,@AnhBia,@Ngayphathanh)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaSP", txtmasp.Text);
            cmd.Parameters.AddWithValue("@TenSP", txttensp.Text);
            cmd.Parameters.AddWithValue("@DonViTinh", txtdvtinh.Text);
            cmd.Parameters.AddWithValue("@DonGia", txtdongia.Text);
            cmd.Parameters.AddWithValue("@Tinhtrang", txttinhtrang.Text);
            cmd.Parameters.AddWithValue("@Danhgia", txtdanhgia.Text);
            cmd.Parameters.AddWithValue("@Mota", txtmota.Text);
            cmd.Parameters.AddWithValue("@Anhbia", txthinh.Text);
            cmd.Parameters.AddWithValue("@Ngayphathanh", txtngayphathanh.Text);

            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            txtmasp.Text = null;
            txttensp.Text = null;
            txtdvtinh.Text = null;
            txtdongia.Text = null;
            txttinhtrang.Text = null;
            txtdanhgia.Text = null;
            txtmota.Text = null;
            txthinh.Text = null;
            txtngayphathanh.Text = null;
            txtmasp.Focus();
        }
    }
}