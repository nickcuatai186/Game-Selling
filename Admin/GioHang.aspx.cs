using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text;

namespace BaiTapTongHop
{
    public partial class GioHang : System.Web.UI.Page
    {
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }
        protected void LoadData()
        {
            dt = (DataTable)Session["GioHang"];
            grdGioHang.DataSource = dt;
            grdGioHang.DataBind();
            grdGioHang.Columns[2].ControlStyle.Width = 80;
            grdGioHang.Columns[3].ControlStyle.Width = 150;
            grdGioHang.Columns[4].ControlStyle.Width = 80;
            grdGioHang.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            //grdGioHang.Columns[5].ControlStyle.Width = 80;//
            //grdGioHang.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            
            if (dt != null)
            {
                double tong = TinhTongTien(dt);
                Session["tong"] = tong;     // lưu để truyền qua trang DonHang.aspx
                lblTongtien.Text = "Tổng tiền trên giỏ hàng là:" + String.Format("{0:0,000}", tong);
            }
        }

        protected double TinhTongTien(DataTable dt)
        {
            if (dt == null)
                return 0;
            double sum = 0;
            foreach (DataRow row in dt.Rows)
                sum += Convert.ToDouble(row["TongTien"]);
            return sum;
        }

        protected void grdGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            dt = (DataTable)Session["GioHang"];
            GridViewRow row = grdGioHang.Rows[e.RowIndex];
            TextBox txtSoluong = (TextBox)(row.Cells[5].Controls[0]);
            int Soluong = Convert.ToInt32(txtSoluong.Text);
            dt.Rows[row.DataItemIndex]["SoLuong"] = txtSoluong.Text;
            dt.Rows[row.DataItemIndex]["TongTien"] =
                Convert.ToDouble(dt.Rows[row.DataItemIndex]["Gia"]) * Soluong;
            //Reset the edit index.
            grdGioHang.EditIndex = -1;
            Session["GioHang"] = dt;
            LoadData();
        }

        protected void grdGioHang_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdGioHang.EditIndex = e.NewEditIndex;
            LoadData();
        }
        protected void grdGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dt = (DataTable)Session["GioHang"];
            GridViewRow row = grdGioHang.Rows[e.RowIndex];
            dt.Rows[row.DataItemIndex].Delete();
            grdGioHang.EditIndex = -1;
            Session["GioHang"] = dt;
            LoadData();
        }

        protected void grdGioHang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdGioHang.EditIndex = -1;
            LoadData();
        }
        protected void btndathang_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage("bpush4321@gmail.com", txtEmail.Text);
            mail.Subject = "Mua hàng Online";
            mail.Body += "Vui lòng kiểm tra kỹ giỏ hàng thanh toán của bạn: <br/><br/>";
            mail.Body += GetGridviewData(grdGioHang) + "<br/><br/>";
            mail.Body += lblTongtien.Text + "<br/><br/>";
            mail.Body += "Điện thoại của bạn: " + txtsdt.Text + "<br/><br/>";
            mail.Body += "Xin cảm ơn đã mua hàng của chúng tôi!";
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";     // smtp.mail.yahoo.com
            smtp.Port = 587;                  // 25
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("bpush4321@gmail.com", "nqhehzdlngaxjfav");
            smtp.Send(mail);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email đã được gửi!');", true);
            txtEmail.Text = null;
            txtsdt.Text = null;

        }
        private string GetGridviewData(GridView gv)
        {
            StringBuilder strBuilder = new StringBuilder();
            StringWriter strWriter = new StringWriter(strBuilder);
            HtmlTextWriter htw = new HtmlTextWriter(strWriter);
            gv.RenderControl(htw);
            return strBuilder.ToString();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}