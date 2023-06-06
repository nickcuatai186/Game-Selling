using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace DoanWeb
{
    public partial class ThemHoadon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Web_BH.mdf;Integrated Security=True;Connect Timeout=30");
            string insertStr = "INSERT INTO HoaDon VALUES (@MaHD, @NgayLapHD,@NgayGiaoHang)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaHD", txtmahd.Text);
            cmd.Parameters.AddWithValue("@NgayLapHD", txtngaylap.Text);
            cmd.Parameters.AddWithValue("@NgayGiaoHang", txtngaygiao.Text);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            txtmahd.Text = null;
            txtngaylap.Text = null;
            txtngaygiao.Focus();
        }
    }
}