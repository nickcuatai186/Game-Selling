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
    public partial class TimKiem : System.Web.UI.Page
    {
        static string strCon = " Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Web_BH.mdf;Integrated Security = True; Connect Timeout = 30";
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txttimkiem = (TextBox)Page.Master.FindControl("txttimkiem");
            string key = txttimkiem.Text.ToLower();
            if(string.IsNullOrEmpty(key) )
            {
                lblkq.Visible = true;
            }
            else
            {
                if (key == "")
                    lblkq.Visible = true;
                else
                {
                    lblkq.Visible = false;
                    SqlDataAdapter da = new SqlDataAdapter("select SP.MaSP, TenSP, DonGia, Tinhtrang, Danhgia,Mota,AnhBia,Ngayphathanh from SanPham SP join Keyword_SP KW on SP.MaSP = KW.MaSP where Keyword like '%" + key + "%' group by SP.MaSP, TenSP, DonGia, Tinhtrang, Danhgia,Mota,AnhBia,Ngayphathanh ", strCon);
                    DataTable table = new DataTable();
                    da.Fill(table);
                    DataList1.DataSource = table;
                    DataList1.DataBind();
                }
                
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}