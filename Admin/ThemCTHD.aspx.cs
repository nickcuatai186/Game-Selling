using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace DoanWeb.Admin
{
    public partial class ThemCTHD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Web_BH.mdf;Integrated Security=True;Connect Timeout=30");
            string insertStr = "INSERT INTO CTHD VALUES (@MaHD,@MaSP, @SoLuong,@DonGiaBan)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaHD", txtmahd.Text);
            cmd.Parameters.AddWithValue("@MaSP", txtmasp.Text);
            cmd.Parameters.AddWithValue("@SoLuong", txtsoluong.Text);
            cmd.Parameters.AddWithValue("@DonGiaBan", txtdongiaban.Text);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            txtmahd.Text = null;
            txtmasp.Text = null;
            txtsoluong.Text = null;
            txtdongiaban.Text = null;
            txtmahd.Focus();
        }
    }
}