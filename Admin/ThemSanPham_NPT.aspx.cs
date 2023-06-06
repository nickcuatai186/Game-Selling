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
    public partial class ThemSanPham_NPT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Web_BH.mdf;Integrated Security=True;Connect Timeout=30");
            string insertStr = "INSERT INTO SP_NPT VALUES (@MaSP, @MaNPT,@Ghichu)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaSP", txtmasp.Text);
            cmd.Parameters.AddWithValue("@MaNPT", txtmanpt.Text);
            cmd.Parameters.AddWithValue("@Ghichu", txtghichu.Text);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            txtmasp.Text = null;
            txtmanpt.Text = null;
            txtghichu.Text = null;
            txtmasp.Focus();
        }
    }
}