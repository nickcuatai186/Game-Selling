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
    public partial class Xemchitiet : System.Web.UI.Page
    {
        static string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Web_BH.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            Session["MaSP"] = id;
            SqlDataAdapter da2 = new SqlDataAdapter("select Hinhanh from Hinh_CTSP where MaSP = "+id,strCon);
            DataTable table2 = new DataTable();
            da2.Fill(table2);
            DataList1.DataSource = table2;
            DataList1.DataBind();
            
            SqlDataAdapter da = new SqlDataAdapter("select TenSP,Ngayphathanh,TenNPT,DonGia,Mota,Danhgia,Tinhtrang, AnhBia, SP.MaSP from SanPham SP join SP_NPT on SP.MaSP = SP_NPT.MaSP join NhaPhatTrien NPT on SP_NPT.MaNPT = NPT.MaNPT Where SP.MaSP =  " + id, strCon);
            DataTable table = new DataTable();
            da.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
           
            lbltensp.Text = GridView1.Rows[0].Cells[0].Text;
            lblngayphathanh.Text = GridView1.Rows[0].Cells[1].Text;
            lblnhapt.Text = GridView1.Rows[0].Cells[2].Text;
            lblgia.Text = GridView1.Rows[0].Cells[3].Text + "đ";
            lblmota.Text = GridView1.Rows[0].Cells[4].Text;
            lbldanhgia.Text = GridView1.Rows[0].Cells[5].Text;
            lbltinhtrang.Text = GridView1.Rows[0].Cells[6].Text;
            lblanhbia.ImageUrl = "AnhBia/" + GridView1.Rows[0].Cells[7].Text;
            ViewState["SanPham"] = table;
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            DataTable dtSP = (DataTable)ViewState["SanPham"];
            DataTable dtGH;     // Gio hang
            int Soluong = 0;
            if (Session["GioHang"] == null)    // tao gio hang
            {
                dtGH = new DataTable();
                dtGH.Columns.Add("MaSP");
                dtGH.Columns.Add("TenSP");
                dtGH.Columns.Add("Gia");
                dtGH.Columns.Add("SoLuong");
                dtGH.Columns.Add("TongTien");
            }
            else // lay gio hang tu Session
                dtGH = (DataTable)Session["GioHang"];
            string masp = (string)Session["MaSP"];
            int pos = TimSP(masp, dtGH);        // tim vi tri san pham trong gio hang
            if (pos != -1)  // neu tim thay tai vi tri pos
            {
                //cap nhat lai cot so luong, tong tien
                Soluong = Convert.ToInt32(dtGH.Rows[pos]["SoLuong"]) + int.Parse(txtSoluong.Text);
                dtGH.Rows[pos]["SoLuong"] = Soluong;
                dtGH.Rows[pos]["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["DonGia"]) * Soluong;
            }
            else    //san pham chua co trong gio hang: Them vao gio hang
            {
                Soluong = int.Parse(txtSoluong.Text);
                DataRow dr = dtGH.NewRow();//tạo một dòng mới
                                           // gán dữ liệu cho từng cột trong dòng mới
                dr["MaSP"] = dtSP.Rows[0]["MaSP"];
                dr["TenSP"] = dtSP.Rows[0]["TenSP"];
                dr["Gia"] = dtSP.Rows[0]["DonGia"];
                dr["SoLuong"] = int.Parse(txtSoluong.Text);
                dr["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["DonGia"]) * Soluong;
                //thêm dòng mới vào giỏ hàng
                dtGH.Rows.Add(dr);
            }
            //lưu gio hang vao session
            Session["GioHang"] = dtGH;
            //  Label lbSoluong = (Label)this.Master.FindControl("lbSoluong");
            //lbSoluong.Text = dtGH.Rows.Count.ToString();
            Response.Redirect("~/Admin/GioHang.aspx");
        }
        public static int TimSP(string id, DataTable dt)
        {
            int pos = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["MaSP"].ToString().ToLower() == id.ToLower())
                {
                    pos = i;
                    break;
                }
            }
            return pos;
        }
    }
    }
