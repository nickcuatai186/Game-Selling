<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThemCTHD.aspx.cs" Inherits="DoanWeb.Admin.ThemCTHD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">




        .auto-style1 {
            height: 26px;
        }
        .auto-style8 {
            font-size: large;
        }
    .auto-style6 {
        width: 216px;
        height: 29px;
    }
    .auto-style7 {
        height: 29px;
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
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <p class="auto-style8">
                    <strong>Thêm Chi Tiết Hóa Đơn</strong></p>
                <p>
                    <table style="width:100%;">
                        <tr>
                <div class="auto-style2">
                            <td class="auto-style6"><strong>Mã hóa đơn</strong></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtmahd" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"><strong>Mã sản phẩm</strong></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtmasp" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong>Số lượng</strong></td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong>Đơn giá bán</strong></td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtdongiaban" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style11" ForeColor="White" />
                <asp:Button ID="btnquaylai" runat="server" PostBackUrl="~/Admin/CTHD.aspx" Text="Quay lại" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style11" ForeColor="White" />
            </td>
        </tr>
    </table>
</asp:Content>
