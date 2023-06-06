<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="BaiTapTongHop.ThemSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 25px;
        }
    .auto-style4 {
        width: 216px;
    }
    .auto-style5 {
        height: 25px;
        width: 216px;
    }
    .auto-style6 {
        width: 216px;
        height: 29px;
    }
    .auto-style7 {
        height: 29px;
    }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            width: 216px;
            height: 27px;
        }
        .auto-style10 {
            height: 27px;
        }
    .auto-style11 {
        font-size: medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        <strong>Thêm sản phẩm</strong></p>
    <p>
        <table style="width:100%;">
            <tr>
                <div class="auto-style2">
                    <td class="auto-style6"><strong>Mã sản phẩm</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtmasp" runat="server"></asp:TextBox>
                </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Tên sản phẩm</strong></td>
                    <td>
                        <asp:TextBox ID="txttensp" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Đơn vị tính</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtdvtinh" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Đơn giá</strong></td>
                    <td>
                        <asp:TextBox ID="txtdongia" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Tình trạng</strong></td>
                    <td>
                        <asp:TextBox ID="txttinhtrang" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Đánh giá</strong></td>
                    <td>
                        <asp:TextBox ID="txtdanhgia" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Mô tả</strong></td>
                    <td>
                        <asp:TextBox ID="txtmota" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>Ngày phát hành</strong></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtngayphathanh" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Hình</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txthinh" runat="server"></asp:TextBox>
                    </td>
                </div>
            </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style11" ForeColor="White" />
                        <asp:Button ID="btnquaylai" runat="server" PostBackUrl="~/Admin/SanPham.aspx" Text="Quay lại" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style11" ForeColor="White" />
                    </td>
            </tr>
        </table>
    </p>
</asp:Content>
