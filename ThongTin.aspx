<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThongTin.aspx.cs" Inherits="DoanWeb.ThongTin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: x-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <strong>Vui lòng đăng nhập bằng tài khoản có quyền Admin để truy cập mục này!!!</strong></p>
<p>
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Button ID="btntheloai" runat="server" PostBackUrl="~/Admin/TheLoai.aspx" Text="Thể loại" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style1" ForeColor="White" />
            </td>
            <td>
                <asp:Button ID="btnhinhctsp" runat="server" PostBackUrl="~/Admin/Hinh_CTSP.aspx" Text="Hình_CTSP" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style1" ForeColor="White" />
            </td>
            <td>
                <asp:Button ID="btnkeyword" runat="server" PostBackUrl="~/Admin/Keyword_SP.aspx" Text="Keyword_SP" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style1" ForeColor="White" />
            </td>
            <td>
                <asp:Button ID="btnhoadon" runat="server" PostBackUrl="~/Admin/Hoadon.aspx" Text="Hóa đơn" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style1" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnsanpham" runat="server" PostBackUrl="~/Admin/SanPham.aspx" Text="Sản phẩm" BackColor="#FF9900" BorderStyle="Outset" CssClass="auto-style1" ForeColor="Black" />
            </td>
            <td>
                <asp:Button ID="btnnpt" runat="server" PostBackUrl="~/Admin/NhaPhatTrien.aspx" Text="Nhà phát triển" BackColor="#FF9900" BorderStyle="Outset" CssClass="auto-style1" ForeColor="Black" />
            </td>
            <td>
                <asp:Button ID="btnspnpt" runat="server" PostBackUrl="~/Admin/SanPham_NPT.aspx" Text="Sản Phẩm_NPT" BackColor="#FF9900" BorderStyle="Outset" CssClass="auto-style1" ForeColor="Black" />
            </td>
            <td>
                <asp:Button ID="btncthoadon" runat="server" PostBackUrl="~/Admin/CTHD.aspx" Text="Chi tiết hóa đơn" BackColor="#FF9900" BorderStyle="Outset" CssClass="auto-style1" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btntlsp" runat="server" PostBackUrl="~/Admin/TheLoai_SP.aspx" Text="Thể loại_SP" BackColor="#CC0000" BorderStyle="Outset" CssClass="auto-style1" ForeColor="White" />
            </td>
            <td>
                <asp:Button ID="btnnph" runat="server" PostBackUrl="~/Admin/NhaPhatHanh.aspx" Text="Nhà phát hành" BackColor="#CC0000" BorderStyle="Outset" CssClass="auto-style1" ForeColor="White" />
            </td>
            <td>
                <asp:Button ID="btnspnph" runat="server" PostBackUrl="~/Admin/SanPham_NPH.aspx" Text="Sản phẩm_NPH" BackColor="#CC0000" CssClass="auto-style1" ForeColor="White" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>
